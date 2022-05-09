; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/sddr09.c_pt.bc'
source_filename = "../drivers/usb/storage/sddr09.c"
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
%struct.nand_flash_dev = type { i32, i32, i8, i8, i8, i8 }
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
%struct.sddr09_card_info = type { i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>

@__UNIQUE_ID_description290 = internal constant [68 x i8] c"ums_sddr09.description=Driver for SanDisk SDDR-09 SmartMedia reader\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [87 x i8] c"ums_sddr09.author=Andries Brouwer <aeb@cwi.nl>, Robert Baruch <autophile@starband.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [47 x i8] c"ums_sddr09.file=drivers/usb/storage/ums-sddr09\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"ums_sddr09.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [33 x i8] c"ums_sddr09.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_sddr09__307_1790_sddr09_driver_init6 = internal global ptr @sddr09_driver_init, section ".initcall6.init", align 4
@sddr09_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sddr09_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @sddr09_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sddr09_driver_exit = internal global ptr @sddr09_driver_exit, section ".exitcall.exit", align 4
@sddr09_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums-sddr09\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums_sddr09\00", [21 x i8] zeroinitializer }, align 32
@sddr09_usb_ids = internal global { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1078, i16 5, i16 256, i16 256, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1254, i16 3, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1254, i16 5, i16 256, i16 520, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1643, i16 261, i16 256, i16 256, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1921, i16 512, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1967, i16 6, i16 256, i16 256, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sddr09_unusual_dev_list = internal global { [7 x %struct.us_unusual_dev], [48 x i8] } { [7 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.4, ptr @.str.5, i8 6, i8 -16, ptr null }, %struct.us_unusual_dev { ptr @.str.6, ptr @.str.7, i8 6, i8 -127, ptr @usb_stor_sddr09_init }, %struct.us_unusual_dev { ptr @.str.8, ptr @.str.9, i8 6, i8 -16, ptr @usb_stor_sddr09_dpcm_init }, %struct.us_unusual_dev { ptr @.str.10, ptr @.str.11, i8 6, i8 -127, ptr @usb_stor_sddr09_init }, %struct.us_unusual_dev { ptr @.str.6, ptr @.str.12, i8 6, i8 -127, ptr @usb_stor_sddr09_init }, %struct.us_unusual_dev { ptr @.str.4, ptr @.str.5, i8 6, i8 -16, ptr null }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Control/Bulk-EUSB/SDDR09\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EUSB/SDDR09\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Microtech\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CameraMate (DPCM_USB)\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sandisk\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ImageMate SDDR09\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCM Microsystems\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"eUSB SmartMedia / CompactFlash Adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Olympus\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Camedia MAUSB-2\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ImageMate SDDR-09\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"active config #%d != 1 ??\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Result of usb_reset_configuration is %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"-- stall on control interface\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"-- Unknown error.  Rejecting device\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parity = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@ecc2 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_command fails\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02X %02X\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"2nd send_command fails\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_stor_sddr09_dpcm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02X\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_stor_sddr09_dpcm_init\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/storage/sddr09.c\00", [35 x i8] zeroinitializer }, align 32
@usb_stor_sddr09_dpcm_init._entry_ptr = internal global ptr @usb_stor_sddr09_dpcm_init._entry, section ".printk_index", align 4
@usb_stor_sddr09_dpcm_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.22, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@usb_stor_sddr09_dpcm_init._entry_ptr.25 = internal global ptr @usb_stor_sddr09_dpcm_init._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUN=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid LUN %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sddr09_transport.sensekey = internal global { i8, [31 x i8] } zeroinitializer, align 32
@sddr09_transport.sensecode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@sddr09_transport.havefakesense = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sddr09_transport.mode_page_01 = internal constant { <{ [9 x i8], [10 x i8] }>, [45 x i8] } { <{ [9 x i8], [10 x i8] }> <{ [9 x i8] c"\00\0F\00\00\00\00\00\01\0A", [10 x i8] zeroinitializer }>, [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dummy up request for mode page 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"READ_10: read page %d pagect %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"WRITE_10: write page %d pagect %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Send control for command %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sddr09_send_scsi_command returns %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %d bytes\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sending\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"receiving\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_status fails\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" WP\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"status 0x%02X%s%s%s%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Ready\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Suspended\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Error\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Reading status...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reading capacity...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Result of read_deviceID is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sddr09_get_cardinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.22, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014sddr09: could not read card info\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sddr09_get_cardinfo\00", [44 x i8] zeroinitializer }, align 32
@sddr09_get_cardinfo._entry_ptr = internal global ptr @sddr09_get_cardinfo._entry, section ".printk_index", align 4
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sddr09: Found Flash card, ID = %4ph\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c": Manuf. %s\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", %d MB\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c", type unrecognized\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", 128-bit ID\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", extra cmd\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c", WP\00", [27 x i8] zeroinitializer }, align 32
@sddr09_get_cardinfo._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.22, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\014%s\0A\00", [26 x i8] zeroinitializer }, align 32
@sddr09_get_cardinfo._entry_ptr.58 = internal global ptr @sddr09_get_cardinfo._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AMD\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NATSEMI\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toshiba\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Samsung\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nand_flash_ids = internal constant { [19 x %struct.nand_flash_dev], [60 x i8] } { [19 x %struct.nand_flash_dev] [%struct.nand_flash_dev { i32 110, i32 20, i8 8, i8 4, i8 8, i8 2 }, %struct.nand_flash_dev { i32 232, i32 20, i8 8, i8 4, i8 8, i8 2 }, %struct.nand_flash_dev { i32 236, i32 20, i8 8, i8 4, i8 8, i8 2 }, %struct.nand_flash_dev { i32 100, i32 21, i8 8, i8 4, i8 9, i8 2 }, %struct.nand_flash_dev { i32 234, i32 21, i8 8, i8 4, i8 9, i8 2 }, %struct.nand_flash_dev { i32 107, i32 22, i8 9, i8 4, i8 9, i8 2 }, %struct.nand_flash_dev { i32 227, i32 22, i8 9, i8 4, i8 9, i8 2 }, %struct.nand_flash_dev { i32 229, i32 22, i8 9, i8 4, i8 9, i8 2 }, %struct.nand_flash_dev { i32 230, i32 23, i8 9, i8 4, i8 10, i8 2 }, %struct.nand_flash_dev { i32 115, i32 24, i8 9, i8 5, i8 10, i8 2 }, %struct.nand_flash_dev { i32 117, i32 25, i8 9, i8 5, i8 10, i8 2 }, %struct.nand_flash_dev { i32 118, i32 26, i8 9, i8 5, i8 10, i8 3 }, %struct.nand_flash_dev { i32 121, i32 27, i8 9, i8 5, i8 10, i8 3 }, %struct.nand_flash_dev { i32 93, i32 21, i8 9, i8 4, i8 8, i8 2 }, %struct.nand_flash_dev { i32 213, i32 22, i8 9, i8 4, i8 9, i8 2 }, %struct.nand_flash_dev { i32 214, i32 23, i8 9, i8 4, i8 10, i8 2 }, %struct.nand_flash_dev { i32 87, i32 24, i8 9, i8 4, i8 11, i8 2 }, %struct.nand_flash_dev { i32 88, i32 25, i8 9, i8 4, i8 12, i8 2 }, %struct.nand_flash_dev zeroinitializer], [60 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.22, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014sddr09_read_map: out of memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sddr09_read_map\00", [16 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr = internal global ptr @sddr09_read_map._entry, section ".printk_index", align 4
@sddr09_read_map._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.22, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014sddr09: PBA %d has no logical mapping\0A\00", [55 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr.68 = internal global ptr @sddr09_read_map._entry.66, section ".printk_index", align 4
@sddr09_read_map._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.22, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\014sddr09: PBA %d has no logical mapping: reserved area = %02X%02X%02X%02X data status %02X block status %02X\0A\00", [50 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr.71 = internal global ptr @sddr09_read_map._entry.69, section ".printk_index", align 4
@sddr09_read_map._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.22, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014sddr09: PBA %d has invalid address field %02X%02X/%02X%02X\0A\00", [34 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr.74 = internal global ptr @sddr09_read_map._entry.72, section ".printk_index", align 4
@sddr09_read_map._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.22, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014sddr09: Bad parity in LBA for block %d (%02X %02X)\0A\00", [42 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr.77 = internal global ptr @sddr09_read_map._entry.75, section ".printk_index", align 4
@sddr09_read_map._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.22, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014sddr09: Bad low LBA %d for block %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr.80 = internal global ptr @sddr09_read_map._entry.78, section ".printk_index", align 4
@sddr09_read_map._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.65, ptr @.str.22, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014sddr09: LBA %d seen for PBA %d and %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sddr09_read_map._entry_ptr.83 = internal global ptr @sddr09_read_map._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Found %d LBA's\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read control address %lu, blocks %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Result for send_control in sddr09_read2%d %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Result for bulk_transfer in sddr09_read2%d %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error: Requested lba %u exceeds maximum %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read %d zero pages (LBA %d) page %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read %d pages, from PBA %d (LBA %d) page %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sddr09_write_lba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.22, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014sddr09_write_lba: Out of unused blocks\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sddr09_write_lba\00", [47 x i8] zeroinitializer }, align 32
@sddr09_write_lba._entry_ptr = internal global ptr @sddr09_write_lba._entry, section ".printk_index", align 4
@sddr09_write_lba._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.22, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014sddr09: avoid writing to pba 1\0A\00", [62 x i8] zeroinitializer }, align 32
@sddr09_write_lba._entry_ptr.95 = internal global ptr @sddr09_write_lba._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Warning: bad ecc in page %d- of pba %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Warning: bad ecc in page %d+ of pba %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rewrite PBA %d (LBA %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sddr09_write_inplace returns %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sddr09_find_unused_pba.lastpba = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reading %d pages, %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Result for send_control in sddr09_writeX %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Result for bulk_transfer in sddr09_writeX %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 30, i64 37, i64 90]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 143, i64 152, i64 236]
@__sancov_gen_cov_switch_values.105 = internal global [21 x i64] [i64 19, i64 8, i64 0, i64 87, i64 88, i64 93, i64 100, i64 107, i64 110, i64 115, i64 117, i64 118, i64 121, i64 213, i64 214, i64 227, i64 229, i64 230, i64 232, i64 234, i64 236]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 6, i64 1, i64 63]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 40, i64 42]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967264]
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"sddr09_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1776, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"sddr09_host_template\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1746, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1790, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"sddr09_usb_ids\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 66, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"sddr09_unusual_dev_list\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 88, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1761, i32 24 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1766, i32 24 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 9, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 14, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 21, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 27, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [40 x i8] c"../drivers/usb/storage/unusual_sddr09.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 33, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1416, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1422, i32 19 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1424, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1427, i32 20 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 185, i32 22 }
@___asan_gen_.176 = private unnamed_addr constant [5 x i8] c"ecc2\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 186, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1457, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1461, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1466, i32 20 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1477, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1478, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1500, i32 19 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1526, i32 23 }
@___asan_gen_.212 = private unnamed_addr constant [9 x i8] c"sensekey\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1539, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant [10 x i8] c"sensecode\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1539, i32 37 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"sddr09_transport.havefakesense\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [13 x i8] c"mode_page_01\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1553, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1636, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1663, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1678, i32 20 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1705, i32 28 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1707, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1711, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1724, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1726, i32 9 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1726, i32 21 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1101, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1106, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1108, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1110, i32 19 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1111, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1112, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1113, i32 24 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 715, i32 19 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1143, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1148, i32 20 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1149, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1153, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1157, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1169, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1172, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1178, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1184, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1189, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1191, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 128, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 130, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 132, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 134, i32 10 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 136, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant [15 x i8] c"nand_flash_ids\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 147, i32 30 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1239, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1279, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1293, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1304, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1314, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1334, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1343, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1385, i32 19 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1053, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 412, i32 20 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 421, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 775, i32 21 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 786, i32 21 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 799, i32 21 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 871, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 884, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 903, i32 21 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 909, i32 21 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 930, i32 19 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 935, i32 19 }
@___asan_gen_.426 = private unnamed_addr constant [8 x i8] c"lastpba\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 826, i32 22 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 483, i32 19 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 597, i32 20 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.436 = private constant [32 x i8] c"../drivers/usb/storage/sddr09.c\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 606, i32 20 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_sddr09_driver_exit, ptr @__initcall__kmod_ums_sddr09__307_1790_sddr09_driver_init6, ptr @sddr09_driver_exit, ptr @sddr09_get_cardinfo._entry, ptr @sddr09_get_cardinfo._entry.56, ptr @sddr09_get_cardinfo._entry_ptr, ptr @sddr09_get_cardinfo._entry_ptr.58, ptr @sddr09_read_map._entry, ptr @sddr09_read_map._entry.66, ptr @sddr09_read_map._entry.69, ptr @sddr09_read_map._entry.72, ptr @sddr09_read_map._entry.75, ptr @sddr09_read_map._entry.78, ptr @sddr09_read_map._entry.81, ptr @sddr09_read_map._entry_ptr, ptr @sddr09_read_map._entry_ptr.68, ptr @sddr09_read_map._entry_ptr.71, ptr @sddr09_read_map._entry_ptr.74, ptr @sddr09_read_map._entry_ptr.77, ptr @sddr09_read_map._entry_ptr.80, ptr @sddr09_read_map._entry_ptr.83, ptr @sddr09_write_lba._entry, ptr @sddr09_write_lba._entry.93, ptr @sddr09_write_lba._entry_ptr, ptr @sddr09_write_lba._entry_ptr.95, ptr @usb_stor_sddr09_dpcm_init._entry, ptr @usb_stor_sddr09_dpcm_init._entry.23, ptr @usb_stor_sddr09_dpcm_init._entry_ptr, ptr @usb_stor_sddr09_dpcm_init._entry_ptr.25, ptr @sddr09_driver, ptr @sddr09_host_template, ptr @.str, ptr @.str.1, ptr @sddr09_usb_ids, ptr @sddr09_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @parity, ptr @ecc2, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @sddr09_transport.sensekey, ptr @sddr09_transport.sensecode, ptr @sddr09_transport.havefakesense, ptr @sddr09_transport.mode_page_01, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @nand_flash_ids, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @sddr09_find_unused_pba.lastpba, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_usb_ids to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_unusual_dev_list to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parity to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_sddr09_dpcm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_sddr09_dpcm_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_transport.sensekey to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_transport.sensecode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_transport.havefakesense to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_transport.mode_page_01 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_get_cardinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_get_cardinfo._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_flash_ids to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_read_map._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_write_lba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_write_lba._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr09_find_unused_pba.lastpba to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sddr09_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @sddr09_host_template, ptr noundef nonnull @.str, ptr noundef null) #11
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sddr09_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sddr09_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @sddr09_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sddr09_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #11
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !232
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @sddr09_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @sddr09_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @sddr09_host_template) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %us, align 4
  %protocol = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %4)
  %cmp = icmp eq i8 %4, -16
  %.str.3.sink = select i1 %cmp, ptr @.str.2, ptr @.str.3
  %sddr09_transport.sink = select i1 %cmp, ptr @dpcm_transport, ptr @sddr09_transport
  %.sink = zext i1 %cmp to i8
  %5 = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.str.3.sink, ptr %5, align 4
  %7 = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 19
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sddr09_transport.sink, ptr %7, align 4
  %9 = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @usb_stor_CB_reset, ptr %9, align 4
  %11 = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %11, align 2
  %call8 = call i32 @usb_stor_probe2(ptr noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #11
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
define internal i32 @dpcm_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun, align 8
  %conv = trunc i64 %3 to i32
  %conv1 = and i32 %conv, 255
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef %conv1) #11
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %lun3 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %lun3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun3, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i64 %7, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @usb_stor_CB_transport(ptr noundef %srb, ptr noundef %us) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %lun3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %lun3, align 8
  %call7 = tail call i32 @sddr09_transport(ptr noundef %srb, ptr noundef %us)
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %lun9 = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %lun9 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %lun9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv12 = trunc i64 %7 to i32
  %conv13 = and i32 %conv12, 255
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.27, i32 noundef %conv13) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %ret.0 = phi i32 [ 3, %sw.default ], [ %call7, %sw.bb4 ], [ %call, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sddr09_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %ecc.i.i = alloca [3 x i8], align 1
  %offset.i409 = alloca i32, align 4
  %sg.i410 = alloca ptr, align 4
  %offset.i = alloca i32, align 4
  %sg.i = alloca ptr, align 4
  %deviceID.i = alloca [4 x i8], align 1
  %blurbtxt.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @sddr09_transport.havefakesense, align 1
  br i1 %.b, label %if.then, label %if.end75.thread

if.end75.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @sddr09_transport.havefakesense, align 1
  br label %if.end173

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %8 = getelementptr inbounds i8, ptr %1, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 17)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 112, ptr %1, align 1
  %11 = load i8, ptr @sddr09_transport.sensekey, align 1
  %arrayidx4 = getelementptr i8, ptr %1, i32 2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %1, i32 7
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 11, ptr %arrayidx5, align 1
  %14 = load i8, ptr @sddr09_transport.sensecode, align 1
  %arrayidx6 = getelementptr i8, ptr %1, i32 12
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx6, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 18, ptr noundef %srb) #11
  store i1 false, ptr @sddr09_transport.havefakesense, align 1
  store i8 0, ptr @sddr09_transport.sensecode, align 1
  store i8 0, ptr @sddr09_transport.sensekey, align 1
  br label %cleanup228

