; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/alauda.c_pt.bc'
source_filename = "../drivers/usb/storage/alauda.c"
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
%struct.alauda_card_info = type { i8, i8, i8, i8, i8 }
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
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.alauda_media_info = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr }
%struct.alauda_info = type { [2 x %struct.alauda_media_info], i32, i8, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@__UNIQUE_ID_description290 = internal constant [60 x i8] c"ums_alauda.description=Driver for Alauda-based card readers\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [48 x i8] c"ums_alauda.author=Daniel Drake <dsd@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [47 x i8] c"ums_alauda.file=drivers/usb/storage/ums-alauda\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"ums_alauda.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [33 x i8] c"ums_alauda.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_alauda__303_1263_alauda_driver_init6 = internal global ptr @alauda_driver_init, section ".initcall6.init", align 4
@alauda_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @alauda_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @alauda_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_alauda_driver_exit = internal global ptr @alauda_driver_exit, section ".exitcall.exit", align 4
@alauda_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums-alauda\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums_alauda\00", [21 x i8] zeroinitializer }, align 32
@alauda_usb_ids = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1412, i16 8, i16 258, i16 258, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1972, i16 266, i16 258, i16 258, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@alauda_unusual_dev_list = internal global { [3 x %struct.us_unusual_dev], [48 x i8] } { [3 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.3, ptr @.str.4, i8 6, i8 -12, ptr @init_alauda }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 6, i8 -12, ptr @init_alauda }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Alauda Control/Bulk\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fujifilm\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DPC-R1 (Alauda)\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Olympus\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAUSB-10 (Alauda)\00", [46 x i8] zeroinitializer }, align 32
@parity = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@ecc2 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alauda_transport.inquiry_response = internal constant { <{ i8, i8, i8, i8, i8, [31 x i8] }>, [60 x i8] } { <{ i8, i8, i8, i8, i8, [31 x i8] }> <{ i8 0, i8 -128, i8 0, i8 1, i8 31, [31 x i8] zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INQUIRY - Returning bogus response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_UNIT_READY\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"READ_10: page %d pagect %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WRITE_10: page %d pagect %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REQUEST_SENSE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No media, or door open\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Media change detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Media status %02X %02X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"We are ready for action!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Media not ready after ack\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Media signature: %4ph\0A\00", [41 x i8] zeroinitializer }, align 32
@alauda_init_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014alauda_init_media: Unrecognised media signature: %4ph\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alauda_init_media\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/storage/alauda.c\00", [35 x i8] zeroinitializer }, align 32
@alauda_init_media._entry_ptr = internal global ptr @alauda_init_media._entry, section ".printk_index", align 4
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found media with capacity: %ldMB\0A\00", [62 x i8] zeroinitializer }, align 32
@alauda_card_ids = internal constant { [20 x %struct.alauda_card_info], [60 x i8] } { [20 x %struct.alauda_card_info] [%struct.alauda_card_info { i8 110, i8 20, i8 8, i8 4, i8 8 }, %struct.alauda_card_info { i8 -24, i8 20, i8 8, i8 4, i8 8 }, %struct.alauda_card_info { i8 -20, i8 20, i8 8, i8 4, i8 8 }, %struct.alauda_card_info { i8 100, i8 21, i8 8, i8 4, i8 9 }, %struct.alauda_card_info { i8 -22, i8 21, i8 8, i8 4, i8 9 }, %struct.alauda_card_info { i8 107, i8 22, i8 9, i8 4, i8 9 }, %struct.alauda_card_info { i8 -29, i8 22, i8 9, i8 4, i8 9 }, %struct.alauda_card_info { i8 -27, i8 22, i8 9, i8 4, i8 9 }, %struct.alauda_card_info { i8 -26, i8 23, i8 9, i8 4, i8 10 }, %struct.alauda_card_info { i8 115, i8 24, i8 9, i8 5, i8 10 }, %struct.alauda_card_info { i8 117, i8 25, i8 9, i8 5, i8 10 }, %struct.alauda_card_info { i8 118, i8 26, i8 9, i8 5, i8 10 }, %struct.alauda_card_info { i8 121, i8 27, i8 9, i8 5, i8 10 }, %struct.alauda_card_info { i8 113, i8 28, i8 9, i8 5, i8 10 }, %struct.alauda_card_info { i8 93, i8 21, i8 9, i8 4, i8 8 }, %struct.alauda_card_info { i8 -43, i8 22, i8 9, i8 4, i8 9 }, %struct.alauda_card_info { i8 -42, i8 23, i8 9, i8 4, i8 10 }, %struct.alauda_card_info { i8 87, i8 24, i8 9, i8 4, i8 11 }, %struct.alauda_card_info { i8 88, i8 25, i8 9, i8 4, i8 12 }, %struct.alauda_card_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error: Requested lba %u exceeds maximum %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read %d zero pages (LBA %d) page %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read %d pages, from PBA %d (LBA %d) page %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mapping blocks for zone %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PBA %d has no logical mapping\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"PBA %d has no logical mapping: reserved area = %02X%02X%02X%02X data status %02X block status %02X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"PBA %d has invalid address field %02X%02X/%02X%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@alauda_read_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.21, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014alauda_read_map: Bad parity in LBA for block %d (%02X %02X)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alauda_read_map\00", [16 x i8] zeroinitializer }, align 32
@alauda_read_map._entry_ptr = internal global ptr @alauda_read_map._entry, section ".printk_index", align 4
@alauda_read_map._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.21, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014alauda_read_map: Bad low LBA %d for block %d\0A\00", [48 x i8] zeroinitializer }, align 32
@alauda_read_map._entry_ptr.34 = internal global ptr @alauda_read_map._entry.32, section ".printk_index", align 4
@alauda_read_map._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.21, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014alauda_read_map: LBA %d seen for PBA %d and %d\0A\00", [46 x i8] zeroinitializer }, align 32
@alauda_read_map._entry_ptr.37 = internal global ptr @alauda_read_map._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pba %d page %d count %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Requested lba %u exceeds maximum %u\0A\00", [59 x i8] zeroinitializer }, align 32
@alauda_write_lba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.21, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014alauda_write_lba: avoid writing to pba 1\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alauda_write_lba\00", [47 x i8] zeroinitializer }, align 32
@alauda_write_lba._entry_ptr = internal global ptr @alauda_write_lba._entry, section ".printk_index", align 4
@alauda_write_lba._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.21, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014alauda_write_lba: Out of unused blocks\0A\00", [54 x i8] zeroinitializer }, align 32
@alauda_write_lba._entry_ptr.44 = internal global ptr @alauda_write_lba._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Warning: bad ecc in page %d- of pba %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Warning: bad ecc in page %d+ of pba %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Remapped LBA %d to PBA %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pba %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%3ph\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Erasing PBA %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Erase result: %02X %02X\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 3, i64 18, i64 30, i64 37, i64 40, i64 42]
@__sancov_gen_cov_switch_values.52 = internal global [21 x i64] [i64 19, i64 8, i64 87, i64 88, i64 93, i64 100, i64 107, i64 110, i64 113, i64 115, i64 117, i64 118, i64 121, i64 213, i64 214, i64 227, i64 229, i64 230, i64 232, i64 234, i64 236]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"alauda_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1249, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"alauda_host_template\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1226, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1263, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"alauda_usb_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 133, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"alauda_unusual_dev_list\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 155, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1240, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 9, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [40 x i8] c"../drivers/usb/storage/unusual_alauda.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 14, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 215, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [5 x i8] c"ecc2\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 216, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"inquiry_response\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1124, i32 23 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1129, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1136, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1174, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1191, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1197, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1218, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 462, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 472, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 321, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 396, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 407, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 414, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 417, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 423, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"alauda_card_ids\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 175, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 950, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 964, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 976, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 574, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 594, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 607, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 616, i32 21 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 625, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 646, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 653, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 729, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1050, i32 21 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 823, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 830, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 855, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 861, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 889, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 780, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 508, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 700, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [32 x i8] c"../drivers/usb/storage/alauda.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 712, i32 19 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_alauda_driver_exit, ptr @__initcall__kmod_ums_alauda__303_1263_alauda_driver_init6, ptr @alauda_driver_exit, ptr @alauda_init_media._entry, ptr @alauda_init_media._entry_ptr, ptr @alauda_read_map._entry, ptr @alauda_read_map._entry.32, ptr @alauda_read_map._entry.35, ptr @alauda_read_map._entry_ptr, ptr @alauda_read_map._entry_ptr.34, ptr @alauda_read_map._entry_ptr.37, ptr @alauda_write_lba._entry, ptr @alauda_write_lba._entry.42, ptr @alauda_write_lba._entry_ptr, ptr @alauda_write_lba._entry_ptr.44, ptr @alauda_driver, ptr @alauda_host_template, ptr @.str, ptr @.str.1, ptr @alauda_usb_ids, ptr @alauda_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @parity, ptr @ecc2, ptr @alauda_transport.inquiry_response, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @alauda_card_ids, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_usb_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_unusual_dev_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parity to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_transport.inquiry_response to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_init_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_card_ids to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_read_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_read_map._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_read_map._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_write_lba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alauda_write_lba._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alauda_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @alauda_host_template, ptr noundef nonnull @.str, ptr noundef null) #9
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @alauda_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alauda_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @alauda_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alauda_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #9
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !133
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @alauda_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @alauda_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @alauda_host_template) #9
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
  store ptr @alauda_transport, ptr %transport, align 4
  %transport_reset = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 20
  %5 = ptrtoint ptr %transport_reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb_stor_Bulk_reset, ptr %transport_reset, align 4
  %max_lun = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 16
  %6 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %max_lun, align 2
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
define internal i32 @alauda_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %command.i315.i.i = alloca [9 x i8], align 1
  %buf.i.i.i = alloca [2 x i8], align 1
  %command.i.i.i.i = alloca [9 x i8], align 1
  %data.i.i.i.i = alloca [3 x i8], align 1
  %command.i.i.i = alloca [9 x i8], align 1
  %ecc.i.i = alloca [3 x i8], align 1
  %offset.i272 = alloca i32, align 4
  %sg.i273 = alloca ptr, align 4
  %offset.i = alloca i32, align 4
  %sg.i = alloca ptr, align 4
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
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end182 [
    i8 18, label %if.then
    i8 0, label %if.then7
    i8 37, label %if.then14
    i8 40, label %if.then73
    i8 42, label %if.then118
    i8 3, label %if.then167
    i8 30, label %entry.cleanup192_crit_edge
  ]

entry.cleanup192_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.7) #9
  %9 = call ptr @memcpy(ptr %3, ptr @alauda_transport.inquiry_response, i32 36)
  tail call void @fill_inquiry_response(ptr noundef %us, ptr noundef %3, i32 noundef 36) #9
  br label %cleanup192

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.8) #9
  %call = tail call fastcc i32 @alauda_check_media(ptr noundef %us)
  br label %cleanup192

if.then14:                                        ; preds = %entry
  %call15 = tail call fastcc i32 @alauda_check_media(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end19, label %if.then14.cleanup192_crit_edge

if.then14.cleanup192_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extra, align 4
  %srb21 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %12 = ptrtoint ptr %srb21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb21, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lun, align 8
  %idxprom = trunc i64 %17 to i32
  %arrayidx22 = getelementptr [2 x %struct.alauda_media_info], ptr %11, i32 0, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %zoneshift = getelementptr [2 x %struct.alauda_media_info], ptr %11, i32 0, i32 %idxprom, i32 8
  %20 = ptrtoint ptr %zoneshift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %zoneshift, align 2
  %conv31 = zext i8 %21 to i32
  %blockshift = getelementptr [2 x %struct.alauda_media_info], ptr %11, i32 0, i32 %idxprom, i32 7
  %22 = ptrtoint ptr %blockshift to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %blockshift, align 1
  %conv39 = zext i8 %23 to i32
  %add = add nuw nsw i32 %conv39, %conv31
  %pageshift = getelementptr [2 x %struct.alauda_media_info], ptr %11, i32 0, i32 %idxprom, i32 6
  %24 = ptrtoint ptr %pageshift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pageshift, align 4
  %conv47 = zext i8 %25 to i32
  %add48 = add nuw nsw i32 %add, %conv47
  %shr = lshr i32 %19, %add48
  %uzonesize = getelementptr [2 x %struct.alauda_media_info], ptr %11, i32 0, i32 %idxprom, i32 3
  %26 = ptrtoint ptr %uzonesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uzonesize, align 4
  %blocksize = getelementptr [2 x %struct.alauda_media_info], ptr %11, i32 0, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocksize, align 4
  %mul = mul i32 %29, %27
  %mul63 = mul i32 %mul, %shr
  %sub = add i32 %mul63, -1
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %3, align 4
  %arrayidx65 = getelementptr i32, ptr %3, i32 1
  %31 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %arrayidx65, align 4
  tail call void @usb_stor_set_xfer_buf(ptr noundef %3, i32 noundef 8, ptr noundef %srb) #9
  br label %cleanup192

if.then73:                                        ; preds = %entry
  %call74 = tail call fastcc i32 @alauda_check_media(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end78, label %if.then73.cleanup192_crit_edge

if.then73.cleanup192_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192

if.end78:                                         ; preds = %if.then73
  %32 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmnd, align 4
  %arrayidx80 = getelementptr i8, ptr %33, i32 3
  %34 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx80, align 1
  %conv82 = zext i8 %35 to i32
  %arrayidx84 = getelementptr i8, ptr %33, i32 2
  %36 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx84, align 1
  %conv86 = zext i8 %37 to i32
  %38 = shl nuw i32 %conv86, 24
  %39 = shl nuw nsw i32 %conv82, 16
  %arrayidx89 = getelementptr i8, ptr %33, i32 5
  %40 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx89, align 1
  %conv91 = zext i8 %41 to i32
  %arrayidx93 = getelementptr i8, ptr %33, i32 4
  %42 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx93, align 1
  %conv95 = zext i8 %43 to i32
  %shl96 = shl nuw nsw i32 %conv95, 8
  %or97 = or i32 %38, %39
  %shl87 = or i32 %or97, %conv91
  %or98 = or i32 %shl87, %shl96
  %arrayidx100 = getelementptr i8, ptr %33, i32 8
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx100, align 1
  %conv102 = zext i8 %45 to i32
  %arrayidx104 = getelementptr i8, ptr %33, i32 7
  %46 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx104, align 1
  %conv106 = zext i8 %47 to i32
  %shl107 = shl nuw nsw i32 %conv106, 8
  %or108 = or i32 %shl107, %conv102
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9, i32 noundef %or98, i32 noundef %or108) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #9
  %48 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extra, align 4
  %srb.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %50 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %srb.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %lun.i, align 8
  %idxprom.i = trunc i64 %55 to i32
  %blockshift1.i = getelementptr [2 x %struct.alauda_media_info], ptr %49, i32 0, i32 %idxprom.i, i32 7
  %56 = ptrtoint ptr %blockshift1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %blockshift1.i, align 1
  %conv.i = zext i8 %57 to i32
  %pageshift9.i = getelementptr [2 x %struct.alauda_media_info], ptr %49, i32 0, i32 %idxprom.i, i32 6
  %58 = ptrtoint ptr %pageshift9.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pageshift9.i, align 4
  %conv10.i = zext i8 %59 to i32
  %blocksize18.i = getelementptr [2 x %struct.alauda_media_info], ptr %49, i32 0, i32 %idxprom.i, i32 2
  %60 = ptrtoint ptr %blocksize18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blocksize18.i, align 4
  %pagesize26.i = getelementptr [2 x %struct.alauda_media_info], ptr %49, i32 0, i32 %idxprom.i, i32 1
  %62 = ptrtoint ptr %pagesize26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pagesize26.i, align 4
  %uzonesize34.i = getelementptr [2 x %struct.alauda_media_info], ptr %49, i32 0, i32 %idxprom.i, i32 3
  %64 = ptrtoint ptr %uzonesize34.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %uzonesize34.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i) #9
  %add.i = add i32 %63, 64
  %66 = tail call i32 @llvm.umin.i32(i32 %61, i32 %or108) #9
  %mul.i = mul i32 %add.i, %66
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3072) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end78.alauda_read_data.exit_crit_edge, label %if.end.i

if.end78.alauda_read_data.exit_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_read_data.exit

if.end.i:                                         ; preds = %if.end78
  %67 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extra, align 4
  %69 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %srb.i, align 4
  %device40.i = getelementptr inbounds %struct.scsi_cmnd, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %device40.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device40.i, align 4
  %lun41.i = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 18
  %73 = ptrtoint ptr %lun41.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %lun41.i, align 8
  %idxprom42.i = trunc i64 %74 to i32
  %arrayidx43.i = getelementptr [2 x %struct.alauda_media_info], ptr %68, i32 0, i32 %idxprom42.i
  %blockmask.i = getelementptr [2 x %struct.alauda_media_info], ptr %68, i32 0, i32 %idxprom42.i, i32 5
  %75 = ptrtoint ptr %blockmask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blockmask.i, align 4
  %77 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx43.i, align 4
  %79 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %offset.i, align 4
  %80 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %sg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or108)
  %cmp54.not184.i = icmp eq i32 %or108, 0
  br i1 %cmp54.not184.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %add51.i = add nuw nsw i32 %conv10.i, %conv.i
  %shr52.i = lshr i32 %78, %add51.i
  %and.i = and i32 %76, %or98
  %shr.i = lshr i32 %or98, %conv.i
  %conv36.i = trunc i32 %shr.i to i16
  %conv60.i = and i32 %shr52.i, 65535
  %81 = trunc i32 %shr52.i to i16
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sectors.addr.0187.i = phi i32 [ %or108, %while.body.lr.ph.i ], [ %sub99.i, %cleanup.i.while.body.i_crit_edge ]
  %page.0186.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ 0, %cleanup.i.while.body.i_crit_edge ]
  %lba.0185.i = phi i16 [ %conv36.i, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %conv56.i = zext i16 %lba.0185.i to i32
  %div.i = udiv i32 %conv56.i, %65
  call fastcc void @alauda_ensure_map_for_zone(ptr noundef %us, i32 noundef %div.i) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %lba.0185.i, i16 %81)
  %cmp61.not.i = icmp ult i16 %lba.0185.i, %81
  br i1 %cmp61.not.i, label %if.end66.i, label %if.then63.i

if.then63.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23, i32 noundef %conv56.i, i32 noundef %conv60.i) #9
  br label %while.end.i

if.end66.i:                                       ; preds = %while.body.i
  %mul58.i = mul i32 %div.i, %65
  %sub.i = sub i32 %conv56.i, %mul58.i
  %sub67.i = sub i32 %61, %page.0186.i
  %82 = call i32 @llvm.umin.i32(i32 %sectors.addr.0187.i, i32 %sub67.i) #9
  %shl.i = shl i32 %82, %conv10.i
  %83 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %extra, align 4
  %85 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %srb.i, align 4
  %device78.i = getelementptr inbounds %struct.scsi_cmnd, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %device78.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device78.i, align 4
  %lun79.i = getelementptr inbounds %struct.scsi_device, ptr %88, i32 0, i32 18
  %89 = ptrtoint ptr %lun79.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %lun79.i, align 8
  %idxprom80.i = trunc i64 %90 to i32
  %lba_to_pba.i = getelementptr [2 x %struct.alauda_media_info], ptr %84, i32 0, i32 %idxprom80.i, i32 9
  %91 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx82.i = getelementptr ptr, ptr %92, i32 %div.i
  %93 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx82.i, align 4
  %arrayidx83.i = getelementptr i16, ptr %94, i32 %sub.i
  %95 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx83.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %96)
  %cmp85.i = icmp eq i16 %96, -1
  br i1 %cmp85.i, label %if.then87.i, label %if.else.i