if.end:                                           ; preds = %entry
  store i1 true, ptr @sddr09_transport.havefakesense, align 1
  %16 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %7, label %if.end75 [
    i8 18, label %if.then12
    i8 37, label %if.then19
    i8 90, label %if.then51
    i8 30, label %if.end.cleanup228_crit_edge
  ]

if.end.cleanup228_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup228

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 36028806128992256, ptr %1, align 1
  tail call void @fill_inquiry_response(ptr noundef %us, ptr noundef %1, i32 noundef 36) #11
  br label %cleanup228

if.then19:                                        ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.44) #11
  %18 = getelementptr inbounds i8, ptr %1, i32 2
  %19 = call ptr @memset(ptr %18, i32 0, i32 10)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -20, ptr %1, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %1, i32 1
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %arrayidx2.i.i, align 1
  %send_ctrl_pipe.i.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %22 = ptrtoint ptr %send_ctrl_pipe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %pipe.0.i.i.i.i = load i32, ptr %send_ctrl_pipe.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %switch.selectcmp11.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %switch.selectcmp11.i.i.i.i, label %if.end.i.i, label %if.then19.if.then.i_crit_edge

if.then19.if.then.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then19
  %recv_bulk_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %23 = ptrtoint ptr %recv_bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %recv_bulk_pipe.i.i, align 4
  %call3.i.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %24, ptr noundef %1, i32 noundef 64, ptr noundef null) #11
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i.if.then.i_crit_edge, %if.then19.if.then.i_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.37) #11
  br label %sddr09_get_wp.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp.i = icmp sgt i8 %26, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %28, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %wp_fmt.0.i = phi ptr [ @.str.38, %if.then2.i ], [ @.str.39, %if.end.i.if.end3.i_crit_edge ]
  %conv4.i = zext i8 %26 to i32
  %and6.i = and i32 %conv4.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond.i = select i1 %tobool7.not.i, ptr @.str.39, ptr @.str.41
  %and9.i = and i32 %conv4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.39, ptr @.str.42
  %and13.i = and i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, ptr @.str.39, ptr @.str.43
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.40, i32 noundef %conv4.i, ptr noundef nonnull %wp_fmt.0.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond11.i, ptr noundef nonnull %cond15.i) #11
  br label %sddr09_get_wp.exit

sddr09_get_wp.exit:                               ; preds = %if.end3.i, %if.then.i
  %flags = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deviceID.i) #11
  %31 = getelementptr inbounds [4 x i8], ptr %deviceID.i, i32 0, i32 1
  %32 = getelementptr inbounds [4 x i8], ptr %deviceID.i, i32 0, i32 2
  %33 = getelementptr inbounds [4 x i8], ptr %deviceID.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %blurbtxt.i) #11
  %34 = call ptr @memset(ptr %blurbtxt.i, i32 255, i32 256)
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.45) #11
  %35 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobuf, align 4
  %37 = getelementptr inbounds i8, ptr %36, i32 2
  %38 = call ptr @memset(ptr %37, i32 0, i32 10)
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -19, ptr %36, align 1
  %arrayidx2.i.i344 = getelementptr i8, ptr %36, i32 1
  %40 = ptrtoint ptr %arrayidx2.i.i344 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 32, ptr %arrayidx2.i.i344, align 1
  %41 = ptrtoint ptr %send_ctrl_pipe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %pipe.0.i.i.i.i346 = load i32, ptr %send_ctrl_pipe.i.i.i.i, align 4
  %call.i.i.i.i347 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i.i.i.i346, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %36, i16 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i347)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %call.i.i.i.i347, 2
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 -32, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i347)
  %switch.selectcmp11.i.i.i.i348 = icmp eq i32 %call.i.i.i.i347, 0
  br i1 %switch.selectcmp11.i.i.i.i348, label %if.end.i.i351, label %sddr09_get_wp.exit.sddr09_get_cardinfo.exit.thread_crit_edge

sddr09_get_wp.exit.sddr09_get_cardinfo.exit.thread_crit_edge: ; preds = %sddr09_get_wp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_get_cardinfo.exit.thread

if.end.i.i351:                                    ; preds = %sddr09_get_wp.exit
  %recv_bulk_pipe.i.i349 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %42 = ptrtoint ptr %recv_bulk_pipe.i.i349 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %recv_bulk_pipe.i.i349, align 4
  %call3.i.i350 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %43, ptr noundef %36, i32 noundef 64, ptr noundef null) #11
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %36, align 1
  %46 = ptrtoint ptr %deviceID.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %deviceID.i, align 1
  %47 = ptrtoint ptr %arrayidx2.i.i344 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i.i344, align 1
  %49 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %31, align 1
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %37, align 1
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %32, align 1
  %arrayidx4.3.i.i = getelementptr i8, ptr %36, i32 3
  %53 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4.3.i.i, align 1
  %55 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i350)
  %cmp6.i.i = icmp eq i32 %call3.i.i350, 0
  br i1 %cmp6.i.i, label %if.end.i353, label %if.end.i.i351.sddr09_get_cardinfo.exit.thread_crit_edge

if.end.i.i351.sddr09_get_cardinfo.exit.thread_crit_edge: ; preds = %if.end.i.i351
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_get_cardinfo.exit.thread

sddr09_get_cardinfo.exit.thread:                  ; preds = %if.end.i.i351.sddr09_get_cardinfo.exit.thread_crit_edge, %sddr09_get_wp.exit.sddr09_get_cardinfo.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ %switch.select.i.i.i.i, %sddr09_get_wp.exit.sddr09_get_cardinfo.exit.thread_crit_edge ], [ -5, %if.end.i.i351.sddr09_get_cardinfo.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i.ph.i) #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %blurbtxt.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deviceID.i) #11
  br label %init_error

if.end.i353:                                      ; preds = %if.end.i.i351
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %blurbtxt.i, ptr noundef nonnull @.str.49, ptr noundef nonnull %deviceID.i) #11
  %call7.i = call i32 @strlen(ptr noundef nonnull %blurbtxt.i) #15
  %add.ptr.i = getelementptr i8, ptr %blurbtxt.i, i32 %call7.i
  %56 = ptrtoint ptr %deviceID.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %deviceID.i, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %57, label %sw.default.i.i [
    i8 1, label %if.end.i353.nand_flash_manufacturer.exit.i_crit_edge
    i8 -113, label %sw.bb1.i.i
    i8 -104, label %sw.bb2.i.i
    i8 -20, label %sw.bb3.i.i
  ]

if.end.i353.nand_flash_manufacturer.exit.i_crit_edge: ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %nand_flash_manufacturer.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %nand_flash_manufacturer.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %nand_flash_manufacturer.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %nand_flash_manufacturer.exit.i

sw.default.i.i:                                   ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %nand_flash_manufacturer.exit.i

nand_flash_manufacturer.exit.i:                   ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i353.nand_flash_manufacturer.exit.i_crit_edge
  %retval.0.i69.i = phi ptr [ @.str.63, %sw.default.i.i ], [ @.str.62, %sw.bb3.i.i ], [ @.str.61, %sw.bb2.i.i ], [ @.str.60, %sw.bb1.i.i ], [ @.str.59, %if.end.i353.nand_flash_manufacturer.exit.i_crit_edge ]
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.50, ptr noundef nonnull %retval.0.i69.i) #11
  %59 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %31, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %60, label %if.else.i [
    i8 110, label %nand_flash_manufacturer.exit.i.if.then13.i_crit_edge
    i8 -24, label %if.then13.i.fold.split
    i8 -20, label %if.then13.i.fold.split541
    i8 100, label %if.then13.i.fold.split542
    i8 -22, label %if.then13.i.fold.split543
    i8 107, label %if.then13.i.fold.split544
    i8 -29, label %if.then13.i.fold.split545
    i8 -27, label %if.then13.i.fold.split546
    i8 -26, label %if.then13.i.fold.split547
    i8 115, label %if.then13.i.fold.split548
    i8 117, label %if.then13.i.fold.split549
    i8 118, label %if.then13.i.fold.split550
    i8 121, label %if.then13.i.fold.split551
    i8 93, label %if.then13.i.fold.split552
    i8 -43, label %if.then13.i.fold.split553
    i8 -42, label %if.then13.i.fold.split554
    i8 87, label %if.then13.i.fold.split555
    i8 88, label %if.then13.i.fold.split556
    i8 0, label %if.then13.i.fold.split557
  ]

nand_flash_manufacturer.exit.i.if.then13.i_crit_edge: ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split:                           ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split541:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split542:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split543:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split544:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split545:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split546:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split547:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split548:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split549:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split550:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split551:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split552:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split553:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split554:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split555:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split556:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i.fold.split557:                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.then13.i.fold.split557, %if.then13.i.fold.split556, %if.then13.i.fold.split555, %if.then13.i.fold.split554, %if.then13.i.fold.split553, %if.then13.i.fold.split552, %if.then13.i.fold.split551, %if.then13.i.fold.split550, %if.then13.i.fold.split549, %if.then13.i.fold.split548, %if.then13.i.fold.split547, %if.then13.i.fold.split546, %if.then13.i.fold.split545, %if.then13.i.fold.split544, %if.then13.i.fold.split543, %if.then13.i.fold.split542, %if.then13.i.fold.split541, %if.then13.i.fold.split, %nand_flash_manufacturer.exit.i.if.then13.i_crit_edge
  %retval.0.i70.ph.i = phi ptr [ @nand_flash_ids, %nand_flash_manufacturer.exit.i.if.then13.i_crit_edge ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 1), %if.then13.i.fold.split ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 2), %if.then13.i.fold.split541 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 3), %if.then13.i.fold.split542 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 4), %if.then13.i.fold.split543 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 5), %if.then13.i.fold.split544 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 6), %if.then13.i.fold.split545 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 7), %if.then13.i.fold.split546 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 8), %if.then13.i.fold.split547 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 9), %if.then13.i.fold.split548 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 10), %if.then13.i.fold.split549 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 11), %if.then13.i.fold.split550 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 12), %if.then13.i.fold.split551 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 13), %if.then13.i.fold.split552 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 14), %if.then13.i.fold.split553 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 15), %if.then13.i.fold.split554 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 16), %if.then13.i.fold.split555 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 17), %if.then13.i.fold.split556 ], [ getelementptr inbounds ([19 x %struct.nand_flash_dev], ptr @nand_flash_ids, i32 0, i32 18), %if.then13.i.fold.split557 ]
  %call16.i = call i32 @strlen(ptr noundef nonnull %blurbtxt.i) #15
  %add.ptr17.i = getelementptr i8, ptr %blurbtxt.i, i32 %call16.i
  %chipshift.i = getelementptr inbounds %struct.nand_flash_dev, ptr %retval.0.i70.ph.i, i32 0, i32 1
  %62 = ptrtoint ptr %chipshift.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chipshift.i, align 4
  %sub.i = add i32 %63, -20
  %shl.i = shl nuw i32 1, %sub.i
  %call18.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.i, ptr noundef nonnull @.str.51, i32 noundef %shl.i) #11
  br label %if.end24.i

if.else.i:                                        ; preds = %nand_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = call i32 @strlen(ptr noundef nonnull %blurbtxt.i) #15
  %add.ptr22.i = getelementptr i8, ptr %blurbtxt.i, i32 %call21.i
  %64 = call ptr @memcpy(ptr %add.ptr22.i, ptr @.str.52, i32 20)
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then13.i
  %retval.0.i7078.i = phi ptr [ null, %if.else.i ], [ %retval.0.i70.ph.i, %if.then13.i ]
  %65 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %66)
  %cmp.i354 = icmp eq i8 %66, -91
  br i1 %cmp.i354, label %if.then28.i, label %if.end24.i.if.end34.i_crit_edge

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = call i32 @strlen(ptr noundef nonnull %blurbtxt.i) #15
  %add.ptr32.i = getelementptr i8, ptr %blurbtxt.i, i32 %call31.i
  %67 = call ptr @memcpy(ptr %add.ptr32.i, ptr @.str.53, i32 13)
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end34.i_crit_edge
  %68 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %69)
  %cmp37.i = icmp eq i8 %69, -64
  br i1 %cmp37.i, label %if.then39.i, label %if.end34.i.if.end45.i_crit_edge

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = call i32 @strlen(ptr noundef nonnull %blurbtxt.i) #15
  %add.ptr43.i = getelementptr i8, ptr %blurbtxt.i, i32 %call42.i
  %70 = call ptr @memcpy(ptr %add.ptr43.i, ptr @.str.54, i32 12)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %if.end34.i.if.end45.i_crit_edge
  %71 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool47.not.i = icmp eq i32 %71, 0
  br i1 %tobool47.not.i, label %if.end45.i.sddr09_get_cardinfo.exit_crit_edge, label %if.then48.i

if.end45.i.sddr09_get_cardinfo.exit_crit_edge:    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_get_cardinfo.exit

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %call51.i = call i32 @strlen(ptr noundef nonnull %blurbtxt.i) #15
  %add.ptr52.i = getelementptr i8, ptr %blurbtxt.i, i32 %call51.i
  %72 = call ptr @memcpy(ptr %add.ptr52.i, ptr @.str.55, i32 5)
  br label %sddr09_get_cardinfo.exit

sddr09_get_cardinfo.exit:                         ; preds = %if.then48.i, %if.end45.i.sddr09_get_cardinfo.exit_crit_edge
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %blurbtxt.i) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %blurbtxt.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deviceID.i) #11
  %tobool22.not = icmp eq ptr %retval.0.i7078.i, null
  br i1 %tobool22.not, label %sddr09_get_cardinfo.exit.init_error_crit_edge, label %if.end24

sddr09_get_cardinfo.exit.init_error_crit_edge:    ; preds = %sddr09_get_cardinfo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_error

init_error:                                       ; preds = %sddr09_read_map.exit, %if.end24.init_error_crit_edge, %sddr09_get_cardinfo.exit.init_error_crit_edge, %sddr09_get_cardinfo.exit.thread
  store i8 2, ptr @sddr09_transport.sensekey, align 1
  store i8 58, ptr @sddr09_transport.sensecode, align 1
  br label %cleanup228

if.end24:                                         ; preds = %sddr09_get_cardinfo.exit
  %chipshift = getelementptr inbounds %struct.nand_flash_dev, ptr %retval.0.i7078.i, i32 0, i32 1
  %73 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %chipshift, align 4
  %shl = shl nuw i32 1, %74
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl, ptr %3, align 4
  %pageshift = getelementptr inbounds %struct.nand_flash_dev, ptr %retval.0.i7078.i, i32 0, i32 2
  %76 = ptrtoint ptr %pageshift to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pageshift, align 4
  %conv26 = zext i8 %77 to i32
  %pageshift27 = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 2
  %78 = ptrtoint ptr %pageshift27 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv26, ptr %pageshift27, align 4
  %shl29 = shl nuw i32 1, %conv26
  %pagesize = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 1
  %79 = ptrtoint ptr %pagesize to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shl29, ptr %pagesize, align 4
  %blockshift = getelementptr inbounds %struct.nand_flash_dev, ptr %retval.0.i7078.i, i32 0, i32 3
  %80 = ptrtoint ptr %blockshift to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %blockshift, align 1
  %conv30 = zext i8 %81 to i32
  %blockshift31 = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 4
  %82 = ptrtoint ptr %blockshift31 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv30, ptr %blockshift31, align 4
  %shl33 = shl nuw i32 1, %conv30
  %blocksize = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 3
  %83 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shl33, ptr %blocksize, align 4
  %sub = add i32 %shl33, -1
  %blockmask = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 5
  %84 = ptrtoint ptr %blockmask to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub, ptr %blockmask, align 4
  %85 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %extra, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i, label %if.end24.init_error_crit_edge, label %if.end.i356

if.end24.init_error_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_error

if.end.i356:                                      ; preds = %if.end24
  %blockshift.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 4
  %89 = ptrtoint ptr %blockshift.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %blockshift.i, align 4
  %pageshift.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 2
  %91 = ptrtoint ptr %pageshift.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pageshift.i, align 4
  %add.i = add i32 %92, %90
  %shr.i = lshr i32 %88, %add.i
  %93 = call i32 @llvm.smin.i32(i32 %shr.i, i32 1024) #11
  %shl.i355 = shl i32 %93, 6
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shl.i355, i32 noundef 3072) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i356.sddr09_read_map.exit_crit_edge, label %if.end4.i

if.end.i356.sddr09_read_map.exit_crit_edge:       ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_read_map.exit

if.end4.i:                                        ; preds = %if.end.i356
  %add.ptr.i359 = getelementptr i8, ptr %call9.i.i, i32 %shl.i355
  %lba_to_pba.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 6
  %94 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lba_to_pba.i, align 4
  call void @kfree(ptr noundef %95) #11
  %pba_to_lba.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 7
  %96 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pba_to_lba.i, align 4
  call void @kfree(ptr noundef %97) #11
  %98 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr.i, i32 4) #11
  %99 = extractvalue { i32, i1 } %98, 1
  br i1 %99, label %kmalloc_array.exit401.thread.i, label %if.end7.i399.i, !prof !233

kmalloc_array.exit401.thread.i:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %lba_to_pba.i, align 4
  %101 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %pba_to_lba.i, align 4
  br label %do.end.i

if.end7.i399.i:                                   ; preds = %if.end4.i
  %102 = extractvalue { i32, i1 } %98, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %102, i32 noundef 3072) #16
  %103 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call8.i.i, ptr %lba_to_pba.i, align 4
  %call8.i398.i = call noalias align 128 ptr @__kmalloc(i32 noundef %102, i32 noundef 3072) #16
  %104 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call8.i398.i, ptr %pba_to_lba.i, align 4
  %105 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lba_to_pba.i, align 4
  %cmp10.i = icmp eq ptr %106, null
  %cmp12.i = icmp eq ptr %call8.i398.i, null
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.end7.i399.i.do.end.i_crit_edge, label %for.cond.preheader.i

if.end7.i399.i.do.end.i_crit_edge:                ; preds = %if.end7.i399.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end7.i399.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp17423.not.i = icmp eq i32 %shr.i, 0
  br i1 %cmp17423.not.i, label %for.cond.preheader.i.if.end38_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end38_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.end.i:                                         ; preds = %if.end7.i399.i.do.end.i_crit_edge, %kmalloc_array.exit401.thread.i
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #14
  br label %sddr09_read_map.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0424.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %107 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx.i = getelementptr i32, ptr %108, i32 %i.0424.i
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %arrayidx.i, align 4
  %110 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %111, i32 %i.0424.i
  %112 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %arrayidx20.i, align 4
  %inc.i = add nuw nsw i32 %i.0424.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.for.body23.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body23.i_crit_edge:                ; preds = %for.body.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc182.i.for.body23.i_crit_edge, %for.body.i.for.body23.i_crit_edge
  %i.1429.i = phi i32 [ %inc183.i, %for.inc182.i.for.body23.i_crit_edge ], [ 0, %for.body.i.for.body23.i_crit_edge ]
  %ptr.0428.i = phi ptr [ %ptr.2.i, %for.inc182.i.for.body23.i_crit_edge ], [ %add.ptr.i359, %for.body.i.for.body23.i_crit_edge ]
  %add.ptr24.i = getelementptr i8, ptr %ptr.0428.i, i32 64
  %cmp25.not.i = icmp ult ptr %add.ptr24.i, %add.ptr.i359
  br i1 %cmp25.not.i, label %for.body23.i.if.end42.i_crit_edge, label %if.then26.i

for.body23.i.if.end42.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then26.i:                                      ; preds = %for.body23.i
  %113 = ptrtoint ptr %pageshift.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pageshift.i, align 4
  %115 = ptrtoint ptr %blockshift.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %blockshift.i, align 4
  %add29.i = add i32 %116, %114
  %shl30.i = shl i32 %i.1429.i, %add29.i
  %shr31.i = lshr i32 %shl30.i, 1
  %sub.i360 = sub i32 %shr.i, %i.1429.i
  %117 = call i32 @llvm.smin.i32(i32 %93, i32 %sub.i360) #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.85, i32 noundef %shr31.i, i32 noundef %117) #11
  %shl.i.i.i = shl i32 %117, 6
  %call.i.i.i = call fastcc i32 @sddr09_readX(ptr noundef %us, i32 noundef 1, i32 noundef %shr31.i, i32 noundef %117, i32 noundef %shl.i.i.i, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool39.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool39.not.i, label %if.then26.i.if.end42.i_crit_edge, label %if.then26.i.sddr09_read_map.exit_crit_edge

if.then26.i.sddr09_read_map.exit_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_read_map.exit

if.then26.i.if.end42.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then26.i.if.end42.i_crit_edge, %for.body23.i.if.end42.i_crit_edge
  %ptr.2.i = phi ptr [ %call9.i.i, %if.then26.i.if.end42.i_crit_edge ], [ %add.ptr24.i, %for.body23.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1429.i)
  %switch.i = icmp ult i32 %i.1429.i, 2
  br i1 %switch.i, label %if.then46.i, label %for.body52.preheader.i

for.body52.preheader.i:                           ; preds = %if.end42.i
  %118 = ptrtoint ptr %ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ptr.2.i, align 1
  %120 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %119, label %for.body52.preheader.i.do.end86.i_crit_edge [
    i8 0, label %for.cond50.i
    i8 -1, label %for.inc78.i
  ]

for.body52.preheader.i.do.end86.i_crit_edge:      ; preds = %for.body52.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx48.i = getelementptr i32, ptr %122, i32 %i.1429.i
  %123 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -3, ptr %arrayidx48.i, align 4
  br label %for.inc182.i

for.cond50.i:                                     ; preds = %for.body52.preheader.i
  %arrayidx53.1.i = getelementptr i8, ptr %ptr.2.i, i32 1
  %124 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx53.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp54.not.1.i = icmp eq i8 %125, 0
  br i1 %cmp54.not.1.i, label %for.cond50.1.i, label %for.cond50.i.do.end86.i_crit_edge

for.cond50.i.do.end86.i_crit_edge:                ; preds = %for.cond50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.1.i:                                   ; preds = %for.cond50.i
  %arrayidx53.2.i = getelementptr i8, ptr %ptr.2.i, i32 2
  %126 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx53.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp54.not.2.i = icmp eq i8 %127, 0
  br i1 %cmp54.not.2.i, label %for.cond50.2.i, label %for.cond50.1.i.do.end86.i_crit_edge

for.cond50.1.i.do.end86.i_crit_edge:              ; preds = %for.cond50.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.2.i:                                   ; preds = %for.cond50.1.i
  %arrayidx53.3.i = getelementptr i8, ptr %ptr.2.i, i32 3
  %128 = ptrtoint ptr %arrayidx53.3.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx53.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp54.not.3.i = icmp eq i8 %129, 0
  br i1 %cmp54.not.3.i, label %for.cond50.3.i, label %for.cond50.2.i.do.end86.i_crit_edge

for.cond50.2.i.do.end86.i_crit_edge:              ; preds = %for.cond50.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.3.i:                                   ; preds = %for.cond50.2.i
  %arrayidx53.4.i = getelementptr i8, ptr %ptr.2.i, i32 4
  %130 = ptrtoint ptr %arrayidx53.4.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx53.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp54.not.4.i = icmp eq i8 %131, 0
  br i1 %cmp54.not.4.i, label %for.cond50.4.i, label %for.cond50.3.i.do.end86.i_crit_edge

for.cond50.3.i.do.end86.i_crit_edge:              ; preds = %for.cond50.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.4.i:                                   ; preds = %for.cond50.3.i
  %arrayidx53.5.i = getelementptr i8, ptr %ptr.2.i, i32 5
  %132 = ptrtoint ptr %arrayidx53.5.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx53.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp54.not.5.i = icmp eq i8 %133, 0
  br i1 %cmp54.not.5.i, label %for.cond50.5.i, label %for.cond50.4.i.do.end86.i_crit_edge

for.cond50.4.i.do.end86.i_crit_edge:              ; preds = %for.cond50.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.5.i:                                   ; preds = %for.cond50.4.i
  %arrayidx53.6.i = getelementptr i8, ptr %ptr.2.i, i32 6
  %134 = ptrtoint ptr %arrayidx53.6.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx53.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp54.not.6.i = icmp eq i8 %135, 0
  br i1 %cmp54.not.6.i, label %for.cond50.6.i, label %for.cond50.5.i.do.end86.i_crit_edge

for.cond50.5.i.do.end86.i_crit_edge:              ; preds = %for.cond50.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.6.i:                                   ; preds = %for.cond50.5.i
  %arrayidx53.7.i = getelementptr i8, ptr %ptr.2.i, i32 7
  %136 = ptrtoint ptr %arrayidx53.7.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx53.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp54.not.7.i = icmp eq i8 %137, 0
  br i1 %cmp54.not.7.i, label %for.cond50.7.i, label %for.cond50.6.i.do.end86.i_crit_edge

for.cond50.6.i.do.end86.i_crit_edge:              ; preds = %for.cond50.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.7.i:                                   ; preds = %for.cond50.6.i
  %arrayidx53.8.i = getelementptr i8, ptr %ptr.2.i, i32 8
  %138 = ptrtoint ptr %arrayidx53.8.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx53.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp54.not.8.i = icmp eq i8 %139, 0
  br i1 %cmp54.not.8.i, label %for.cond50.8.i, label %for.cond50.7.i.do.end86.i_crit_edge

for.cond50.7.i.do.end86.i_crit_edge:              ; preds = %for.cond50.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.8.i:                                   ; preds = %for.cond50.7.i
  %arrayidx53.9.i = getelementptr i8, ptr %ptr.2.i, i32 9
  %140 = ptrtoint ptr %arrayidx53.9.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx53.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp54.not.9.i = icmp eq i8 %141, 0
  br i1 %cmp54.not.9.i, label %for.cond50.9.i, label %for.cond50.8.i.do.end86.i_crit_edge

for.cond50.8.i.do.end86.i_crit_edge:              ; preds = %for.cond50.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.9.i:                                   ; preds = %for.cond50.8.i
  %arrayidx53.10.i = getelementptr i8, ptr %ptr.2.i, i32 10
  %142 = ptrtoint ptr %arrayidx53.10.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx53.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp54.not.10.i = icmp eq i8 %143, 0
  br i1 %cmp54.not.10.i, label %for.cond50.10.i, label %for.cond50.9.i.do.end86.i_crit_edge

for.cond50.9.i.do.end86.i_crit_edge:              ; preds = %for.cond50.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.10.i:                                  ; preds = %for.cond50.9.i
  %arrayidx53.11.i = getelementptr i8, ptr %ptr.2.i, i32 11
  %144 = ptrtoint ptr %arrayidx53.11.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx53.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp54.not.11.i = icmp eq i8 %145, 0
  br i1 %cmp54.not.11.i, label %for.cond50.11.i, label %for.cond50.10.i.do.end86.i_crit_edge

for.cond50.10.i.do.end86.i_crit_edge:             ; preds = %for.cond50.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.11.i:                                  ; preds = %for.cond50.10.i
  %arrayidx53.12.i = getelementptr i8, ptr %ptr.2.i, i32 12
  %146 = ptrtoint ptr %arrayidx53.12.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx53.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp54.not.12.i = icmp eq i8 %147, 0
  br i1 %cmp54.not.12.i, label %for.cond50.12.i, label %for.cond50.11.i.do.end86.i_crit_edge

for.cond50.11.i.do.end86.i_crit_edge:             ; preds = %for.cond50.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.12.i:                                  ; preds = %for.cond50.11.i
  %arrayidx53.13.i = getelementptr i8, ptr %ptr.2.i, i32 13
  %148 = ptrtoint ptr %arrayidx53.13.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx53.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp54.not.13.i = icmp eq i8 %149, 0
  br i1 %cmp54.not.13.i, label %for.cond50.13.i, label %for.cond50.12.i.do.end86.i_crit_edge

for.cond50.12.i.do.end86.i_crit_edge:             ; preds = %for.cond50.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.13.i:                                  ; preds = %for.cond50.12.i
  %arrayidx53.14.i = getelementptr i8, ptr %ptr.2.i, i32 14
  %150 = ptrtoint ptr %arrayidx53.14.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx53.14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp54.not.14.i = icmp eq i8 %151, 0
  br i1 %cmp54.not.14.i, label %for.cond50.14.i, label %for.cond50.13.i.do.end86.i_crit_edge

for.cond50.13.i.do.end86.i_crit_edge:             ; preds = %for.cond50.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.14.i:                                  ; preds = %for.cond50.13.i
  %arrayidx53.15.i = getelementptr i8, ptr %ptr.2.i, i32 15
  %152 = ptrtoint ptr %arrayidx53.15.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx53.15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp54.not.15.i = icmp eq i8 %153, 0
  br i1 %cmp54.not.15.i, label %for.cond50.15.i, label %for.cond50.14.i.do.end86.i_crit_edge

for.cond50.14.i.do.end86.i_crit_edge:             ; preds = %for.cond50.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.cond50.15.i:                                  ; preds = %for.cond50.14.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %155, i32 %i.1429.i
  %156 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -3, ptr %arrayidx62.i, align 4
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %i.1429.i) #14
  br label %for.inc182.i

for.inc78.i:                                      ; preds = %for.body52.preheader.i
  %arrayidx72.1.i = getelementptr i8, ptr %ptr.2.i, i32 1
  %157 = ptrtoint ptr %arrayidx72.1.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx72.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %158)
  %cmp74.not.1.i = icmp eq i8 %158, -1
  br i1 %cmp74.not.1.i, label %for.inc78.1.i, label %for.inc78.i.do.end86.i_crit_edge

for.inc78.i.do.end86.i_crit_edge:                 ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.inc78.1.i:                                    ; preds = %for.inc78.i
  %arrayidx72.2.i = getelementptr i8, ptr %ptr.2.i, i32 2
  %159 = ptrtoint ptr %arrayidx72.2.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx72.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %160)
  %cmp74.not.2.i = icmp eq i8 %160, -1
  br i1 %cmp74.not.2.i, label %for.inc78.2.i, label %for.inc78.1.i.do.end86.i_crit_edge

for.inc78.1.i.do.end86.i_crit_edge:               ; preds = %for.inc78.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.inc78.2.i:                                    ; preds = %for.inc78.1.i
  %arrayidx72.3.i = getelementptr i8, ptr %ptr.2.i, i32 3
  %161 = ptrtoint ptr %arrayidx72.3.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx72.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %cmp74.not.3.i = icmp eq i8 %162, -1
  br i1 %cmp74.not.3.i, label %for.inc78.3.i, label %for.inc78.2.i.do.end86.i_crit_edge

for.inc78.2.i.do.end86.i_crit_edge:               ; preds = %for.inc78.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.inc78.3.i:                                    ; preds = %for.inc78.2.i
  %arrayidx72.4.i = getelementptr i8, ptr %ptr.2.i, i32 4
  %163 = ptrtoint ptr %arrayidx72.4.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx72.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %164)
  %cmp74.not.4.i = icmp eq i8 %164, -1
  br i1 %cmp74.not.4.i, label %for.inc78.4.i, label %for.inc78.3.i.do.end86.i_crit_edge

for.inc78.3.i.do.end86.i_crit_edge:               ; preds = %for.inc78.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.inc78.4.i:                                    ; preds = %for.inc78.3.i
  %arrayidx72.5.i = getelementptr i8, ptr %ptr.2.i, i32 5
  %165 = ptrtoint ptr %arrayidx72.5.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx72.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %166)
  %cmp74.not.5.i = icmp eq i8 %166, -1
  br i1 %cmp74.not.5.i, label %for.inc78.5.i, label %for.inc78.4.i.do.end86.i_crit_edge

for.inc78.4.i.do.end86.i_crit_edge:               ; preds = %for.inc78.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i

for.inc78.5.i:                                    ; preds = %for.inc78.4.i
  %arrayidx72.6.i = getelementptr i8, ptr %ptr.2.i, i32 6
  %167 = ptrtoint ptr %arrayidx72.6.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx72.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %168)
  %cmp74.not.6.i = icmp eq i8 %168, -1
  br i1 %cmp74.not.6.i, label %for.inc78.6.i, label %if.end103.i

for.inc78.6.i:                                    ; preds = %for.inc78.5.i
  %arrayidx72.7.i = getelementptr i8, ptr %ptr.2.i, i32 7
  %169 = ptrtoint ptr %arrayidx72.7.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx72.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %170)
  %cmp74.not.7.i = icmp eq i8 %170, -1
  br i1 %cmp74.not.7.i, label %for.inc78.7.i, label %for.inc78.6.i.if.end103.i.thread_crit_edge

for.inc78.6.i.if.end103.i.thread_crit_edge:       ; preds = %for.inc78.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.7.i:                                    ; preds = %for.inc78.6.i
  %arrayidx72.8.i = getelementptr i8, ptr %ptr.2.i, i32 8
  %171 = ptrtoint ptr %arrayidx72.8.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx72.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %172)
  %cmp74.not.8.i = icmp eq i8 %172, -1
  br i1 %cmp74.not.8.i, label %for.inc78.8.i, label %for.inc78.7.i.if.end103.i.thread_crit_edge

for.inc78.7.i.if.end103.i.thread_crit_edge:       ; preds = %for.inc78.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.8.i:                                    ; preds = %for.inc78.7.i
  %arrayidx72.9.i = getelementptr i8, ptr %ptr.2.i, i32 9
  %173 = ptrtoint ptr %arrayidx72.9.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx72.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %174)
  %cmp74.not.9.i = icmp eq i8 %174, -1
  br i1 %cmp74.not.9.i, label %for.inc78.9.i, label %for.inc78.8.i.if.end103.i.thread_crit_edge

for.inc78.8.i.if.end103.i.thread_crit_edge:       ; preds = %for.inc78.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.9.i:                                    ; preds = %for.inc78.8.i
  %arrayidx72.10.i = getelementptr i8, ptr %ptr.2.i, i32 10
  %175 = ptrtoint ptr %arrayidx72.10.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx72.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %176)
  %cmp74.not.10.i = icmp eq i8 %176, -1
  br i1 %cmp74.not.10.i, label %for.inc78.10.i, label %for.inc78.9.i.if.end103.i.thread_crit_edge

for.inc78.9.i.if.end103.i.thread_crit_edge:       ; preds = %for.inc78.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.10.i:                                   ; preds = %for.inc78.9.i
  %arrayidx72.11.i = getelementptr i8, ptr %ptr.2.i, i32 11
  %177 = ptrtoint ptr %arrayidx72.11.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx72.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %178)
  %cmp74.not.11.i = icmp eq i8 %178, -1
  br i1 %cmp74.not.11.i, label %for.inc78.11.i, label %for.inc78.10.i.if.end103.i.thread_crit_edge