if.then87.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24, i32 noundef %82, i32 noundef %conv56.i, i32 noundef %page.0186.i) #9
  %97 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %shl.i)
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end66.i
  %conv84.i = zext i16 %96 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.25, i32 noundef %82, i32 noundef %conv84.i, i32 noundef %conv56.i, i32 noundef %page.0186.i) #9
  %98 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %extra, align 4
  %100 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %srb.i, align 4
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device.i.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %103, i32 0, i32 18
  %104 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %lun.i.i, align 8
  %idxprom.i.i = trunc i64 %105 to i32
  %pagesize1.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %99, i32 0, i32 %idxprom.i.i, i32 1
  %106 = ptrtoint ptr %pagesize1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pagesize1.i.i, align 4
  %call.i.i = call fastcc i32 @alauda_read_block_raw(ptr noundef %us, i16 noundef zeroext %96, i32 noundef %page.0186.i, i32 noundef %82, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp219.i.i = icmp ne i32 %82, 0
  %or.cond.i.i = and i1 %cmp219.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %for.body.lr.ph.i.i, label %if.else.i.alauda_read_block.exit.i_crit_edge

if.else.i.alauda_read_block.exit.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_read_block.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i
  %add.i.i = add i32 %107, 64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.020.i.i, %107
  %mul3.i.i = mul i32 %i.020.i.i, %add.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %mul.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %call9.i.i, i32 %mul3.i.i
  %108 = call ptr @memmove(ptr %add.ptr.i.i, ptr %add.ptr4.i.i, i32 %107)
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %82
  br i1 %exitcond.not.i.i, label %for.body.i.i.alauda_read_block.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.alauda_read_block.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_read_block.exit.i

alauda_read_block.exit.i:                         ; preds = %for.body.i.i.alauda_read_block.exit.i_crit_edge, %if.else.i.alauda_read_block.exit.i_crit_edge
  br i1 %cmp.not.i.i, label %alauda_read_block.exit.i.cleanup.i_crit_edge, label %alauda_read_block.exit.i.while.end.i_crit_edge

alauda_read_block.exit.i.while.end.i_crit_edge:   ; preds = %alauda_read_block.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

alauda_read_block.exit.i.cleanup.i_crit_edge:     ; preds = %alauda_read_block.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %alauda_read_block.exit.i.cleanup.i_crit_edge, %if.then87.i
  %109 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %srb.i, align 4
  %call98.i = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i.i, i32 noundef %shl.i, ptr noundef %110, ptr noundef nonnull %sg.i, ptr noundef nonnull %offset.i, i32 noundef 0) #9
  %inc.i = add i16 %lba.0185.i, 1
  %sub99.i = sub i32 %sectors.addr.0187.i, %82
  %cmp54.not.i = icmp eq i32 %sub99.i, 0
  br i1 %cmp54.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %alauda_read_block.exit.i.while.end.i_crit_edge, %if.then63.i, %if.end.i.while.end.i_crit_edge
  %result.3.i = phi i32 [ 3, %if.then63.i ], [ 0, %if.end.i.while.end.i_crit_edge ], [ %call.i.i, %alauda_read_block.exit.i.while.end.i_crit_edge ], [ 0, %cleanup.i.while.end.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %alauda_read_data.exit

alauda_read_data.exit:                            ; preds = %while.end.i, %if.end78.alauda_read_data.exit_crit_edge
  %retval.0.i = phi i32 [ %result.3.i, %while.end.i ], [ 3, %if.end78.alauda_read_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #9
  br label %cleanup192

if.then118:                                       ; preds = %entry
  %call121 = tail call fastcc i32 @alauda_check_media(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122.not = icmp eq i32 %call121, 0
  br i1 %cmp122.not, label %if.end125, label %if.then118.cleanup192_crit_edge

if.then118.cleanup192_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192

if.end125:                                        ; preds = %if.then118
  %111 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cmnd, align 4
  %arrayidx127 = getelementptr i8, ptr %112, i32 3
  %113 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx127, align 1
  %conv129 = zext i8 %114 to i32
  %arrayidx131 = getelementptr i8, ptr %112, i32 2
  %115 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx131, align 1
  %conv133 = zext i8 %116 to i32
  %117 = shl nuw i32 %conv133, 24
  %118 = shl nuw nsw i32 %conv129, 16
  %arrayidx138 = getelementptr i8, ptr %112, i32 5
  %119 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx138, align 1
  %conv140 = zext i8 %120 to i32
  %arrayidx142 = getelementptr i8, ptr %112, i32 4
  %121 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx142, align 1
  %conv144 = zext i8 %122 to i32
  %shl145 = shl nuw nsw i32 %conv144, 8
  %or146 = or i32 %117, %118
  %shl136 = or i32 %or146, %conv140
  %or147 = or i32 %shl136, %shl145
  %arrayidx149 = getelementptr i8, ptr %112, i32 8
  %123 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx149, align 1
  %conv151 = zext i8 %124 to i32
  %arrayidx153 = getelementptr i8, ptr %112, i32 7
  %125 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx153, align 1
  %conv155 = zext i8 %126 to i32
  %shl156 = shl nuw nsw i32 %conv155, 8
  %or157 = or i32 %shl156, %conv151
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10, i32 noundef %or147, i32 noundef %or157) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i272) #9
  %127 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %extra, align 4
  %srb.i275 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %129 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %srb.i275, align 4
  %device.i276 = getelementptr inbounds %struct.scsi_cmnd, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %device.i276 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device.i276, align 4
  %lun.i277 = getelementptr inbounds %struct.scsi_device, ptr %132, i32 0, i32 18
  %133 = ptrtoint ptr %lun.i277 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %lun.i277, align 8
  %idxprom.i278 = trunc i64 %134 to i32
  %blockshift1.i279 = getelementptr [2 x %struct.alauda_media_info], ptr %128, i32 0, i32 %idxprom.i278, i32 7
  %135 = ptrtoint ptr %blockshift1.i279 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %blockshift1.i279, align 1
  %conv.i280 = zext i8 %136 to i32
  %pageshift9.i281 = getelementptr [2 x %struct.alauda_media_info], ptr %128, i32 0, i32 %idxprom.i278, i32 6
  %137 = ptrtoint ptr %pageshift9.i281 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %pageshift9.i281, align 4
  %conv10.i282 = zext i8 %138 to i32
  %blocksize18.i283 = getelementptr [2 x %struct.alauda_media_info], ptr %128, i32 0, i32 %idxprom.i278, i32 2
  %139 = ptrtoint ptr %blocksize18.i283 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %blocksize18.i283, align 4
  %pagesize26.i284 = getelementptr [2 x %struct.alauda_media_info], ptr %128, i32 0, i32 %idxprom.i278, i32 1
  %141 = ptrtoint ptr %pagesize26.i284 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pagesize26.i284, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i273) #9
  %143 = tail call i32 @llvm.umin.i32(i32 %140, i32 %or157) #9
  %mul.i285 = mul i32 %143, %142
  %call9.i.i311 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i285, i32 noundef 3072) #12
  %tobool.not.i314 = icmp eq ptr %call9.i.i311, null
  br i1 %tobool.not.i314, label %if.end125.alauda_write_data.exit_crit_edge, label %if.end.i317

if.end125.alauda_write_data.exit_crit_edge:       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_data.exit

if.end.i317:                                      ; preds = %if.end125
  %add.i316 = add i32 %142, 64
  %144 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i316, i32 %140) #9
  %145 = extractvalue { i32, i1 } %144, 1
  br i1 %145, label %if.end.i317.if.then30.i_crit_edge, label %if.end7.i.i, !prof !134

if.end.i317.if.then30.i_crit_edge:                ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

if.end7.i.i:                                      ; preds = %if.end.i317
  %146 = extractvalue { i32, i1 } %144, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %146, i32 noundef 3072) #12
  %tobool29.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool29.not.i, label %if.end7.i.i.if.then30.i_crit_edge, label %if.end31.i

if.end7.i.i.if.then30.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end7.i.i.if.then30.i_crit_edge, %if.end.i317.if.then30.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i311) #9
  br label %alauda_write_data.exit

if.end31.i:                                       ; preds = %if.end7.i.i
  %147 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %extra, align 4
  %149 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %srb.i275, align 4
  %device36.i = getelementptr inbounds %struct.scsi_cmnd, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %device36.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device36.i, align 4
  %lun37.i = getelementptr inbounds %struct.scsi_device, ptr %152, i32 0, i32 18
  %153 = ptrtoint ptr %lun37.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %lun37.i, align 8
  %idxprom38.i = trunc i64 %154 to i32
  %arrayidx39.i = getelementptr [2 x %struct.alauda_media_info], ptr %148, i32 0, i32 %idxprom38.i
  %blockmask.i318 = getelementptr [2 x %struct.alauda_media_info], ptr %148, i32 0, i32 %idxprom38.i, i32 5
  %155 = ptrtoint ptr %blockmask.i318 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %blockmask.i318, align 4
  %157 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx39.i, align 4
  %159 = ptrtoint ptr %offset.i272 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %offset.i272, align 4
  %160 = ptrtoint ptr %sg.i273 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %sg.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or157)
  %cmp50.not179.i = icmp eq i32 %or157, 0
  br i1 %cmp50.not179.i, label %if.end31.i.while.end.i341_crit_edge, label %while.body.lr.ph.i322

if.end31.i.while.end.i341_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i341

while.body.lr.ph.i322:                            ; preds = %if.end31.i
  %add47.i = add nuw nsw i32 %conv10.i282, %conv.i280
  %shr48.i = lshr i32 %158, %add47.i
  %and.i319 = and i32 %156, %or147
  %shr.i320 = lshr i32 %or147, %conv.i280
  %conv32.i = trunc i32 %shr.i320 to i16
  %conv60.i321 = and i32 %shr48.i, 65535
  %161 = getelementptr inbounds [3 x i8], ptr %ecc.i.i, i32 0, i32 1
  %162 = getelementptr inbounds [3 x i8], ptr %ecc.i.i, i32 0, i32 2
  %163 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 1
  %164 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 2
  %165 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 3
  %166 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 4
  %167 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 5
  %168 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 6
  %169 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 7
  %170 = getelementptr inbounds [9 x i8], ptr %command.i.i.i, i32 0, i32 8
  %send_bulk_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %171 = getelementptr inbounds [9 x i8], ptr %command.i.i.i.i, i32 0, i32 1
  %172 = getelementptr inbounds [9 x i8], ptr %command.i.i.i.i, i32 0, i32 2
  %173 = getelementptr inbounds [9 x i8], ptr %command.i.i.i.i, i32 0, i32 6
  %174 = getelementptr inbounds [9 x i8], ptr %command.i.i.i.i, i32 0, i32 7
  %175 = getelementptr inbounds [9 x i8], ptr %command.i.i.i.i, i32 0, i32 8
  %176 = getelementptr inbounds [3 x i8], ptr %data.i.i.i.i, i32 0, i32 1
  %177 = getelementptr inbounds [3 x i8], ptr %data.i.i.i.i, i32 0, i32 2
  %recv_bulk_pipe.i.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %178 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 1
  %179 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 2
  %180 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 3
  %181 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 4
  %182 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 5
  %183 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 6
  %184 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 7
  %185 = getelementptr inbounds [9 x i8], ptr %command.i315.i.i, i32 0, i32 8
  %186 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %187 = trunc i32 %shr48.i to i16
  %188 = and i32 %shr.i320, 65535
  %umax = call i16 @llvm.umax.i16(i16 %conv32.i, i16 %187)
  %wide.trip.count = zext i16 %umax to i32
  br label %while.body.i325

while.body.i325:                                  ; preds = %alauda_write_lba.exit.thread153.i.while.body.i325_crit_edge, %while.body.lr.ph.i322
  %indvars.iv = phi i32 [ %indvars.iv.next, %alauda_write_lba.exit.thread153.i.while.body.i325_crit_edge ], [ %188, %while.body.lr.ph.i322 ]
  %sectors.addr.0183.i = phi i32 [ %sub74.i, %alauda_write_lba.exit.thread153.i.while.body.i325_crit_edge ], [ %or157, %while.body.lr.ph.i322 ]
  %page.0180.i = phi i32 [ 0, %alauda_write_lba.exit.thread153.i.while.body.i325_crit_edge ], [ %and.i319, %while.body.lr.ph.i322 ]
  %sub.i323 = sub i32 %140, %page.0180.i
  %189 = call i32 @llvm.umin.i32(i32 %sectors.addr.0183.i, i32 %sub.i323) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %wide.trip.count)
  %exitcond.not = icmp eq i32 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.then63.i326, label %if.end66.i331

if.then63.i326:                                   ; preds = %while.body.i325
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.39, i32 noundef %wide.trip.count, i32 noundef %conv60.i321) #9
  br label %while.end.i341

if.end66.i331:                                    ; preds = %while.body.i325
  %shl.i327 = shl i32 %189, %conv10.i282
  %190 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %srb.i275, align 4
  %call68.i = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i.i311, i32 noundef %shl.i327, ptr noundef %191, ptr noundef nonnull %sg.i273, ptr noundef nonnull %offset.i272, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ecc.i.i) #9
  %192 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 -1, ptr %ecc.i.i, align 1, !annotation !133
  %193 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -1, ptr %161, align 1, !annotation !133
  %194 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 -1, ptr %162, align 1, !annotation !133
  %195 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %extra, align 4
  %197 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %srb.i275, align 4
  %device.i.i328 = getelementptr inbounds %struct.scsi_cmnd, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %device.i.i328 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %device.i.i328, align 4
  %lun.i.i329 = getelementptr inbounds %struct.scsi_device, ptr %200, i32 0, i32 18
  %201 = ptrtoint ptr %lun.i.i329 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %lun.i.i329, align 8
  %idxprom.i.i330 = trunc i64 %202 to i32
  %uzonesize1.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %196, i32 0, i32 %idxprom.i.i330, i32 3
  %203 = ptrtoint ptr %uzonesize1.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %uzonesize1.i.i, align 4
  %zonesize9.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %196, i32 0, i32 %idxprom.i.i330, i32 4
  %205 = ptrtoint ptr %zonesize9.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %zonesize9.i.i, align 4
  %pagesize17.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %196, i32 0, i32 %idxprom.i.i330, i32 1
  %207 = ptrtoint ptr %pagesize17.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pagesize17.i.i, align 4
  %blocksize25.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %196, i32 0, i32 %idxprom.i.i330, i32 2
  %209 = ptrtoint ptr %blocksize25.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %blocksize25.i.i, align 4
  %indvars.iv.frozen = freeze i32 %indvars.iv
  %.frozen = freeze i32 %204
  %div.i.i = udiv i32 %indvars.iv.frozen, %.frozen
  %211 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %indvars.iv.frozen, %211
  call fastcc void @alauda_ensure_map_for_zone(ptr noundef %us, i32 noundef %div.i.i) #9
  %212 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %extra, align 4
  %214 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %srb.i275, align 4
  %device30.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %device30.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %device30.i.i, align 4
  %lun31.i.i = getelementptr inbounds %struct.scsi_device, ptr %217, i32 0, i32 18
  %218 = ptrtoint ptr %lun31.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %lun31.i.i, align 8
  %idxprom32.i.i = trunc i64 %219 to i32
  %lba_to_pba.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %213, i32 0, i32 %idxprom32.i.i, i32 9
  %220 = ptrtoint ptr %lba_to_pba.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %lba_to_pba.i.i, align 4
  %arrayidx34.i.i = getelementptr ptr, ptr %221, i32 %div.i.i
  %222 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx34.i.i, align 4
  %arrayidx35.i.i = getelementptr i16, ptr %223, i32 %rem.i.i.decomposed
  %224 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %arrayidx35.i.i, align 2
  %conv36.i.i = zext i16 %225 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %225)
  %cmp.i134.i = icmp eq i16 %225, 1
  br i1 %cmp.i134.i, label %do.end.i.i, label %if.end.i135.i

do.end.i.i:                                       ; preds = %if.end66.i331
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  br label %alauda_write_lba.exit.thread153.i

if.end.i135.i:                                    ; preds = %if.end66.i331
  %pba_to_lba1.i.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %213, i32 0, i32 %idxprom32.i.i, i32 10
  %226 = ptrtoint ptr %pba_to_lba1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pba_to_lba1.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %227, i32 %div.i.i
  %228 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i.i.i, align 4
  %zonesize.i.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %213, i32 0, i32 %idxprom32.i.i, i32 4
  %230 = ptrtoint ptr %zonesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %zonesize.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp15.not.i.i.i = icmp eq i32 %231, 0
  br i1 %cmp15.not.i.i.i, label %if.end.i135.i.do.end49.i.i_crit_edge, label %if.end.i135.i.for.body.i.i.i_crit_edge

if.end.i135.i.for.body.i.i.i_crit_edge:           ; preds = %if.end.i135.i
  br label %for.body.i.i.i

if.end.i135.i.do.end49.i.i_crit_edge:             ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i135.i.for.body.i.i.i_crit_edge
  %i.016.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i135.i.for.body.i.i.i_crit_edge ]
  %arrayidx2.i.i.i = getelementptr i16, ptr %229, i32 %i.016.i.i.i
  %232 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %233)
  %cmp3.i.i.i = icmp eq i16 %233, -1
  br i1 %cmp3.i.i.i, label %alauda_find_unused_pba.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %231
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end49.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.do.end49.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49.i.i

alauda_find_unused_pba.exit.i.i:                  ; preds = %for.body.i.i.i
  %zoneshift.i.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %213, i32 0, i32 %idxprom32.i.i, i32 8
  %234 = ptrtoint ptr %zoneshift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %zoneshift.i.i.i, align 2
  %conv5.i.i.i = zext i8 %235 to i32
  %shl.i.i.i = shl i32 %div.i.i, %conv5.i.i.i
  %add.i.i.i = add i32 %shl.i.i.i, %i.016.i.i.i
  %conv6.i.i.i = trunc i32 %add.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.i.i.i)
  %tobool.not.i.i = icmp eq i16 %conv6.i.i.i, 0
  br i1 %tobool.not.i.i, label %alauda_find_unused_pba.exit.i.i.do.end49.i.i_crit_edge, label %if.end52.i.i

alauda_find_unused_pba.exit.i.i.do.end49.i.i_crit_edge: ; preds = %alauda_find_unused_pba.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %alauda_find_unused_pba.exit.i.i.do.end49.i.i_crit_edge, %for.inc.i.i.i.do.end49.i.i_crit_edge, %if.end.i135.i.do.end49.i.i_crit_edge
  %call51.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  br label %alauda_write_lba.exit.thread.i

if.end52.i.i:                                     ; preds = %alauda_find_unused_pba.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %225)
  %cmp54.not.i.i = icmp eq i16 %225, -1
  br i1 %cmp54.not.i.i, label %if.else.i.i, label %if.then56.i.i