for.inc78.10.i.if.end103.i.thread_crit_edge:      ; preds = %for.inc78.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.11.i:                                   ; preds = %for.inc78.10.i
  %arrayidx72.12.i = getelementptr i8, ptr %ptr.2.i, i32 12
  %179 = ptrtoint ptr %arrayidx72.12.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx72.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %180)
  %cmp74.not.12.i = icmp eq i8 %180, -1
  br i1 %cmp74.not.12.i, label %for.inc78.12.i, label %for.inc78.11.i.if.end103.i.thread_crit_edge

for.inc78.11.i.if.end103.i.thread_crit_edge:      ; preds = %for.inc78.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.12.i:                                   ; preds = %for.inc78.11.i
  %arrayidx72.13.i = getelementptr i8, ptr %ptr.2.i, i32 13
  %181 = ptrtoint ptr %arrayidx72.13.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx72.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %182)
  %cmp74.not.13.i = icmp eq i8 %182, -1
  br i1 %cmp74.not.13.i, label %for.inc78.13.i, label %for.inc78.12.i.if.end103.i.thread_crit_edge

for.inc78.12.i.if.end103.i.thread_crit_edge:      ; preds = %for.inc78.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.13.i:                                   ; preds = %for.inc78.12.i
  %arrayidx72.14.i = getelementptr i8, ptr %ptr.2.i, i32 14
  %183 = ptrtoint ptr %arrayidx72.14.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx72.14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %184)
  %cmp74.not.14.i = icmp eq i8 %184, -1
  br i1 %cmp74.not.14.i, label %for.inc78.14.i, label %for.inc78.13.i.if.end103.i.thread_crit_edge

for.inc78.13.i.if.end103.i.thread_crit_edge:      ; preds = %for.inc78.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.14.i:                                   ; preds = %for.inc78.13.i
  %arrayidx72.15.i = getelementptr i8, ptr %ptr.2.i, i32 15
  %185 = ptrtoint ptr %arrayidx72.15.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx72.15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %186)
  %cmp74.not.15.i = icmp eq i8 %186, -1
  br i1 %cmp74.not.15.i, label %for.inc78.14.i.for.inc182.i_crit_edge, label %for.inc78.14.i.if.end103.i.thread_crit_edge

for.inc78.14.i.if.end103.i.thread_crit_edge:      ; preds = %for.inc78.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.thread

for.inc78.14.i.for.inc182.i_crit_edge:            ; preds = %for.inc78.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc182.i

do.end86.i:                                       ; preds = %for.inc78.4.i.do.end86.i_crit_edge, %for.inc78.3.i.do.end86.i_crit_edge, %for.inc78.2.i.do.end86.i_crit_edge, %for.inc78.1.i.do.end86.i_crit_edge, %for.inc78.i.do.end86.i_crit_edge, %for.cond50.14.i.do.end86.i_crit_edge, %for.cond50.13.i.do.end86.i_crit_edge, %for.cond50.12.i.do.end86.i_crit_edge, %for.cond50.11.i.do.end86.i_crit_edge, %for.cond50.10.i.do.end86.i_crit_edge, %for.cond50.9.i.do.end86.i_crit_edge, %for.cond50.8.i.do.end86.i_crit_edge, %for.cond50.7.i.do.end86.i_crit_edge, %for.cond50.6.i.do.end86.i_crit_edge, %for.cond50.5.i.do.end86.i_crit_edge, %for.cond50.4.i.do.end86.i_crit_edge, %for.cond50.3.i.do.end86.i_crit_edge, %for.cond50.2.i.do.end86.i_crit_edge, %for.cond50.1.i.do.end86.i_crit_edge, %for.cond50.i.do.end86.i_crit_edge, %for.body52.preheader.i.do.end86.i_crit_edge
  %conv89.i = zext i8 %119 to i32
  %arrayidx90.i = getelementptr i8, ptr %ptr.2.i, i32 1
  %187 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx90.i, align 1
  %conv91.i = zext i8 %188 to i32
  %arrayidx92.i = getelementptr i8, ptr %ptr.2.i, i32 2
  %189 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx92.i, align 1
  %conv93.i = zext i8 %190 to i32
  %arrayidx94.i = getelementptr i8, ptr %ptr.2.i, i32 3
  %191 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx94.i, align 1
  %conv95.i = zext i8 %192 to i32
  %arrayidx96.i = getelementptr i8, ptr %ptr.2.i, i32 4
  %193 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx96.i, align 1
  %conv97.i = zext i8 %194 to i32
  %arrayidx98.i = getelementptr i8, ptr %ptr.2.i, i32 5
  %195 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx98.i, align 1
  %conv99.i = zext i8 %196 to i32
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %i.1429.i, i32 noundef %conv89.i, i32 noundef %conv91.i, i32 noundef %conv93.i, i32 noundef %conv95.i, i32 noundef %conv97.i, i32 noundef %conv99.i) #14
  %197 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx102.i = getelementptr i32, ptr %198, i32 %i.1429.i
  %199 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -3, ptr %arrayidx102.i, align 4
  br label %for.inc182.i

if.end103.i.thread:                               ; preds = %for.inc78.14.i.if.end103.i.thread_crit_edge, %for.inc78.13.i.if.end103.i.thread_crit_edge, %for.inc78.12.i.if.end103.i.thread_crit_edge, %for.inc78.11.i.if.end103.i.thread_crit_edge, %for.inc78.10.i.if.end103.i.thread_crit_edge, %for.inc78.9.i.if.end103.i.thread_crit_edge, %for.inc78.8.i.if.end103.i.thread_crit_edge, %for.inc78.7.i.if.end103.i.thread_crit_edge, %for.inc78.6.i.if.end103.i.thread_crit_edge
  %200 = ptrtoint ptr %arrayidx72.7.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx72.7.i, align 1
  br label %do.end112.i

if.end103.i:                                      ; preds = %for.inc78.5.i
  %conv105.i = zext i8 %168 to i32
  %.mask.i = and i32 %conv105.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask.i)
  %cmp107.not.i = icmp eq i32 %.mask.i, 16
  %arrayidx128.i = getelementptr i8, ptr %ptr.2.i, i32 7
  %202 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx128.i, align 1
  br i1 %cmp107.not.i, label %if.end125.i, label %if.end103.i.do.end112.i_crit_edge

if.end103.i.do.end112.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end112.i

do.end112.i:                                      ; preds = %if.end103.i.do.end112.i_crit_edge, %if.end103.i.thread
  %204 = phi i8 [ %201, %if.end103.i.thread ], [ %203, %if.end103.i.do.end112.i_crit_edge ]
  %conv105.i486 = phi i32 [ 255, %if.end103.i.thread ], [ %conv105.i, %if.end103.i.do.end112.i_crit_edge ]
  %conv117.i = zext i8 %204 to i32
  %arrayidx118.i = getelementptr i8, ptr %ptr.2.i, i32 11
  %205 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx118.i, align 1
  %conv119.i = zext i8 %206 to i32
  %arrayidx120.i = getelementptr i8, ptr %ptr.2.i, i32 12
  %207 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx120.i, align 1
  %conv121.i = zext i8 %208 to i32
  %call122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %i.1429.i, i32 noundef %conv105.i486, i32 noundef %conv117.i, i32 noundef %conv119.i, i32 noundef %conv121.i) #14
  %209 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx124.i = getelementptr i32, ptr %210, i32 %i.1429.i
  %211 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -3, ptr %arrayidx124.i, align 4
  br label %for.inc182.i

if.end125.i:                                      ; preds = %if.end103.i
  %xor364.i = xor i8 %203, %168
  %xor.i = zext i8 %xor364.i to i32
  %arrayidx130.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %xor.i
  %212 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx130.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool131.not.i = icmp eq i8 %213, 0
  %conv147.i = zext i8 %203 to i32
  br i1 %tobool131.not.i, label %if.end144.i, label %do.end135.i

do.end135.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  %call141.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %i.1429.i, i32 noundef %conv105.i, i32 noundef %conv147.i) #14
  %214 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx143.i = getelementptr i32, ptr %215, i32 %i.1429.i
  %216 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -3, ptr %arrayidx143.i, align 4
  br label %for.inc182.i

if.end144.i:                                      ; preds = %if.end125.i
  %shl151.i = shl nuw nsw i32 %conv105.i, 8
  %shl151.masked.i = and i32 %shl151.i, 1792
  %and.i = or i32 %shl151.masked.i, %conv147.i
  %shr152.i = lshr i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %and.i)
  %cmp153.i = icmp ugt i32 %and.i, 1999
  br i1 %cmp153.i, label %do.end158.i, label %if.end161.i

do.end158.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %shr152.i, i32 noundef %i.1429.i) #14
  br label %possibly_erase.i

if.end161.i:                                      ; preds = %if.end144.i
  %div.udiv443.i = lshr i32 %i.1429.i, 10
  %mul.i = mul nuw nsw i32 %div.udiv443.i, 1000
  %add162.i = add nuw i32 %shr152.i, %mul.i
  %217 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx164.i = getelementptr i32, ptr %218, i32 %add162.i
  %219 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %220)
  %cmp165.not.i = icmp eq i32 %220, -1
  br i1 %cmp165.not.i, label %if.end175.i, label %do.end170.i

do.end170.i:                                      ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %add162.i, i32 noundef %220, i32 noundef %i.1429.i) #14
  br label %possibly_erase.i

if.end175.i:                                      ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  %221 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx177.i = getelementptr i32, ptr %222, i32 %i.1429.i
  %223 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %add162.i, ptr %arrayidx177.i, align 4
  %224 = ptrtoint ptr %lba_to_pba.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %lba_to_pba.i, align 4
  %arrayidx179.i = getelementptr i32, ptr %225, i32 %add162.i
  %226 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %i.1429.i, ptr %arrayidx179.i, align 4
  br label %for.inc182.i

possibly_erase.i:                                 ; preds = %do.end170.i, %do.end158.i
  %227 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx181.i = getelementptr i32, ptr %228, i32 %i.1429.i
  %229 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 -3, ptr %arrayidx181.i, align 4
  br label %for.inc182.i

for.inc182.i:                                     ; preds = %possibly_erase.i, %if.end175.i, %do.end135.i, %do.end112.i, %do.end86.i, %for.inc78.14.i.for.inc182.i_crit_edge, %for.cond50.15.i, %if.then46.i
  %inc183.i = add nuw nsw i32 %i.1429.i, 1
  %exitcond441.not.i = icmp eq i32 %inc183.i, %shr.i
  br i1 %exitcond441.not.i, label %for.inc182.i.for.cond189.preheader.i_crit_edge, label %for.inc182.i.for.body23.i_crit_edge

for.inc182.i.for.body23.i_crit_edge:              ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23.i

for.inc182.i.for.cond189.preheader.i_crit_edge:   ; preds = %for.inc182.i
  br label %for.cond189.preheader.i

for.cond189.preheader.i:                          ; preds = %for.end213.i.for.cond189.preheader.i_crit_edge, %for.inc182.i.for.cond189.preheader.i_crit_edge
  %i.2436.i = phi i32 [ %add216.i, %for.end213.i.for.cond189.preheader.i_crit_edge ], [ 0, %for.inc182.i.for.cond189.preheader.i_crit_edge ]
  %lbact.0435.i = phi i32 [ %add214.i, %for.end213.i.for.cond189.preheader.i_crit_edge ], [ 0, %for.inc182.i.for.cond189.preheader.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc211.i.land.rhs.i_crit_edge, %for.cond189.preheader.i
  %ct.0433.i = phi i32 [ 0, %for.cond189.preheader.i ], [ %ct.1.i, %for.inc211.i.land.rhs.i_crit_edge ]
  %j.2432.i = phi i32 [ 0, %for.cond189.preheader.i ], [ %inc212.i, %for.inc211.i.land.rhs.i_crit_edge ]
  %add192.i = add nuw nsw i32 %j.2432.i, %i.2436.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add192.i, i32 %shr.i)
  %cmp193.i = icmp slt i32 %add192.i, %shr.i
  br i1 %cmp193.i, label %for.body195.i, label %land.rhs.i.for.end213.i_crit_edge

land.rhs.i.for.end213.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end213.i

for.body195.i:                                    ; preds = %land.rhs.i
  %230 = ptrtoint ptr %pba_to_lba.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pba_to_lba.i, align 4
  %arrayidx198.i = getelementptr i32, ptr %231, i32 %add192.i
  %232 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx198.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %233)
  %cmp199.not.i = icmp eq i32 %233, -3
  br i1 %cmp199.not.i, label %for.body195.i.for.inc211.i_crit_edge, label %if.then201.i

for.body195.i.for.inc211.i_crit_edge:             ; preds = %for.body195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc211.i

if.then201.i:                                     ; preds = %for.body195.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ct.0433.i)
  %cmp202.i = icmp sgt i32 %ct.0433.i, 999
  br i1 %cmp202.i, label %if.then204.i, label %if.else.i361

if.then204.i:                                     ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #13
  %234 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 -2, ptr %arrayidx198.i, align 4
  br label %for.inc211.i

if.else.i361:                                     ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc208.i = add nsw i32 %ct.0433.i, 1
  br label %for.inc211.i

for.inc211.i:                                     ; preds = %if.else.i361, %if.then204.i, %for.body195.i.for.inc211.i_crit_edge
  %ct.1.i = phi i32 [ %ct.0433.i, %if.then204.i ], [ %inc208.i, %if.else.i361 ], [ %ct.0433.i, %for.body195.i.for.inc211.i_crit_edge ]
  %inc212.i = add nuw nsw i32 %j.2432.i, 1
  %exitcond442.not.i = icmp eq i32 %inc212.i, 1024
  br i1 %exitcond442.not.i, label %for.inc211.i.for.end213.i_crit_edge, label %for.inc211.i.land.rhs.i_crit_edge

for.inc211.i.land.rhs.i_crit_edge:                ; preds = %for.inc211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc211.i.for.end213.i_crit_edge:              ; preds = %for.inc211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end213.i

for.end213.i:                                     ; preds = %for.inc211.i.for.end213.i_crit_edge, %land.rhs.i.for.end213.i_crit_edge
  %ct.0.lcssa.i = phi i32 [ %ct.1.i, %for.inc211.i.for.end213.i_crit_edge ], [ %ct.0433.i, %land.rhs.i.for.end213.i_crit_edge ]
  %add214.i = add i32 %ct.0.lcssa.i, %lbact.0435.i
  %add216.i = add i32 %i.2436.i, 1024
  %cmp186.i = icmp slt i32 %add216.i, %shr.i
  br i1 %cmp186.i, label %for.end213.i.for.cond189.preheader.i_crit_edge, label %for.end213.i.if.end38_crit_edge

for.end213.i.if.end38_crit_edge:                  ; preds = %for.end213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

for.end213.i.for.cond189.preheader.i_crit_edge:   ; preds = %for.end213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond189.preheader.i

sddr09_read_map.exit:                             ; preds = %if.then26.i.sddr09_read_map.exit_crit_edge, %do.end.i, %if.end.i356.sddr09_read_map.exit_crit_edge
  %retval.1.i405414.i = phi ptr [ null, %if.end.i356.sddr09_read_map.exit_crit_edge ], [ %call9.i.i, %do.end.i ], [ %call9.i.i, %if.then26.i.sddr09_read_map.exit_crit_edge ]
  %lba_to_pba222.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 6
  %235 = ptrtoint ptr %lba_to_pba222.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %lba_to_pba222.i, align 4
  call void @kfree(ptr noundef %236) #11
  %pba_to_lba223.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 7
  %237 = ptrtoint ptr %pba_to_lba223.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pba_to_lba223.i, align 4
  call void @kfree(ptr noundef %238) #11
  %239 = ptrtoint ptr %lba_to_pba222.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %lba_to_pba222.i, align 4
  %240 = ptrtoint ptr %pba_to_lba223.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %pba_to_lba223.i, align 4
  call void @kfree(ptr noundef %retval.1.i405414.i) #11
  br label %init_error

if.end38:                                         ; preds = %for.end213.i.if.end38_crit_edge, %for.cond.preheader.i.if.end38_crit_edge
  %lbact.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end38_crit_edge ], [ %add214.i, %for.end213.i.if.end38_crit_edge ]
  %lbact218.i = getelementptr inbounds %struct.sddr09_card_info, ptr %86, i32 0, i32 8
  %241 = ptrtoint ptr %lbact218.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %lbact.0.lcssa.i, ptr %lbact218.i, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.84, i32 noundef %lbact.0.lcssa.i) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %lbact = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 8
  %242 = ptrtoint ptr %lbact to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %lbact, align 4
  %244 = ptrtoint ptr %blockshift31 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %blockshift31, align 4
  %shl40 = shl i32 %243, %245
  %sub41 = add i32 %shl40, -1
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %sub41, ptr %1, align 4
  %247 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %pagesize, align 4
  %arrayidx44 = getelementptr i32, ptr %1, i32 1
  %249 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %arrayidx44, align 4
  call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 8, ptr noundef %srb) #11
  br label %cleanup228

if.then51:                                        ; preds = %if.end
  %arrayidx53 = getelementptr i8, ptr %5, i32 2
  %250 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx53, align 1
  %trunc = trunc i8 %251 to i6
  %252 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.107)
  switch i6 %trunc, label %if.end66 [
    i6 1, label %if.then51.if.then59_crit_edge
    i6 -1, label %if.then51.if.then59_crit_edge568
  ]

if.then51.if.then59_crit_edge568:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then51.if.then59_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then59:                                        ; preds = %if.then51.if.then59_crit_edge, %if.then51.if.then59_crit_edge568
  %253 = and i8 %251, 63
  %and = zext i8 %253 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.28, i32 noundef %and) #11
  %254 = call ptr @memcpy(ptr %1, ptr @sddr09_transport.mode_page_01, i32 19)
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 17, ptr %1, align 2
  %flags61 = getelementptr inbounds %struct.sddr09_card_info, ptr %3, i32 0, i32 9
  %256 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %flags61, align 4
  %.tr = trunc i32 %257 to i8
  %conv64 = shl i8 %.tr, 7
  %arrayidx65 = getelementptr i8, ptr %1, i32 3
  %258 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv64, ptr %arrayidx65, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 19, ptr noundef %srb) #11
  br label %cleanup228

if.end66:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  store i8 5, ptr @sddr09_transport.sensekey, align 1
  store i8 36, ptr @sddr09_transport.sensecode, align 1
  br label %cleanup228

if.end75:                                         ; preds = %if.end
  store i1 false, ptr @sddr09_transport.havefakesense, align 1
  %259 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %7, label %if.then172 [
    i8 40, label %if.then81
    i8 42, label %if.then123
    i8 0, label %if.end75.if.end173_crit_edge
  ]

if.end75.if.end173_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then81:                                        ; preds = %if.end75
  %arrayidx83 = getelementptr i8, ptr %5, i32 3
  %260 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx83, align 1
  %conv85 = zext i8 %261 to i32
  %arrayidx87 = getelementptr i8, ptr %5, i32 2
  %262 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx87, align 1
  %conv89 = zext i8 %263 to i32
  %264 = shl nuw i32 %conv89, 24
  %265 = shl nuw nsw i32 %conv85, 16
  %arrayidx93 = getelementptr i8, ptr %5, i32 5
  %266 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx93, align 1
  %conv95 = zext i8 %267 to i32
  %arrayidx97 = getelementptr i8, ptr %5, i32 4
  %268 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx97, align 1
  %conv99 = zext i8 %269 to i32
  %shl100 = shl nuw nsw i32 %conv99, 8
  %or101 = or i32 %264, %265
  %shl91 = or i32 %or101, %conv95
  %or102 = or i32 %shl91, %shl100
  %arrayidx104 = getelementptr i8, ptr %5, i32 8
  %270 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx104, align 1
  %conv106 = zext i8 %271 to i32
  %arrayidx108 = getelementptr i8, ptr %5, i32 7
  %272 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx108, align 1
  %conv110 = zext i8 %273 to i32
  %shl111 = shl nuw nsw i32 %conv110, 8
  %or112 = or i32 %shl111, %conv106
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.29, i32 noundef %or102, i32 noundef %or112) #11
  %274 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i) #11
  %blockshift.i364 = getelementptr inbounds %struct.sddr09_card_info, ptr %275, i32 0, i32 4
  %276 = ptrtoint ptr %blockshift.i364 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %blockshift.i364, align 4
  %shr.i365 = lshr i32 %or102, %277
  %blockmask.i = getelementptr inbounds %struct.sddr09_card_info, ptr %275, i32 0, i32 5
  %278 = ptrtoint ptr %blockmask.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %blockmask.i, align 4
  %and.i366 = and i32 %279, %or102
  %280 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %275, align 4
  %pageshift.i367 = getelementptr inbounds %struct.sddr09_card_info, ptr %275, i32 0, i32 2
  %282 = ptrtoint ptr %pageshift.i367 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %pageshift.i367, align 4
  %add.i368 = add i32 %283, %277
  %shr2.i = lshr i32 %281, %add.i368
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i365, i32 %shr2.i)
  %cmp.not.i = icmp ult i32 %shr.i365, %shr2.i
  br i1 %cmp.not.i, label %if.end.i370, label %if.then81.sddr09_read_data.exit.thread_crit_edge

if.then81.sddr09_read_data.exit.thread_crit_edge: ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_read_data.exit.thread

if.end.i370:                                      ; preds = %if.then81
  %blocksize.i = getelementptr inbounds %struct.sddr09_card_info, ptr %275, i32 0, i32 3
  %284 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %blocksize.i, align 4
  %286 = tail call i32 @llvm.umin.i32(i32 %285, i32 %or112) #11
  %pagesize.i = getelementptr inbounds %struct.sddr09_card_info, ptr %275, i32 0, i32 1
  %287 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %pagesize.i, align 4
  %mul.i369 = mul i32 %286, %288
  %call9.i.i396 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i369, i32 noundef 3072) #16
  %tobool.not.i399 = icmp eq ptr %call9.i.i396, null
  br i1 %tobool.not.i399, label %if.end.i370.sddr09_read_data.exit.thread_crit_edge, label %if.end5.i

if.end.i370.sddr09_read_data.exit.thread_crit_edge: ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_read_data.exit.thread

if.end5.i:                                        ; preds = %if.end.i370
  %289 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %offset.i, align 4
  %290 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %sg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or112)
  %cmp6.not100.i = icmp eq i32 %or112, 0
  br i1 %cmp6.not100.i, label %if.end5.i..loopexit_crit_edge, label %while.body.lr.ph.i

if.end5.i..loopexit_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %lba_to_pba.i401 = getelementptr inbounds %struct.sddr09_card_info, ptr %275, i32 0, i32 6
  %srb.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr2.i, i32 %shr.i365) #11
  br label %while.body.i

while.body.i:                                     ; preds = %if.end31.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %page.0104.i = phi i32 [ %and.i366, %while.body.lr.ph.i ], [ 0, %if.end31.i.while.body.i_crit_edge ]
  %lba.0102.i = phi i32 [ %shr.i365, %while.body.lr.ph.i ], [ %inc.i407, %if.end31.i.while.body.i_crit_edge ]
  %sectors.addr.0101.i = phi i32 [ %or112, %while.body.lr.ph.i ], [ %sub33.i, %if.end31.i.while.body.i_crit_edge ]
  %291 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %blocksize.i, align 4
  %sub.i402 = sub i32 %292, %page.0104.i
  %293 = call i32 @llvm.umin.i32(i32 %sectors.addr.0101.i, i32 %sub.i402) #11
  %294 = ptrtoint ptr %pageshift.i367 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %pageshift.i367, align 4
  %shl.i403 = shl i32 %293, %295
  call void @__sanitizer_cov_trace_cmp4(i32 %lba.0102.i, i32 %umax.i)
  %exitcond.not.i404 = icmp eq i32 %lba.0102.i, %umax.i
  br i1 %exitcond.not.i404, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.88, i32 noundef %umax.i, i32 noundef %shr2.i) #11
  br label %sddr09_read_data.exit

if.end17.i:                                       ; preds = %while.body.i
  %296 = ptrtoint ptr %lba_to_pba.i401 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %lba_to_pba.i401, align 4
  %arrayidx.i405 = getelementptr i32, ptr %297, i32 %lba.0102.i
  %298 = ptrtoint ptr %arrayidx.i405 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx.i405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %299)
  %cmp18.i = icmp eq i32 %299, -1
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i406

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.89, i32 noundef %293, i32 noundef %lba.0102.i, i32 noundef %page.0104.i) #11
  %300 = call ptr @memset(ptr %call9.i.i396, i32 0, i32 %shl.i403)
  br label %if.end31.i

if.else.i406:                                     ; preds = %if.end17.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.90, i32 noundef %293, i32 noundef %299, i32 noundef %lba.0102.i, i32 noundef %page.0104.i) #11
  %301 = ptrtoint ptr %blockshift.i364 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %blockshift.i364, align 4
  %shl21.i = shl i32 %299, %302
  %add22.i = add i32 %shl21.i, %page.0104.i
  %303 = ptrtoint ptr %pageshift.i367 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %pageshift.i367, align 4
  %shl24.i = shl i32 %add22.i, %304
  %shr25.i = lshr i32 %shl24.i, 1
  %shl.i.i = shl i32 %293, %304
  %call.i.i = call fastcc i32 @sddr09_readX(ptr noundef %us, i32 noundef 0, i32 noundef %shr25.i, i32 noundef %293, i32 noundef %shl.i.i, ptr noundef nonnull %call9.i.i396) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not.i, label %if.else.i406.if.end31.i_crit_edge, label %if.else.i406.sddr09_read_data.exit_crit_edge

if.else.i406.sddr09_read_data.exit_crit_edge:     ; preds = %if.else.i406
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_read_data.exit

if.else.i406.if.end31.i_crit_edge:                ; preds = %if.else.i406
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i406.if.end31.i_crit_edge, %if.then19.i
  %305 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %srb.i, align 4
  %call32.i = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i.i396, i32 noundef %shl.i403, ptr noundef %306, ptr noundef nonnull %sg.i, ptr noundef nonnull %offset.i, i32 noundef 0) #11
  %inc.i407 = add i32 %lba.0102.i, 1
  %sub33.i = sub i32 %sectors.addr.0101.i, %293
  %cmp6.not.i = icmp eq i32 %sub33.i, 0
  br i1 %cmp6.not.i, label %if.end31.i..loopexit_crit_edge, label %if.end31.i.while.body.i_crit_edge

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end31.i..loopexit_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

sddr09_read_data.exit.thread:                     ; preds = %if.end.i370.sddr09_read_data.exit.thread_crit_edge, %if.then81.sddr09_read_data.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #11
  br label %cleanup228

sddr09_read_data.exit:                            ; preds = %if.else.i406.sddr09_read_data.exit_crit_edge, %if.then16.i
  call void @kfree(ptr noundef nonnull %call9.i.i396) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #11
  br label %cleanup228

.loopexit:                                        ; preds = %if.end31.i..loopexit_crit_edge, %if.end5.i..loopexit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i396) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #11
  br label %cleanup228

if.then123:                                       ; preds = %if.end75
  %arrayidx125 = getelementptr i8, ptr %5, i32 3
  %307 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx125, align 1
  %conv127 = zext i8 %308 to i32
  %arrayidx129 = getelementptr i8, ptr %5, i32 2
  %309 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx129, align 1
  %conv131 = zext i8 %310 to i32
  %311 = shl nuw i32 %conv131, 24
  %312 = shl nuw nsw i32 %conv127, 16
  %arrayidx136 = getelementptr i8, ptr %5, i32 5
  %313 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx136, align 1
  %conv138 = zext i8 %314 to i32
  %arrayidx140 = getelementptr i8, ptr %5, i32 4
  %315 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx140, align 1
  %conv142 = zext i8 %316 to i32
  %shl143 = shl nuw nsw i32 %conv142, 8
  %or144 = or i32 %311, %312
  %shl134 = or i32 %or144, %conv138
  %or145 = or i32 %shl134, %shl143
  %arrayidx147 = getelementptr i8, ptr %5, i32 8
  %317 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx147, align 1
  %conv149 = zext i8 %318 to i32
  %arrayidx151 = getelementptr i8, ptr %5, i32 7
  %319 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx151, align 1
  %conv153 = zext i8 %320 to i32
  %shl154 = shl nuw nsw i32 %conv153, 8
  %or155 = or i32 %shl154, %conv149
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.30, i32 noundef %or145, i32 noundef %or155) #11
  %321 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i409) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i410) #11
  %blockshift.i412 = getelementptr inbounds %struct.sddr09_card_info, ptr %322, i32 0, i32 4
  %323 = ptrtoint ptr %blockshift.i412 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %blockshift.i412, align 4
  %shr.i413 = lshr i32 %or145, %324
  %blockmask.i414 = getelementptr inbounds %struct.sddr09_card_info, ptr %322, i32 0, i32 5
  %325 = ptrtoint ptr %blockmask.i414 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %blockmask.i414, align 4
  %and.i415 = and i32 %326, %or145
  %327 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %322, align 4
  %pageshift.i416 = getelementptr inbounds %struct.sddr09_card_info, ptr %322, i32 0, i32 2
  %329 = ptrtoint ptr %pageshift.i416 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %pageshift.i416, align 4
  %add.i417 = add i32 %330, %324
  %shr2.i418 = lshr i32 %328, %add.i417
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i413, i32 %shr2.i418)
  %cmp.not.i419 = icmp ult i32 %shr.i413, %shr2.i418
  br i1 %cmp.not.i419, label %if.end8.i.i448, label %if.then123.sddr09_write_data.exit.thread_crit_edge

if.then123.sddr09_write_data.exit.thread_crit_edge: ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_write_data.exit.thread

if.end8.i.i448:                                   ; preds = %if.then123
  %shl.i420 = shl nuw i32 1, %330
  %add4.i = add nuw i32 %shl.i420, 64
  %shl6.i = shl i32 %add4.i, %324
  %call9.i.i447 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl6.i, i32 noundef 3072) #16
  %tobool.not.i450 = icmp eq ptr %call9.i.i447, null
  br i1 %tobool.not.i450, label %if.end8.i.i448.sddr09_write_data.exit.thread_crit_edge, label %if.end8.i

if.end8.i.i448.sddr09_write_data.exit.thread_crit_edge: ; preds = %if.end8.i.i448
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_write_data.exit.thread

if.end8.i:                                        ; preds = %if.end8.i.i448
  %blocksize.i452 = getelementptr inbounds %struct.sddr09_card_info, ptr %322, i32 0, i32 3
  %331 = ptrtoint ptr %blocksize.i452 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %blocksize.i452, align 4
  %333 = tail call i32 @llvm.umin.i32(i32 %332, i32 %or155) #11
  %pagesize.i453 = getelementptr inbounds %struct.sddr09_card_info, ptr %322, i32 0, i32 1
  %334 = ptrtoint ptr %pagesize.i453 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %pagesize.i453, align 4
  %mul.i454 = mul i32 %333, %335
  %call9.i108.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i454, i32 noundef 3072) #16
  %tobool11.not.i = icmp eq ptr %call9.i108.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i447) #11
  br label %sddr09_write_data.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %336 = ptrtoint ptr %offset.i409 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 0, ptr %offset.i409, align 4
  %337 = ptrtoint ptr %sg.i410 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr null, ptr %sg.i410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or155)
  %cmp14.not144.i = icmp eq i32 %or155, 0
  br i1 %cmp14.not144.i, label %if.end13.i.sddr09_write_data.exit_crit_edge, label %while.body.lr.ph.i457

if.end13.i.sddr09_write_data.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_write_data.exit

while.body.lr.ph.i457:                            ; preds = %if.end13.i
  %srb.i455 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %338 = getelementptr inbounds [3 x i8], ptr %ecc.i.i, i32 0, i32 1
  %339 = getelementptr inbounds [3 x i8], ptr %ecc.i.i, i32 0, i32 2
  %send_ctrl_pipe.i.i.i.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %send_bulk_pipe.i.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %umax.i456 = tail call i32 @llvm.umax.i32(i32 %shr2.i418, i32 %shr.i413) #11
  br label %while.body.i460

while.body.i460:                                  ; preds = %if.end31.i469.while.body.i460_crit_edge, %while.body.lr.ph.i457
  %sectors.addr.0149.i = phi i32 [ %or155, %while.body.lr.ph.i457 ], [ %sub32.i, %if.end31.i469.while.body.i460_crit_edge ]
  %page.0148.i = phi i32 [ %and.i415, %while.body.lr.ph.i457 ], [ 0, %if.end31.i469.while.body.i460_crit_edge ]
  %lba.0145.i = phi i32 [ %shr.i413, %while.body.lr.ph.i457 ], [ %inc.i468, %if.end31.i469.while.body.i460_crit_edge ]
  %340 = ptrtoint ptr %blocksize.i452 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %blocksize.i452, align 4
  %sub.i458 = sub i32 %341, %page.0148.i
  %342 = call i32 @llvm.umin.i32(i32 %sectors.addr.0149.i, i32 %sub.i458) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %lba.0145.i, i32 %umax.i456)
  %exitcond.not.i459 = icmp eq i32 %lba.0145.i, %umax.i456
  br i1 %exitcond.not.i459, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %while.body.i460
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.88, i32 noundef %umax.i456, i32 noundef %shr2.i418) #11
  br label %sddr09_write_data.exit

if.end26.i:                                       ; preds = %while.body.i460
  %343 = ptrtoint ptr %pageshift.i416 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %pageshift.i416, align 4
  %shl23.i = shl i32 %342, %344
  %345 = ptrtoint ptr %srb.i455 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %srb.i455, align 4
  %call27.i = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i108.i, i32 noundef %shl23.i, ptr noundef %346, ptr noundef nonnull %sg.i410, ptr noundef nonnull %offset.i409, i32 noundef 1) #11
  %347 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ecc.i.i) #11
  %349 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 -1, ptr %ecc.i.i, align 1, !annotation !232
  %350 = ptrtoint ptr %338 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 -1, ptr %338, align 1, !annotation !232
  %351 = ptrtoint ptr %339 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 -1, ptr %339, align 1, !annotation !232
  %lba.0145.i.frozen = freeze i32 %lba.0145.i
  %div.i.i.i = udiv i32 %lba.0145.i.frozen, 1000
  %352 = mul i32 %div.i.i.i, 1000
  %rem.i.i.decomposed = sub i32 %lba.0145.i.frozen, %352
  %shl.i.i461 = shl nuw nsw i32 %rem.i.i.decomposed, 1
  %or.i.i = or i32 %shl.i.i461, 4096
  %shr.i.i = lshr i32 %or.i.i, 8
  %and.i.i = and i32 %shl.i.i461, 254
  %xor.i.i = xor i32 %shr.i.i, %and.i.i
  %arrayidx.i.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %xor.i.i
  %353 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool.not.i.i = icmp eq i8 %354, 0
  %xor1169.i.i = or i32 %shl.i.i461, 4097
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %xor1169.i.i
  %lba_to_pba.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 6
  %355 = ptrtoint ptr %lba_to_pba.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %lba_to_pba.i.i, align 4
  %arrayidx2.i.i462 = getelementptr i32, ptr %356, i32 %lba.0145.i
  %357 = ptrtoint ptr %arrayidx2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %358)
  %cmp.i112.i = icmp eq i32 %358, -1
  br i1 %cmp.i112.i, label %if.then3.i.i, label %if.end26.i.if.end11.i.i_crit_edge