if.then56.i.i:                                    ; preds = %if.end52.i.i
  %call57.i.i = call fastcc i32 @alauda_read_block_raw(ptr noundef %us, i16 noundef zeroext %225, i32 noundef 0, i32 noundef %210, ptr noundef nonnull %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %cmp58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %cmp58.not.i.i, label %if.then56.i.i.if.end62.i.i_crit_edge, label %if.then56.i.i.alauda_write_lba.exit.thread.i_crit_edge

if.then56.i.i.alauda_write_lba.exit.thread.i_crit_edge: ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_lba.exit.thread.i

if.then56.i.i.if.end62.i.i_crit_edge:             ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

if.else.i.i:                                      ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i333 = add i32 %208, 64
  %mul.i.i334 = mul i32 %210, %add.i.i333
  %236 = call ptr @memset(ptr %call8.i.i, i32 0, i32 %mul.i.i334)
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.else.i.i, %if.then56.i.i.if.end62.i.i_crit_edge
  %rem.tr.i.i = trunc i32 %rem.i.i.decomposed to i16
  %237 = shl i16 %rem.tr.i.i, 1
  %conv63.i.i = or i16 %237, 4096
  %conv64.i.i = zext i16 %conv63.i.i to i32
  %238 = lshr i32 %conv64.i.i, 8
  %and.i.i = and i32 %conv64.i.i, 254
  %xor.i.i = xor i32 %238, %and.i.i
  %arrayidx66.i.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %xor.i.i
  %239 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx66.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool67.not.i.i = icmp ne i8 %240, 0
  %extract.t295.i.i = trunc i16 %237 to i8
  %extract297.i.i = lshr i16 %conv63.i.i, 8
  %extract.t298.i.i = trunc i16 %extract297.i.i to i8
  %extract.t.i.i = zext i1 %tobool67.not.i.i to i8
  %lbap.0.off0.i.i = or i8 %extract.t.i.i, %extract.t295.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp73343.not.i.i = icmp eq i32 %210, 0
  br i1 %cmp73343.not.i.i, label %if.end62.i.i.for.cond109.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i335

if.end62.i.i.for.cond109.preheader.i.i_crit_edge: ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond109.preheader.i.i

for.body.lr.ph.i.i335:                            ; preds = %if.end62.i.i
  %add75.i.i = add i32 %208, 64
  %div87294.i.i = lshr i32 %208, 1
  br label %for.body.i.i337

for.cond109.preheader.i.i:                        ; preds = %if.end98.i.i.for.cond109.preheader.i.i_crit_edge, %if.end62.i.i.for.cond109.preheader.i.i_crit_edge
  %add110.i.i = add i32 %189, %page.0180.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add110.i.i, i32 %page.0180.i)
  %cmp111345.i.i = icmp ugt i32 %add110.i.i, %page.0180.i
  br i1 %cmp111345.i.i, label %for.body113.lr.ph.i.i, label %for.cond109.preheader.i.i.for.end129.i.i_crit_edge

for.cond109.preheader.i.i.for.end129.i.i_crit_edge: ; preds = %for.cond109.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129.i.i

for.body113.lr.ph.i.i:                            ; preds = %for.cond109.preheader.i.i
  %add114.i.i = add i32 %208, 64
  %div122293.i.i = lshr i32 %208, 1
  br label %for.body113.i.i

for.body.i.i337:                                  ; preds = %if.end98.i.i.for.body.i.i337_crit_edge, %for.body.lr.ph.i.i335
  %i.0344.i.i = phi i32 [ 0, %for.body.lr.ph.i.i335 ], [ %inc.i.i338, %if.end98.i.i.for.body.i.i337_crit_edge ]
  %mul76.i.i = mul i32 %i.0344.i.i, %add75.i.i
  %add.ptr.i.i336 = getelementptr i8, ptr %call8.i.i, i32 %mul76.i.i
  %add.ptr77.i.i = getelementptr i8, ptr %add.ptr.i.i336, i32 %208
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr.i.i336, ptr noundef nonnull %ecc.i.i) #9
  %add.ptr78.i.i = getelementptr i8, ptr %add.ptr77.i.i, i32 13
  %241 = ptrtoint ptr %add.ptr78.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %add.ptr78.i.i, align 1
  %243 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %ecc.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %242, i8 %244)
  %cmp.i.i136.i = icmp eq i8 %242, %244
  br i1 %cmp.i.i136.i, label %land.lhs.true.i.i.i, label %for.body.i.i337.if.then82.i.i_crit_edge

for.body.i.i337.if.then82.i.i_crit_edge:          ; preds = %for.body.i.i337
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i337
  %arrayidx4.i.i.i = getelementptr i8, ptr %add.ptr78.i.i, i32 1
  %245 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx4.i.i.i, align 1
  %247 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %161, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %246, i8 %248)
  %cmp8.i.i.i = icmp eq i8 %246, %248
  br i1 %cmp8.i.i.i, label %nand_compare_ecc.exit.i.i, label %land.lhs.true.i.i.i.if.then82.i.i_crit_edge

land.lhs.true.i.i.i.if.then82.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

nand_compare_ecc.exit.i.i:                        ; preds = %land.lhs.true.i.i.i
  %arrayidx10.i.i.i = getelementptr i8, ptr %add.ptr78.i.i, i32 2
  %249 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx10.i.i.i, align 1
  %251 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %162, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %250, i8 %252)
  %cmp14.i.not.i.i = icmp eq i8 %250, %252
  br i1 %cmp14.i.not.i.i, label %nand_compare_ecc.exit.i.i.if.end86.i.i_crit_edge, label %nand_compare_ecc.exit.i.i.if.then82.i.i_crit_edge

nand_compare_ecc.exit.i.i.if.then82.i.i_crit_edge: ; preds = %nand_compare_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

nand_compare_ecc.exit.i.i.if.end86.i.i_crit_edge: ; preds = %nand_compare_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i.i

if.then82.i.i:                                    ; preds = %nand_compare_ecc.exit.i.i.if.then82.i.i_crit_edge, %land.lhs.true.i.i.i.if.then82.i.i_crit_edge, %for.body.i.i337.if.then82.i.i_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.45, i32 noundef %i.0344.i.i, i32 noundef %conv36.i.i) #9
  %253 = call ptr @memcpy(ptr %add.ptr78.i.i, ptr %ecc.i.i, i32 3)
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %if.then82.i.i, %nand_compare_ecc.exit.i.i.if.end86.i.i_crit_edge
  %add.ptr88.i.i = getelementptr i8, ptr %add.ptr.i.i336, i32 %div87294.i.i
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr88.i.i, ptr noundef nonnull %ecc.i.i) #9
  %add.ptr90.i.i = getelementptr i8, ptr %add.ptr77.i.i, i32 8
  %254 = ptrtoint ptr %add.ptr90.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %add.ptr90.i.i, align 1
  %256 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %ecc.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %255, i8 %257)
  %cmp.i301.i.i = icmp eq i8 %255, %257
  br i1 %cmp.i301.i.i, label %land.lhs.true.i305.i.i, label %if.end86.i.i.if.then94.i.i_crit_edge

if.end86.i.i.if.then94.i.i_crit_edge:             ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94.i.i

land.lhs.true.i305.i.i:                           ; preds = %if.end86.i.i
  %arrayidx4.i302.i.i = getelementptr i8, ptr %add.ptr90.i.i, i32 1
  %258 = ptrtoint ptr %arrayidx4.i302.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx4.i302.i.i, align 1
  %260 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %161, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %259, i8 %261)
  %cmp8.i304.i.i = icmp eq i8 %259, %261
  br i1 %cmp8.i304.i.i, label %nand_compare_ecc.exit311.i.i, label %land.lhs.true.i305.i.i.if.then94.i.i_crit_edge

land.lhs.true.i305.i.i.if.then94.i.i_crit_edge:   ; preds = %land.lhs.true.i305.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94.i.i

nand_compare_ecc.exit311.i.i:                     ; preds = %land.lhs.true.i305.i.i
  %arrayidx10.i306.i.i = getelementptr i8, ptr %add.ptr90.i.i, i32 2
  %262 = ptrtoint ptr %arrayidx10.i306.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx10.i306.i.i, align 1
  %264 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %162, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %263, i8 %265)
  %cmp14.i308.not.i.i = icmp eq i8 %263, %265
  br i1 %cmp14.i308.not.i.i, label %nand_compare_ecc.exit311.i.i.if.end98.i.i_crit_edge, label %nand_compare_ecc.exit311.i.i.if.then94.i.i_crit_edge

nand_compare_ecc.exit311.i.i.if.then94.i.i_crit_edge: ; preds = %nand_compare_ecc.exit311.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94.i.i

nand_compare_ecc.exit311.i.i.if.end98.i.i_crit_edge: ; preds = %nand_compare_ecc.exit311.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i.i

if.then94.i.i:                                    ; preds = %nand_compare_ecc.exit311.i.i.if.then94.i.i_crit_edge, %land.lhs.true.i305.i.i.if.then94.i.i_crit_edge, %if.end86.i.i.if.then94.i.i_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.46, i32 noundef %i.0344.i.i, i32 noundef %conv36.i.i) #9
  %266 = call ptr @memcpy(ptr %add.ptr90.i.i, ptr %ecc.i.i, i32 3)
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then94.i.i, %nand_compare_ecc.exit311.i.i.if.end98.i.i_crit_edge
  %arrayidx102.i.i = getelementptr i8, ptr %add.ptr77.i.i, i32 11
  %267 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %extract.t298.i.i, ptr %arrayidx102.i.i, align 1
  %arrayidx103.i.i = getelementptr i8, ptr %add.ptr77.i.i, i32 6
  %268 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %extract.t298.i.i, ptr %arrayidx103.i.i, align 1
  %arrayidx107.i.i = getelementptr i8, ptr %add.ptr77.i.i, i32 12
  %269 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %lbap.0.off0.i.i, ptr %arrayidx107.i.i, align 1
  %arrayidx108.i.i = getelementptr i8, ptr %add.ptr77.i.i, i32 7
  %270 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %lbap.0.off0.i.i, ptr %arrayidx108.i.i, align 1
  %inc.i.i338 = add nuw i32 %i.0344.i.i, 1
  %exitcond.not.i.i339 = icmp eq i32 %inc.i.i338, %210
  br i1 %exitcond.not.i.i339, label %if.end98.i.i.for.cond109.preheader.i.i_crit_edge, label %if.end98.i.i.for.body.i.i337_crit_edge

if.end98.i.i.for.body.i.i337_crit_edge:           ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i337

if.end98.i.i.for.cond109.preheader.i.i_crit_edge: ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond109.preheader.i.i

for.body113.i.i:                                  ; preds = %for.body113.i.i.for.body113.i.i_crit_edge, %for.body113.lr.ph.i.i
  %i.1347.i.i = phi i32 [ %page.0180.i, %for.body113.lr.ph.i.i ], [ %inc128.i.i, %for.body113.i.i.for.body113.i.i_crit_edge ]
  %xptr.0346.i.i = phi ptr [ %call9.i.i311, %for.body113.lr.ph.i.i ], [ %add.ptr118.i.i, %for.body113.i.i.for.body113.i.i_crit_edge ]
  %mul115.i.i = mul i32 %i.1347.i.i, %add114.i.i
  %add.ptr116.i.i = getelementptr i8, ptr %call8.i.i, i32 %mul115.i.i
  %add.ptr117.i.i = getelementptr i8, ptr %add.ptr116.i.i, i32 %208
  %271 = call ptr @memcpy(ptr %add.ptr116.i.i, ptr %xptr.0346.i.i, i32 %208)
  %add.ptr118.i.i = getelementptr i8, ptr %xptr.0346.i.i, i32 %208
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr116.i.i, ptr noundef nonnull %ecc.i.i) #9
  %add.ptr120.i.i = getelementptr i8, ptr %add.ptr117.i.i, i32 13
  %272 = call ptr @memcpy(ptr %add.ptr120.i.i, ptr %ecc.i.i, i32 3)
  %add.ptr123.i.i = getelementptr i8, ptr %add.ptr116.i.i, i32 %div122293.i.i
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr123.i.i, ptr noundef nonnull %ecc.i.i) #9
  %add.ptr125.i.i = getelementptr i8, ptr %add.ptr117.i.i, i32 8
  %273 = call ptr @memcpy(ptr %add.ptr125.i.i, ptr %ecc.i.i, i32 3)
  %inc128.i.i = add i32 %i.1347.i.i, 1
  %exitcond349.not.i.i = icmp eq i32 %inc128.i.i, %add110.i.i
  br i1 %exitcond349.not.i.i, label %for.body113.i.i.for.end129.i.i_crit_edge, label %for.body113.i.i.for.body113.i.i_crit_edge

for.body113.i.i.for.body113.i.i_crit_edge:        ; preds = %for.body113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body113.i.i

for.body113.i.i.for.end129.i.i_crit_edge:         ; preds = %for.body113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129.i.i

for.end129.i.i:                                   ; preds = %for.body113.i.i.for.end129.i.i_crit_edge, %for.cond109.preheader.i.i.for.end129.i.i_crit_edge
  %274 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %command.i.i.i) #9
  %276 = ptrtoint ptr %command.i.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 64, ptr %command.i.i.i, align 1
  %277 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 -76, ptr %163, align 1
  %conv.i.i.i = and i32 %add.i.i.i, 65535
  %278 = lshr i32 %add.i.i.i, 3
  %conv2.i.i.i = trunc i32 %278 to i8
  %279 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv2.i.i.i, ptr %164, align 1
  %280 = lshr i16 %conv6.i.i.i, 11
  %conv6.i312.i.i = trunc i16 %280 to i8
  %281 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv6.i312.i.i, ptr %165, align 1
  %282 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %166, align 1
  %pba.tr.i.i.i = trunc i32 %add.i.i.i to i8
  %conv10.i.i.i = shl i8 %pba.tr.i.i.i, 5
  %283 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv10.i.i.i, ptr %167, align 1
  %284 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 32, ptr %168, align 1
  %285 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %169, align 1
  %286 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %srb.i275, align 4
  %device.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %device.i.i.i, align 4
  %lun.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %289, i32 0, i32 18
  %290 = ptrtoint ptr %lun.i.i.i to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %lun.i.i.i, align 8
  %conv14.i.i.i = trunc i64 %291 to i8
  %292 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv14.i.i.i, ptr %170, align 1
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.48, i32 noundef %conv.i.i.i) #9
  %293 = ptrtoint ptr %send_bulk_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %send_bulk_pipe.i.i.i, align 4
  %call.i.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %294, ptr noundef nonnull %command.i.i.i, i32 noundef 9, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i137.i, label %for.end129.i.i.alauda_write_block.exit.thread.i.i_crit_edge

for.end129.i.i.alauda_write_block.exit.thread.i.i_crit_edge: ; preds = %for.end129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_block.exit.thread.i.i

if.end.i.i137.i:                                  ; preds = %for.end129.i.i
  %wr_ep.i.i.i = getelementptr inbounds %struct.alauda_info, ptr %275, i32 0, i32 1
  %295 = ptrtoint ptr %wr_ep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %wr_ep.i.i.i, align 4
  %297 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %extra, align 4
  %299 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %srb.i275, align 4
  %device19.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %device19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %device19.i.i.i, align 4
  %lun20.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %302, i32 0, i32 18
  %303 = ptrtoint ptr %lun20.i.i.i to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %lun20.i.i.i, align 8
  %idxprom.i.i.i = trunc i64 %304 to i32
  %pagesize.i.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %298, i32 0, i32 %idxprom.i.i.i, i32 1
  %305 = ptrtoint ptr %pagesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %pagesize.i.i.i, align 4
  %add.i313.i.i = add i32 %306, 64
  %blocksize.i.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %298, i32 0, i32 %idxprom.i.i.i, i32 2
  %307 = ptrtoint ptr %blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %blocksize.i.i.i, align 4
  %mul.i.i.i = mul i32 %add.i313.i.i, %308
  %call28.i.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %296, ptr noundef nonnull %call8.i.i, i32 noundef %mul.i.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %cmp29.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  br i1 %cmp29.not.i.i.i, label %if.end32.i.i.i, label %if.end.i.i137.i.alauda_write_block.exit.thread.i.i_crit_edge

if.end.i.i137.i.alauda_write_block.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_block.exit.thread.i.i

if.end32.i.i.i:                                   ; preds = %if.end.i.i137.i
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %command.i.i.i.i) #9
  %309 = ptrtoint ptr %command.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 64, ptr %command.i.i.i.i, align 1
  %310 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 -73, ptr %171, align 1
  %311 = ptrtoint ptr %172 to i32
  call void @__asan_storeN_noabort(i32 %311, i32 4)
  store i32 0, ptr %172, align 1
  %312 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 3, ptr %173, align 1
  %313 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %174, align 1
  %314 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %srb.i275, align 4
  %device.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %315, i32 0, i32 1
  %316 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %device.i.i.i.i, align 4
  %lun.i.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %317, i32 0, i32 18
  %318 = ptrtoint ptr %lun.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %lun.i.i.i.i, align 8
  %conv.i.i.i.i = trunc i64 %319 to i8
  %320 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %conv.i.i.i.i, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i.i) #9
  %321 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 -1, ptr %data.i.i.i.i, align 1, !annotation !133
  %322 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 -1, ptr %176, align 1, !annotation !133
  %323 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 -1, ptr %177, align 1, !annotation !133
  %324 = ptrtoint ptr %send_bulk_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %send_bulk_pipe.i.i.i, align 4
  %call.i.i.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %325, ptr noundef nonnull %command.i.i.i.i, i32 noundef 9, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i138.i, label %if.end32.i.i.i.alauda_write_block.exit.thread337.i.i_crit_edge

if.end32.i.i.i.alauda_write_block.exit.thread337.i.i_crit_edge: ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_block.exit.thread337.i.i

if.end.i.i.i138.i:                                ; preds = %if.end32.i.i.i
  %326 = ptrtoint ptr %recv_bulk_pipe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %recv_bulk_pipe.i.i.i.i, align 4
  %call10.i.i.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %327, ptr noundef nonnull %data.i.i.i.i, i32 noundef 3, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i)
  %cmp11.not.i.i.i.i = icmp eq i32 %call10.i.i.i.i, 0
  br i1 %cmp11.not.i.i.i.i, label %alauda_write_block.exit.i.i, label %if.end.i.i.i138.i.alauda_write_block.exit.thread337.i.i_crit_edge

if.end.i.i.i138.i.alauda_write_block.exit.thread337.i.i_crit_edge: ; preds = %if.end.i.i.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_block.exit.thread337.i.i

alauda_write_block.exit.thread.i.i:               ; preds = %if.end.i.i137.i.alauda_write_block.exit.thread.i.i_crit_edge, %for.end129.i.i.alauda_write_block.exit.thread.i.i_crit_edge
  %retval.0.i314.ph.i.i = phi i32 [ %call28.i.i.i, %if.end.i.i137.i.alauda_write_block.exit.thread.i.i_crit_edge ], [ %call.i.i.i, %for.end129.i.i.alauda_write_block.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i.i) #9
  br label %alauda_write_lba.exit.thread.i

alauda_write_block.exit.thread337.i.i:            ; preds = %if.end.i.i.i138.i.alauda_write_block.exit.thread337.i.i_crit_edge, %if.end32.i.i.i.alauda_write_block.exit.thread337.i.i_crit_edge
  %retval.0.i.i.ph.i.i = phi i32 [ %call10.i.i.i.i, %if.end.i.i.i138.i.alauda_write_block.exit.thread337.i.i_crit_edge ], [ %call.i.i.i.i, %if.end32.i.i.i.alauda_write_block.exit.thread337.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i.i) #9
  br label %alauda_write_lba.exit.thread.i

alauda_write_block.exit.i.i:                      ; preds = %if.end.i.i.i138.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.49, ptr noundef nonnull %data.i.i.i.i) #9
  %328 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %data.i.i.i.i, align 1
  %330 = shl i8 %329, 2
  %331 = and i8 %330, 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %cmp131.not.i.i = icmp eq i8 %331, 0
  br i1 %cmp131.not.i.i, label %if.end134.i.i, label %alauda_write_lba.exit.i

if.end134.i.i:                                    ; preds = %alauda_write_block.exit.i.i
  %mul136.i.i = mul i32 %div.i.i, %206
  %sub.i.i = sub i32 %conv.i.i.i, %mul136.i.i
  %332 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %extra, align 4
  %334 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %srb.i275, align 4
  %device140.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %device140.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %device140.i.i, align 4
  %lun141.i.i = getelementptr inbounds %struct.scsi_device, ptr %337, i32 0, i32 18
  %338 = ptrtoint ptr %lun141.i.i to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %lun141.i.i, align 8
  %idxprom142.i.i = trunc i64 %339 to i32
  %pba_to_lba.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %333, i32 0, i32 %idxprom142.i.i, i32 10
  %340 = ptrtoint ptr %pba_to_lba.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %pba_to_lba.i.i, align 4
  %arrayidx144.i.i = getelementptr ptr, ptr %341, i32 %div.i.i
  %342 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %arrayidx144.i.i, align 4
  %arrayidx145.i.i = getelementptr i16, ptr %343, i32 %sub.i.i
  %344 = trunc i32 %indvars.iv to i16
  %345 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %344, ptr %arrayidx145.i.i, align 2
  %346 = load ptr, ptr %extra, align 4
  %347 = load ptr, ptr %srb.i275, align 4
  %device149.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %device149.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %device149.i.i, align 4
  %lun150.i.i = getelementptr inbounds %struct.scsi_device, ptr %349, i32 0, i32 18
  %350 = ptrtoint ptr %lun150.i.i to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %lun150.i.i, align 8
  %idxprom151.i.i = trunc i64 %351 to i32
  %lba_to_pba153.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %346, i32 0, i32 %idxprom151.i.i, i32 9
  %352 = ptrtoint ptr %lba_to_pba153.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %lba_to_pba153.i.i, align 4
  %arrayidx154.i.i = getelementptr ptr, ptr %353, i32 %div.i.i
  %354 = ptrtoint ptr %arrayidx154.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx154.i.i, align 4
  %arrayidx155.i.i = getelementptr i16, ptr %355, i32 %rem.i.i.decomposed
  %356 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %conv6.i.i.i, ptr %arrayidx155.i.i, align 2
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.47, i32 noundef %indvars.iv, i32 noundef %conv.i.i.i) #9
  br i1 %cmp54.not.i.i, label %if.end134.i.i.alauda_write_lba.exit.thread153.i_crit_edge, label %if.then161.i.i

if.end134.i.i.alauda_write_lba.exit.thread153.i_crit_edge: ; preds = %if.end134.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_write_lba.exit.thread153.i

if.then161.i.i:                                   ; preds = %if.end134.i.i
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %command.i315.i.i) #9
  %357 = ptrtoint ptr %command.i315.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 64, ptr %command.i315.i.i, align 1
  %358 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 -93, ptr %178, align 1
  %359 = lshr i16 %225, 3
  %conv2.i317.i.i = trunc i16 %359 to i8
  %360 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %conv2.i317.i.i, ptr %179, align 1
  %361 = lshr i16 %225, 11
  %conv6.i318.i.i = trunc i16 %361 to i8
  %362 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv6.i318.i.i, ptr %180, align 1
  %363 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 0, ptr %181, align 1
  %pba.tr.i319.i.i = trunc i16 %225 to i8
  %conv10.i320.i.i = shl i8 %pba.tr.i319.i.i, 5
  %364 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %conv10.i320.i.i, ptr %182, align 1
  %365 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 2, ptr %183, align 1
  %366 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 0, ptr %184, align 1
  %367 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %srb.i275, align 4
  %device.i322.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %368, i32 0, i32 1
  %369 = ptrtoint ptr %device.i322.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %device.i322.i.i, align 4
  %lun.i323.i.i = getelementptr inbounds %struct.scsi_device, ptr %370, i32 0, i32 18
  %371 = ptrtoint ptr %lun.i323.i.i to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %lun.i323.i.i, align 8
  %conv14.i324.i.i = trunc i64 %372 to i8
  %373 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %conv14.i324.i.i, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #9
  %374 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 -1, ptr %buf.i.i.i, align 1, !annotation !133
  %375 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 -1, ptr %186, align 1, !annotation !133
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.50, i32 noundef %conv36.i.i) #9
  %376 = ptrtoint ptr %send_bulk_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %send_bulk_pipe.i.i.i, align 4
  %call.i326.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %377, ptr noundef nonnull %command.i315.i.i, i32 noundef 9, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326.i.i)
  %cmp.not.i327.i.i = icmp eq i32 %call.i326.i.i, 0
  br i1 %cmp.not.i327.i.i, label %if.end.i328.i.i, label %if.then161.i.i.alauda_erase_block.exit.thread.i.i_crit_edge

if.then161.i.i.alauda_erase_block.exit.thread.i.i_crit_edge: ; preds = %if.then161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_erase_block.exit.thread.i.i

if.end.i328.i.i:                                  ; preds = %if.then161.i.i
  %378 = ptrtoint ptr %recv_bulk_pipe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %recv_bulk_pipe.i.i.i.i, align 4
  %call18.i.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %379, ptr noundef nonnull %buf.i.i.i, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %call18.i.i.i, 0
  br i1 %cmp19.not.i.i.i, label %if.end169.i.i, label %if.end.i328.i.i.alauda_erase_block.exit.thread.i.i_crit_edge

if.end.i328.i.i.alauda_erase_block.exit.thread.i.i_crit_edge: ; preds = %if.end.i328.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_erase_block.exit.thread.i.i

alauda_erase_block.exit.thread.i.i:               ; preds = %if.end.i328.i.i.alauda_erase_block.exit.thread.i.i_crit_edge, %if.then161.i.i.alauda_erase_block.exit.thread.i.i_crit_edge
  %retval.0.i329.ph.i.i = phi i32 [ %call18.i.i.i, %if.end.i328.i.i.alauda_erase_block.exit.thread.i.i_crit_edge ], [ %call.i326.i.i, %if.then161.i.i.alauda_erase_block.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i315.i.i) #9
  br label %alauda_write_lba.exit.thread.i

if.end169.i.i:                                    ; preds = %if.end.i328.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %380 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %buf.i.i.i, align 1
  %conv23.i.i.i = zext i8 %381 to i32
  %382 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %186, align 1
  %conv25.i.i.i = zext i8 %383 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.51, i32 noundef %conv23.i.i.i, i32 noundef %conv25.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i315.i.i) #9
  %sub164.i.i = sub i32 %conv36.i.i, %mul136.i.i
  %384 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %extra, align 4
  %386 = ptrtoint ptr %srb.i275 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %srb.i275, align 4
  %device173.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %device173.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %device173.i.i, align 4
  %lun174.i.i = getelementptr inbounds %struct.scsi_device, ptr %389, i32 0, i32 18
  %390 = ptrtoint ptr %lun174.i.i to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %lun174.i.i, align 8
  %idxprom175.i.i = trunc i64 %391 to i32
  %pba_to_lba177.i.i = getelementptr [2 x %struct.alauda_media_info], ptr %385, i32 0, i32 %idxprom175.i.i, i32 10
  %392 = ptrtoint ptr %pba_to_lba177.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %pba_to_lba177.i.i, align 4
  %arrayidx178.i.i = getelementptr ptr, ptr %393, i32 %div.i.i
  %394 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx178.i.i, align 4
  %arrayidx179.i.i = getelementptr i16, ptr %395, i32 %sub164.i.i
  %396 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 -1, ptr %arrayidx179.i.i, align 2
  br label %alauda_write_lba.exit.thread153.i

alauda_write_lba.exit.thread.i:                   ; preds = %alauda_erase_block.exit.thread.i.i, %alauda_write_block.exit.thread337.i.i, %alauda_write_block.exit.thread.i.i, %if.then56.i.i.alauda_write_lba.exit.thread.i_crit_edge, %do.end49.i.i
  %retval.1.i139.ph.i = phi i32 [ %retval.0.i329.ph.i.i, %alauda_erase_block.exit.thread.i.i ], [ %retval.0.i.i.ph.i.i, %alauda_write_block.exit.thread337.i.i ], [ %retval.0.i314.ph.i.i, %alauda_write_block.exit.thread.i.i ], [ 3, %do.end49.i.i ], [ %call57.i.i, %if.then56.i.i.alauda_write_lba.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #9
  br label %while.end.i341

alauda_write_lba.exit.thread153.i:                ; preds = %if.end169.i.i, %if.end134.i.i.alauda_write_lba.exit.thread153.i_crit_edge, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #9
  %sub74.i = sub i32 %sectors.addr.0183.i, %189
  %cmp50.not.i = icmp eq i32 %sub74.i, 0
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br i1 %cmp50.not.i, label %alauda_write_lba.exit.thread153.i.while.end.i341_crit_edge, label %alauda_write_lba.exit.thread153.i.while.body.i325_crit_edge

alauda_write_lba.exit.thread153.i.while.body.i325_crit_edge: ; preds = %alauda_write_lba.exit.thread153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i325

alauda_write_lba.exit.thread153.i.while.end.i341_crit_edge: ; preds = %alauda_write_lba.exit.thread153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i341

alauda_write_lba.exit.i:                          ; preds = %alauda_write_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %397 = zext i8 %331 to i32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #9
  br label %while.end.i341

while.end.i341:                                   ; preds = %alauda_write_lba.exit.i, %alauda_write_lba.exit.thread153.i.while.end.i341_crit_edge, %alauda_write_lba.exit.thread.i, %if.then63.i326, %if.end31.i.while.end.i341_crit_edge
  %result.2.i = phi i32 [ %retval.1.i139.ph.i, %alauda_write_lba.exit.thread.i ], [ %397, %alauda_write_lba.exit.i ], [ 3, %if.then63.i326 ], [ 0, %if.end31.i.while.end.i341_crit_edge ], [ 0, %alauda_write_lba.exit.thread153.i.while.end.i341_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i311) #9
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %alauda_write_data.exit

alauda_write_data.exit:                           ; preds = %while.end.i341, %if.then30.i, %if.end125.alauda_write_data.exit_crit_edge
  %retval.0.i342 = phi i32 [ %result.2.i, %while.end.i341 ], [ 3, %if.then30.i ], [ 3, %if.end125.alauda_write_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i273) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i272) #9
  br label %cleanup192

if.then167:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11) #9
  %398 = getelementptr inbounds i8, ptr %3, i32 1
  %399 = call ptr @memset(ptr %398, i32 0, i32 17)
  %400 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 -16, ptr %3, align 1
  %sense_key = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 2
  %401 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %sense_key, align 4
  %arrayidx169 = getelementptr i8, ptr %3, i32 2
  %403 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %402, ptr %arrayidx169, align 1
  %arrayidx170 = getelementptr i8, ptr %3, i32 7
  %404 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 11, ptr %arrayidx170, align 1
  %sense_asc = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 3
  %405 = ptrtoint ptr %sense_asc to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %sense_asc, align 4
  %conv171 = trunc i32 %406 to i8
  %arrayidx172 = getelementptr i8, ptr %3, i32 12
  %407 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %conv171, ptr %arrayidx172, align 1
  %sense_ascq = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 4
  %408 = ptrtoint ptr %sense_ascq to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %sense_ascq, align 4
  %conv173 = trunc i32 %409 to i8
  %arrayidx174 = getelementptr i8, ptr %3, i32 13
  %410 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %conv173, ptr %arrayidx174, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %3, i32 noundef 18, ptr noundef %srb) #9
  br label %cleanup192

if.end182:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv) #9
  %sense_key189 = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 2
  %411 = ptrtoint ptr %sense_key189 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 5, ptr %sense_key189, align 4
  %sense_asc190 = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 3
  %412 = ptrtoint ptr %sense_asc190 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 32, ptr %sense_asc190, align 4
  %sense_ascq191 = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 4
  %413 = ptrtoint ptr %sense_ascq191 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 0, ptr %sense_ascq191, align 4
  br label %cleanup192

cleanup192:                                       ; preds = %if.end182, %if.then167, %alauda_write_data.exit, %if.then118.cleanup192_crit_edge, %alauda_read_data.exit, %if.then73.cleanup192_crit_edge, %if.end19, %if.then14.cleanup192_crit_edge, %if.then7, %if.then, %entry.cleanup192_crit_edge
  %retval.3 = phi i32 [ 0, %if.then ], [ %call, %if.then7 ], [ 0, %if.then167 ], [ 1, %if.end182 ], [ 0, %if.end19 ], [ 1, %if.then14.cleanup192_crit_edge ], [ %retval.0.i, %alauda_read_data.exit ], [ 1, %if.then73.cleanup192_crit_edge ], [ %retval.0.i342, %alauda_write_data.exit ], [ %call121, %if.then118.cleanup192_crit_edge ], [ 0, %entry.cleanup192_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_alauda(ptr nocapture noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pusb_intf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 2
  %0 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusb_intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  store i8 0, ptr @parity, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.063.i = phi i32 [ 1, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nuw i32 %i.063.i, 2147483647
  %and.i = and i32 %sub.i, %i.063.i
  %arrayidx.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = xor i8 %5, 1
  %arrayidx2.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %i.063.i
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx2.i, align 1
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.cond7.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.cond7.preheader.i_crit_edge:       ; preds = %for.body.i
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge, %for.body.i.for.cond7.preheader.i_crit_edge
  %i.167.i = phi i32 [ %inc42.i, %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge ], [ 0, %for.body.i.for.cond7.preheader.i_crit_edge ]
  %and11.i = and i32 %i.167.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 84
  %and11.1.i = and i32 %i.167.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1.i)
  %tobool.not.1.i = icmp eq i32 %and11.1.i, 0
  %xor27.1.i = xor i32 %spec.select.i, 80
  %a.3.1.i = select i1 %tobool.not.1.i, i32 %spec.select.i, i32 %xor27.1.i
  %and11.2.i = and i32 %i.167.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2.i)
  %tobool.not.2.i = icmp eq i32 %and11.2.i, 0
  %xor27.2.i = xor i32 %a.3.1.i, 68
  %a.3.2.i = select i1 %tobool.not.2.i, i32 %a.3.1.i, i32 %xor27.2.i
  %and11.3.i = and i32 %i.167.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3.i)
  %tobool.not.3.i = icmp eq i32 %and11.3.i, 0
  %xor27.3.i = xor i32 %a.3.2.i, 64
  %a.3.3.i = select i1 %tobool.not.3.i, i32 %a.3.2.i, i32 %xor27.3.i
  %and11.4.i = and i32 %i.167.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.4.i)
  %tobool.not.4.i = icmp eq i32 %and11.4.i, 0
  %xor21.4.i = xor i32 %a.3.3.i, 20
  %a.3.4.i = select i1 %tobool.not.4.i, i32 %a.3.3.i, i32 %xor21.4.i
  %and11.5.i = and i32 %i.167.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.5.i)
  %tobool.not.5.i = icmp eq i32 %and11.5.i, 0
  %xor21.5.i = xor i32 %a.3.4.i, 16
  %a.3.5.i = select i1 %tobool.not.5.i, i32 %a.3.4.i, i32 %xor21.5.i
  %and11.6.i = and i32 %i.167.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.6.i)
  %tobool.not.6.i = icmp eq i32 %and11.6.i, 0
  %xor16.6.i = xor i32 %a.3.5.i, 4
  %a.3.6.i = select i1 %tobool.not.6.i, i32 %a.3.5.i, i32 %xor16.6.i
  %shl33.i = shl i32 %a.3.6.i, 1
  %arrayidx35.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %i.167.i
  %8 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool37.not.i = icmp eq i8 %9, 0
  %cond.i = select i1 %tobool37.not.i, i32 0, i32 168
  %xor34.i = xor i32 %a.3.6.i, %cond.i
  %xor38.i = xor i32 %xor34.i, %shl33.i
  %10 = trunc i32 %xor38.i to i8
  %conv39.i = xor i8 %10, -1
  %arrayidx40.i = getelementptr [256 x i8], ptr @ecc2, i32 0, i32 %i.167.i
  %11 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv39.i, ptr %arrayidx40.i, align 1
  %inc42.i = add nuw nsw i32 %i.167.i, 1
  %exitcond69.not.i = icmp eq i32 %inc42.i, 256
  br i1 %exitcond69.not.i, label %nand_init_ecc.exit, label %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge

for.cond7.preheader.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader.i

nand_init_ecc.exit:                               ; preds = %for.cond7.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3328, i32 noundef 88) #14
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %13 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %extra, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %nand_init_ecc.exit.cleanup_crit_edge, label %if.end

nand_init_ecc.exit.cleanup_crit_edge:             ; preds = %nand_init_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %nand_init_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %14 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @alauda_info_destructor, ptr %extra_destructor, align 4
  %pusb_dev = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %15 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pusb_dev, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 2
  %21 = and i8 %20, 15
  %and = zext i8 %21 to i32
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 8
  %shl.i = shl i32 %23, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or = or i32 %or.i, -1073741824
  %wr_ep = getelementptr inbounds %struct.alauda_info, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %wr_ep to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %wr_ep, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nand_init_ecc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 3, %nand_init_ecc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alauda_info_destructor(ptr noundef readonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %zoneshift.i = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 0, i32 8
  %0 = ptrtoint ptr %zoneshift.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %zoneshift.i, align 2
  %conv.i = zext i8 %1 to i32
  %blockshift.i = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 0, i32 7
  %2 = ptrtoint ptr %blockshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %blockshift.i, align 1
  %conv1.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %pageshift.i = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 0, i32 6
  %4 = ptrtoint ptr %pageshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pageshift.i, align 4
  %conv2.i = zext i8 %5 to i32
  %add3.i = add nuw nsw i32 %add.i, %conv2.i
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra, align 4
  %shr.i = lshr i32 %7, %add3.i
  %lba_to_pba.i = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 0, i32 9
  %8 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lba_to_pba.i, align 4
  %cmp.not.i = icmp ne ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp542.i = icmp ne i32 %shr.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp542.i, i1 false
  br i1 %or.cond.i, label %for.body.preheader.for.body.i_crit_edge, label %for.body.preheader.if.end.i_crit_edge

for.body.preheader.if.end.i_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.preheader.for.body.i_crit_edge:          ; preds = %for.body.preheader
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.043.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %15, i32 %i.043.i
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx9.i, align 4
  %inc.i = add nuw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.preheader.if.end.i_crit_edge
  %pba_to_lba.i = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 0, i32 10
  %17 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pba_to_lba.i, align 4
  %cmp10.not.i = icmp ne ptr %18, null
  %or.cond46.i = select i1 %cmp10.not.i, i1 %cmp542.i, i1 false
  br i1 %or.cond46.i, label %if.end.i.for.body16.i_crit_edge, label %if.end.i.alauda_free_maps.exit_crit_edge

if.end.i.alauda_free_maps.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_free_maps.exit

if.end.i.for.body16.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %if.end.i.for.body16.i_crit_edge
  %i.145.i = phi i32 [ %inc22.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %if.end.i.for.body16.i_crit_edge ]
  %19 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx18.i = getelementptr ptr, ptr %20, i32 %i.145.i
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.i, align 4
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %24, i32 %i.145.i
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx20.i, align 4
  %inc22.i = add nuw i32 %i.145.i, 1
  %exitcond47.not.i = icmp eq i32 %inc22.i, %shr.i
  br i1 %exitcond47.not.i, label %for.body16.i.alauda_free_maps.exit_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i

for.body16.i.alauda_free_maps.exit_crit_edge:     ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_free_maps.exit

alauda_free_maps.exit:                            ; preds = %for.body16.i.alauda_free_maps.exit_crit_edge, %if.end.i.alauda_free_maps.exit_crit_edge
  %26 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lba_to_pba.i, align 4
  tail call void @kfree(ptr noundef %27) #9
  %28 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pba_to_lba.i, align 4
  tail call void @kfree(ptr noundef %29) #9
  %arrayidx.1 = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 1
  %zoneshift.i.1 = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %zoneshift.i.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %zoneshift.i.1, align 2
  %conv.i.1 = zext i8 %31 to i32
  %blockshift.i.1 = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %blockshift.i.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %blockshift.i.1, align 1
  %conv1.i.1 = zext i8 %33 to i32
  %add.i.1 = add nuw nsw i32 %conv1.i.1, %conv.i.1
  %pageshift.i.1 = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %pageshift.i.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pageshift.i.1, align 4
  %conv2.i.1 = zext i8 %35 to i32
  %add3.i.1 = add nuw nsw i32 %add.i.1, %conv2.i.1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1, align 4
  %shr.i.1 = lshr i32 %37, %add3.i.1
  %lba_to_pba.i.1 = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 1, i32 9
  %38 = ptrtoint ptr %lba_to_pba.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lba_to_pba.i.1, align 4
  %cmp.not.i.1 = icmp ne ptr %39, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.1)
  %cmp542.i.1 = icmp ne i32 %shr.i.1, 0
  %or.cond.i.1 = select i1 %cmp.not.i.1, i1 %cmp542.i.1, i1 false
  br i1 %or.cond.i.1, label %alauda_free_maps.exit.for.body.i.1_crit_edge, label %alauda_free_maps.exit.if.end.i.1_crit_edge