if.end26.i.if.end11.i.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.end26.i
  %shl.i.i.i463 = shl i32 %div.i.i.i, 10
  %359 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %348, align 4
  %blockshift.i.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 4
  %361 = ptrtoint ptr %blockshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %blockshift.i.i.i, align 4
  %pageshift.i.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 2
  %363 = ptrtoint ptr %pageshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %pageshift.i.i.i, align 4
  %add.i.i.i = add i32 %364, %362
  %shr.i.i.i = lshr i32 %360, %add.i.i.i
  %sub.i.i.i = sub i32 %shr.i.i.i, %shl.i.i.i463
  %365 = call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 1024) #11
  %366 = load i32, ptr @sddr09_find_unused_pba.lastpba, align 4
  %pba_to_lba.i.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 7
  %367 = ptrtoint ptr %pba_to_lba.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %pba_to_lba.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then3.i.i
  %i.0.in.i.i.i = phi i32 [ %366, %if.then3.i.i ], [ %i.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %i.0.i.i.i = add i32 %i.0.in.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i.i, i32 %365)
  %cmp2.i.i.i = icmp slt i32 %i.0.i.i.i, %365
  br i1 %cmp2.i.i.i, label %for.body.i.i.i, label %for.cond.i.i.i.for.body10.i.i.i_crit_edge

for.cond.i.i.i.for.body10.i.i.i_crit_edge:        ; preds = %for.cond.i.i.i
  br label %for.body10.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %add3.i.i.i = add i32 %i.0.i.i.i, %shl.i.i.i463
  %arrayidx.i.i.i = getelementptr i32, ptr %368, i32 %add3.i.i.i
  %369 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx.i.i.i, align 4
  %cmp4.i.i.i = icmp eq i32 %370, -1
  br i1 %cmp4.i.i.i, label %for.body.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

for.body.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_find_unused_pba.exit.i.i

for.body10.i.i.i:                                 ; preds = %for.inc18.i.i.i.for.body10.i.i.i_crit_edge, %for.cond.i.i.i.for.body10.i.i.i_crit_edge
  %i.144.i.i.i = phi i32 [ %inc19.i.i.i, %for.inc18.i.i.i.for.body10.i.i.i_crit_edge ], [ 0, %for.cond.i.i.i.for.body10.i.i.i_crit_edge ]
  %add12.i.i.i = add i32 %i.144.i.i.i, %shl.i.i.i463
  %arrayidx13.i.i.i = getelementptr i32, ptr %368, i32 %add12.i.i.i
  %371 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %372)
  %cmp14.i.i.i = icmp eq i32 %372, -1
  br i1 %cmp14.i.i.i, label %for.body10.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge, label %for.inc18.i.i.i

for.body10.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge: ; preds = %for.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_find_unused_pba.exit.i.i

for.inc18.i.i.i:                                  ; preds = %for.body10.i.i.i
  %inc19.i.i.i = add i32 %i.144.i.i.i, 1
  %cmp9.not.i.i.i = icmp ugt i32 %inc19.i.i.i, %366
  br i1 %cmp9.not.i.i.i, label %for.inc18.i.i.i.do.end.i.i_crit_edge, label %for.inc18.i.i.i.for.body10.i.i.i_crit_edge

for.inc18.i.i.i.for.body10.i.i.i_crit_edge:       ; preds = %for.inc18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10.i.i.i

for.inc18.i.i.i.do.end.i.i_crit_edge:             ; preds = %for.inc18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

sddr09_find_unused_pba.exit.i.i:                  ; preds = %for.body10.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge, %for.body.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge
  %i.144.lcssa.sink.i.i.i = phi i32 [ %i.144.i.i.i, %for.body10.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge ], [ %i.0.i.i.i, %for.body.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ %add12.i.i.i, %for.body10.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge ], [ %add3.i.i.i, %for.body.i.i.i.sddr09_find_unused_pba.exit.i.i_crit_edge ]
  store i32 %i.144.lcssa.sink.i.i.i, ptr @sddr09_find_unused_pba.lastpba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %retval.0.ph.i.i.i, 0
  br i1 %tobool4.not.i.i, label %sddr09_find_unused_pba.exit.i.i.do.end.i.i_crit_edge, label %if.end7.i.i

sddr09_find_unused_pba.exit.i.i.do.end.i.i_crit_edge: ; preds = %sddr09_find_unused_pba.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %sddr09_find_unused_pba.exit.i.i.do.end.i.i_crit_edge, %for.inc18.i.i.i.do.end.i.i_crit_edge
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #14
  br label %sddr09_write_lba.exit.thread.i

if.end7.i.i:                                      ; preds = %sddr09_find_unused_pba.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.i.i = getelementptr i32, ptr %368, i32 %retval.0.ph.i.i.i
  %373 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %lba.0145.i, ptr %arrayidx8.i.i, align 4
  %374 = ptrtoint ptr %lba_to_pba.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %lba_to_pba.i.i, align 4
  %arrayidx10.i.i = getelementptr i32, ptr %375, i32 %lba.0145.i
  %376 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %retval.0.ph.i.i.i, ptr %arrayidx10.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end7.i.i, %if.end26.i.if.end11.i.i_crit_edge
  %pba.0.i.i = phi i32 [ %retval.0.ph.i.i.i, %if.end7.i.i ], [ %358, %if.end26.i.if.end11.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pba.0.i.i)
  %cmp12.i.i = icmp eq i32 %pba.0.i.i, 1
  br i1 %cmp12.i.i, label %sddr09_write_lba.exit.thread123.i, label %if.end19.i.i

sddr09_write_lba.exit.thread123.i:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #11
  br label %if.end31.i469

if.end19.i.i:                                     ; preds = %if.end11.i.i
  %pageshift.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 2
  %377 = ptrtoint ptr %pageshift.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %pageshift.i.i, align 4
  %shl20.i.i = shl nuw i32 1, %378
  %add.i.i = add nuw i32 %shl20.i.i, 64
  %blockshift.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 4
  %379 = ptrtoint ptr %blockshift.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %blockshift.i.i, align 4
  %add22.i.i = add i32 %380, %378
  %shl23.i.i = shl i32 %pba.0.i.i, %add22.i.i
  %shr24.i.i = lshr i32 %shl23.i.i, 1
  %blocksize.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 3
  %381 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %blocksize.i.i, align 4
  %shl.i170.i.i = shl i32 %382, %378
  %shl1.i.i.i = shl i32 %382, 6
  %add.i171.i.i = add i32 %shl.i170.i.i, %shl1.i.i.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.100, i32 noundef %382, i32 noundef %add.i171.i.i) #11
  %call.i.i.i464 = call fastcc i32 @sddr09_readX(ptr noundef %us, i32 noundef 2, i32 noundef %shr24.i.i, i32 noundef %382, i32 noundef %add.i171.i.i, ptr noundef nonnull %call9.i.i447) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i464)
  %tobool27.not.i.i = icmp eq i32 %call.i.i.i464, 0
  br i1 %tobool27.not.i.i, label %for.cond.preheader.i.i, label %if.end19.i.i.sddr09_write_lba.exit.thread.i_crit_edge

if.end19.i.i.sddr09_write_lba.exit.thread.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_write_lba.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %if.end19.i.i
  %383 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %cmp31196.i.i = icmp sgt i32 %384, 0
  br i1 %cmp31196.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.for.cond59.preheader.i.i_crit_edge

for.cond.preheader.i.i.for.cond59.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond59.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pagesize.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 1
  %shr52.i.i = lshr i32 %spec.select.i.i, 8
  %conv.i.i465 = trunc i32 %shr52.i.i to i8
  %conv56.i.i = trunc i32 %spec.select.i.i to i8
  br label %for.body.i.i

for.cond59.preheader.i.i:                         ; preds = %if.end51.i.i.for.cond59.preheader.i.i_crit_edge, %for.cond.preheader.i.i.for.cond59.preheader.i.i_crit_edge
  %add60.i.i = add i32 %342, %page.0148.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add60.i.i, i32 %page.0148.i)
  %cmp61198.i.i = icmp ugt i32 %add60.i.i, %page.0148.i
  br i1 %cmp61198.i.i, label %for.body63.lr.ph.i.i, label %for.cond59.preheader.i.i.for.end82.i.i_crit_edge

for.cond59.preheader.i.i.for.end82.i.i_crit_edge: ; preds = %for.cond59.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end82.i.i

for.body63.lr.ph.i.i:                             ; preds = %for.cond59.preheader.i.i
  %pagesize66.i.i = getelementptr inbounds %struct.sddr09_card_info, ptr %348, i32 0, i32 1
  br label %for.body63.i.i

for.body.i.i:                                     ; preds = %if.end51.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0197.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end51.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.0197.i.i, %add.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i447, i32 %mul.i.i
  %385 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %pagesize.i.i, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %386
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr.i.i, ptr noundef nonnull %ecc.i.i) #11
  %add.ptr33.i.i = getelementptr i8, ptr %add.ptr32.i.i, i32 13
  %387 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %add.ptr33.i.i, align 1
  %389 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %ecc.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %388, i8 %390)
  %cmp.i.i113.i = icmp eq i8 %388, %390
  br i1 %cmp.i.i113.i, label %land.lhs.true.i.i.i, label %for.body.i.i.if.then37.i.i_crit_edge

for.body.i.i.if.then37.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %add.ptr33.i.i, i32 1
  %391 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx4.i.i.i, align 1
  %393 = ptrtoint ptr %338 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %338, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %392, i8 %394)
  %cmp8.i.i.i = icmp eq i8 %392, %394
  br i1 %cmp8.i.i.i, label %nand_compare_ecc.exit.i.i, label %land.lhs.true.i.i.i.if.then37.i.i_crit_edge

land.lhs.true.i.i.i.if.then37.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37.i.i

nand_compare_ecc.exit.i.i:                        ; preds = %land.lhs.true.i.i.i
  %arrayidx10.i.i.i = getelementptr i8, ptr %add.ptr33.i.i, i32 2
  %395 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx10.i.i.i, align 1
  %397 = ptrtoint ptr %339 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %339, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %396, i8 %398)
  %cmp14.i172.not.i.i = icmp eq i8 %396, %398
  br i1 %cmp14.i172.not.i.i, label %nand_compare_ecc.exit.i.i.if.end40.i.i_crit_edge, label %nand_compare_ecc.exit.i.i.if.then37.i.i_crit_edge

nand_compare_ecc.exit.i.i.if.then37.i.i_crit_edge: ; preds = %nand_compare_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37.i.i

nand_compare_ecc.exit.i.i.if.end40.i.i_crit_edge: ; preds = %nand_compare_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then37.i.i:                                    ; preds = %nand_compare_ecc.exit.i.i.if.then37.i.i_crit_edge, %land.lhs.true.i.i.i.if.then37.i.i_crit_edge, %for.body.i.i.if.then37.i.i_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.96, i32 noundef %i.0197.i.i, i32 noundef %pba.0.i.i) #11
  %399 = call ptr @memcpy(ptr %add.ptr33.i.i, ptr %ecc.i.i, i32 3)
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then37.i.i, %nand_compare_ecc.exit.i.i.if.end40.i.i_crit_edge
  %400 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %pagesize.i.i, align 4
  %div.i.i = sdiv i32 %401, 2
  %add.ptr42.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %div.i.i
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr42.i.i, ptr noundef nonnull %ecc.i.i) #11
  %add.ptr44.i.i = getelementptr i8, ptr %add.ptr32.i.i, i32 8
  %402 = ptrtoint ptr %add.ptr44.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %add.ptr44.i.i, align 1
  %404 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %ecc.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %403, i8 %405)
  %cmp.i173.i.i = icmp eq i8 %403, %405
  br i1 %cmp.i173.i.i, label %land.lhs.true.i177.i.i, label %if.end40.i.i.if.then48.i.i_crit_edge

if.end40.i.i.if.then48.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i.i

land.lhs.true.i177.i.i:                           ; preds = %if.end40.i.i
  %arrayidx4.i174.i.i = getelementptr i8, ptr %add.ptr44.i.i, i32 1
  %406 = ptrtoint ptr %arrayidx4.i174.i.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx4.i174.i.i, align 1
  %408 = ptrtoint ptr %338 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %338, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %407, i8 %409)
  %cmp8.i176.i.i = icmp eq i8 %407, %409
  br i1 %cmp8.i176.i.i, label %nand_compare_ecc.exit183.i.i, label %land.lhs.true.i177.i.i.if.then48.i.i_crit_edge

land.lhs.true.i177.i.i.if.then48.i.i_crit_edge:   ; preds = %land.lhs.true.i177.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i.i

nand_compare_ecc.exit183.i.i:                     ; preds = %land.lhs.true.i177.i.i
  %arrayidx10.i178.i.i = getelementptr i8, ptr %add.ptr44.i.i, i32 2
  %410 = ptrtoint ptr %arrayidx10.i178.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx10.i178.i.i, align 1
  %412 = ptrtoint ptr %339 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %339, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %411, i8 %413)
  %cmp14.i180.not.i.i = icmp eq i8 %411, %413
  br i1 %cmp14.i180.not.i.i, label %nand_compare_ecc.exit183.i.i.if.end51.i.i_crit_edge, label %nand_compare_ecc.exit183.i.i.if.then48.i.i_crit_edge

nand_compare_ecc.exit183.i.i.if.then48.i.i_crit_edge: ; preds = %nand_compare_ecc.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i.i

nand_compare_ecc.exit183.i.i.if.end51.i.i_crit_edge: ; preds = %nand_compare_ecc.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

if.then48.i.i:                                    ; preds = %nand_compare_ecc.exit183.i.i.if.then48.i.i_crit_edge, %land.lhs.true.i177.i.i.if.then48.i.i_crit_edge, %if.end40.i.i.if.then48.i.i_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.97, i32 noundef %i.0197.i.i, i32 noundef %pba.0.i.i) #11
  %414 = call ptr @memcpy(ptr %add.ptr44.i.i, ptr %ecc.i.i, i32 3)
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then48.i.i, %nand_compare_ecc.exit183.i.i.if.end51.i.i_crit_edge
  %arrayidx53.i.i = getelementptr i8, ptr %add.ptr32.i.i, i32 11
  %415 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %conv.i.i465, ptr %arrayidx53.i.i, align 1
  %arrayidx54.i.i = getelementptr i8, ptr %add.ptr32.i.i, i32 6
  %416 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %conv.i.i465, ptr %arrayidx54.i.i, align 1
  %arrayidx57.i.i = getelementptr i8, ptr %add.ptr32.i.i, i32 12
  %417 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %conv56.i.i, ptr %arrayidx57.i.i, align 1
  %arrayidx58.i.i = getelementptr i8, ptr %add.ptr32.i.i, i32 7
  %418 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %conv56.i.i, ptr %arrayidx58.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.0197.i.i, 1
  %419 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %blocksize.i.i, align 4
  %cmp31.i.i = icmp slt i32 %inc.i.i, %420
  br i1 %cmp31.i.i, label %if.end51.i.i.for.body.i.i_crit_edge, label %if.end51.i.i.for.cond59.preheader.i.i_crit_edge

if.end51.i.i.for.cond59.preheader.i.i_crit_edge:  ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond59.preheader.i.i

if.end51.i.i.for.body.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body63.i.i:                                   ; preds = %for.body63.i.i.for.body63.i.i_crit_edge, %for.body63.lr.ph.i.i
  %i.1200.i.i = phi i32 [ %page.0148.i, %for.body63.lr.ph.i.i ], [ %inc81.i.i, %for.body63.i.i.for.body63.i.i_crit_edge ]
  %xptr.0199.i.i = phi ptr [ %call9.i108.i, %for.body63.lr.ph.i.i ], [ %add.ptr70.i.i, %for.body63.i.i.for.body63.i.i_crit_edge ]
  %mul64.i.i = mul i32 %i.1200.i.i, %add.i.i
  %add.ptr65.i.i = getelementptr i8, ptr %call9.i.i447, i32 %mul64.i.i
  %421 = ptrtoint ptr %pagesize66.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %pagesize66.i.i, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %add.ptr65.i.i, i32 %422
  %423 = call ptr @memcpy(ptr %add.ptr65.i.i, ptr %xptr.0199.i.i, i32 %422)
  %424 = load i32, ptr %pagesize66.i.i, align 4
  %add.ptr70.i.i = getelementptr i8, ptr %xptr.0199.i.i, i32 %424
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr65.i.i, ptr noundef nonnull %ecc.i.i) #11
  %add.ptr72.i.i = getelementptr i8, ptr %add.ptr67.i.i, i32 13
  %425 = call ptr @memcpy(ptr %add.ptr72.i.i, ptr %ecc.i.i, i32 3)
  %426 = ptrtoint ptr %pagesize66.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %pagesize66.i.i, align 4
  %div75.i.i = sdiv i32 %427, 2
  %add.ptr76.i.i = getelementptr i8, ptr %add.ptr65.i.i, i32 %div75.i.i
  call fastcc void @nand_compute_ecc(ptr noundef %add.ptr76.i.i, ptr noundef nonnull %ecc.i.i) #11
  %add.ptr78.i.i = getelementptr i8, ptr %add.ptr67.i.i, i32 8
  %428 = call ptr @memcpy(ptr %add.ptr78.i.i, ptr %ecc.i.i, i32 3)
  %inc81.i.i = add i32 %i.1200.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc81.i.i, %add60.i.i
  br i1 %exitcond.not.i.i, label %for.body63.i.i.for.end82.i.i_crit_edge, label %for.body63.i.i.for.body63.i.i_crit_edge