alauda_free_maps.exit.if.end.i.1_crit_edge:       ; preds = %alauda_free_maps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.1

alauda_free_maps.exit.for.body.i.1_crit_edge:     ; preds = %alauda_free_maps.exit
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %alauda_free_maps.exit.for.body.i.1_crit_edge
  %i.043.i.1 = phi i32 [ %inc.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %alauda_free_maps.exit.for.body.i.1_crit_edge ]
  %40 = ptrtoint ptr %lba_to_pba.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lba_to_pba.i.1, align 4
  %arrayidx.i.1 = getelementptr ptr, ptr %41, i32 %i.043.i.1
  %42 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @kfree(ptr noundef %43) #9
  %44 = ptrtoint ptr %lba_to_pba.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lba_to_pba.i.1, align 4
  %arrayidx9.i.1 = getelementptr ptr, ptr %45, i32 %i.043.i.1
  %46 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx9.i.1, align 4
  %inc.i.1 = add nuw i32 %i.043.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, %shr.i.1
  br i1 %exitcond.not.i.1, label %for.body.i.1.if.end.i.1_crit_edge, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.1

for.body.i.1.if.end.i.1_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %for.body.i.1.if.end.i.1_crit_edge, %alauda_free_maps.exit.if.end.i.1_crit_edge
  %pba_to_lba.i.1 = getelementptr [2 x %struct.alauda_media_info], ptr %extra, i32 0, i32 1, i32 10
  %47 = ptrtoint ptr %pba_to_lba.i.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pba_to_lba.i.1, align 4
  %cmp10.not.i.1 = icmp ne ptr %48, null
  %or.cond46.i.1 = select i1 %cmp10.not.i.1, i1 %cmp542.i.1, i1 false
  br i1 %or.cond46.i.1, label %if.end.i.1.for.body16.i.1_crit_edge, label %if.end.i.1.alauda_free_maps.exit.1_crit_edge

if.end.i.1.alauda_free_maps.exit.1_crit_edge:     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_free_maps.exit.1

if.end.i.1.for.body16.i.1_crit_edge:              ; preds = %if.end.i.1
  br label %for.body16.i.1

for.body16.i.1:                                   ; preds = %for.body16.i.1.for.body16.i.1_crit_edge, %if.end.i.1.for.body16.i.1_crit_edge
  %i.145.i.1 = phi i32 [ %inc22.i.1, %for.body16.i.1.for.body16.i.1_crit_edge ], [ 0, %if.end.i.1.for.body16.i.1_crit_edge ]
  %49 = ptrtoint ptr %pba_to_lba.i.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pba_to_lba.i.1, align 4
  %arrayidx18.i.1 = getelementptr ptr, ptr %50, i32 %i.145.i.1
  %51 = ptrtoint ptr %arrayidx18.i.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx18.i.1, align 4
  tail call void @kfree(ptr noundef %52) #9
  %53 = ptrtoint ptr %pba_to_lba.i.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pba_to_lba.i.1, align 4
  %arrayidx20.i.1 = getelementptr ptr, ptr %54, i32 %i.145.i.1
  %55 = ptrtoint ptr %arrayidx20.i.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx20.i.1, align 4
  %inc22.i.1 = add nuw i32 %i.145.i.1, 1
  %exitcond47.not.i.1 = icmp eq i32 %inc22.i.1, %shr.i.1
  br i1 %exitcond47.not.i.1, label %for.body16.i.1.alauda_free_maps.exit.1_crit_edge, label %for.body16.i.1.for.body16.i.1_crit_edge

for.body16.i.1.for.body16.i.1_crit_edge:          ; preds = %for.body16.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i.1

for.body16.i.1.alauda_free_maps.exit.1_crit_edge: ; preds = %for.body16.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_free_maps.exit.1

alauda_free_maps.exit.1:                          ; preds = %for.body16.i.1.alauda_free_maps.exit.1_crit_edge, %if.end.i.1.alauda_free_maps.exit.1_crit_edge
  %56 = ptrtoint ptr %lba_to_pba.i.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lba_to_pba.i.1, align 4
  tail call void @kfree(ptr noundef %57) #9
  %58 = ptrtoint ptr %pba_to_lba.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pba_to_lba.i.1, align 4
  tail call void @kfree(ptr noundef %59) #9
  br label %cleanup

cleanup:                                          ; preds = %alauda_free_maps.exit.1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fill_inquiry_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alauda_check_media(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  %status = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !133
  %3 = getelementptr inbounds [2 x i8], ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !133
  %srb.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %5 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %srb.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.i = icmp eq i64 %10, 0
  %..i = select i1 %cmp.i, i8 8, i8 -104
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %11 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %12, i8 noundef zeroext %..i, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %status, i16 noundef zeroext 2) #9
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status, align 1
  %conv.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %conv2.i = zext i8 %16 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %conv2.i) #9
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status, align 1
  %conv = zext i8 %18 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and3)
  %cmp = icmp eq i32 %and3, 16
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false5

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false5:                                   ; preds = %entry
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp9 = icmp eq i8 %21, 0
  br i1 %cmp9, label %lor.lhs.false5.if.then_crit_edge, label %if.end

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %entry.if.then_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #9
  %22 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extra, align 4
  %24 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %srb.i, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lun, align 8
  %idxprom = trunc i64 %29 to i32
  %arrayidx12 = getelementptr [2 x %struct.alauda_media_info], ptr %23, i32 0, i32 %idxprom
  %zoneshift.i = getelementptr [2 x %struct.alauda_media_info], ptr %23, i32 0, i32 %idxprom, i32 8
  %30 = ptrtoint ptr %zoneshift.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %zoneshift.i, align 2
  %conv.i44 = zext i8 %31 to i32
  %blockshift.i = getelementptr [2 x %struct.alauda_media_info], ptr %23, i32 0, i32 %idxprom, i32 7
  %32 = ptrtoint ptr %blockshift.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %blockshift.i, align 1
  %conv1.i = zext i8 %33 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i44
  %pageshift.i = getelementptr [2 x %struct.alauda_media_info], ptr %23, i32 0, i32 %idxprom, i32 6
  %34 = ptrtoint ptr %pageshift.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pageshift.i, align 4
  %conv2.i45 = zext i8 %35 to i32
  %add3.i = add nuw nsw i32 %add.i, %conv2.i45
  %36 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx12, align 4
  %shr.i = lshr i32 %37, %add3.i
  %lba_to_pba.i = getelementptr [2 x %struct.alauda_media_info], ptr %23, i32 0, i32 %idxprom, i32 9
  %38 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lba_to_pba.i, align 4
  %cmp.not.i = icmp ne ptr %39, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp542.i = icmp ne i32 %shr.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp542.i, i1 false
  br i1 %or.cond.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %i.043.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree(ptr noundef %43) #9
  %44 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %45, i32 %i.043.i
  %46 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx9.i, align 4
  %inc.i = add nuw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %pba_to_lba.i = getelementptr [2 x %struct.alauda_media_info], ptr %23, i32 0, i32 %idxprom, i32 10
  %47 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pba_to_lba.i, align 4
  %cmp10.not.i = icmp ne ptr %48, null
  %or.cond46.i = select i1 %cmp10.not.i, i1 %cmp542.i, i1 false
  br i1 %or.cond46.i, label %if.end.i.for.body16.i_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i.for.body16.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %if.end.i.for.body16.i_crit_edge
  %i.145.i = phi i32 [ %inc22.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %if.end.i.for.body16.i_crit_edge ]
  %49 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx18.i = getelementptr ptr, ptr %50, i32 %i.145.i
  %51 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx18.i, align 4
  call void @kfree(ptr noundef %52) #9
  %53 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %54, i32 %i.145.i
  %55 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx20.i, align 4
  %inc22.i = add nuw i32 %i.145.i, 1
  %exitcond47.not.i = icmp eq i32 %inc22.i, %shr.i
  br i1 %exitcond47.not.i, label %for.body16.i.cleanup.sink.split_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i

for.body16.i.cleanup.sink.split_crit_edge:        ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false5
  %and15 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14) #9
  %56 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extra, align 4
  %58 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %srb.i, align 4
  %device21 = getelementptr inbounds %struct.scsi_cmnd, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device21, align 4
  %lun22 = getelementptr inbounds %struct.scsi_device, ptr %61, i32 0, i32 18
  %62 = ptrtoint ptr %lun22 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %lun22, align 8
  %idxprom23 = trunc i64 %63 to i32
  %arrayidx24 = getelementptr [2 x %struct.alauda_media_info], ptr %57, i32 0, i32 %idxprom23
  %zoneshift.i46 = getelementptr [2 x %struct.alauda_media_info], ptr %57, i32 0, i32 %idxprom23, i32 8
  %64 = ptrtoint ptr %zoneshift.i46 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %zoneshift.i46, align 2
  %conv.i47 = zext i8 %65 to i32
  %blockshift.i48 = getelementptr [2 x %struct.alauda_media_info], ptr %57, i32 0, i32 %idxprom23, i32 7
  %66 = ptrtoint ptr %blockshift.i48 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %blockshift.i48, align 1
  %conv1.i49 = zext i8 %67 to i32
  %add.i50 = add nuw nsw i32 %conv1.i49, %conv.i47
  %pageshift.i51 = getelementptr [2 x %struct.alauda_media_info], ptr %57, i32 0, i32 %idxprom23, i32 6
  %68 = ptrtoint ptr %pageshift.i51 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pageshift.i51, align 4
  %conv2.i52 = zext i8 %69 to i32
  %add3.i53 = add nuw nsw i32 %add.i50, %conv2.i52
  %70 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx24, align 4
  %shr.i54 = lshr i32 %71, %add3.i53
  %lba_to_pba.i55 = getelementptr [2 x %struct.alauda_media_info], ptr %57, i32 0, i32 %idxprom23, i32 9
  %72 = ptrtoint ptr %lba_to_pba.i55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lba_to_pba.i55, align 4
  %cmp.not.i56 = icmp ne ptr %73, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i54)
  %cmp542.i57 = icmp ne i32 %shr.i54, 0
  %or.cond.i58 = select i1 %cmp.not.i56, i1 %cmp542.i57, i1 false
  br i1 %or.cond.i58, label %if.then17.for.body.i64_crit_edge, label %if.then17.if.end.i68_crit_edge

if.then17.if.end.i68_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i68

if.then17.for.body.i64_crit_edge:                 ; preds = %if.then17
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %if.then17.for.body.i64_crit_edge
  %i.043.i59 = phi i32 [ %inc.i62, %for.body.i64.for.body.i64_crit_edge ], [ 0, %if.then17.for.body.i64_crit_edge ]
  %74 = ptrtoint ptr %lba_to_pba.i55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lba_to_pba.i55, align 4
  %arrayidx.i60 = getelementptr ptr, ptr %75, i32 %i.043.i59
  %76 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i60, align 4
  call void @kfree(ptr noundef %77) #9
  %78 = ptrtoint ptr %lba_to_pba.i55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lba_to_pba.i55, align 4
  %arrayidx9.i61 = getelementptr ptr, ptr %79, i32 %i.043.i59
  %80 = ptrtoint ptr %arrayidx9.i61 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx9.i61, align 4
  %inc.i62 = add nuw i32 %i.043.i59, 1
  %exitcond.not.i63 = icmp eq i32 %inc.i62, %shr.i54
  br i1 %exitcond.not.i63, label %for.body.i64.if.end.i68_crit_edge, label %for.body.i64.for.body.i64_crit_edge

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i64

for.body.i64.if.end.i68_crit_edge:                ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i68

if.end.i68:                                       ; preds = %for.body.i64.if.end.i68_crit_edge, %if.then17.if.end.i68_crit_edge
  %pba_to_lba.i65 = getelementptr [2 x %struct.alauda_media_info], ptr %57, i32 0, i32 %idxprom23, i32 10
  %81 = ptrtoint ptr %pba_to_lba.i65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pba_to_lba.i65, align 4
  %cmp10.not.i66 = icmp ne ptr %82, null
  %or.cond46.i67 = select i1 %cmp10.not.i66, i1 %cmp542.i57, i1 false
  br i1 %or.cond46.i67, label %if.end.i68.for.body16.i74_crit_edge, label %if.end.i68.alauda_free_maps.exit75_crit_edge

if.end.i68.alauda_free_maps.exit75_crit_edge:     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_free_maps.exit75

if.end.i68.for.body16.i74_crit_edge:              ; preds = %if.end.i68
  br label %for.body16.i74

for.body16.i74:                                   ; preds = %for.body16.i74.for.body16.i74_crit_edge, %if.end.i68.for.body16.i74_crit_edge
  %i.145.i69 = phi i32 [ %inc22.i72, %for.body16.i74.for.body16.i74_crit_edge ], [ 0, %if.end.i68.for.body16.i74_crit_edge ]
  %83 = ptrtoint ptr %pba_to_lba.i65 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pba_to_lba.i65, align 4
  %arrayidx18.i70 = getelementptr ptr, ptr %84, i32 %i.145.i69
  %85 = ptrtoint ptr %arrayidx18.i70 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx18.i70, align 4
  call void @kfree(ptr noundef %86) #9
  %87 = ptrtoint ptr %pba_to_lba.i65 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pba_to_lba.i65, align 4
  %arrayidx20.i71 = getelementptr ptr, ptr %88, i32 %i.145.i69
  %89 = ptrtoint ptr %arrayidx20.i71 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx20.i71, align 4
  %inc22.i72 = add nuw i32 %i.145.i69, 1
  %exitcond47.not.i73 = icmp eq i32 %inc22.i72, %shr.i54
  br i1 %exitcond47.not.i73, label %for.body16.i74.alauda_free_maps.exit75_crit_edge, label %for.body16.i74.for.body16.i74_crit_edge

for.body16.i74.for.body16.i74_crit_edge:          ; preds = %for.body16.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i74

for.body16.i74.alauda_free_maps.exit75_crit_edge: ; preds = %for.body16.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_free_maps.exit75

alauda_free_maps.exit75:                          ; preds = %for.body16.i74.alauda_free_maps.exit75_crit_edge, %if.end.i68.alauda_free_maps.exit75_crit_edge
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %90 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iobuf.i, align 4
  %arrayidx1.i.i = getelementptr i8, ptr %91, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i77.while.body.i_crit_edge, %alauda_free_maps.exit75
  call void @msleep(i32 noundef 20) #9
  %92 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %srb.i, align 4
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device.i.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %95, i32 0, i32 18
  %96 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %lun.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %cmp.i.i = icmp eq i64 %97, 0
  %..i.i = select i1 %cmp.i.i, i8 8, i8 -104
  %98 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %99, i8 noundef zeroext %..i.i, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %91, i16 noundef zeroext 2) #9
  %100 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %91, align 1
  %conv.i.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %103 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15, i32 noundef %conv.i.i, i32 noundef %conv2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %if.end.i77, label %while.body.i.cleanup.sink.split_crit_edge

while.body.i.cleanup.sink.split_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i77:                                       ; preds = %while.body.i
  %104 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %91, align 1
  %106 = and i8 %105, 16
  %cmp.i76 = icmp eq i8 %106, 0
  br i1 %cmp.i76, label %if.end.i77.while.body.i_crit_edge, label %while.end.i

if.end.i77.while.body.i_crit_edge:                ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i77
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16) #9
  %107 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %srb.i, align 4
  %device.i2.i = getelementptr inbounds %struct.scsi_cmnd, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %device.i2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device.i2.i, align 4
  %lun.i3.i = getelementptr inbounds %struct.scsi_device, ptr %110, i32 0, i32 18
  %111 = ptrtoint ptr %lun.i3.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %lun.i3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %cmp.i4.i = icmp eq i64 %112, 0
  %..i5.i = select i1 %cmp.i4.i, i8 10, i8 -102
  %send_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %113 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i6.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %114, i8 noundef zeroext %..i5.i, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %cmp5.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %cmp5.not.i, label %if.end8.i, label %while.end.i.cleanup.sink.split_crit_edge

while.end.i.cleanup.sink.split_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %while.end.i
  call void @msleep(i32 noundef 10) #9
  %115 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %srb.i, align 4
  %device.i8.i = getelementptr inbounds %struct.scsi_cmnd, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %device.i8.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device.i8.i, align 4
  %lun.i9.i = getelementptr inbounds %struct.scsi_device, ptr %118, i32 0, i32 18
  %119 = ptrtoint ptr %lun.i9.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %lun.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %120)
  %cmp.i10.i = icmp eq i64 %120, 0
  %..i11.i = select i1 %cmp.i10.i, i8 8, i8 -104
  %121 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i13.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %122, i8 noundef zeroext %..i11.i, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %91, i16 noundef zeroext 2) #9
  %123 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %91, align 1
  %conv.i14.i = zext i8 %124 to i32
  %125 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i16.i = zext i8 %126 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15, i32 noundef %conv.i14.i, i32 noundef %conv2.i16.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp10.not.i78 = icmp eq i32 %call.i13.i, 0
  br i1 %cmp10.not.i78, label %if.end13.i, label %if.end8.i.cleanup.sink.split_crit_edge

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13.i:                                       ; preds = %if.end8.i
  %127 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %128)
  %cmp16.not.i = icmp eq i8 %128, 20
  br i1 %cmp16.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17) #9
  br label %cleanup.sink.split

if.end19.i:                                       ; preds = %if.end13.i
  %129 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %srb.i, align 4
  %device.i18.i = getelementptr inbounds %struct.scsi_cmnd, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %device.i18.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device.i18.i, align 4
  %lun.i19.i = getelementptr inbounds %struct.scsi_device, ptr %132, i32 0, i32 18
  %133 = ptrtoint ptr %lun.i19.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %lun.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %cmp.i20.i = icmp eq i64 %134, 0
  %..i21.i = select i1 %cmp.i20.i, i8 -122, i8 -106
  %135 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i23.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %136, i8 noundef zeroext %..i21.i, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %91, i16 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp21.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %cmp21.not.i, label %if.end24.i, label %if.end19.i.cleanup.sink.split_crit_edge