for.body63.i.i.for.body63.i.i_crit_edge:          ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body63.i.i

for.body63.i.i.for.end82.i.i_crit_edge:           ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end82.i.i

for.end82.i.i:                                    ; preds = %for.body63.i.i.for.end82.i.i_crit_edge, %for.cond59.preheader.i.i.for.end82.i.i_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.98, i32 noundef %pba.0.i.i, i32 noundef %lba.0145.i) #11
  %429 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %blocksize.i.i, align 4
  %431 = ptrtoint ptr %pageshift.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %pageshift.i.i, align 4
  %433 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %iobuf, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 -23, ptr %434, align 1
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %434, i32 1
  %436 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 32, ptr %arrayidx1.i.i.i.i, align 1
  %shr.i.i.i.i = lshr i32 %shl23.i.i, 17
  %shr2.i.i.i.i = lshr i32 %shl23.i.i, 25
  %conv.i.i.i.i = trunc i32 %shr2.i.i.i.i to i8
  %arrayidx3.i.i.i.i = getelementptr i8, ptr %434, i32 2
  %437 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %conv.i.i.i.i, ptr %arrayidx3.i.i.i.i, align 1
  %conv5.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %arrayidx6.i.i.i.i = getelementptr i8, ptr %434, i32 3
  %438 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 %conv5.i.i.i.i, ptr %arrayidx6.i.i.i.i, align 1
  %shr8.i.i.i.i = lshr i32 %shl23.i.i, 9
  %conv9.i.i.i.i = trunc i32 %shr8.i.i.i.i to i8
  %arrayidx10.i.i.i.i = getelementptr i8, ptr %434, i32 4
  %439 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %conv9.i.i.i.i, ptr %arrayidx10.i.i.i.i, align 1
  %conv13.i.i.i.i = trunc i32 %shr24.i.i to i8
  %arrayidx14.i.i.i.i = getelementptr i8, ptr %434, i32 5
  %440 = ptrtoint ptr %arrayidx14.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %conv13.i.i.i.i, ptr %arrayidx14.i.i.i.i, align 1
  %arrayidx18.i.i.i.i = getelementptr i8, ptr %434, i32 6
  %441 = ptrtoint ptr %arrayidx18.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %conv.i.i.i.i, ptr %arrayidx18.i.i.i.i, align 1
  %arrayidx22.i.i.i.i = getelementptr i8, ptr %434, i32 7
  %442 = ptrtoint ptr %arrayidx22.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %conv5.i.i.i.i, ptr %arrayidx22.i.i.i.i, align 1
  %arrayidx26.i.i.i.i = getelementptr i8, ptr %434, i32 8
  %443 = ptrtoint ptr %arrayidx26.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %conv9.i.i.i.i, ptr %arrayidx26.i.i.i.i, align 1
  %arrayidx30.i.i.i.i = getelementptr i8, ptr %434, i32 9
  %444 = ptrtoint ptr %arrayidx30.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %conv13.i.i.i.i, ptr %arrayidx30.i.i.i.i, align 1
  %445 = lshr i32 %430, 8
  %conv32.i.i.i.i = trunc i32 %445 to i8
  %arrayidx33.i.i.i.i = getelementptr i8, ptr %434, i32 10
  %446 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %conv32.i.i.i.i, ptr %arrayidx33.i.i.i.i, align 1
  %conv35.i.i.i.i = trunc i32 %430 to i8
  %arrayidx36.i.i.i.i = getelementptr i8, ptr %434, i32 11
  %447 = ptrtoint ptr %arrayidx36.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 %conv35.i.i.i.i, ptr %arrayidx36.i.i.i.i, align 1
  %448 = ptrtoint ptr %send_ctrl_pipe.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %pipe.0.i.i.i.i.i.i = load i32, ptr %send_ctrl_pipe.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i.i.i.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %434, i16 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %switch.selectcmp11.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %switch.selectcmp11.i.i.i.i.i.i, label %if.end.i.i.i.i466, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.end82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i.i.i)
  %switch.selectcmp.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 2
  %switch.select.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i, i32 -32, i32 -5
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.101, i32 noundef %switch.select.i.i.i.i.i.i) #11
  br label %sddr09_write_lba.exit.thread127.i

if.end.i.i.i.i466:                                ; preds = %for.end82.i.i
  %shl.i184.i.i = shl i32 %430, %432
  %shl1.i185.i.i = shl i32 %430, 6
  %add.i186.i.i = add i32 %shl.i184.i.i, %shl1.i185.i.i
  %449 = ptrtoint ptr %send_bulk_pipe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %send_bulk_pipe.i.i.i.i, align 4
  %call37.i.i.i.i = call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %450, ptr noundef nonnull %call9.i.i447, i32 noundef %add.i186.i.i, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call37.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %sddr09_write_lba.exit.i, label %if.then39.i.i.i.i

if.then39.i.i.i.i:                                ; preds = %if.end.i.i.i.i466
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.102, i32 noundef %call37.i.i.i.i) #11
  br label %sddr09_write_lba.exit.thread127.i

sddr09_write_lba.exit.thread.i:                   ; preds = %if.end19.i.i.sddr09_write_lba.exit.thread.i_crit_edge, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #11
  br label %sddr09_write_data.exit

sddr09_write_lba.exit.thread127.i:                ; preds = %if.then39.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.ph.i = phi i32 [ -5, %if.then39.i.i.i.i ], [ %switch.select.i.i.i.i.i.i, %if.then.i.i.i.i ]
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.99, i32 noundef %retval.0.i.i.i.ph.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #11
  br label %sddr09_write_data.exit

sddr09_write_lba.exit.i:                          ; preds = %if.end.i.i.i.i466
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.99, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i.i) #11
  br label %if.end31.i469

if.end31.i469:                                    ; preds = %sddr09_write_lba.exit.i, %sddr09_write_lba.exit.thread123.i
  %inc.i468 = add i32 %lba.0145.i, 1
  %sub32.i = sub i32 %sectors.addr.0149.i, %342
  %cmp14.not.i = icmp eq i32 %sub32.i, 0
  br i1 %cmp14.not.i, label %if.end31.i469.sddr09_write_data.exit_crit_edge, label %if.end31.i469.while.body.i460_crit_edge

if.end31.i469.while.body.i460_crit_edge:          ; preds = %if.end31.i469
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i460

if.end31.i469.sddr09_write_data.exit_crit_edge:   ; preds = %if.end31.i469
  call void @__sanitizer_cov_trace_pc() #13
  br label %sddr09_write_data.exit

sddr09_write_data.exit.thread:                    ; preds = %if.then12.i, %if.end8.i.i448.sddr09_write_data.exit.thread_crit_edge, %if.then123.sddr09_write_data.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i410) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i409) #11
  br label %cleanup228

sddr09_write_data.exit:                           ; preds = %if.end31.i469.sddr09_write_data.exit_crit_edge, %sddr09_write_lba.exit.thread127.i, %sddr09_write_lba.exit.thread.i, %if.then25.i, %if.end13.i.sddr09_write_data.exit_crit_edge
  %cmp157 = phi i32 [ 0, %if.end13.i.sddr09_write_data.exit_crit_edge ], [ 3, %if.then25.i ], [ 3, %sddr09_write_lba.exit.thread.i ], [ 3, %sddr09_write_lba.exit.thread127.i ], [ 0, %if.end31.i469.sddr09_write_data.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i108.i) #11
  call void @kfree(ptr noundef nonnull %call9.i.i447) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i410) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i409) #11
  br label %cleanup228

if.then172:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  store i8 5, ptr @sddr09_transport.sensekey, align 1
  store i8 32, ptr @sddr09_transport.sensecode, align 1
  store i1 true, ptr @sddr09_transport.havefakesense, align 1
  br label %cleanup228

if.end173:                                        ; preds = %if.end75.if.end173_crit_edge, %if.end75.thread
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %451 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %452)
  %cmp175509 = icmp ult i16 %452, 12
  br i1 %cmp175509, label %if.end173.for.body_crit_edge, label %if.end173.for.end_crit_edge

if.end173.for.end_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end173.for.body_crit_edge:                     ; preds = %if.end173
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end173.for.body_crit_edge
  %453 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ %452, %if.end173.for.body_crit_edge ]
  %conv174 = zext i16 %453 to i32
  %454 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cmnd, align 4
  %arrayidx179 = getelementptr i8, ptr %455, i32 %conv174
  %456 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 0, ptr %arrayidx179, align 1
  %457 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %457)
  %458 = load i16, ptr %cmd_len, align 4
  %inc = add i16 %458, 1
  store i16 %inc, ptr %cmd_len, align 4
  %cmp175 = icmp ult i16 %inc, 12
  br i1 %cmp175, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end173.for.end_crit_edge
  %459 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %cmnd, align 4
  %arrayidx182 = getelementptr i8, ptr %460, i32 1
  %461 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 32, ptr %arrayidx182, align 1
  %462 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %1, align 1
  %call188 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr = getelementptr i8, ptr %1, i32 %call188
  %463 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cmnd, align 4
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %464, align 1
  %conv191 = zext i8 %466 to i32
  %call192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.31, i32 noundef %conv191)
  %call188.1 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.1 = getelementptr i8, ptr %1, i32 %call188.1
  %467 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cmnd, align 4
  %arrayidx190.1 = getelementptr i8, ptr %468, i32 1
  %469 = ptrtoint ptr %arrayidx190.1 to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %arrayidx190.1, align 1
  %conv191.1 = zext i8 %470 to i32
  %call192.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.31, i32 noundef %conv191.1)
  %call188.2 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.2 = getelementptr i8, ptr %1, i32 %call188.2
  %471 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %cmnd, align 4
  %arrayidx190.2 = getelementptr i8, ptr %472, i32 2
  %473 = ptrtoint ptr %arrayidx190.2 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx190.2, align 1
  %conv191.2 = zext i8 %474 to i32
  %call192.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.31, i32 noundef %conv191.2)
  %call188.3 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.3 = getelementptr i8, ptr %1, i32 %call188.3
  %475 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %cmnd, align 4
  %arrayidx190.3 = getelementptr i8, ptr %476, i32 3
  %477 = ptrtoint ptr %arrayidx190.3 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx190.3, align 1
  %conv191.3 = zext i8 %478 to i32
  %call192.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.31, i32 noundef %conv191.3)
  %call188.4 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.4 = getelementptr i8, ptr %1, i32 %call188.4
  %479 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %cmnd, align 4
  %arrayidx190.4 = getelementptr i8, ptr %480, i32 4
  %481 = ptrtoint ptr %arrayidx190.4 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %arrayidx190.4, align 1
  %conv191.4 = zext i8 %482 to i32
  %call192.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.31, i32 noundef %conv191.4)
  %call188.5 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.5 = getelementptr i8, ptr %1, i32 %call188.5
  %483 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cmnd, align 4
  %arrayidx190.5 = getelementptr i8, ptr %484, i32 5
  %485 = ptrtoint ptr %arrayidx190.5 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %arrayidx190.5, align 1
  %conv191.5 = zext i8 %486 to i32
  %call192.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.31, i32 noundef %conv191.5)
  %call188.6 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.6 = getelementptr i8, ptr %1, i32 %call188.6
  %487 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %cmnd, align 4
  %arrayidx190.6 = getelementptr i8, ptr %488, i32 6
  %489 = ptrtoint ptr %arrayidx190.6 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %arrayidx190.6, align 1
  %conv191.6 = zext i8 %490 to i32
  %call192.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.31, i32 noundef %conv191.6)
  %call188.7 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.7 = getelementptr i8, ptr %1, i32 %call188.7
  %491 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %cmnd, align 4
  %arrayidx190.7 = getelementptr i8, ptr %492, i32 7
  %493 = ptrtoint ptr %arrayidx190.7 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %arrayidx190.7, align 1
  %conv191.7 = zext i8 %494 to i32
  %call192.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7, ptr noundef nonnull @.str.31, i32 noundef %conv191.7)
  %call188.8 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.8 = getelementptr i8, ptr %1, i32 %call188.8
  %495 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %cmnd, align 4
  %arrayidx190.8 = getelementptr i8, ptr %496, i32 8
  %497 = ptrtoint ptr %arrayidx190.8 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx190.8, align 1
  %conv191.8 = zext i8 %498 to i32
  %call192.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.8, ptr noundef nonnull @.str.31, i32 noundef %conv191.8)
  %call188.9 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.9 = getelementptr i8, ptr %1, i32 %call188.9
  %499 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %cmnd, align 4
  %arrayidx190.9 = getelementptr i8, ptr %500, i32 9
  %501 = ptrtoint ptr %arrayidx190.9 to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %arrayidx190.9, align 1
  %conv191.9 = zext i8 %502 to i32
  %call192.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.9, ptr noundef nonnull @.str.31, i32 noundef %conv191.9)
  %call188.10 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.10 = getelementptr i8, ptr %1, i32 %call188.10
  %503 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %cmnd, align 4
  %arrayidx190.10 = getelementptr i8, ptr %504, i32 10
  %505 = ptrtoint ptr %arrayidx190.10 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %arrayidx190.10, align 1
  %conv191.10 = zext i8 %506 to i32
  %call192.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.10, ptr noundef nonnull @.str.31, i32 noundef %conv191.10)
  %call188.11 = tail call i32 @strlen(ptr noundef %1) #17
  %add.ptr.11 = getelementptr i8, ptr %1, i32 %call188.11
  %507 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %cmnd, align 4
  %arrayidx190.11 = getelementptr i8, ptr %508, i32 11
  %509 = ptrtoint ptr %arrayidx190.11 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx190.11, align 1
  %conv191.11 = zext i8 %510 to i32
  %call192.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.11, ptr noundef nonnull @.str.31, i32 noundef %conv191.11)
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32, ptr noundef %1) #11
  %511 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %cmnd, align 4
  %send_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %513 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %pipe.0.i.i = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i.i472 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %512, i16 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i472)
  %switch.selectcmp11.i.i = icmp eq i32 %call.i.i472, 0
  br i1 %switch.selectcmp11.i.i, label %if.end200, label %if.then199

if.then199:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i472)
  %switch.selectcmp.i.i = icmp eq i32 %call.i.i472, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 -32, i32 -5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33, i32 noundef %switch.select.i.i) #11
  br label %cleanup228

if.end200:                                        ; preds = %for.end
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %514 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %cmp202 = icmp eq i32 %515, 0
  br i1 %cmp202, label %if.end200.cleanup228_crit_edge, label %if.end205

if.end200.cleanup228_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup228

if.end205:                                        ; preds = %if.end200
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %516 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %sc_data_direction, align 4
  %.off = add i32 %517, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then212, label %if.end205.cleanup228_crit_edge

if.end205.cleanup228_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup228

if.then212:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %517)
  %cmp214 = icmp eq i32 %517, 1
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %cond216.in = select i1 %cmp214, ptr %send_bulk_pipe, ptr %recv_bulk_pipe
  %518 = ptrtoint ptr %cond216.in to i32
  call void @__asan_load4_noabort(i32 %518)
  %cond216 = load i32, ptr %cond216.in, align 4
  %cond220 = select i1 %cmp214, ptr @.str.35, ptr @.str.36
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond220, i32 noundef %515) #11
  %call222 = tail call i32 @usb_stor_bulk_srb(ptr noundef %us, i32 noundef %cond216, ptr noundef %srb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp eq i32 %call222, 0
  %cond225 = select i1 %cmp223, i32 0, i32 3
  br label %cleanup228

cleanup228:                                       ; preds = %if.then212, %if.end205.cleanup228_crit_edge, %if.end200.cleanup228_crit_edge, %if.then199, %if.then172, %sddr09_write_data.exit, %sddr09_write_data.exit.thread, %.loopexit, %sddr09_read_data.exit, %sddr09_read_data.exit.thread, %if.end66, %if.then59, %if.end38, %init_error, %if.then12, %if.end.cleanup228_crit_edge, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ 1, %if.then172 ], [ 3, %if.then199 ], [ %cond225, %if.then212 ], [ 1, %init_error ], [ 0, %if.end38 ], [ 0, %if.then59 ], [ 1, %if.end66 ], [ 0, %if.end.cleanup228_crit_edge ], [ 0, %if.end200.cleanup228_crit_edge ], [ 0, %if.end205.cleanup228_crit_edge ], [ 0, %.loopexit ], [ 3, %sddr09_read_data.exit ], [ 3, %sddr09_read_data.exit.thread ], [ 3, %sddr09_write_data.exit.thread ], [ %cmp157, %sddr09_write_data.exit ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stor_sddr09_init(ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sddr09_common_init(ptr noundef %us)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stor_sddr09_dpcm_init(ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %call = tail call fastcc i32 @sddr09_common_init(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %2 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pipe.0.i = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i, i8 noundef zeroext 1, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %switch.selectcmp11.i = icmp eq i32 %call.i, 0
  br i1 %switch.selectcmp11.i, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %switch.selectcmp.i = icmp eq i32 %call.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -32, i32 -5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %conv = zext i8 %4 to i32
  %arrayidx5 = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv6) #11
  %7 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %pipe.0.i60 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i61 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i60, i8 noundef zeroext 8, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %switch.selectcmp11.i64 = icmp eq i32 %call.i61, 0
  br i1 %switch.selectcmp11.i64, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61)
  %switch.selectcmp.i62 = icmp eq i32 %call.i61, 2
  %switch.select.i63 = select i1 %switch.selectcmp.i62, i32 -32, i32 -5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv12 = zext i8 %9 to i32
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv14 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18, i32 noundef %conv12, i32 noundef %conv14) #11
  %12 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobuf, align 4
  %14 = getelementptr inbounds i8, ptr %13, i32 2
  %15 = call ptr @memset(ptr %14, i32 0, i32 10)
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %13, align 1
  %arrayidx1.i = getelementptr i8, ptr %13, i32 1
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 18, ptr %arrayidx2.i, align 1
  %send_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %19 = ptrtoint ptr %send_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %pipe.0.i.i.i = load i32, ptr %send_ctrl_pipe.i.i.i, align 4
  %call.i.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %13, i16 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %switch.selectcmp11.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %switch.selectcmp11.i.i.i, label %if.end.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %20 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call3.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %21, ptr noundef %1, i32 noundef 18, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end.i
  %arrayidx17 = getelementptr i8, ptr %1, i32 2
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp19.not = icmp eq i8 %23, 0
  br i1 %cmp19.not, label %land.lhs.true.cleanup_crit_edge, label %do.end.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.preheader:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %conv25 = zext i8 %25 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25) #14
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx5, align 1
  %conv25.1 = zext i8 %27 to i32
  %call26.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.1) #14
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx17, align 1
  %conv25.2 = zext i8 %29 to i32
  %call26.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.2) #14
  %arrayidx24.3 = getelementptr i8, ptr %1, i32 3
  %30 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx24.3, align 1
  %conv25.3 = zext i8 %31 to i32
  %call26.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.3) #14
  %arrayidx24.4 = getelementptr i8, ptr %1, i32 4
  %32 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx24.4, align 1
  %conv25.4 = zext i8 %33 to i32
  %call26.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.4) #14
  %arrayidx24.5 = getelementptr i8, ptr %1, i32 5
  %34 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx24.5, align 1
  %conv25.5 = zext i8 %35 to i32
  %call26.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.5) #14
  %arrayidx24.6 = getelementptr i8, ptr %1, i32 6
  %36 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx24.6, align 1
  %conv25.6 = zext i8 %37 to i32
  %call26.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.6) #14
  %arrayidx24.7 = getelementptr i8, ptr %1, i32 7
  %38 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx24.7, align 1
  %conv25.7 = zext i8 %39 to i32
  %call26.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.7) #14
  %arrayidx24.8 = getelementptr i8, ptr %1, i32 8
  %40 = ptrtoint ptr %arrayidx24.8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx24.8, align 1
  %conv25.8 = zext i8 %41 to i32
  %call26.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.8) #14
  %arrayidx24.9 = getelementptr i8, ptr %1, i32 9
  %42 = ptrtoint ptr %arrayidx24.9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx24.9, align 1
  %conv25.9 = zext i8 %43 to i32
  %call26.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.9) #14
  %arrayidx24.10 = getelementptr i8, ptr %1, i32 10
  %44 = ptrtoint ptr %arrayidx24.10 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx24.10, align 1
  %conv25.10 = zext i8 %45 to i32
  %call26.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.10) #14
  %arrayidx24.11 = getelementptr i8, ptr %1, i32 11
  %46 = ptrtoint ptr %arrayidx24.11 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx24.11, align 1
  %conv25.11 = zext i8 %47 to i32
  %call26.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.11) #14
  %arrayidx24.12 = getelementptr i8, ptr %1, i32 12
  %48 = ptrtoint ptr %arrayidx24.12 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx24.12, align 1
  %conv25.12 = zext i8 %49 to i32
  %call26.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.12) #14
  %arrayidx24.13 = getelementptr i8, ptr %1, i32 13
  %50 = ptrtoint ptr %arrayidx24.13 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx24.13, align 1
  %conv25.13 = zext i8 %51 to i32
  %call26.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.13) #14
  %arrayidx24.14 = getelementptr i8, ptr %1, i32 14
  %52 = ptrtoint ptr %arrayidx24.14 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx24.14, align 1
  %conv25.14 = zext i8 %53 to i32
  %call26.14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.14) #14
  %arrayidx24.15 = getelementptr i8, ptr %1, i32 15
  %54 = ptrtoint ptr %arrayidx24.15 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx24.15, align 1
  %conv25.15 = zext i8 %55 to i32
  %call26.15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.15) #14
  %arrayidx24.16 = getelementptr i8, ptr %1, i32 16
  %56 = ptrtoint ptr %arrayidx24.16 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx24.16, align 1
  %conv25.16 = zext i8 %57 to i32
  %call26.16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.16) #14
  %arrayidx24.17 = getelementptr i8, ptr %1, i32 17
  %58 = ptrtoint ptr %arrayidx24.17 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx24.17, align 1
  %conv25.17 = zext i8 %59 to i32
  %call26.17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv25.17) #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.preheader, %land.lhs.true.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then9, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.select.i, %if.then3 ], [ %switch.select.i63, %if.then9 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end.preheader ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sddr09_common_init(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pusb_dev = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %0 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusb_dev, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actconfig, align 4
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bConfigurationValue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13, i32 noundef %conv) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @usb_reset_configuration(ptr noundef %1) #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14, i32 noundef %call) #11
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call, label %if.then13 [
    i32 -32, label %if.then10
    i32 0, label %if.end.if.end15_crit_edge
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15) #11
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3328, i32 noundef 40) #18
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %extra, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %9 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sddr09_card_info_destructor, ptr %extra_destructor, align 4
  store i8 0, ptr @parity, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19
  %i.063.i = phi i32 [ 1, %if.end19 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nuw i32 %i.063.i, 2147483647
  %and.i = and i32 %sub.i, %i.063.i
  %arrayidx.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = xor i8 %11, 1
  %arrayidx2.i = getelementptr [256 x i8], ptr @parity, i32 0, i32 %i.063.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx2.i, align 1
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.cond7.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %14 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool37.not.i = icmp eq i8 %15, 0
  %cond.i = select i1 %tobool37.not.i, i32 0, i32 168
  %xor34.i = xor i32 %a.3.6.i, %cond.i
  %xor38.i = xor i32 %xor34.i, %shl33.i
  %16 = trunc i32 %xor38.i to i8
  %conv39.i = xor i8 %16, -1
  %arrayidx40.i = getelementptr [256 x i8], ptr @ecc2, i32 0, i32 %i.167.i
  %17 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv39.i, ptr %arrayidx40.i, align 1
  %inc42.i = add nuw nsw i32 %i.167.i, 1
  %exitcond69.not.i = icmp eq i32 %inc42.i, 256
  br i1 %exitcond69.not.i, label %for.cond7.preheader.i.cleanup_crit_edge, label %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge

for.cond7.preheader.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.cond7.preheader.i.cleanup_crit_edge:          ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.cond7.preheader.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then13, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then13 ], [ -12, %if.end15.cleanup_crit_edge ], [ 0, %for.cond7.preheader.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sddr09_card_info_destructor(ptr noundef readonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lba_to_pba = getelementptr inbounds %struct.sddr09_card_info, ptr %extra, i32 0, i32 6
  %0 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lba_to_pba, align 4
  tail call void @kfree(ptr noundef %1) #11
  %pba_to_lba = getelementptr inbounds %struct.sddr09_card_info, ptr %extra, i32 0, i32 7
  %2 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pba_to_lba, align 4
  tail call void @kfree(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ctrl_transfer(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_transport(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fill_inquiry_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_srb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sddr09_readX(ptr noundef %us, i32 noundef %x, i32 noundef %fromaddress, i32 noundef %nr_of_pages, i32 noundef %bulklen, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -24, ptr %1, align 1
  %3 = trunc i32 %x to i8
  %conv = or i8 %3, 32
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx1, align 1
  %shr = lshr i32 %fromaddress, 16
  %shr2 = lshr i32 %fromaddress, 24
  %conv3 = trunc i32 %shr2 to i8
  %arrayidx4 = getelementptr i8, ptr %1, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %arrayidx4, align 1
  %conv6 = trunc i32 %shr to i8
  %arrayidx7 = getelementptr i8, ptr %1, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %arrayidx7, align 1
  %shr9 = lshr i32 %fromaddress, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr i8, ptr %1, i32 4
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %arrayidx11, align 1
  %conv14 = trunc i32 %fromaddress to i8
  %arrayidx15 = getelementptr i8, ptr %1, i32 5
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %1, i32 6
  %9 = lshr i32 %nr_of_pages, 8
  %conv21 = trunc i32 %9 to i8
  %arrayidx22 = getelementptr i8, ptr %1, i32 10
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %arrayidx16, align 1
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv21, ptr %arrayidx22, align 1
  %conv24 = trunc i32 %nr_of_pages to i8
  %arrayidx25 = getelementptr i8, ptr %1, i32 11
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %arrayidx25, align 1
  %send_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %13 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pipe.0.i.i = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %pipe.0.i.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %switch.selectcmp11.i.i = icmp eq i32 %call.i.i, 0
  br i1 %switch.selectcmp11.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %call.i.i, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 -32, i32 -5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.86, i32 noundef %x, i32 noundef %switch.select.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %14 = ptrtoint ptr %recv_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recv_bulk_pipe, align 4
  %call26 = tail call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %15, ptr noundef %buf, i32 noundef %bulklen, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp.not = icmp eq i32 %call26, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.87, i32 noundef %x, i32 noundef %call26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %switch.select.i.i, %if.then ], [ -5, %if.then28 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_compute_ecc(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %ecc) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
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
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/sddr09.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/sddr09.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/sddr09.c", i32 49, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/sddr09.c", i32 50, i32 1}
!9 = !{ptr @__initcall__kmod_ums_sddr09__307_1790_sddr09_driver_init6, !10, !"__initcall__kmod_ums_sddr09__307_1790_sddr09_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/sddr09.c", i32 1790, i32 1}
!11 = !{ptr @__exitcall_sddr09_driver_exit, !10, !"__exitcall_sddr09_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sddr09_host_template, !15, !"sddr09_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/sddr09.c", i32 1746, i32 34}
!16 = !{ptr @sddr09_driver, !17, !"sddr09_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/sddr09.c", i32 1776, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/sddr09.c", i32 1761, i32 24}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/sddr09.c", i32 1766, i32 24}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/unusual_sddr09.h", i32 9, i32 1}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/unusual_sddr09.h", i32 14, i32 1}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/unusual_sddr09.h", i32 21, i32 1}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/unusual_sddr09.h", i32 27, i32 1}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/unusual_sddr09.h", i32 33, i32 1}
!36 = !{ptr @sddr09_unusual_dev_list, !37, !"sddr09_unusual_dev_list", i1 false, i1 false}
!37 = !{!"../drivers/usb/storage/sddr09.c", i32 88, i32 30}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/sddr09.c", i32 1416, i32 20}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/sddr09.c", i32 1422, i32 19}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/sddr09.c", i32 1424, i32 20}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/sddr09.c", i32 1427, i32 20}
!46 = !{ptr @parity, !47, !"parity", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/sddr09.c", i32 185, i32 22}
!48 = !{ptr @ecc2, !49, !"ecc2", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/sddr09.c", i32 186, i32 22}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/sddr09.c", i32 1457, i32 20}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/sddr09.c", i32 1461, i32 19}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/sddr09.c", i32 1466, i32 20}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/sddr09.c", i32 1477, i32 4}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @usb_stor_sddr09_dpcm_init._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @usb_stor_sddr09_dpcm_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/sddr09.c", i32 1478, i32 3}
!64 = !{ptr @usb_stor_sddr09_dpcm_init._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @usb_stor_sddr09_dpcm_init._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/sddr09.c", i32 1500, i32 19}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/sddr09.c", i32 1526, i32 23}
!70 = !{ptr @sddr09_transport.sensekey, !71, !"sensekey", i1 false, i1 false}
!71 = !{!"../drivers/usb/storage/sddr09.c", i32 1539, i32 23}
!72 = !{ptr @sddr09_transport.sensecode, !73, !"sensecode", i1 false, i1 false}
!73 = !{!"../drivers/usb/storage/sddr09.c", i32 1539, i32 37}
!74 = distinct !{null, !75, !"havefakesense", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/sddr09.c", i32 1540, i32 23}
!76 = distinct !{null, !77, !"inquiry_response", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/sddr09.c", i32 1548, i32 23}
!78 = !{ptr @sddr09_transport.mode_page_01, !79, !"mode_page_01", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/sddr09.c", i32 1553, i32 23}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/sddr09.c", i32 1636, i32 21}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/storage/sddr09.c", i32 1663, i32 20}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/sddr09.c", i32 1678, i32 20}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/sddr09.c", i32 1705, i32 28}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/sddr09.c", i32 1707, i32 19}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/sddr09.c", i32 1711, i32 20}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/storage/sddr09.c", i32 1724, i32 20}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/storage/sddr09.c", i32 1726, i32 9}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/storage/sddr09.c", i32 1726, i32 21}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/storage/sddr09.c", i32 1101, i32 20}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/storage/sddr09.c", i32 1106, i32 12}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/storage/sddr09.c", i32 1108, i32 12}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/storage/sddr09.c", i32 1110, i32 19}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/storage/sddr09.c", i32 1111, i32 24}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/storage/sddr09.c", i32 1112, i32 27}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/storage/sddr09.c", i32 1113, i32 24}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/storage/sddr09.c", i32 715, i32 19}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/storage/sddr09.c", i32 1143, i32 19}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/storage/sddr09.c", i32 1148, i32 20}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/storage/sddr09.c", i32 1149, i32 3}
!120 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sddr09_get_cardinfo._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @sddr09_get_cardinfo._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/storage/sddr09.c", i32 1153, i32 20}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/storage/sddr09.c", i32 1157, i32 3}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/storage/sddr09.c", i32 1169, i32 4}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/storage/sddr09.c", i32 1172, i32 4}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/storage/sddr09.c", i32 1178, i32 4}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/storage/sddr09.c", i32 1184, i32 4}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/storage/sddr09.c", i32 1189, i32 4}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/storage/sddr09.c", i32 1191, i32 2}
!139 = !{ptr @sddr09_get_cardinfo._entry.56, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sddr09_get_cardinfo._entry_ptr.58, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/storage/sddr09.c", i32 128, i32 10}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/storage/sddr09.c", i32 130, i32 10}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/storage/sddr09.c", i32 132, i32 10}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/storage/sddr09.c", i32 134, i32 10}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/storage/sddr09.c", i32 136, i32 10}
!151 = !{ptr @nand_flash_ids, !152, !"nand_flash_ids", i1 false, i1 false}
!152 = !{!"../drivers/usb/storage/sddr09.c", i32 147, i32 30}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/storage/sddr09.c", i32 1239, i32 3}
!155 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @sddr09_read_map._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @sddr09_read_map._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/storage/sddr09.c", i32 1279, i32 3}
!160 = !{ptr @sddr09_read_map._entry.66, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sddr09_read_map._entry_ptr.68, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/storage/sddr09.c", i32 1293, i32 4}
!164 = !{ptr @sddr09_read_map._entry.69, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sddr09_read_map._entry_ptr.71, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/storage/sddr09.c", i32 1304, i32 4}
!168 = !{ptr @sddr09_read_map._entry.72, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sddr09_read_map._entry_ptr.74, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/storage/sddr09.c", i32 1314, i32 4}
!172 = !{ptr @sddr09_read_map._entry.75, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @sddr09_read_map._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/storage/sddr09.c", i32 1334, i32 4}
!176 = !{ptr @sddr09_read_map._entry.78, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @sddr09_read_map._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/storage/sddr09.c", i32 1343, i32 4}
!180 = !{ptr @sddr09_read_map._entry.81, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @sddr09_read_map._entry_ptr.83, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/storage/sddr09.c", i32 1385, i32 19}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/storage/sddr09.c", i32 1053, i32 19}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/storage/sddr09.c", i32 412, i32 20}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/storage/sddr09.c", i32 421, i32 20}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/storage/sddr09.c", i32 775, i32 21}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/storage/sddr09.c", i32 786, i32 21}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/storage/sddr09.c", i32 799, i32 21}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/storage/sddr09.c", i32 871, i32 4}
!198 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sddr09_write_lba._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @sddr09_write_lba._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/storage/sddr09.c", i32 884, i32 3}
!203 = !{ptr @sddr09_write_lba._entry.93, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @sddr09_write_lba._entry_ptr.95, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/storage/sddr09.c", i32 903, i32 21}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/storage/sddr09.c", i32 909, i32 21}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/storage/sddr09.c", i32 930, i32 19}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/storage/sddr09.c", i32 935, i32 19}
!213 = !{ptr @sddr09_find_unused_pba.lastpba, !214, !"lastpba", i1 false, i1 false}
!214 = !{!"../drivers/usb/storage/sddr09.c", i32 826, i32 22}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/storage/sddr09.c", i32 483, i32 19}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/storage/sddr09.c", i32 597, i32 20}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/storage/sddr09.c", i32 606, i32 20}
!221 = !{ptr @sddr09_usb_ids, !222, !"sddr09_usb_ids", i1 false, i1 false}
!222 = !{!"../drivers/usb/storage/sddr09.c", i32 66, i32 29}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{!"auto-init"}
!233 = !{!"branch_weights", i32 1, i32 2000}