if.end19.i.cleanup.sink.split_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end24.i:                                       ; preds = %if.end19.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18, ptr noundef %91) #9
  %137 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx1.i.i, align 1
  %139 = zext i8 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %138, label %do.end.i [
    i8 110, label %if.end24.i.if.end31.i_crit_edge
    i8 -24, label %if.end24.i.alauda_card_find_id.exit.i_crit_edge
    i8 -20, label %alauda_card_find_id.exit.i.fold.split
    i8 100, label %alauda_card_find_id.exit.i.fold.split107
    i8 -22, label %alauda_card_find_id.exit.i.fold.split108
    i8 107, label %alauda_card_find_id.exit.i.fold.split109
    i8 -29, label %alauda_card_find_id.exit.i.fold.split110
    i8 -27, label %alauda_card_find_id.exit.i.fold.split111
    i8 -26, label %alauda_card_find_id.exit.i.fold.split112
    i8 115, label %alauda_card_find_id.exit.i.fold.split113
    i8 117, label %alauda_card_find_id.exit.i.fold.split114
    i8 118, label %alauda_card_find_id.exit.i.fold.split115
    i8 121, label %alauda_card_find_id.exit.i.fold.split116
    i8 113, label %alauda_card_find_id.exit.i.fold.split117
    i8 93, label %alauda_card_find_id.exit.i.fold.split118
    i8 -43, label %alauda_card_find_id.exit.i.fold.split119
    i8 -42, label %alauda_card_find_id.exit.i.fold.split120
    i8 87, label %alauda_card_find_id.exit.i.fold.split121
    i8 88, label %alauda_card_find_id.exit.i.fold.split122
  ]

if.end24.i.alauda_card_find_id.exit.i_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

alauda_card_find_id.exit.i.fold.split:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split107:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split108:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split109:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split110:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split111:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split112:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split113:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split114:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split115:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split116:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split117:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split118:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split119:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split120:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split121:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i.fold.split122:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alauda_card_find_id.exit.i

alauda_card_find_id.exit.i:                       ; preds = %alauda_card_find_id.exit.i.fold.split122, %alauda_card_find_id.exit.i.fold.split121, %alauda_card_find_id.exit.i.fold.split120, %alauda_card_find_id.exit.i.fold.split119, %alauda_card_find_id.exit.i.fold.split118, %alauda_card_find_id.exit.i.fold.split117, %alauda_card_find_id.exit.i.fold.split116, %alauda_card_find_id.exit.i.fold.split115, %alauda_card_find_id.exit.i.fold.split114, %alauda_card_find_id.exit.i.fold.split113, %alauda_card_find_id.exit.i.fold.split112, %alauda_card_find_id.exit.i.fold.split111, %alauda_card_find_id.exit.i.fold.split110, %alauda_card_find_id.exit.i.fold.split109, %alauda_card_find_id.exit.i.fold.split108, %alauda_card_find_id.exit.i.fold.split107, %alauda_card_find_id.exit.i.fold.split, %if.end24.i.alauda_card_find_id.exit.i_crit_edge
  %arrayidx.i.i.lcssa105 = phi ptr [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 1), %if.end24.i.alauda_card_find_id.exit.i_crit_edge ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 2), %alauda_card_find_id.exit.i.fold.split ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 3), %alauda_card_find_id.exit.i.fold.split107 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 4), %alauda_card_find_id.exit.i.fold.split108 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 5), %alauda_card_find_id.exit.i.fold.split109 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 6), %alauda_card_find_id.exit.i.fold.split110 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 7), %alauda_card_find_id.exit.i.fold.split111 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 8), %alauda_card_find_id.exit.i.fold.split112 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 9), %alauda_card_find_id.exit.i.fold.split113 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 10), %alauda_card_find_id.exit.i.fold.split114 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 11), %alauda_card_find_id.exit.i.fold.split115 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 12), %alauda_card_find_id.exit.i.fold.split116 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 13), %alauda_card_find_id.exit.i.fold.split117 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 14), %alauda_card_find_id.exit.i.fold.split118 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 15), %alauda_card_find_id.exit.i.fold.split119 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 16), %alauda_card_find_id.exit.i.fold.split120 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 17), %alauda_card_find_id.exit.i.fold.split121 ], [ getelementptr inbounds ([20 x %struct.alauda_card_info], ptr @alauda_card_ids, i32 0, i32 18), %alauda_card_find_id.exit.i.fold.split122 ]
  br label %if.end31.i

do.end.i:                                         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %91) #13
  br label %cleanup.sink.split

if.end31.i:                                       ; preds = %alauda_card_find_id.exit.i, %if.end24.i.if.end31.i_crit_edge
  %arrayidx15.i.lcssa74.i = phi ptr [ %arrayidx.i.i.lcssa105, %alauda_card_find_id.exit.i ], [ @alauda_card_ids, %if.end24.i.if.end31.i_crit_edge ]
  %chipshift.i = getelementptr inbounds %struct.alauda_card_info, ptr %arrayidx15.i.lcssa74.i, i32 0, i32 1
  %140 = ptrtoint ptr %chipshift.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %chipshift.i, align 1
  %conv32.i = zext i8 %141 to i32
  %shl.i = shl nuw i32 1, %conv32.i
  %142 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %extra, align 4
  %144 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %srb.i, align 4
  %device.i79 = getelementptr inbounds %struct.scsi_cmnd, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %device.i79 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device.i79, align 4
  %lun.i80 = getelementptr inbounds %struct.scsi_device, ptr %147, i32 0, i32 18
  %148 = ptrtoint ptr %lun.i80 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %lun.i80, align 8
  %idxprom.i = trunc i64 %149 to i32
  %arrayidx33.i = getelementptr [2 x %struct.alauda_media_info], ptr %143, i32 0, i32 %idxprom.i
  %150 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %shl.i, ptr %arrayidx33.i, align 4
  %151 = load ptr, ptr %extra, align 4
  %152 = load ptr, ptr %srb.i, align 4
  %device37.i = getelementptr inbounds %struct.scsi_cmnd, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device37.i, align 4
  %lun38.i = getelementptr inbounds %struct.scsi_device, ptr %154, i32 0, i32 18
  %155 = ptrtoint ptr %lun38.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %lun38.i, align 8
  %idxprom39.i = trunc i64 %156 to i32
  %arrayidx40.i = getelementptr [2 x %struct.alauda_media_info], ptr %151, i32 0, i32 %idxprom39.i
  %157 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx40.i, align 4
  %shr.i81 = lshr i32 %158, 20
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22, i32 noundef %shr.i81) #9
  %pageshift.i82 = getelementptr inbounds %struct.alauda_card_info, ptr %arrayidx15.i.lcssa74.i, i32 0, i32 2
  %159 = ptrtoint ptr %pageshift.i82 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %pageshift.i82, align 1
  %161 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %extra, align 4
  %163 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %srb.i, align 4
  %device45.i = getelementptr inbounds %struct.scsi_cmnd, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %device45.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %device45.i, align 4
  %lun46.i = getelementptr inbounds %struct.scsi_device, ptr %166, i32 0, i32 18
  %167 = ptrtoint ptr %lun46.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %lun46.i, align 8
  %idxprom47.i = trunc i64 %168 to i32
  %pageshift49.i = getelementptr [2 x %struct.alauda_media_info], ptr %162, i32 0, i32 %idxprom47.i, i32 6
  %169 = ptrtoint ptr %pageshift49.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %160, ptr %pageshift49.i, align 4
  %blockshift.i83 = getelementptr inbounds %struct.alauda_card_info, ptr %arrayidx15.i.lcssa74.i, i32 0, i32 3
  %170 = ptrtoint ptr %blockshift.i83 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %blockshift.i83, align 1
  %172 = load ptr, ptr %extra, align 4
  %173 = load ptr, ptr %srb.i, align 4
  %device53.i = getelementptr inbounds %struct.scsi_cmnd, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %device53.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %device53.i, align 4
  %lun54.i = getelementptr inbounds %struct.scsi_device, ptr %175, i32 0, i32 18
  %176 = ptrtoint ptr %lun54.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %lun54.i, align 8
  %idxprom55.i = trunc i64 %177 to i32
  %blockshift57.i = getelementptr [2 x %struct.alauda_media_info], ptr %172, i32 0, i32 %idxprom55.i, i32 7
  %178 = ptrtoint ptr %blockshift57.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %171, ptr %blockshift57.i, align 1
  %zoneshift.i84 = getelementptr inbounds %struct.alauda_card_info, ptr %arrayidx15.i.lcssa74.i, i32 0, i32 4
  %179 = ptrtoint ptr %zoneshift.i84 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %zoneshift.i84, align 1
  %181 = load ptr, ptr %extra, align 4
  %182 = load ptr, ptr %srb.i, align 4
  %device61.i = getelementptr inbounds %struct.scsi_cmnd, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %device61.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %device61.i, align 4
  %lun62.i = getelementptr inbounds %struct.scsi_device, ptr %184, i32 0, i32 18
  %185 = ptrtoint ptr %lun62.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %lun62.i, align 8
  %idxprom63.i = trunc i64 %186 to i32
  %zoneshift65.i = getelementptr [2 x %struct.alauda_media_info], ptr %181, i32 0, i32 %idxprom63.i, i32 8
  %187 = ptrtoint ptr %zoneshift65.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %180, ptr %zoneshift65.i, align 2
  %188 = load i8, ptr %pageshift.i82, align 1
  %conv67.i = zext i8 %188 to i32
  %shl68.i = shl nuw i32 1, %conv67.i
  %189 = load ptr, ptr %extra, align 4
  %190 = load ptr, ptr %srb.i, align 4
  %device72.i = getelementptr inbounds %struct.scsi_cmnd, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %device72.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %device72.i, align 4
  %lun73.i = getelementptr inbounds %struct.scsi_device, ptr %192, i32 0, i32 18
  %193 = ptrtoint ptr %lun73.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %lun73.i, align 8
  %idxprom74.i = trunc i64 %194 to i32
  %pagesize.i = getelementptr [2 x %struct.alauda_media_info], ptr %189, i32 0, i32 %idxprom74.i, i32 1
  %195 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %shl68.i, ptr %pagesize.i, align 4
  %196 = load i8, ptr %blockshift.i83, align 1
  %conv77.i = zext i8 %196 to i32
  %shl78.i = shl nuw i32 1, %conv77.i
  %197 = load ptr, ptr %extra, align 4
  %198 = load ptr, ptr %srb.i, align 4
  %device82.i = getelementptr inbounds %struct.scsi_cmnd, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %device82.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %device82.i, align 4
  %lun83.i = getelementptr inbounds %struct.scsi_device, ptr %200, i32 0, i32 18
  %201 = ptrtoint ptr %lun83.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %lun83.i, align 8
  %idxprom84.i = trunc i64 %202 to i32
  %blocksize.i = getelementptr [2 x %struct.alauda_media_info], ptr %197, i32 0, i32 %idxprom84.i, i32 2
  %203 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %shl78.i, ptr %blocksize.i, align 4
  %204 = load i8, ptr %zoneshift.i84, align 1
  %conv87.i = zext i8 %204 to i32
  %shl88.i = shl nuw i32 1, %conv87.i
  %205 = load ptr, ptr %extra, align 4
  %206 = load ptr, ptr %srb.i, align 4
  %device92.i = getelementptr inbounds %struct.scsi_cmnd, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %device92.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %device92.i, align 4
  %lun93.i = getelementptr inbounds %struct.scsi_device, ptr %208, i32 0, i32 18
  %209 = ptrtoint ptr %lun93.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %lun93.i, align 8
  %idxprom94.i = trunc i64 %210 to i32
  %zonesize.i = getelementptr [2 x %struct.alauda_media_info], ptr %205, i32 0, i32 %idxprom94.i, i32 4
  %211 = ptrtoint ptr %zonesize.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %shl88.i, ptr %zonesize.i, align 4
  %212 = load i8, ptr %zoneshift.i84, align 1
  %conv97.i = zext i8 %212 to i32
  %shl98.i = shl nuw i32 1, %conv97.i
  %div.i = sdiv i32 %shl98.i, 128
  %mul.i = mul nsw i32 %div.i, 125
  %213 = load ptr, ptr %extra, align 4
  %214 = load ptr, ptr %srb.i, align 4
  %device102.i = getelementptr inbounds %struct.scsi_cmnd, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %device102.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %device102.i, align 4
  %lun103.i = getelementptr inbounds %struct.scsi_device, ptr %216, i32 0, i32 18
  %217 = ptrtoint ptr %lun103.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %lun103.i, align 8
  %idxprom104.i = trunc i64 %218 to i32
  %uzonesize.i = getelementptr [2 x %struct.alauda_media_info], ptr %213, i32 0, i32 %idxprom104.i, i32 3
  %219 = ptrtoint ptr %uzonesize.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %mul.i, ptr %uzonesize.i, align 4
  %220 = load ptr, ptr %extra, align 4
  %221 = load ptr, ptr %srb.i, align 4
  %device109.i = getelementptr inbounds %struct.scsi_cmnd, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %device109.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %device109.i, align 4
  %lun110.i = getelementptr inbounds %struct.scsi_device, ptr %223, i32 0, i32 18
  %224 = ptrtoint ptr %lun110.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %lun110.i, align 8
  %idxprom111.i = trunc i64 %225 to i32
  %blocksize113.i = getelementptr [2 x %struct.alauda_media_info], ptr %220, i32 0, i32 %idxprom111.i, i32 2
  %226 = ptrtoint ptr %blocksize113.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %blocksize113.i, align 4
  %sub.i = add i32 %227, -1
  %blockmask.i = getelementptr [2 x %struct.alauda_media_info], ptr %220, i32 0, i32 %idxprom111.i, i32 5
  %228 = ptrtoint ptr %blockmask.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %sub.i, ptr %blockmask.i, align 4
  %229 = load ptr, ptr %extra, align 4
  %230 = load ptr, ptr %srb.i, align 4
  %device124.i = getelementptr inbounds %struct.scsi_cmnd, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %device124.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %device124.i, align 4
  %lun125.i = getelementptr inbounds %struct.scsi_device, ptr %232, i32 0, i32 18
  %233 = ptrtoint ptr %lun125.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %lun125.i, align 8
  %idxprom126.i = trunc i64 %234 to i32
  %arrayidx127.i = getelementptr [2 x %struct.alauda_media_info], ptr %229, i32 0, i32 %idxprom126.i
  %235 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx127.i, align 4
  %zoneshift136.i = getelementptr [2 x %struct.alauda_media_info], ptr %229, i32 0, i32 %idxprom126.i, i32 8
  %237 = ptrtoint ptr %zoneshift136.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %zoneshift136.i, align 2
  %conv137.i = zext i8 %238 to i32
  %blockshift145.i = getelementptr [2 x %struct.alauda_media_info], ptr %229, i32 0, i32 %idxprom126.i, i32 7
  %239 = ptrtoint ptr %blockshift145.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %blockshift145.i, align 1
  %conv146.i = zext i8 %240 to i32
  %add.i85 = add nuw nsw i32 %conv146.i, %conv137.i
  %pageshift154.i = getelementptr [2 x %struct.alauda_media_info], ptr %229, i32 0, i32 %idxprom126.i, i32 6
  %241 = ptrtoint ptr %pageshift154.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %pageshift154.i, align 4
  %conv155.i = zext i8 %242 to i32
  %add156.i = add nuw nsw i32 %add.i85, %conv155.i
  %shr157.i = lshr i32 %236, %add156.i
  %243 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr157.i, i32 4) #9
  %244 = extractvalue { i32, i1 } %243, 1
  br i1 %244, label %kcalloc.exit56.critedge.i, label %if.end7.i.i54.i, !prof !134

if.end7.i.i54.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %245 = extractvalue { i32, i1 } %243, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %245, i32 noundef 3328) #12
  %246 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %extra, align 4
  %248 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %srb.i, align 4
  %device162.c76.i = getelementptr inbounds %struct.scsi_cmnd, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %device162.c76.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %device162.c76.i, align 4
  %lun163.c77.i = getelementptr inbounds %struct.scsi_device, ptr %251, i32 0, i32 18
  %252 = ptrtoint ptr %lun163.c77.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %lun163.c77.i, align 8
  %idxprom164.c78.i = trunc i64 %253 to i32
  %pba_to_lba.c79.i = getelementptr [2 x %struct.alauda_media_info], ptr %247, i32 0, i32 %idxprom164.c78.i, i32 10
  %254 = ptrtoint ptr %pba_to_lba.c79.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call8.i.i.i, ptr %pba_to_lba.c79.i, align 4
  %call8.i.i53.i = call noalias align 128 ptr @__kmalloc(i32 noundef %245, i32 noundef 3328) #12
  br label %kcalloc.exit56.i

kcalloc.exit56.critedge.i:                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %pba_to_lba.c.i = getelementptr [2 x %struct.alauda_media_info], ptr %229, i32 0, i32 %idxprom126.i, i32 10
  %255 = ptrtoint ptr %pba_to_lba.c.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %pba_to_lba.c.i, align 4
  br label %kcalloc.exit56.i

kcalloc.exit56.i:                                 ; preds = %kcalloc.exit56.critedge.i, %if.end7.i.i54.i
  %retval.0.i.i55.i = phi ptr [ %call8.i.i53.i, %if.end7.i.i54.i ], [ null, %kcalloc.exit56.critedge.i ]
  %256 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %extra, align 4
  %258 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %srb.i, align 4
  %device170.i = getelementptr inbounds %struct.scsi_cmnd, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %device170.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %device170.i, align 4
  %lun171.i = getelementptr inbounds %struct.scsi_device, ptr %261, i32 0, i32 18
  %262 = ptrtoint ptr %lun171.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %lun171.i, align 8
  %idxprom172.i = trunc i64 %263 to i32
  %lba_to_pba.i87 = getelementptr [2 x %struct.alauda_media_info], ptr %257, i32 0, i32 %idxprom172.i, i32 9
  %264 = ptrtoint ptr %lba_to_pba.i87 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %retval.0.i.i55.i, ptr %lba_to_pba.i87, align 4
  %call174.i = call fastcc i32 @alauda_reset_media(ptr noundef %us) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %kcalloc.exit56.i, %do.end.i, %if.end19.i.cleanup.sink.split_crit_edge, %if.then18.i, %if.end8.i.cleanup.sink.split_crit_edge, %while.end.i.cleanup.sink.split_crit_edge, %while.body.i.cleanup.sink.split_crit_edge, %for.body16.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink102 = phi i8 [ 2, %if.end.i.cleanup.sink.split_crit_edge ], [ 6, %while.end.i.cleanup.sink.split_crit_edge ], [ 6, %if.end8.i.cleanup.sink.split_crit_edge ], [ 6, %if.then18.i ], [ 6, %if.end19.i.cleanup.sink.split_crit_edge ], [ 6, %do.end.i ], [ 6, %kcalloc.exit56.i ], [ 2, %for.body16.i.cleanup.sink.split_crit_edge ], [ 6, %while.body.i.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 58, %if.end.i.cleanup.sink.split_crit_edge ], [ 40, %while.end.i.cleanup.sink.split_crit_edge ], [ 40, %if.end8.i.cleanup.sink.split_crit_edge ], [ 40, %if.then18.i ], [ 40, %if.end19.i.cleanup.sink.split_crit_edge ], [ 40, %do.end.i ], [ 40, %kcalloc.exit56.i ], [ 58, %for.body16.i.cleanup.sink.split_crit_edge ], [ 40, %while.body.i.cleanup.sink.split_crit_edge ]
  %sense_key26 = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 2
  %265 = ptrtoint ptr %sense_key26 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %.sink102, ptr %sense_key26, align 4
  %sense_asc27 = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 3
  %266 = ptrtoint ptr %sense_asc27 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %.sink, ptr %sense_asc27, align 4
  %sense_ascq28 = getelementptr inbounds %struct.alauda_info, ptr %1, i32 0, i32 4
  %267 = ptrtoint ptr %sense_ascq28 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %sense_ascq28, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ctrl_transfer(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alauda_reset_media(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 7)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %1, align 1
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -32, ptr %arrayidx1, align 1
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %6 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srb, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun, align 8
  %conv = trunc i64 %11 to i8
  %arrayidx2 = getelementptr i8, ptr %1, i32 8
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx2, align 1
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %13 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %send_bulk_pipe, align 4
  %call = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %14, ptr noundef %1, i32 noundef 9, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alauda_ensure_map_for_zone(ptr noundef %us, i32 noundef %zone) unnamed_addr #2 align 64 {
entry:
  %command.i.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %2 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srb, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  %idxprom = trunc i64 %7 to i32
  %lba_to_pba = getelementptr [2 x %struct.alauda_media_info], ptr %1, i32 0, i32 %idxprom, i32 9
  %8 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lba_to_pba, align 4
  %arrayidx1 = getelementptr ptr, ptr %9, i32 %zone
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %pba_to_lba = getelementptr [2 x %struct.alauda_media_info], ptr %1, i32 0, i32 %idxprom, i32 10
  %12 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pba_to_lba, align 4
  %arrayidx9 = getelementptr ptr, ptr %13, i32 %zone
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %cmp10 = icmp eq ptr %15, null
  br i1 %cmp10, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %16 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobuf.i, align 4
  %zonesize1.i = getelementptr [2 x %struct.alauda_media_info], ptr %1, i32 0, i32 %idxprom, i32 4
  %18 = ptrtoint ptr %zonesize1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %zonesize1.i, align 4
  %uzonesize9.i = getelementptr [2 x %struct.alauda_media_info], ptr %1, i32 0, i32 %idxprom, i32 3
  %20 = ptrtoint ptr %uzonesize9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uzonesize9.i, align 4
  %mul.i = mul i32 %21, %zone
  %mul10.i = mul i32 %19, %zone
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 2) #9
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %if.then.error.i_crit_edge, label %if.end7.i.i32.i, !prof !134

if.then.error.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end7.i.i32.i:                                  ; preds = %if.then
  %24 = extractvalue { i32, i1 } %22, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3328) #12
  %call8.i.i31.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3328) #12
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  %cmp12.i = icmp eq ptr %call8.i.i31.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.end7.i.i32.i.error.i_crit_edge, label %if.end.i

if.end7.i.i32.i.error.i_crit_edge:                ; preds = %if.end7.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end.i:                                         ; preds = %if.end7.i.i32.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef %zone) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1348.not.i = icmp eq i32 %19, 0
  br i1 %cmp1348.not.i, label %if.end.i.for.end132.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end132.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end132.i

for.body18.lr.ph.i:                               ; preds = %for.body.i
  %25 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 1
  %26 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 2
  %27 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 3
  %28 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 4
  %29 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 5
  %30 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 6
  %31 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 7
  %32 = getelementptr inbounds [9 x i8], ptr %command.i.i, i32 0, i32 8
  %send_bulk_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %arrayidx68.i = getelementptr i8, ptr %17, i32 6
  %arrayidx75.i = getelementptr i8, ptr %17, i32 7
  %arrayidx77.i = getelementptr i8, ptr %17, i32 11
  %arrayidx79.i = getelementptr i8, ptr %17, i32 12
  %arrayidx56.i = getelementptr i8, ptr %17, i32 1
  %arrayidx58.i = getelementptr i8, ptr %17, i32 2
  %arrayidx60.i = getelementptr i8, ptr %17, i32 3
  %arrayidx62.i = getelementptr i8, ptr %17, i32 4
  %arrayidx64.i = getelementptr i8, ptr %17, i32 5
  %arrayidx28.8.i = getelementptr i8, ptr %17, i32 8
  %arrayidx28.9.i = getelementptr i8, ptr %17, i32 9
  %arrayidx28.10.i = getelementptr i8, ptr %17, i32 10
  %arrayidx28.13.i = getelementptr i8, ptr %17, i32 13
  %arrayidx28.14.i = getelementptr i8, ptr %17, i32 14
  %arrayidx28.15.i = getelementptr i8, ptr %17, i32 15
  br label %for.body18.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx14.i = getelementptr i16, ptr %call8.i.i31.i, i32 %i.049.i
  %33 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %arrayidx14.i, align 2
  %arrayidx15.i = getelementptr i16, ptr %call8.i.i.i, i32 %i.049.i
  %34 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %arrayidx15.i, align 2
  %inc.i = add nuw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.body18.lr.ph.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body18.i:                                     ; preds = %for.inc130.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %i.153.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc131.i, %for.inc130.i.for.body18.i_crit_edge ]
  %add.i = add i32 %i.153.i, %mul10.i
  %conv.i = trunc i32 %add.i to i16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %command.i.i) #9
  %35 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 64, ptr %command.i.i, align 1
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -123, ptr %25, align 1
  %37 = lshr i32 %add.i, 3
  %conv2.i.i = trunc i32 %37 to i8
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv2.i.i, ptr %26, align 1
  %39 = lshr i16 %conv.i, 11
  %conv6.i.i = trunc i16 %39 to i8
  %40 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv6.i.i, ptr %27, align 1
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %28, align 1
  %pba.tr.i.i = trunc i32 %add.i to i8
  %conv10.i.i = shl i8 %pba.tr.i.i, 5
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv10.i.i, ptr %29, align 1
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %30, align 1
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %31, align 1
  %45 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %srb, align 4
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun.i.i, align 8
  %conv14.i.i = trunc i64 %50 to i8
  %51 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv14.i.i, ptr %32, align 1
  %52 = ptrtoint ptr %send_bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %send_bulk_pipe.i.i, align 4
  %call.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %53, ptr noundef nonnull %command.i.i, i32 noundef 9, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %alauda_get_redu_data.exit.i, label %alauda_get_redu_data.exit.thread.i

alauda_get_redu_data.exit.thread.i:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i) #9
  br label %error.i

alauda_get_redu_data.exit.i:                      ; preds = %for.body18.i
  %54 = ptrtoint ptr %recv_bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %recv_bulk_pipe.i.i, align 4
  %call16.i.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %55, ptr noundef %17, i32 noundef 16, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp20.not.i = icmp eq i32 %call16.i.i, 0
  br i1 %cmp20.not.i, label %for.body27.preheader.i, label %alauda_get_redu_data.exit.i.error.i_crit_edge

alauda_get_redu_data.exit.i.error.i_crit_edge:    ; preds = %alauda_get_redu_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.body27.preheader.i:                           ; preds = %alauda_get_redu_data.exit.i
  %56 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %17, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %57, label %for.body27.preheader.i.if.then53.i_crit_edge [
    i8 0, label %for.cond24.i
    i8 -1, label %for.inc48.i
  ]

for.body27.preheader.i.if.then53.i_crit_edge:     ; preds = %for.body27.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.i:                                     ; preds = %for.body27.preheader.i
  %59 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp30.not.1.i = icmp eq i8 %60, 0
  br i1 %cmp30.not.1.i, label %for.cond24.1.i, label %for.cond24.i.if.then53.i_crit_edge

for.cond24.i.if.then53.i_crit_edge:               ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.1.i:                                   ; preds = %for.cond24.i
  %61 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp30.not.2.i = icmp eq i8 %62, 0
  br i1 %cmp30.not.2.i, label %for.cond24.2.i, label %for.cond24.1.i.if.then53.i_crit_edge

for.cond24.1.i.if.then53.i_crit_edge:             ; preds = %for.cond24.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.2.i:                                   ; preds = %for.cond24.1.i
  %63 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx60.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp30.not.3.i = icmp eq i8 %64, 0
  br i1 %cmp30.not.3.i, label %for.cond24.3.i, label %for.cond24.2.i.if.then53.i_crit_edge

for.cond24.2.i.if.then53.i_crit_edge:             ; preds = %for.cond24.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.3.i:                                   ; preds = %for.cond24.2.i
  %65 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp30.not.4.i = icmp eq i8 %66, 0
  br i1 %cmp30.not.4.i, label %for.cond24.4.i, label %for.cond24.3.i.if.then53.i_crit_edge

for.cond24.3.i.if.then53.i_crit_edge:             ; preds = %for.cond24.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.4.i:                                   ; preds = %for.cond24.3.i
  %67 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp30.not.5.i = icmp eq i8 %68, 0
  br i1 %cmp30.not.5.i, label %for.cond24.5.i, label %for.cond24.4.i.if.then53.i_crit_edge

for.cond24.4.i.if.then53.i_crit_edge:             ; preds = %for.cond24.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.5.i:                                   ; preds = %for.cond24.4.i
  %69 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp30.not.6.i = icmp eq i8 %70, 0
  br i1 %cmp30.not.6.i, label %for.cond24.6.i, label %for.cond24.5.i.if.then53.i_crit_edge

for.cond24.5.i.if.then53.i_crit_edge:             ; preds = %for.cond24.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.6.i:                                   ; preds = %for.cond24.5.i
  %71 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx75.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp30.not.7.i = icmp eq i8 %72, 0
  br i1 %cmp30.not.7.i, label %for.cond24.7.i, label %for.cond24.6.i.if.then53.i_crit_edge

for.cond24.6.i.if.then53.i_crit_edge:             ; preds = %for.cond24.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.7.i:                                   ; preds = %for.cond24.6.i
  %73 = ptrtoint ptr %arrayidx28.8.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx28.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp30.not.8.i = icmp eq i8 %74, 0
  br i1 %cmp30.not.8.i, label %for.cond24.8.i, label %for.cond24.7.i.if.then53.i_crit_edge

for.cond24.7.i.if.then53.i_crit_edge:             ; preds = %for.cond24.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.8.i:                                   ; preds = %for.cond24.7.i
  %75 = ptrtoint ptr %arrayidx28.9.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx28.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp30.not.9.i = icmp eq i8 %76, 0
  br i1 %cmp30.not.9.i, label %for.cond24.9.i, label %for.cond24.8.i.if.then53.i_crit_edge

for.cond24.8.i.if.then53.i_crit_edge:             ; preds = %for.cond24.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.9.i:                                   ; preds = %for.cond24.8.i
  %77 = ptrtoint ptr %arrayidx28.10.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx28.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp30.not.10.i = icmp eq i8 %78, 0
  br i1 %cmp30.not.10.i, label %for.cond24.10.i, label %for.cond24.9.i.if.then53.i_crit_edge

for.cond24.9.i.if.then53.i_crit_edge:             ; preds = %for.cond24.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.10.i:                                  ; preds = %for.cond24.9.i
  %79 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx77.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp30.not.11.i = icmp eq i8 %80, 0
  br i1 %cmp30.not.11.i, label %for.cond24.11.i, label %for.cond24.10.i.if.then53.i_crit_edge

for.cond24.10.i.if.then53.i_crit_edge:            ; preds = %for.cond24.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.11.i:                                  ; preds = %for.cond24.10.i
  %81 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx79.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp30.not.12.i = icmp eq i8 %82, 0
  br i1 %cmp30.not.12.i, label %for.cond24.12.i, label %for.cond24.11.i.if.then53.i_crit_edge

for.cond24.11.i.if.then53.i_crit_edge:            ; preds = %for.cond24.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.12.i:                                  ; preds = %for.cond24.11.i
  %83 = ptrtoint ptr %arrayidx28.13.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx28.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp30.not.13.i = icmp eq i8 %84, 0
  br i1 %cmp30.not.13.i, label %for.cond24.13.i, label %for.cond24.12.i.if.then53.i_crit_edge

for.cond24.12.i.if.then53.i_crit_edge:            ; preds = %for.cond24.12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.13.i:                                  ; preds = %for.cond24.12.i
  %85 = ptrtoint ptr %arrayidx28.14.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx28.14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp30.not.14.i = icmp eq i8 %86, 0
  br i1 %cmp30.not.14.i, label %for.cond24.14.i, label %for.cond24.13.i.if.then53.i_crit_edge

for.cond24.13.i.if.then53.i_crit_edge:            ; preds = %for.cond24.13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.14.i:                                  ; preds = %for.cond24.13.i
  %87 = ptrtoint ptr %arrayidx28.15.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx28.15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp30.not.15.i = icmp eq i8 %88, 0
  br i1 %cmp30.not.15.i, label %for.cond24.15.i, label %for.cond24.14.i.if.then53.i_crit_edge

for.cond24.14.i.if.then53.i_crit_edge:            ; preds = %for.cond24.14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.cond24.15.i:                                  ; preds = %for.cond24.14.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i = getelementptr i16, ptr %call8.i.i31.i, i32 %i.153.i
  %89 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -3, ptr %arrayidx37.i, align 2
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.27, i32 noundef %add.i) #9
  br label %for.inc130.i

for.inc48.i:                                      ; preds = %for.body27.preheader.i
  %90 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %cmp44.not.1.i = icmp eq i8 %91, -1
  br i1 %cmp44.not.1.i, label %for.inc48.1.i, label %for.inc48.i.if.then53.i_crit_edge

for.inc48.i.if.then53.i_crit_edge:                ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.inc48.1.i:                                    ; preds = %for.inc48.i
  %92 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp44.not.2.i = icmp eq i8 %93, -1
  br i1 %cmp44.not.2.i, label %for.inc48.2.i, label %for.inc48.1.i.if.then53.i_crit_edge

for.inc48.1.i.if.then53.i_crit_edge:              ; preds = %for.inc48.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.inc48.2.i:                                    ; preds = %for.inc48.1.i
  %94 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx60.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp44.not.3.i = icmp eq i8 %95, -1
  br i1 %cmp44.not.3.i, label %for.inc48.3.i, label %for.inc48.2.i.if.then53.i_crit_edge

for.inc48.2.i.if.then53.i_crit_edge:              ; preds = %for.inc48.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.inc48.3.i:                                    ; preds = %for.inc48.2.i
  %96 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp44.not.4.i = icmp eq i8 %97, -1
  br i1 %cmp44.not.4.i, label %for.inc48.4.i, label %for.inc48.3.i.if.then53.i_crit_edge

for.inc48.3.i.if.then53.i_crit_edge:              ; preds = %for.inc48.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.inc48.4.i:                                    ; preds = %for.inc48.3.i
  %98 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %cmp44.not.5.i = icmp eq i8 %99, -1
  br i1 %cmp44.not.5.i, label %for.inc48.5.i, label %for.inc48.4.i.if.then53.i_crit_edge

for.inc48.4.i.if.then53.i_crit_edge:              ; preds = %for.inc48.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

for.inc48.5.i:                                    ; preds = %for.inc48.4.i
  %100 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp44.not.6.i = icmp eq i8 %101, -1
  br i1 %cmp44.not.6.i, label %for.inc48.6.i, label %if.end67.i

for.inc48.6.i:                                    ; preds = %for.inc48.5.i
  %102 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx75.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %cmp44.not.7.i = icmp eq i8 %103, -1
  br i1 %cmp44.not.7.i, label %for.inc48.7.i, label %for.inc48.6.i.if.end67.i.thread_crit_edge

for.inc48.6.i.if.end67.i.thread_crit_edge:        ; preds = %for.inc48.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.7.i:                                    ; preds = %for.inc48.6.i
  %104 = ptrtoint ptr %arrayidx28.8.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx28.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp44.not.8.i = icmp eq i8 %105, -1
  br i1 %cmp44.not.8.i, label %for.inc48.8.i, label %for.inc48.7.i.if.end67.i.thread_crit_edge

for.inc48.7.i.if.end67.i.thread_crit_edge:        ; preds = %for.inc48.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.8.i:                                    ; preds = %for.inc48.7.i
  %106 = ptrtoint ptr %arrayidx28.9.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx28.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %cmp44.not.9.i = icmp eq i8 %107, -1
  br i1 %cmp44.not.9.i, label %for.inc48.9.i, label %for.inc48.8.i.if.end67.i.thread_crit_edge

for.inc48.8.i.if.end67.i.thread_crit_edge:        ; preds = %for.inc48.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.9.i:                                    ; preds = %for.inc48.8.i
  %108 = ptrtoint ptr %arrayidx28.10.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx28.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %109)
  %cmp44.not.10.i = icmp eq i8 %109, -1
  br i1 %cmp44.not.10.i, label %for.inc48.10.i, label %for.inc48.9.i.if.end67.i.thread_crit_edge

for.inc48.9.i.if.end67.i.thread_crit_edge:        ; preds = %for.inc48.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.10.i:                                   ; preds = %for.inc48.9.i
  %110 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx77.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %111)
  %cmp44.not.11.i = icmp eq i8 %111, -1
  br i1 %cmp44.not.11.i, label %for.inc48.11.i, label %for.inc48.10.i.if.end67.i.thread_crit_edge

for.inc48.10.i.if.end67.i.thread_crit_edge:       ; preds = %for.inc48.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.11.i:                                   ; preds = %for.inc48.10.i
  %112 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx79.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %113)
  %cmp44.not.12.i = icmp eq i8 %113, -1
  br i1 %cmp44.not.12.i, label %for.inc48.12.i, label %for.inc48.11.i.if.end67.i.thread_crit_edge

for.inc48.11.i.if.end67.i.thread_crit_edge:       ; preds = %for.inc48.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.12.i:                                   ; preds = %for.inc48.11.i
  %114 = ptrtoint ptr %arrayidx28.13.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx28.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %115)
  %cmp44.not.13.i = icmp eq i8 %115, -1
  br i1 %cmp44.not.13.i, label %for.inc48.13.i, label %for.inc48.12.i.if.end67.i.thread_crit_edge

for.inc48.12.i.if.end67.i.thread_crit_edge:       ; preds = %for.inc48.12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.13.i:                                   ; preds = %for.inc48.12.i
  %116 = ptrtoint ptr %arrayidx28.14.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx28.14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %cmp44.not.14.i = icmp eq i8 %117, -1
  br i1 %cmp44.not.14.i, label %for.inc48.14.i, label %for.inc48.13.i.if.end67.i.thread_crit_edge

for.inc48.13.i.if.end67.i.thread_crit_edge:       ; preds = %for.inc48.13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.14.i:                                   ; preds = %for.inc48.13.i
  %118 = ptrtoint ptr %arrayidx28.15.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx28.15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %119)
  %cmp44.not.15.i = icmp eq i8 %119, -1
  br i1 %cmp44.not.15.i, label %for.inc48.14.i.for.inc130.i_crit_edge, label %for.inc48.14.i.if.end67.i.thread_crit_edge

for.inc48.14.i.if.end67.i.thread_crit_edge:       ; preds = %for.inc48.14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.thread

for.inc48.14.i.for.inc130.i_crit_edge:            ; preds = %for.inc48.14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc130.i

if.then53.i:                                      ; preds = %for.inc48.4.i.if.then53.i_crit_edge, %for.inc48.3.i.if.then53.i_crit_edge, %for.inc48.2.i.if.then53.i_crit_edge, %for.inc48.1.i.if.then53.i_crit_edge, %for.inc48.i.if.then53.i_crit_edge, %for.cond24.14.i.if.then53.i_crit_edge, %for.cond24.13.i.if.then53.i_crit_edge, %for.cond24.12.i.if.then53.i_crit_edge, %for.cond24.11.i.if.then53.i_crit_edge, %for.cond24.10.i.if.then53.i_crit_edge, %for.cond24.9.i.if.then53.i_crit_edge, %for.cond24.8.i.if.then53.i_crit_edge, %for.cond24.7.i.if.then53.i_crit_edge, %for.cond24.6.i.if.then53.i_crit_edge, %for.cond24.5.i.if.then53.i_crit_edge, %for.cond24.4.i.if.then53.i_crit_edge, %for.cond24.3.i.if.then53.i_crit_edge, %for.cond24.2.i.if.then53.i_crit_edge, %for.cond24.1.i.if.then53.i_crit_edge, %for.cond24.i.if.then53.i_crit_edge, %for.body27.preheader.i.if.then53.i_crit_edge
  %conv55.i = zext i8 %57 to i32
  %120 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx56.i, align 1
  %conv57.i = zext i8 %121 to i32
  %122 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %123 to i32
  %124 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = zext i8 %125 to i32
  %126 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %127 to i32
  %128 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx64.i, align 1
  %conv65.i = zext i8 %129 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.28, i32 noundef %add.i, i32 noundef %conv55.i, i32 noundef %conv57.i, i32 noundef %conv59.i, i32 noundef %conv61.i, i32 noundef %conv63.i, i32 noundef %conv65.i) #9
  %arrayidx66.i = getelementptr i16, ptr %call8.i.i31.i, i32 %i.153.i
  %130 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -3, ptr %arrayidx66.i, align 2
  br label %for.inc130.i

if.end67.i.thread:                                ; preds = %for.inc48.14.i.if.end67.i.thread_crit_edge, %for.inc48.13.i.if.end67.i.thread_crit_edge, %for.inc48.12.i.if.end67.i.thread_crit_edge, %for.inc48.11.i.if.end67.i.thread_crit_edge, %for.inc48.10.i.if.end67.i.thread_crit_edge, %for.inc48.9.i.if.end67.i.thread_crit_edge, %for.inc48.8.i.if.end67.i.thread_crit_edge, %for.inc48.7.i.if.end67.i.thread_crit_edge, %for.inc48.6.i.if.end67.i.thread_crit_edge
  %131 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx75.i, align 1
  br label %if.then72.i

if.end67.i:                                       ; preds = %for.inc48.5.i
  %conv69.i = zext i8 %101 to i32
  %.mask.i = and i32 %conv69.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask.i)
  %cmp70.not.i = icmp eq i32 %.mask.i, 16
  %133 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx75.i, align 1
  br i1 %cmp70.not.i, label %if.end82.i, label %if.end67.i.if.then72.i_crit_edge

if.end67.i.if.then72.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then72.i

if.then72.i:                                      ; preds = %if.end67.i.if.then72.i_crit_edge, %if.end67.i.thread
  %135 = phi i8 [ %132, %if.end67.i.thread ], [ %134, %if.end67.i.if.then72.i_crit_edge ]
  %conv69.i28 = phi i32 [ 255, %if.end67.i.thread ], [ %conv69.i, %if.end67.i.if.then72.i_crit_edge ]
  %conv76.i = zext i8 %135 to i32
  %136 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %137 to i32
  %138 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx79.i, align 1
  %conv80.i = zext i8 %139 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.29, i32 noundef %add.i, i32 noundef %conv69.i28, i32 noundef %conv76.i, i32 noundef %conv78.i, i32 noundef %conv80.i) #9
  %arrayidx81.i = getelementptr i16, ptr %call8.i.i31.i, i32 %i.153.i
  %140 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -3, ptr %arrayidx81.i, align 2
  br label %for.inc130.i

if.end82.i:                                       ; preds = %if.end67.i
  %xor1.i = xor i8 %134, %101
  %xor.i = zext i8 %xor1.i to i32
  %arrayidx87.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %xor.i
  %141 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx87.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i = icmp eq i8 %142, 0
  %conv98.i = zext i8 %134 to i32
  br i1 %tobool.not.i, label %if.end95.i, label %do.end.i

do.end.i:                                         ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %i.153.i, i32 noundef %conv69.i, i32 noundef %conv98.i) #13
  %arrayidx94.i = getelementptr i16, ptr %call8.i.i31.i, i32 %i.153.i
  %143 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -3, ptr %arrayidx94.i, align 2
  br label %for.inc130.i

if.end95.i:                                       ; preds = %if.end82.i
  %shl.i = shl nuw nsw i32 %conv69.i, 8
  %shl.masked.i = and i32 %shl.i, 1792
  %and.i = or i32 %shl.masked.i, %conv98.i
  %shr102.i = lshr i32 %and.i, 1
  %add103.i = add i32 %shr102.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr102.i, i32 %21)
  %cmp104.not.i = icmp ult i32 %shr102.i, %21
  br i1 %cmp104.not.i, label %if.end112.i, label %do.end109.i

do.end109.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %add103.i, i32 noundef %add.i) #13
  br label %for.inc130.i

if.end112.i:                                      ; preds = %if.end95.i
  %arrayidx113.i = getelementptr i16, ptr %call8.i.i.i, i32 %shr102.i
  %144 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx113.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %145)
  %cmp115.not.i = icmp eq i16 %145, -1
  br i1 %cmp115.not.i, label %if.end125.i, label %do.end120.i

do.end120.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv114.i = zext i16 %145 to i32
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %add103.i, i32 noundef %conv114.i, i32 noundef %add.i) #13
  br label %for.inc130.i

if.end125.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv126.i = trunc i32 %add103.i to i16
  %arrayidx127.i = getelementptr i16, ptr %call8.i.i31.i, i32 %i.153.i
  %146 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv126.i, ptr %arrayidx127.i, align 2
  %147 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i, ptr %arrayidx113.i, align 2
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %if.end125.i, %do.end120.i, %do.end109.i, %do.end.i, %if.then72.i, %if.then53.i, %for.inc48.14.i.for.inc130.i_crit_edge, %for.cond24.15.i
  %inc131.i = add nuw i32 %i.153.i, 1
  %exitcond58.not.i = icmp eq i32 %inc131.i, %19
  br i1 %exitcond58.not.i, label %for.inc130.i.for.end132.i_crit_edge, label %for.inc130.i.for.body18.i_crit_edge

for.inc130.i.for.body18.i_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i

for.inc130.i.for.end132.i_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end132.i

for.end132.i:                                     ; preds = %for.inc130.i.for.end132.i_crit_edge, %if.end.i.for.end132.i_crit_edge
  %148 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %extra, align 4
  %150 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %srb, align 4
  %device136.i = getelementptr inbounds %struct.scsi_cmnd, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %device136.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %device136.i, align 4
  %lun137.i = getelementptr inbounds %struct.scsi_device, ptr %153, i32 0, i32 18
  %154 = ptrtoint ptr %lun137.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %lun137.i, align 8
  %idxprom138.i = trunc i64 %155 to i32
  %lba_to_pba140.i = getelementptr [2 x %struct.alauda_media_info], ptr %149, i32 0, i32 %idxprom138.i, i32 9
  %156 = ptrtoint ptr %lba_to_pba140.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %lba_to_pba140.i, align 4
  %arrayidx141.i = getelementptr ptr, ptr %157, i32 %zone
  %158 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call8.i.i.i, ptr %arrayidx141.i, align 4
  %159 = load ptr, ptr %extra, align 4
  %160 = load ptr, ptr %srb, align 4
  %device145.i = getelementptr inbounds %struct.scsi_cmnd, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %device145.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %device145.i, align 4
  %lun146.i = getelementptr inbounds %struct.scsi_device, ptr %162, i32 0, i32 18
  %163 = ptrtoint ptr %lun146.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %lun146.i, align 8
  %idxprom147.i = trunc i64 %164 to i32
  %pba_to_lba149.i = getelementptr [2 x %struct.alauda_media_info], ptr %159, i32 0, i32 %idxprom147.i, i32 10
  %165 = ptrtoint ptr %pba_to_lba149.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pba_to_lba149.i, align 4
  %arrayidx150.i = getelementptr ptr, ptr %166, i32 %zone
  %167 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call8.i.i31.i, ptr %arrayidx150.i, align 4
  br label %if.end

error.i:                                          ; preds = %alauda_get_redu_data.exit.i.error.i_crit_edge, %alauda_get_redu_data.exit.thread.i, %if.end7.i.i32.i.error.i_crit_edge, %if.then.error.i_crit_edge
  %retval.0.i.i3344.i = phi ptr [ %call8.i.i31.i, %if.end7.i.i32.i.error.i_crit_edge ], [ %call8.i.i31.i, %alauda_get_redu_data.exit.thread.i ], [ null, %if.then.error.i_crit_edge ], [ %call8.i.i31.i, %alauda_get_redu_data.exit.i.error.i_crit_edge ]
  %retval.0.i.i3743.i = phi ptr [ %call8.i.i.i, %if.end7.i.i32.i.error.i_crit_edge ], [ %call8.i.i.i, %alauda_get_redu_data.exit.thread.i ], [ null, %if.then.error.i_crit_edge ], [ %call8.i.i.i, %alauda_get_redu_data.exit.i.error.i_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i.i3743.i) #9
  call void @kfree(ptr noundef %retval.0.i.i3344.i) #9
  br label %if.end

if.end:                                           ; preds = %error.i, %for.end132.i, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alauda_read_block_raw(ptr noundef %us, i16 noundef zeroext %pba, i32 noundef %page, i32 noundef %pages, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %command = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %command) #9
  %0 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 4
  %4 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 5
  %5 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 6
  %6 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 7
  %7 = getelementptr inbounds [9 x i8], ptr %command, i32 0, i32 8
  %8 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %command, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -108, ptr %0, align 1
  %conv = zext i16 %pba to i32
  %10 = lshr i16 %pba, 3
  %conv2 = trunc i16 %10 to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2, ptr %1, align 1
  %12 = lshr i16 %pba, 11
  %conv6 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %3, align 1
  %and = shl nuw nsw i32 %conv, 5
  %add = add i32 %and, %page
  %conv10 = trunc i32 %add to i8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %4, align 1
  %conv12 = trunc i32 %pages to i8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12, ptr %5, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %6, align 1
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %18 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srb, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lun, align 8
  %conv15 = trunc i64 %23 to i8
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15, ptr %7, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %page, i32 noundef %pages) #9
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %25 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %send_bulk_pipe, align 4
  %call = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %26, ptr noundef nonnull %command, i32 noundef 9, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %27 = ptrtoint ptr %recv_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %recv_bulk_pipe, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %29 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extra, align 4
  %31 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %srb, align 4
  %device19 = getelementptr inbounds %struct.scsi_cmnd, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device19, align 4
  %lun20 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %lun20 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lun20, align 8
  %idxprom = trunc i64 %36 to i32
  %pagesize = getelementptr [2 x %struct.alauda_media_info], ptr %30, i32 0, i32 %idxprom, i32 1
  %37 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagesize, align 4
  %add21 = add i32 %38, 64
  %mul = mul i32 %add21, %pages
  %call22 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %28, ptr noundef %data, i32 noundef %mul, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %command) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_compute_ecc(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %ecc) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %bits.sroa.24.0 = phi i8 [ 0, %entry ], [ %bits.sroa.24.1, %for.body.for.body_crit_edge ]
  %bits.sroa.21.0 = phi i8 [ 0, %entry ], [ %bits.sroa.21.1, %for.body.for.body_crit_edge ]
  %bits.sroa.18.0 = phi i8 [ 0, %entry ], [ %bits.sroa.18.1, %for.body.for.body_crit_edge ]
  %bits.sroa.15.0 = phi i8 [ 0, %entry ], [ %bits.sroa.15.1, %for.body.for.body_crit_edge ]
  %bits.sroa.12.0 = phi i8 [ 0, %entry ], [ %bits.sroa.12.1, %for.body.for.body_crit_edge ]
  %bits.sroa.9.0 = phi i8 [ 0, %entry ], [ %bits.sroa.9.1, %for.body.for.body_crit_edge ]
  %bits.sroa.6.0 = phi i8 [ 0, %entry ], [ %bits.sroa.6.1, %for.body.for.body_crit_edge ]
  %bits.sroa.0.0 = phi i8 [ 0, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %par.088 = phi i32 [ 0, %entry ], [ %xor, %for.body.for.body_crit_edge ]
  %i.087 = phi i32 [ 0, %entry ], [ %inc17, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.087
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx4 = getelementptr [256 x i8], ptr @parity, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %and = and i32 %i.087, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  %xor1484 = select i1 %cmp9, i8 %3, i8 0
  %spec.select = xor i8 %bits.sroa.0.0, %xor1484
  %and.1 = and i32 %i.087, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp9.1 = icmp eq i32 %and.1, 0
  %xor1484.1 = select i1 %cmp9.1, i8 %3, i8 0
  %bits.sroa.6.1 = xor i8 %bits.sroa.6.0, %xor1484.1
  %and.2 = and i32 %i.087, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp9.2 = icmp eq i32 %and.2, 0
  %xor1484.2 = select i1 %cmp9.2, i8 %3, i8 0
  %bits.sroa.9.1 = xor i8 %bits.sroa.9.0, %xor1484.2
  %and.3 = and i32 %i.087, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp9.3 = icmp eq i32 %and.3, 0
  %xor1484.3 = select i1 %cmp9.3, i8 %3, i8 0
  %bits.sroa.12.1 = xor i8 %bits.sroa.12.0, %xor1484.3
  %and.4 = and i32 %i.087, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp9.4 = icmp eq i32 %and.4, 0
  %xor1484.4 = select i1 %cmp9.4, i8 %3, i8 0
  %bits.sroa.15.1 = xor i8 %bits.sroa.15.0, %xor1484.4
  %and.5 = and i32 %i.087, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp9.5 = icmp eq i32 %and.5, 0
  %xor1484.5 = select i1 %cmp9.5, i8 %3, i8 0
  %bits.sroa.18.1 = xor i8 %bits.sroa.18.0, %xor1484.5
  %and.6 = and i32 %i.087, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp9.6 = icmp eq i32 %and.6, 0
  %xor1484.6 = select i1 %cmp9.6, i8 %3, i8 0
  %bits.sroa.21.1 = xor i8 %bits.sroa.21.0, %xor1484.6
  %and.7 = and i32 %i.087, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp9.7 = icmp eq i32 %and.7, 0
  %xor1484.7 = select i1 %cmp9.7, i8 %3, i8 0
  %bits.sroa.24.1 = xor i8 %bits.sroa.24.0, %xor1484.7
  %xor = xor i32 %par.088, %conv
  %inc17 = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc17, 256
  br i1 %exitcond.not, label %for.end18, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i8 %bits.sroa.12.1 to i32
  %shl21 = shl nuw nsw i32 %conv20, 6
  %conv23 = zext i8 %bits.sroa.9.1 to i32
  %shl24 = shl nuw nsw i32 %conv23, 4
  %add = add nuw nsw i32 %shl24, %shl21
  %conv26 = zext i8 %bits.sroa.6.1 to i32
  %shl27 = shl nuw nsw i32 %conv26, 2
  %add28 = add nuw nsw i32 %add, %shl27
  %conv30 = zext i8 %spec.select to i32
  %add31 = add nuw nsw i32 %add28, %conv30
  %shl32 = shl nuw nsw i32 %add31, 1
  %arrayidx35 = getelementptr [256 x i8], ptr @parity, i32 0, i32 %xor
  %4 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 170
  %xor33 = xor i32 %cond, %add31
  %xor37 = xor i32 %xor33, %shl32
  %6 = trunc i32 %xor37 to i8
  %conv38 = xor i8 %6, -1
  %7 = ptrtoint ptr %ecc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv38, ptr %ecc, align 1
  %conv41 = zext i8 %bits.sroa.24.1 to i32
  %shl42 = shl nuw nsw i32 %conv41, 6
  %conv44 = zext i8 %bits.sroa.21.1 to i32
  %shl45 = shl nuw nsw i32 %conv44, 4
  %add46 = add nuw nsw i32 %shl45, %shl42
  %conv48 = zext i8 %bits.sroa.18.1 to i32
  %shl49 = shl nuw nsw i32 %conv48, 2
  %add50 = add nuw nsw i32 %add46, %shl49
  %conv52 = zext i8 %bits.sroa.15.1 to i32
  %add53 = add nuw nsw i32 %add50, %conv52
  %shl54 = shl nuw nsw i32 %add53, 1
  %xor55 = xor i32 %add53, %cond
  %xor61 = xor i32 %xor55, %shl54
  %8 = trunc i32 %xor61 to i8
  %conv63 = xor i8 %8, -1
  %arrayidx64 = getelementptr i8, ptr %ecc, i32 1
  %9 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv63, ptr %arrayidx64, align 1
  %arrayidx66 = getelementptr [256 x i8], ptr @ecc2, i32 0, i32 %xor
  %10 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx66, align 1
  %arrayidx67 = getelementptr i8, ptr %ecc, i32 2
  %12 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx67, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/alauda.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/alauda.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/alauda.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/alauda.c", i32 39, i32 1}
!9 = !{ptr @__initcall__kmod_ums_alauda__303_1263_alauda_driver_init6, !10, !"__initcall__kmod_ums_alauda__303_1263_alauda_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/alauda.c", i32 1263, i32 1}
!11 = !{ptr @__exitcall_alauda_driver_exit, !10, !"__exitcall_alauda_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @alauda_host_template, !15, !"alauda_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/alauda.c", i32 1226, i32 34}
!16 = !{ptr @alauda_driver, !17, !"alauda_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/alauda.c", i32 1249, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/alauda.c", i32 1240, i32 24}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_alauda.h", i32 9, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/unusual_alauda.h", i32 14, i32 1}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @alauda_unusual_dev_list, !27, !"alauda_unusual_dev_list", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/alauda.c", i32 155, i32 30}
!28 = !{ptr @parity, !29, !"parity", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/alauda.c", i32 215, i32 22}
!30 = !{ptr @ecc2, !31, !"ecc2", i1 false, i1 false}
!31 = !{!"../drivers/usb/storage/alauda.c", i32 216, i32 22}
!32 = !{ptr @alauda_transport.inquiry_response, !33, !"inquiry_response", i1 false, i1 false}
!33 = !{!"../drivers/usb/storage/alauda.c", i32 1124, i32 23}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/alauda.c", i32 1129, i32 20}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/storage/alauda.c", i32 1136, i32 20}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/alauda.c", i32 1174, i32 20}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/alauda.c", i32 1191, i32 20}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/alauda.c", i32 1197, i32 20}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/alauda.c", i32 1218, i32 19}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/alauda.c", i32 462, i32 20}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/alauda.c", i32 472, i32 20}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/alauda.c", i32 321, i32 19}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/alauda.c", i32 396, i32 19}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/alauda.c", i32 407, i32 20}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/alauda.c", i32 414, i32 19}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/alauda.c", i32 417, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @alauda_init_media._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @alauda_init_media._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/storage/alauda.c", i32 423, i32 19}
!66 = !{ptr @alauda_card_ids, !67, !"alauda_card_ids", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/alauda.c", i32 175, i32 32}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/alauda.c", i32 950, i32 21}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/storage/alauda.c", i32 964, i32 21}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/storage/alauda.c", i32 976, i32 21}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/alauda.c", i32 574, i32 19}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/alauda.c", i32 594, i32 20}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/alauda.c", i32 607, i32 21}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/alauda.c", i32 616, i32 21}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/storage/alauda.c", i32 625, i32 4}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @alauda_read_map._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @alauda_read_map._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/storage/alauda.c", i32 646, i32 4}
!89 = !{ptr @alauda_read_map._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @alauda_read_map._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/storage/alauda.c", i32 653, i32 4}
!93 = !{ptr @alauda_read_map._entry.35, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @alauda_read_map._entry_ptr.37, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/storage/alauda.c", i32 729, i32 19}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/storage/alauda.c", i32 1050, i32 21}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/storage/alauda.c", i32 823, i32 3}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @alauda_write_lba._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @alauda_write_lba._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/storage/alauda.c", i32 830, i32 3}
!106 = !{ptr @alauda_write_lba._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @alauda_write_lba._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/storage/alauda.c", i32 855, i32 21}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/storage/alauda.c", i32 861, i32 21}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/storage/alauda.c", i32 889, i32 19}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/storage/alauda.c", i32 780, i32 19}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/storage/alauda.c", i32 508, i32 19}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/storage/alauda.c", i32 700, i32 19}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/storage/alauda.c", i32 712, i32 19}
!122 = !{ptr @alauda_usb_ids, !123, !"alauda_usb_ids", i1 false, i1 false}
!123 = !{!"../drivers/usb/storage/alauda.c", i32 133, i32 29}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 1, i32 2000}
