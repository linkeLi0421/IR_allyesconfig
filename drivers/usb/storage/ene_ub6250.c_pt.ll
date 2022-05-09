; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/ene_ub6250.c_pt.bc'
source_filename = "../drivers/usb/storage/ene_ub6250.c"
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
%struct.bulk_cb_wrap = type { i32, i32, i32, i8, i8, i8, [16 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.ene_ub6250_info = type { ptr, %struct.SD_STATUS, %struct.MS_STATUS, %struct.SM_STATUS, i16, i8, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, %struct.ms_lib_ctrl, i8, i16, i8, i8, ptr, i8, i32, i32, i8 }
%struct.SD_STATUS = type { i8 }
%struct.MS_STATUS = type { i8 }
%struct.SM_STATUS = type { i8 }
%struct.ms_lib_ctrl = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, [4 x ptr], ptr, ptr, [512 x i8] }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ms_lib_type_extdat = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.ms_bootblock_header = type { i16, i16, [184 x i8], i8, [179 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.bulk_cs_wrap = type { i32, i32, i32, i8 }
%struct.ms_bootblock_page0 = type { %struct.ms_bootblock_header, %struct.ms_bootblock_sysent, %struct.ms_bootblock_sysinf }
%struct.ms_bootblock_sysent = type { [4 x %struct.ms_bootblock_sysent_rec] }
%struct.ms_bootblock_sysent_rec = type { i32, i32, i8, [3 x i8] }
%struct.ms_bootblock_sysinf = type { i8, i8, i16, i16, i16, i16, i8, i8, [8 x i8], [4 x i8], i8, [3 x i8], i16, i16, i16, i8, i8, i8, i8, i16, i16, [9 x i8], i8, i16, i8, i8, i8, [22 x i8], i8, i8, [15 x i8] }
%struct.ms_bootblock_cis_idi = type { %union.anon.83, %union.anon.84 }
%union.anon.83 = type { [256 x i8] }
%union.anon.84 = type { %struct.ms_bootblock_idi }
%struct.ms_bootblock_idi = type { i16, i16, i16, i16, i16, i16, i16, [2 x i16], [11 x i16], i16, i16, i16, [4 x i16], [20 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], i16, [2 x i16], i16, i16, [192 x i16] }

@__UNIQUE_ID_description290 = internal constant [55 x i8] c"ums_eneub6250.description=Driver for ENE UB6250 reader\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [53 x i8] c"ums_eneub6250.file=drivers/usb/storage/ums-eneub6250\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"ums_eneub6250.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [36 x i8] c"ums_eneub6250.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [47 x i8] c"ums_eneub6250.firmware=ene-ub6250/sd_init1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [47 x i8] c"ums_eneub6250.firmware=ene-ub6250/sd_init2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [46 x i8] c"ums_eneub6250.firmware=ene-ub6250/sd_rdwr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [46 x i8] c"ums_eneub6250.firmware=ene-ub6250/ms_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [47 x i8] c"ums_eneub6250.firmware=ene-ub6250/msp_rdwr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [46 x i8] c"ums_eneub6250.firmware=ene-ub6250/ms_rdwr.bin\00", section ".modinfo", align 1
@__initcall__kmod_ums_eneub6250__304_2444_ene_ub6250_driver_init6 = internal global ptr @ene_ub6250_driver_init, section ".initcall6.init", align 4
@ene_ub6250_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ene_ub6250_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @ene_ub6250_resume, ptr @ene_ub6250_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @ene_ub6250_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ene_ub6250_driver_exit = internal global ptr @ene_ub6250_driver_exit, section ".exitcall.exit", align 4
@ene_ub6250_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ums_eneub6250\00", [18 x i8] zeroinitializer }, align 32
@ene_ub6250_usb_ids = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 3314, i16 25168, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ene_ub6250_unusual_dev_list = internal global { [2 x %struct.us_unusual_dev], [32 x i8] } { [2 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ene_ub6250\00", [21 x i8] zeroinitializer }, align 32
@ene_ub6250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016ums_eneub6250: This driver only supports SD/MS cards. It does not support SM cards.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ene_ub6250_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/storage/ene_ub6250.c\00", [63 x i8] zeroinitializer }, align 32
@ene_ub6250_probe._entry_ptr = internal global ptr @ene_ub6250_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ENE\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ENE UB6250 reader\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"transport --- ENE_SDInit\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Load SD Init Code Part-1 Fail !!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Execution SD Init Code Fail !!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Load SD Init Code Part-2 Fail !!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Insert     = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ready      = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IsMMC      = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HiCapacity = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HiSpeed    = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WtP        = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SD Card Not Ready --- %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SD_INIT1_PATTERN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ene-ub6250/sd_init1.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SD_INIT2_PATTERN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ene-ub6250/sd_init2.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SD_RW_PATTERN\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ene-ub6250/sd_rdwr.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MS_INIT_PATTERN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ene-ub6250/ms_init.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSP_RW_PATTERN\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ene-ub6250/msp_rdwr.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MS_RW_PATTERN\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ene-ub6250/ms_rdwr.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"----------- Unknown PATTERN ----------\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"load firmware %s failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"send cmd to out endpoint fail ---\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data transfer fail ---\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Received 0-length CSW; retrying...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Attempting to get CSW (2nd try)...\0A\00", [60 x i8] zeroinitializer }, align 32
@ene_ms_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 2080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016transport --- ENE_MSInit\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ene_ms_init\00", [20 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr = internal global ptr @ene_ms_init._entry, section ".printk_index", align 4
@ene_ms_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 2086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Load MS Init Code Fail !!\0A\00", [35 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.40 = internal global ptr @ene_ms_init._entry.38, section ".printk_index", align 4
@ene_ms_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Execution MS Init Code Fail !!\0A\00", [62 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.43 = internal global ptr @ene_ms_init._entry.41, section ".printk_index", align 4
@ene_ms_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.4, i32 2106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016Insert     = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.46 = internal global ptr @ene_ms_init._entry.44, section ".printk_index", align 4
@ene_ms_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.4, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016Ready      = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.49 = internal global ptr @ene_ms_init._entry.47, section ".printk_index", align 4
@ene_ms_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.4, i32 2108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016IsMSPro    = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.52 = internal global ptr @ene_ms_init._entry.50, section ".printk_index", align 4
@ene_ms_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.4, i32 2109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016IsMSPHG    = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.55 = internal global ptr @ene_ms_init._entry.53, section ".printk_index", align 4
@ene_ms_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.37, ptr @.str.4, i32 2110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016WtP= %x\0A\00", [21 x i8] zeroinitializer }, align 32
@ene_ms_init._entry_ptr.58 = internal global ptr @ene_ms_init._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MS Init Code OK !!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MS Card Not Ready --- %x\0A\00", [38 x i8] zeroinitializer }, align 32
@ms_card_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016MS_CardInit start\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms_card_init\00", [19 x i8] zeroinitializer }, align 32
@ms_card_init._entry_ptr = internal global ptr @ms_card_init._entry, section ".printk_index", align 4
@ms_card_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016MS_CardInit end\0A\00", [45 x i8] zeroinitializer }, align 32
@ms_card_init._entry_ptr.65 = internal global ptr @ms_card_init._entry.63, section ".printk_index", align 4
@__const.do_scsi_inquiry.data_ptr = private unnamed_addr constant [36 x i8] c"\00\00\02\00\1F\00\00\00USB2.0  CardReader      0100", align 1
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sd_scsi_read_capacity\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bl_len = %x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bl_num = %x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Load SD RW pattern Fail !!\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.ms_scsi_mode_sense.mediaNoWP = private unnamed_addr constant [12 x i8] c"\0B\00\00\08\00\00q\C0\00\00\02\00", align 1
@__const.ms_scsi_mode_sense.mediaWP = private unnamed_addr constant [12 x i8] c"\0B\00\80\08\00\00q\C0\00\00\02\00", align 1
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ms_scsi_read_capacity\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Load MPS RW pattern Fail !!\0A\00", [35 x i8] zeroinitializer }, align 32
@ms_scsi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Load MS RW pattern Fail !!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms_scsi_read\00", [19 x i8] zeroinitializer }, align 32
@ms_scsi_read._entry_ptr = internal global ptr @ms_scsi_read._entry, section ".printk_index", align 4
@ms_scsi_read._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.4, i32 1718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016MS_SCSI_Read --- result = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@ms_scsi_read._entry_ptr.76 = internal global ptr @ms_scsi_read._entry.74, section ".printk_index", align 4
@ms_scsi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Load MSP RW pattern Fail !!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ms_scsi_write\00", [18 x i8] zeroinitializer }, align 32
@ms_scsi_write._entry_ptr = internal global ptr @ms_scsi_write._entry, section ".printk_index", align 4
@ms_scsi_write._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.78, ptr @.str.4, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ms_scsi_write._entry_ptr.80 = internal global ptr @ms_scsi_write._entry.79, section ".printk_index", align 4
@ms_scsi_write._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.78, ptr @.str.4, i32 1808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016MS_SCSI_Write --- result = %x\0A\00", [63 x i8] zeroinitializer }, align 32
@ms_scsi_write._entry_ptr.83 = internal global ptr @ms_scsi_write._entry.81, section ".printk_index", align 4
@switch.table.ene_load_bincode = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28], [40 x i8] zeroinitializer }, align 32
@switch.table.ene_load_bincode.84 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 3, i64 18, i64 26, i64 37, i64 40, i64 42]
@__sancov_gen_cov_switch_values.85 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 3, i64 18, i64 26, i64 37, i64 40, i64 42]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 65525, i64 65535]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65534]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65530]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 65525, i64 65535]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"ene_ub6250_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2430, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"ene_ub6250_host_template\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2323, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2444, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"ene_ub6250_usb_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 46, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"ene_ub6250_unusual_dev_list\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 68, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2352, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2369, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [44 x i8] c"../drivers/usb/storage/unusual_ene_ub6250.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 5, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2134, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2138, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2149, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2156, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2177, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2178, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2179, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2180, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2181, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2182, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2184, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1896, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1897, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1900, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1901, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1904, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1905, i32 13 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1909, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1910, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1913, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1914, i32 13 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1917, i32 20 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1918, i32 13 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1921, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1927, i32 20 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 508, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 528, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 538, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 545, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2080, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2086, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2099, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2106, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2107, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2108, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2109, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2110, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2118, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2120, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1961, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2068, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 643, i32 19 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 656, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 657, i32 19 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 692, i32 20 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1496, i32 19 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1656, i32 21 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1687, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1718, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1757, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1788, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [36 x i8] c"../drivers/usb/storage/ene_ub6250.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1808, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant [30 x i8] c"switch.table.ene_load_bincode\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [33 x i8] c"switch.table.ene_load_bincode.84\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ene_ub6250_driver_exit, ptr @__initcall__kmod_ums_eneub6250__304_2444_ene_ub6250_driver_init6, ptr @ene_ms_init._entry, ptr @ene_ms_init._entry.38, ptr @ene_ms_init._entry.41, ptr @ene_ms_init._entry.44, ptr @ene_ms_init._entry.47, ptr @ene_ms_init._entry.50, ptr @ene_ms_init._entry.53, ptr @ene_ms_init._entry.56, ptr @ene_ms_init._entry_ptr, ptr @ene_ms_init._entry_ptr.40, ptr @ene_ms_init._entry_ptr.43, ptr @ene_ms_init._entry_ptr.46, ptr @ene_ms_init._entry_ptr.49, ptr @ene_ms_init._entry_ptr.52, ptr @ene_ms_init._entry_ptr.55, ptr @ene_ms_init._entry_ptr.58, ptr @ene_ub6250_driver_exit, ptr @ene_ub6250_probe._entry, ptr @ene_ub6250_probe._entry_ptr, ptr @ms_card_init._entry, ptr @ms_card_init._entry.63, ptr @ms_card_init._entry_ptr, ptr @ms_card_init._entry_ptr.65, ptr @ms_scsi_read._entry, ptr @ms_scsi_read._entry.74, ptr @ms_scsi_read._entry_ptr, ptr @ms_scsi_read._entry_ptr.76, ptr @ms_scsi_write._entry, ptr @ms_scsi_write._entry.79, ptr @ms_scsi_write._entry.81, ptr @ms_scsi_write._entry_ptr, ptr @ms_scsi_write._entry_ptr.80, ptr @ms_scsi_write._entry_ptr.83, ptr @ene_ub6250_driver, ptr @ene_ub6250_host_template, ptr @.str, ptr @ene_ub6250_usb_ids, ptr @ene_ub6250_unusual_dev_list, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.82, ptr @switch.table.ene_load_bincode, ptr @switch.table.ene_load_bincode.84], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ub6250_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ub6250_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ub6250_usb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ub6250_unusual_dev_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ub6250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_ms_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_card_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_card_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_scsi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_scsi_read._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_scsi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_scsi_write._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_scsi_write._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ene_load_bincode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ene_load_bincode.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ene_ub6250_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @ene_ub6250_host_template, ptr noundef nonnull @.str, ptr noundef null) #9
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ene_ub6250_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ene_ub6250_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @ene_ub6250_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ene_ub6250_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #9
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !188
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @ene_ub6250_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @ene_ub6250_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @ene_ub6250_host_template) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 636) #12
  %2 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %us, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %extra, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 36
  %5 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ene_ub6250_info_destructor, ptr %extra_destructor, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 512) #12
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %call7.i.i, align 8
  %tobool9.not = icmp eq ptr %call7.i, null
  %8 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %us, align 4
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %extra11 = getelementptr inbounds %struct.us_data, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %extra11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extra11, align 4
  call void @kfree(ptr noundef %11) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %transport_name = getelementptr inbounds %struct.us_data, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %transport_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.1, ptr %transport_name, align 4
  %transport = getelementptr inbounds %struct.us_data, ptr %9, i32 0, i32 19
  %13 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ene_transport, ptr %transport, align 4
  %max_lun = getelementptr inbounds %struct.us_data, ptr %9, i32 0, i32 16
  %14 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %max_lun, align 2
  %call13 = call i32 @usb_stor_probe2(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %us, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %16, i32 0, i32 28
  %19 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobuf.i, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 28)
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1431519811, ptr %20, align 4
  %DataTransferLength.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %DataTransferLength.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %DataTransferLength.i, align 4
  %Flags.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %Flags.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -128, ptr %Flags.i, align 4
  %CDB.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %20, i32 0, i32 6
  %26 = ptrtoint ptr %CDB.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -19, ptr %CDB.i, align 1
  %arrayidx3.i = getelementptr %struct.bulk_cb_wrap, ptr %20, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx3.i, align 1
  %arrayidx6.i = getelementptr %struct.bulk_cb_wrap, ptr %20, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -125, ptr %arrayidx6.i, align 1
  %call.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %16, i8 noundef zeroext 1, ptr noundef %18, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_stor_disconnect(ptr noundef %intf) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not = icmp eq i8 %33, 0
  br i1 %tobool22.not, label %do.end, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end20.cleanup_crit_edge, %if.then19, %if.end12.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then19 ], [ -12, %if.then10 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ene_ub6250_resume(ptr nocapture noundef readonly %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %suspend_resume_hook = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %suspend_resume_hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend_resume_hook, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %1, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #9
  %Power_IsResum = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %Power_IsResum to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %Power_IsResum, align 4
  %SD_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %SD_Status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %SD_Status, align 4
  %MS_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %MS_Status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %MS_Status, align 1
  %SM_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %SM_Status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %SM_Status, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ene_ub6250_reset_resume(ptr noundef %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %call1 = tail call i32 @usb_stor_reset_resume(ptr noundef %iface) #9
  %Power_IsResum = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %Power_IsResum to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Power_IsResum, align 4
  %SD_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %SD_Status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %SD_Status, align 4
  %MS_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %MS_Status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %MS_Status, align 1
  %SM_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %SM_Status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %SM_Status, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_pre_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_post_reset(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ene_ub6250_info_destructor(ptr noundef readonly %extra) #2 align 64 {
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
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  tail call void @kfree(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ene_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %offset.i.i37 = alloca i32, align 4
  %buf.i35.i38 = alloca [8 x i8], align 1
  %sg.i.i39 = alloca ptr, align 4
  %mediaNoWP.i.i40 = alloca [12 x i8], align 1
  %mediaWP.i.i41 = alloca [12 x i8], align 1
  %data_ptr.i.i42 = alloca [36 x i8], align 1
  %buf.i.i43 = alloca [18 x i8], align 1
  %offset.i.i = alloca i32, align 4
  %buf.i35.i = alloca [8 x i8], align 1
  %sg.i.i = alloca ptr, align 4
  %mediaNoWP.i.i = alloca [12 x i8], align 1
  %mediaWP.i.i = alloca [12 x i8], align 1
  %data_ptr.i.i = alloca [36 x i8], align 1
  %buf.i.i = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %2 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %resid_len.i, align 4
  %SD_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %SD_Status, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then10_crit_edge

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.rhs:                                          ; preds = %entry
  %MS_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load1 = load i8, ptr %MS_Status, align 1
  %6 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5 = icmp eq i8 %6, 0
  br i1 %tobool5, label %if.end, label %lor.rhs.if.then10_crit_edge, !prof !189

lor.rhs.if.then10_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.end:                                           ; preds = %lor.rhs
  %call = tail call fastcc i32 @ene_init(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.if.then10_crit_edge, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %lor.rhs.if.then10_crit_edge, %entry.if.then10_crit_edge
  %7 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load12 = load i8, ptr %SD_Status, align 4
  %8 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.then10.if.end18_crit_edge, label %if.then16

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.then10
  %9 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extra, align 4
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
    i8 0, label %sw.bb.i
    i8 3, label %sw.bb1.i
    i8 18, label %sw.bb3.i
    i8 26, label %sw.bb5.i
    i8 37, label %sw.bb7.i
    i8 40, label %sw.bb9.i
    i8 42, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.then16
  %SD_Status.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %SD_Status.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %SD_Status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i.i)
  %.not.i.i = icmp ugt i8 %bf.load.i.i, -65
  br i1 %.not.i.i, label %sw.bb.i.if.then.i_crit_edge, label %if.else.i.i

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call fastcc i32 @ene_sd_init(ptr noundef %us) #9
  br label %if.then.i

sw.bb1.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf.i.i) #9
  %17 = getelementptr inbounds [18 x i8], ptr %buf.i.i, i32 0, i32 2
  %18 = getelementptr inbounds [18 x i8], ptr %buf.i.i, i32 0, i32 7
  %19 = getelementptr inbounds [18 x i8], ptr %buf.i.i, i32 0, i32 12
  %20 = getelementptr inbounds [18 x i8], ptr %buf.i.i, i32 0, i32 13
  %21 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %22 = call ptr @memset(ptr %21, i32 0, i32 17)
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %buf.i.i, align 1
  %SrbStatus.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 25
  %24 = ptrtoint ptr %SrbStatus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %SrbStatus.i.i, align 4
  %26 = lshr i32 %25, 16
  %conv.i.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.i, ptr %17, align 1
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %18, align 1
  %29 = lshr i32 %25, 8
  %conv5.i.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv5.i.i, ptr %19, align 1
  %conv8.i.i = trunc i32 %25 to i8
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv8.i.i, ptr %20, align 1
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %buf.i.i, i32 noundef 18, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf.i.i) #9
  br label %if.then.i

sw.bb3.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data_ptr.i.i) #9
  %32 = call ptr @memcpy(ptr %data_ptr.i.i, ptr @__const.do_scsi_inquiry.data_ptr, i32 36)
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %data_ptr.i.i, i32 noundef 36, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data_ptr.i.i) #9
  br label %if.then.i

sw.bb5.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mediaNoWP.i.i) #9
  %33 = call ptr @memcpy(ptr %mediaNoWP.i.i, ptr @__const.ms_scsi_mode_sense.mediaNoWP, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mediaWP.i.i) #9
  %34 = call ptr @memcpy(ptr %mediaWP.i.i, ptr @__const.ms_scsi_mode_sense.mediaWP, i32 12)
  %SD_Status.i33.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 1
  %35 = ptrtoint ptr %SD_Status.i33.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i34.i = load i8, ptr %SD_Status.i33.i, align 4
  %36 = and i8 %bf.load.i34.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  %mediaNoWP.mediaWP.i.i = select i1 %tobool.not.i.i, ptr %mediaNoWP.i.i, ptr %mediaWP.i.i
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %mediaNoWP.mediaWP.i.i, i32 noundef 12, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mediaWP.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mediaNoWP.i.i) #9
  br label %if.then.i

sw.bb7.i:                                         ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i.i) #9
  %37 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %offset.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i35.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i.i) #9
  %38 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %sg.i.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.66) #9
  %SD_Status.i37.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 1
  %39 = ptrtoint ptr %SD_Status.i37.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i38.i = load i8, ptr %SD_Status.i37.i, align 4
  %40 = and i8 %bf.load.i38.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i39.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i39.i, label %if.else9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb7.i
  %41 = and i8 %bf.load.i38.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool5.not.i.i = icmp eq i8 %41, 0
  %HC_C_SIZE7.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 11
  %42 = ptrtoint ptr %HC_C_SIZE7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %HC_C_SIZE7.i.i, align 4
  br i1 %tobool5.not.i.i, label %if.else.i40.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %43, -1
  br label %sd_scsi_read_capacity.exit.i

if.else.i40.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = shl i32 %43, 10
  %sub8.i.i = or i32 %add.i.i, 1023
  br label %sd_scsi_read_capacity.exit.i

if.else9.i.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  %SD_READ_BL_LEN.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 5
  %44 = ptrtoint ptr %SD_READ_BL_LEN.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %SD_READ_BL_LEN.i.i, align 2
  %conv.i41.i = zext i8 %45 to i32
  %shl.i.i = shl nuw i32 1, %conv.i41.i
  %SD_Block_Mult.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 4
  %46 = ptrtoint ptr %SD_Block_Mult.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %SD_Block_Mult.i.i, align 4
  %conv10.i.i = zext i16 %47 to i32
  %SD_C_SIZE.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 6
  %48 = ptrtoint ptr %SD_C_SIZE.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %SD_C_SIZE.i.i, align 4
  %conv11.i.i = zext i16 %49 to i32
  %add12.i.i = add nuw nsw i32 %conv11.i.i, 1
  %mul13.i.i = mul nuw i32 %add12.i.i, %conv10.i.i
  %SD_C_SIZE_MULT.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 7
  %50 = ptrtoint ptr %SD_C_SIZE_MULT.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %SD_C_SIZE_MULT.i.i, align 2
  %conv14.i.i = zext i8 %51 to i32
  %shl16.i.i = shl i32 4, %conv14.i.i
  %mul17.i.i = mul i32 %mul13.i.i, %shl16.i.i
  %sub18.i.i = add i32 %mul17.i.i, -1
  br label %sd_scsi_read_capacity.exit.i

sd_scsi_read_capacity.exit.i:                     ; preds = %if.else9.i.i, %if.else.i40.i, %if.then6.i.i
  %bl_num.0.i.i = phi i32 [ %sub.i.i, %if.then6.i.i ], [ %sub8.i.i, %if.else.i40.i ], [ %sub18.i.i, %if.else9.i.i ]
  %bl_len.0.i.i = phi i32 [ 512, %if.then6.i.i ], [ 512, %if.else.i40.i ], [ %shl.i.i, %if.else9.i.i ]
  %52 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 7
  %53 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 6
  %54 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 5
  %55 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 4
  %56 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 3
  %57 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 2
  %58 = getelementptr inbounds [8 x i8], ptr %buf.i35.i, i32 0, i32 1
  %bl_num20.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 24
  %59 = ptrtoint ptr %bl_num20.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %bl_num.0.i.i, ptr %bl_num20.i.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.67, i32 noundef %bl_len.0.i.i) #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.68, i32 noundef %bl_num.0.i.i) #9
  %shr.i.i = lshr i32 %bl_num.0.i.i, 24
  %conv21.i.i = trunc i32 %shr.i.i to i8
  %60 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv21.i.i, ptr %buf.i35.i, align 1
  %shr22.i.i = lshr i32 %bl_num.0.i.i, 16
  %conv24.i.i = trunc i32 %shr22.i.i to i8
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv24.i.i, ptr %58, align 1
  %shr26.i.i = lshr i32 %bl_num.0.i.i, 8
  %conv28.i.i = trunc i32 %shr26.i.i to i8
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv28.i.i, ptr %57, align 1
  %conv32.i.i = trunc i32 %bl_num.0.i.i to i8
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv32.i.i, ptr %56, align 1
  %shr34.i.i = lshr i32 %bl_len.0.i.i, 24
  %conv36.i.i = trunc i32 %shr34.i.i to i8
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv36.i.i, ptr %55, align 1
  %shr38.i.i = lshr i32 %bl_len.0.i.i, 16
  %conv40.i.i = trunc i32 %shr38.i.i to i8
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv40.i.i, ptr %54, align 1
  %shr42.i.i = lshr i32 %bl_len.0.i.i, 8
  %conv44.i.i = trunc i32 %shr42.i.i to i8
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv44.i.i, ptr %53, align 1
  %conv48.i.i = trunc i32 %bl_len.0.i.i to i8
  %67 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv48.i.i, ptr %52, align 1
  %call.i42.i = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %buf.i35.i, i32 noundef 8, ptr noundef %srb, ptr noundef nonnull %sg.i.i, ptr noundef nonnull %offset.i.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i35.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i.i) #9
  br label %if.then.i

sw.bb9.i:                                         ; preds = %if.then16
  %iobuf.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %68 = ptrtoint ptr %iobuf.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iobuf.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %12, i32 2
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i44.i = zext i8 %71 to i32
  %shl.i45.i = shl nuw i32 %conv.i44.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %12, i32 3
  %72 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %73 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i45.i
  %arrayidx5.i.i = getelementptr i8, ptr %12, i32 4
  %74 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx5.i.i, align 1
  %conv6.i.i = zext i8 %75 to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i, 8
  %or9.i.i = or i32 %or.i.i, %shl7.i.i
  %arrayidx10.i.i = getelementptr i8, ptr %12, i32 5
  %76 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i46.i = zext i8 %77 to i32
  %or14.i.i = or i32 %or9.i.i, %conv11.i46.i
  %arrayidx15.i.i = getelementptr i8, ptr %12, i32 7
  %78 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %79 to i32
  %arrayidx19.i.i = getelementptr i8, ptr %12, i32 8
  %80 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %81 to i32
  %mul.i.i = shl i32 %or14.i.i, 9
  %82 = shl nuw nsw i32 %conv16.i.i, 17
  %83 = shl nuw nsw i32 %conv20.i.i, 9
  %mul26.i.i = or i32 %83, %82
  %bl_num.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 24
  %84 = ptrtoint ptr %bl_num.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bl_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or14.i.i, i32 %85)
  %cmp.i.i = icmp ugt i32 %or14.i.i, %85
  br i1 %cmp.i.i, label %sw.bb9.i.if.end18_crit_edge, label %if.end.i.i

sw.bb9.i.if.end18_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end.i.i:                                       ; preds = %sw.bb9.i
  %call.i47.i = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp28.not.i.i = icmp eq i32 %call.i47.i, 0
  br i1 %cmp28.not.i.i, label %if.end31.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.69) #9
  br label %if.end18

if.end31.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %SD_Status.i48.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 1
  %86 = ptrtoint ptr %SD_Status.i48.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i49.i = load i8, ptr %SD_Status.i48.i, align 4
  %87 = and i8 %bf.load.i49.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i50.i = icmp eq i8 %87, 0
  %spec.select.i.i = select i1 %tobool.not.i50.i, i32 %mul.i.i, i32 %or14.i.i
  %88 = getelementptr inbounds i8, ptr %69, i32 4
  %89 = call ptr @memset(ptr %88, i32 0, i32 28)
  %90 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1431519811, ptr %69, align 4
  %DataTransferLength.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %69, i32 0, i32 2
  %91 = ptrtoint ptr %DataTransferLength.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul26.i.i, ptr %DataTransferLength.i.i, align 4
  %Flags.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %69, i32 0, i32 3
  %92 = ptrtoint ptr %Flags.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -128, ptr %Flags.i.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then16
  %iobuf.i53.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %93 = ptrtoint ptr %iobuf.i53.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iobuf.i53.i, align 4
  %arrayidx.i55.i = getelementptr i8, ptr %12, i32 2
  %95 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i55.i, align 1
  %conv.i56.i = zext i8 %96 to i32
  %shl.i57.i = shl nuw i32 %conv.i56.i, 24
  %arrayidx1.i58.i = getelementptr i8, ptr %12, i32 3
  %97 = ptrtoint ptr %arrayidx1.i58.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx1.i58.i, align 1
  %conv2.i59.i = zext i8 %98 to i32
  %shl3.i60.i = shl nuw nsw i32 %conv2.i59.i, 16
  %or.i61.i = or i32 %shl3.i60.i, %shl.i57.i
  %arrayidx5.i62.i = getelementptr i8, ptr %12, i32 4
  %99 = ptrtoint ptr %arrayidx5.i62.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx5.i62.i, align 1
  %conv6.i63.i = zext i8 %100 to i32
  %shl7.i64.i = shl nuw nsw i32 %conv6.i63.i, 8
  %or9.i65.i = or i32 %or.i61.i, %shl7.i64.i
  %arrayidx10.i66.i = getelementptr i8, ptr %12, i32 5
  %101 = ptrtoint ptr %arrayidx10.i66.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx10.i66.i, align 1
  %conv11.i67.i = zext i8 %102 to i32
  %or14.i68.i = or i32 %or9.i65.i, %conv11.i67.i
  %arrayidx15.i69.i = getelementptr i8, ptr %12, i32 7
  %103 = ptrtoint ptr %arrayidx15.i69.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx15.i69.i, align 1
  %conv16.i70.i = zext i8 %104 to i32
  %arrayidx19.i71.i = getelementptr i8, ptr %12, i32 8
  %105 = ptrtoint ptr %arrayidx19.i71.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx19.i71.i, align 1
  %conv20.i72.i = zext i8 %106 to i32
  %mul.i73.i = shl i32 %or14.i68.i, 9
  %107 = shl nuw nsw i32 %conv16.i70.i, 17
  %108 = shl nuw nsw i32 %conv20.i72.i, 9
  %mul26.i74.i = or i32 %108, %107
  %bl_num.i75.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 24
  %109 = ptrtoint ptr %bl_num.i75.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bl_num.i75.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or14.i68.i, i32 %110)
  %cmp.i76.i = icmp ugt i32 %or14.i68.i, %110
  br i1 %cmp.i76.i, label %sw.bb11.i.if.end18_crit_edge, label %if.end.i79.i

sw.bb11.i.if.end18_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end.i79.i:                                     ; preds = %sw.bb11.i
  %call.i77.i = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %cmp28.not.i78.i = icmp eq i32 %call.i77.i, 0
  br i1 %cmp28.not.i78.i, label %if.end31.i100.i, label %if.then30.i80.i

if.then30.i80.i:                                  ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.69) #9
  br label %if.end18

if.end31.i100.i:                                  ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  %SD_Status.i81.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 1
  %111 = ptrtoint ptr %SD_Status.i81.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i82.i = load i8, ptr %SD_Status.i81.i, align 4
  %112 = and i8 %bf.load.i82.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i83.i = icmp eq i8 %112, 0
  %spec.select.i84.i = select i1 %tobool.not.i83.i, i32 %mul.i73.i, i32 %or14.i68.i
  %113 = getelementptr inbounds i8, ptr %94, i32 4
  %114 = call ptr @memset(ptr %113, i32 0, i32 28)
  %115 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1431519811, ptr %94, align 4
  %DataTransferLength.i85.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %94, i32 0, i32 2
  %116 = ptrtoint ptr %DataTransferLength.i85.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %mul26.i74.i, ptr %DataTransferLength.i85.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %SrbStatus.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 25
  %117 = ptrtoint ptr %SrbStatus.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 335872, ptr %SrbStatus.i, align 4
  br label %if.end18

sw.epilog.i:                                      ; preds = %if.end31.i100.i, %if.end31.i.i
  %.sink119.i = phi ptr [ %94, %if.end31.i100.i ], [ %69, %if.end31.i.i ]
  %.sink118.i = phi i8 [ -16, %if.end31.i100.i ], [ -15, %if.end31.i.i ]
  %spec.select.i84.sink117.i = phi i32 [ %spec.select.i84.i, %if.end31.i100.i ], [ %spec.select.i.i, %if.end31.i.i ]
  %.sink.i = phi i8 [ 0, %if.end31.i100.i ], [ 1, %if.end31.i.i ]
  %CDB.i86.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %.sink119.i, i32 0, i32 6
  %118 = ptrtoint ptr %CDB.i86.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %.sink118.i, ptr %CDB.i86.i, align 1
  %conv35.i87.i = trunc i32 %spec.select.i84.sink117.i to i8
  %arrayidx37.i88.i = getelementptr %struct.bulk_cb_wrap, ptr %.sink119.i, i32 0, i32 6, i32 5
  %119 = ptrtoint ptr %arrayidx37.i88.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv35.i87.i, ptr %arrayidx37.i88.i, align 1
  %shr.i89.i = lshr i32 %spec.select.i84.sink117.i, 8
  %conv38.i90.i = trunc i32 %shr.i89.i to i8
  %arrayidx40.i91.i = getelementptr %struct.bulk_cb_wrap, ptr %.sink119.i, i32 0, i32 6, i32 4
  %120 = ptrtoint ptr %arrayidx40.i91.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv38.i90.i, ptr %arrayidx40.i91.i, align 1
  %shr41.i92.i = lshr i32 %spec.select.i84.sink117.i, 16
  %conv42.i93.i = trunc i32 %shr41.i92.i to i8
  %arrayidx44.i94.i = getelementptr %struct.bulk_cb_wrap, ptr %.sink119.i, i32 0, i32 6, i32 3
  %121 = ptrtoint ptr %arrayidx44.i94.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv42.i93.i, ptr %arrayidx44.i94.i, align 1
  %shr45.i95.i = lshr i32 %spec.select.i84.sink117.i, 24
  %conv46.i96.i = trunc i32 %shr45.i95.i to i8
  %arrayidx48.i97.i = getelementptr %struct.bulk_cb_wrap, ptr %.sink119.i, i32 0, i32 6, i32 2
  %122 = ptrtoint ptr %arrayidx48.i97.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv46.i96.i, ptr %arrayidx48.i97.i, align 1
  %sdb.i.i98.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %123 = ptrtoint ptr %sdb.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sdb.i.i98.i, align 4
  %call50.i99.i = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext %.sink.i, ptr noundef %124, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i99.i)
  %cmp.i = icmp eq i32 %call50.i99.i, 0
  br i1 %cmp.i, label %sw.epilog.i.if.then.i_crit_edge, label %sw.epilog.i.if.end18_crit_edge

sw.epilog.i.if.end18_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

sw.epilog.i.if.then.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i.if.then.i_crit_edge, %sd_scsi_read_capacity.exit.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %if.else.i.i, %sw.bb.i.if.then.i_crit_edge
  %SrbStatus14.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %10, i32 0, i32 25
  %125 = ptrtoint ptr %SrbStatus14.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %SrbStatus14.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %sw.epilog.i.if.end18_crit_edge, %sw.default.i, %if.then30.i80.i, %sw.bb11.i.if.end18_crit_edge, %if.then30.i.i, %sw.bb9.i.if.end18_crit_edge, %if.then10.if.end18_crit_edge
  %result.1 = phi i32 [ 3, %if.then10.if.end18_crit_edge ], [ 0, %if.then.i ], [ %call50.i99.i, %sw.epilog.i.if.end18_crit_edge ], [ 3, %sw.bb11.i.if.end18_crit_edge ], [ 3, %if.then30.i80.i ], [ 3, %sw.bb9.i.if.end18_crit_edge ], [ 3, %if.then30.i.i ], [ 1, %sw.default.i ]
  %MS_Status19 = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 2
  %126 = ptrtoint ptr %MS_Status19 to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load20 = load i8, ptr %MS_Status19, align 1
  %127 = and i8 %bf.load20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool23.not = icmp eq i8 %127, 0
  br i1 %tobool23.not, label %if.end18.if.end27_crit_edge, label %if.then24

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %if.end18
  %128 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %extra, align 4
  %cmnd.i45 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %130 = ptrtoint ptr %cmnd.i45 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cmnd.i45, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %131, align 1
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %133, label %sw.default.i104 [
    i8 0, label %sw.bb.i48
    i8 3, label %sw.bb1.i55
    i8 18, label %sw.bb3.i56
    i8 26, label %sw.bb5.i60
    i8 37, label %sw.bb7.i63
    i8 40, label %sw.bb9.i92
    i8 42, label %sw.bb11.i102
  ]

sw.bb.i48:                                        ; preds = %if.then24
  %MS_Status.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 2
  %135 = ptrtoint ptr %MS_Status.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load.i.i46 = load i8, ptr %MS_Status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i.i46)
  %.not.i.i47 = icmp ugt i8 %bf.load.i.i46, -65
  br i1 %.not.i.i47, label %sw.bb.i48.if.then.i108_crit_edge, label %if.else.i.i50

sw.bb.i48.if.then.i108_crit_edge:                 ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i108

if.else.i.i50:                                    ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i49 = call fastcc i32 @ene_ms_init(ptr noundef %us) #9
  br label %if.then.i108

sw.bb1.i55:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf.i.i43) #9
  %136 = getelementptr inbounds [18 x i8], ptr %buf.i.i43, i32 0, i32 2
  %137 = getelementptr inbounds [18 x i8], ptr %buf.i.i43, i32 0, i32 7
  %138 = getelementptr inbounds [18 x i8], ptr %buf.i.i43, i32 0, i32 12
  %139 = getelementptr inbounds [18 x i8], ptr %buf.i.i43, i32 0, i32 13
  %140 = getelementptr inbounds i8, ptr %buf.i.i43, i32 1
  %141 = call ptr @memset(ptr %140, i32 0, i32 17)
  %142 = ptrtoint ptr %buf.i.i43 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 112, ptr %buf.i.i43, align 1
  %SrbStatus.i.i51 = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 25
  %143 = ptrtoint ptr %SrbStatus.i.i51 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %SrbStatus.i.i51, align 4
  %145 = lshr i32 %144, 16
  %conv.i.i52 = trunc i32 %145 to i8
  %146 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv.i.i52, ptr %136, align 1
  %147 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 10, ptr %137, align 1
  %148 = lshr i32 %144, 8
  %conv5.i.i53 = trunc i32 %148 to i8
  %149 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv5.i.i53, ptr %138, align 1
  %conv8.i.i54 = trunc i32 %144 to i8
  %150 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv8.i.i54, ptr %139, align 1
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %buf.i.i43, i32 noundef 18, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf.i.i43) #9
  br label %if.then.i108

sw.bb3.i56:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data_ptr.i.i42) #9
  %151 = call ptr @memcpy(ptr %data_ptr.i.i42, ptr @__const.do_scsi_inquiry.data_ptr, i32 36)
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %data_ptr.i.i42, i32 noundef 36, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data_ptr.i.i42) #9
  br label %if.then.i108

sw.bb5.i60:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mediaNoWP.i.i40) #9
  %152 = call ptr @memcpy(ptr %mediaNoWP.i.i40, ptr @__const.ms_scsi_mode_sense.mediaNoWP, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mediaWP.i.i41) #9
  %153 = call ptr @memcpy(ptr %mediaWP.i.i41, ptr @__const.ms_scsi_mode_sense.mediaWP, i32 12)
  %MS_Status.i33.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 2
  %154 = ptrtoint ptr %MS_Status.i33.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load.i34.i57 = load i8, ptr %MS_Status.i33.i, align 1
  %155 = and i8 %bf.load.i34.i57, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i58 = icmp eq i8 %155, 0
  %mediaNoWP.mediaWP.i.i59 = select i1 %tobool.not.i.i58, ptr %mediaNoWP.i.i40, ptr %mediaWP.i.i41
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %mediaNoWP.mediaWP.i.i59, i32 noundef 12, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mediaWP.i.i41) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mediaNoWP.i.i40) #9
  br label %if.then.i108

sw.bb7.i63:                                       ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i.i37) #9
  %156 = ptrtoint ptr %offset.i.i37 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %offset.i.i37, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i35.i38) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i.i39) #9
  %157 = ptrtoint ptr %sg.i.i39 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %sg.i.i39, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.70) #9
  %MS_Status.i37.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 2
  %158 = ptrtoint ptr %MS_Status.i37.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load.i38.i61 = load i8, ptr %MS_Status.i37.i, align 1
  %159 = and i8 %bf.load.i38.i61, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i39.i62 = icmp eq i8 %159, 0
  br i1 %tobool.not.i39.i62, label %if.else.i41.i, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %sw.bb7.i63
  call void @__sanitizer_cov_trace_pc() #11
  %MSP_TotalBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 16
  %160 = ptrtoint ptr %MSP_TotalBlock.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %MSP_TotalBlock.i.i, align 4
  br label %ms_scsi_read_capacity.exit.i

if.else.i41.i:                                    ; preds = %sw.bb7.i63
  call void @__sanitizer_cov_trace_pc() #11
  %NumberOfLogBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 8
  %162 = ptrtoint ptr %NumberOfLogBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %NumberOfLogBlock.i.i, align 4
  %conv.i40.i = zext i16 %163 to i32
  %blockSize.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 5
  %164 = ptrtoint ptr %blockSize.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %blockSize.i.i, align 2
  %conv2.i.i65 = zext i16 %165 to i32
  %mul.i.i66 = shl nuw nsw i32 %conv.i40.i, 1
  %mul3.i.i = mul i32 %mul.i.i66, %conv2.i.i65
  br label %ms_scsi_read_capacity.exit.i

ms_scsi_read_capacity.exit.i:                     ; preds = %if.else.i41.i, %if.then.i.i64
  %bl_num.0.in.i.i = phi i32 [ %161, %if.then.i.i64 ], [ %mul3.i.i, %if.else.i41.i ]
  %166 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 7
  %167 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 6
  %168 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 5
  %169 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 4
  %170 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 3
  %171 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 2
  %172 = getelementptr inbounds [8 x i8], ptr %buf.i35.i38, i32 0, i32 1
  %bl_num.0.i.i67 = add i32 %bl_num.0.in.i.i, -1
  %bl_num5.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 24
  %173 = ptrtoint ptr %bl_num5.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %bl_num.0.i.i67, ptr %bl_num5.i.i, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.67, i32 noundef 512) #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.68, i32 noundef %bl_num.0.i.i67) #9
  %shr.i.i68 = lshr i32 %bl_num.0.i.i67, 24
  %conv7.i.i = trunc i32 %shr.i.i68 to i8
  %174 = ptrtoint ptr %buf.i35.i38 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv7.i.i, ptr %buf.i35.i38, align 1
  %shr8.i.i = lshr i32 %bl_num.0.i.i67, 16
  %conv10.i.i69 = trunc i32 %shr8.i.i to i8
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv10.i.i69, ptr %172, align 1
  %shr12.i.i = lshr i32 %bl_num.0.i.i67, 8
  %conv14.i.i70 = trunc i32 %shr12.i.i to i8
  %176 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv14.i.i70, ptr %171, align 1
  %conv18.i.i = trunc i32 %bl_num.0.i.i67 to i8
  %177 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv18.i.i, ptr %170, align 1
  %178 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %169, align 1
  %179 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %168, align 1
  %180 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 2, ptr %167, align 1
  %181 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %166, align 1
  %call.i42.i71 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %buf.i35.i38, i32 noundef 8, ptr noundef %srb, ptr noundef nonnull %sg.i.i39, ptr noundef nonnull %offset.i.i37, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i.i39) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i35.i38) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i.i37) #9
  br label %if.then.i108

sw.bb9.i92:                                       ; preds = %if.then24
  %iobuf.i.i72 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %182 = ptrtoint ptr %iobuf.i.i72 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iobuf.i.i72, align 4
  %arrayidx.i.i73 = getelementptr i8, ptr %131, i32 2
  %184 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i.i73, align 1
  %conv.i44.i74 = zext i8 %185 to i32
  %shl.i.i75 = shl nuw i32 %conv.i44.i74, 24
  %arrayidx1.i.i76 = getelementptr i8, ptr %131, i32 3
  %186 = ptrtoint ptr %arrayidx1.i.i76 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx1.i.i76, align 1
  %conv2.i45.i = zext i8 %187 to i32
  %shl3.i.i77 = shl nuw nsw i32 %conv2.i45.i, 16
  %or.i.i78 = or i32 %shl3.i.i77, %shl.i.i75
  %arrayidx5.i.i79 = getelementptr i8, ptr %131, i32 4
  %188 = ptrtoint ptr %arrayidx5.i.i79 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx5.i.i79, align 1
  %conv6.i.i80 = zext i8 %189 to i32
  %shl7.i.i81 = shl nuw nsw i32 %conv6.i.i80, 8
  %or9.i.i82 = or i32 %or.i.i78, %shl7.i.i81
  %arrayidx10.i.i83 = getelementptr i8, ptr %131, i32 5
  %190 = ptrtoint ptr %arrayidx10.i.i83 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx10.i.i83, align 1
  %conv11.i.i84 = zext i8 %191 to i32
  %or14.i.i85 = or i32 %or9.i.i82, %conv11.i.i84
  %arrayidx15.i.i86 = getelementptr i8, ptr %131, i32 7
  %192 = ptrtoint ptr %arrayidx15.i.i86 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx15.i.i86, align 1
  %conv16.i.i87 = zext i8 %193 to i16
  %shl17.i.i = shl nuw i16 %conv16.i.i87, 8
  %arrayidx19.i.i88 = getelementptr i8, ptr %131, i32 8
  %194 = ptrtoint ptr %arrayidx19.i.i88 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx19.i.i88, align 1
  %conv20.i.i89 = zext i8 %195 to i16
  %or23.i.i = or i16 %shl17.i.i, %conv20.i.i89
  %conv25.i.i = zext i16 %or23.i.i to i32
  %mul.i46.i = shl nuw nsw i32 %conv25.i.i, 9
  %bl_num.i.i90 = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 24
  %196 = ptrtoint ptr %bl_num.i.i90 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %bl_num.i.i90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or14.i.i85, i32 %197)
  %cmp.i.i91 = icmp ugt i32 %or14.i.i85, %197
  br i1 %cmp.i.i91, label %sw.bb9.i92.if.end27_crit_edge, label %if.end.i.i93

sw.bb9.i92.if.end27_crit_edge:                    ; preds = %sw.bb9.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i.i93:                                     ; preds = %sw.bb9.i92
  %MS_Status.i47.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 2
  %198 = ptrtoint ptr %MS_Status.i47.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %bf.load.i48.i = load i8, ptr %MS_Status.i47.i, align 1
  %199 = and i8 %bf.load.i48.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i49.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i49.i, label %if.end8.i.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i93
  %call.i50.i = call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp28.not.i.i94 = icmp eq i32 %call.i50.i, 0
  br i1 %cmp28.not.i.i94, label %if.end31.i.i98, label %if.then30.i.i95

if.then30.i.i95:                                  ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.71) #9
  br label %if.end27

if.end31.i.i98:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %200 = getelementptr inbounds i8, ptr %183, i32 4
  %201 = call ptr @memset(ptr %200, i32 0, i32 28)
  %202 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1431519811, ptr %183, align 4
  %DataTransferLength.i.i96 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %183, i32 0, i32 2
  %203 = ptrtoint ptr %DataTransferLength.i.i96 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %mul.i46.i, ptr %DataTransferLength.i.i96, align 4
  %Flags.i.i97 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %183, i32 0, i32 3
  %204 = ptrtoint ptr %Flags.i.i97 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 -128, ptr %Flags.i.i97, align 4
  %CDB.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6
  %205 = ptrtoint ptr %CDB.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 -15, ptr %CDB.i.i, align 1
  %arrayidx34.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 1
  %206 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 2, ptr %arrayidx34.i.i, align 1
  %arrayidx37.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 5
  %207 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %191, ptr %arrayidx37.i.i, align 1
  %arrayidx40.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 4
  %208 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %189, ptr %arrayidx40.i.i, align 1
  %arrayidx44.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 3
  %209 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %187, ptr %arrayidx44.i.i, align 1
  %arrayidx48.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 2
  %210 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %185, ptr %arrayidx48.i.i, align 1
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %211 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %sdb.i.i.i, align 4
  %call50.i.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %212, i32 noundef 1) #9
  br label %sw.epilog.i106

if.end8.i.i.i:                                    ; preds = %if.end.i.i93
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i46.i, i32 noundef 3264) #14
  %cmp52.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp52.i.i, label %if.end8.i.i.i.if.end27_crit_edge, label %if.end55.i.i

if.end8.i.i.i.if.end27_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end55.i.i:                                     ; preds = %if.end8.i.i.i
  %call56.i.i = call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i)
  %cmp57.not.i.i = icmp eq i32 %call56.i.i, 0
  br i1 %cmp57.not.i.i, label %if.end61.i.i, label %cleanup.thread232.i.i

cleanup.thread232.i.i:                            ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call60.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %if.end27

if.end61.i.i:                                     ; preds = %if.end55.i.i
  %PagesPerBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 6
  %213 = ptrtoint ptr %PagesPerBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %PagesPerBlock.i.i, align 4
  %conv62.i.i = zext i16 %214 to i32
  %or14.i.i85.frozen = freeze i32 %or14.i.i85
  %conv62.i.i.frozen = freeze i32 %conv62.i.i
  %div.i.i = udiv i32 %or14.i.i85.frozen, %conv62.i.i.frozen
  %conv63.i.i = trunc i32 %div.i.i to i16
  %215 = mul i32 %div.i.i, %conv62.i.i.frozen
  %rem.i.i.decomposed = sub i32 %or14.i.i85.frozen, %215
  %phi.cast.i.i = and i32 %rem.i.i.decomposed, 255
  %NumberOfLogBlock.i52.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 8
  %DataTransferLength99.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %183, i32 0, i32 2
  %Flags100.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %183, i32 0, i32 3
  %CDB101.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6
  %arrayidx104.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 1
  %arrayidx107.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 5
  %arrayidx111.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 4
  %arrayidx115.i.i = getelementptr %struct.bulk_cb_wrap, ptr %183, i32 0, i32 6, i32 3
  %Log2PhyMap.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 11
  %216 = getelementptr inbounds i8, ptr %183, i32 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end138.i.i, %if.end61.i.i
  %blen.0.i.i = phi i16 [ %or23.i.i, %if.end61.i.i ], [ %sub132.i.i, %if.end138.i.i ]
  %offset.0.i.i = phi i32 [ 0, %if.end61.i.i ], [ %add141.i.i, %if.end138.i.i ]
  %logblk.0.i.i = phi i16 [ %conv63.i.i, %if.end61.i.i ], [ %inc.i.i, %if.end138.i.i ]
  %PageNum.0.i.i = phi i32 [ %phi.cast.i.i, %if.end61.i.i ], [ 0, %if.end138.i.i ]
  %conv68.i.i = zext i16 %blen.0.i.i to i32
  %217 = ptrtoint ptr %PagesPerBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %PagesPerBlock.i.i, align 4
  %conv71.i.i = zext i16 %218 to i32
  %sub.i.i99 = sub nsw i32 %conv71.i.i, %PageNum.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i99, i32 %conv68.i.i)
  %cmp73.i.i = icmp slt i32 %sub.i.i99, %conv68.i.i
  %conv81.i.i = trunc i32 %sub.i.i99 to i16
  %len.0.i.i = select i1 %cmp73.i.i, i16 %conv81.i.i, i16 %blen.0.i.i
  %219 = ptrtoint ptr %NumberOfLogBlock.i52.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %NumberOfLogBlock.i52.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %logblk.0.i.i, i16 %220)
  %cmp87.not.i.i = icmp ult i16 %logblk.0.i.i, %220
  br i1 %cmp87.not.i.i, label %cond.false.i.i, label %while.cond.i.i.cond.end.i.i_crit_edge

while.cond.i.i.cond.end.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv84.i.i = zext i16 %logblk.0.i.i to i32
  %221 = ptrtoint ptr %Log2PhyMap.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %Log2PhyMap.i.i, align 4
  %arrayidx90.i.i = getelementptr i16, ptr %222, i32 %conv84.i.i
  %223 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %arrayidx90.i.i, align 2
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %while.cond.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i16 [ %224, %cond.false.i.i ], [ -2, %while.cond.i.i.cond.end.i.i_crit_edge ]
  %conv93.i.i = zext i16 %cond.i.i to i32
  %mul94.i.i = shl nuw nsw i32 %conv93.i.i, 5
  %add.i.i100 = add nuw nsw i32 %mul94.i.i, %PageNum.0.i.i
  %225 = call ptr @memset(ptr %216, i32 0, i32 28)
  %226 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 1431519811, ptr %183, align 4
  %conv97.i.i = zext i16 %len.0.i.i to i32
  %mul98.i.i = shl nuw nsw i32 %conv97.i.i, 9
  %227 = ptrtoint ptr %DataTransferLength99.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %mul98.i.i, ptr %DataTransferLength99.i.i, align 4
  %228 = ptrtoint ptr %Flags100.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 -128, ptr %Flags100.i.i, align 4
  %229 = ptrtoint ptr %CDB101.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 -15, ptr %CDB101.i.i, align 1
  %230 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 2, ptr %arrayidx104.i.i, align 1
  %conv105.i.i = trunc i32 %add.i.i100 to i8
  %231 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv105.i.i, ptr %arrayidx107.i.i, align 1
  %shr108.i.i = lshr i32 %add.i.i100, 8
  %conv109.i.i = trunc i32 %shr108.i.i to i8
  %232 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv109.i.i, ptr %arrayidx111.i.i, align 1
  %shr112.i.i = lshr i32 %add.i.i100, 16
  %conv113.i.i = trunc i32 %shr112.i.i to i8
  %233 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv113.i.i, ptr %arrayidx115.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %offset.0.i.i
  %call120.i.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %add.ptr.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i.i)
  %cmp121.not.i.i = icmp eq i32 %call120.i.i, 0
  br i1 %cmp121.not.i.i, label %if.end129.i.i, label %do.end126.i.i

do.end126.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call128.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %call120.i.i) #13
  br label %cleanup.i.i

if.end129.i.i:                                    ; preds = %cond.end.i.i
  %sub132.i.i = sub i16 %blen.0.i.i, %len.0.i.i
  %cmp135.i.i = icmp eq i16 %sub132.i.i, 0
  br i1 %cmp135.i.i, label %while.end.i.i, label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i = add i16 %logblk.0.i.i, 1
  %add141.i.i = add i32 %mul98.i.i, %offset.0.i.i
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul.i46.i, ptr noundef %srb) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %while.end.i.i, %do.end126.i.i
  %result.0.i.i = phi i32 [ 3, %do.end126.i.i ], [ 0, %while.end.i.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %sw.epilog.i106

sw.bb11.i102:                                     ; preds = %if.then24
  %iobuf.i53.i101 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %234 = ptrtoint ptr %iobuf.i53.i101 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %iobuf.i53.i101, align 4
  %arrayidx.i56.i = getelementptr i8, ptr %131, i32 2
  %236 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx.i56.i, align 1
  %conv.i57.i = zext i8 %237 to i32
  %shl.i58.i = shl nuw i32 %conv.i57.i, 24
  %arrayidx1.i59.i = getelementptr i8, ptr %131, i32 3
  %238 = ptrtoint ptr %arrayidx1.i59.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx1.i59.i, align 1
  %conv2.i60.i = zext i8 %239 to i32
  %shl3.i61.i = shl nuw nsw i32 %conv2.i60.i, 16
  %or.i62.i = or i32 %shl3.i61.i, %shl.i58.i
  %arrayidx5.i63.i = getelementptr i8, ptr %131, i32 4
  %240 = ptrtoint ptr %arrayidx5.i63.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx5.i63.i, align 1
  %conv6.i64.i = zext i8 %241 to i32
  %shl7.i65.i = shl nuw nsw i32 %conv6.i64.i, 8
  %or9.i66.i = or i32 %or.i62.i, %shl7.i65.i
  %arrayidx10.i67.i = getelementptr i8, ptr %131, i32 5
  %242 = ptrtoint ptr %arrayidx10.i67.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx10.i67.i, align 1
  %conv11.i68.i = zext i8 %243 to i32
  %or14.i69.i = or i32 %or9.i66.i, %conv11.i68.i
  %arrayidx15.i70.i = getelementptr i8, ptr %131, i32 7
  %244 = ptrtoint ptr %arrayidx15.i70.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx15.i70.i, align 1
  %conv16.i71.i = zext i8 %245 to i16
  %shl17.i72.i = shl nuw i16 %conv16.i71.i, 8
  %arrayidx19.i73.i = getelementptr i8, ptr %131, i32 8
  %246 = ptrtoint ptr %arrayidx19.i73.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx19.i73.i, align 1
  %conv20.i74.i = zext i8 %247 to i16
  %or23.i75.i = or i16 %shl17.i72.i, %conv20.i74.i
  %conv25.i76.i = zext i16 %or23.i75.i to i32
  %mul.i77.i = shl nuw nsw i32 %conv25.i76.i, 9
  %bl_num.i78.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 24
  %248 = ptrtoint ptr %bl_num.i78.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %bl_num.i78.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or14.i69.i, i32 %249)
  %cmp.i79.i = icmp ugt i32 %or14.i69.i, %249
  br i1 %cmp.i79.i, label %sw.bb11.i102.if.end27_crit_edge, label %if.end.i83.i

sw.bb11.i102.if.end27_crit_edge:                  ; preds = %sw.bb11.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i83.i:                                     ; preds = %sw.bb11.i102
  %MS_Status.i80.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 2
  %250 = ptrtoint ptr %MS_Status.i80.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %bf.load.i81.i = load i8, ptr %MS_Status.i80.i, align 1
  %251 = and i8 %bf.load.i81.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i82.i = icmp eq i8 %251, 0
  br i1 %tobool.not.i82.i, label %if.end8.i.i109.i, label %if.then27.i86.i

if.then27.i86.i:                                  ; preds = %if.end.i83.i
  %call.i84.i = call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %cmp28.not.i85.i = icmp eq i32 %call.i84.i, 0
  br i1 %cmp28.not.i85.i, label %if.end32.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then27.i86.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %if.end27

if.end32.i.i:                                     ; preds = %if.then27.i86.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = getelementptr inbounds i8, ptr %235, i32 4
  %253 = call ptr @memset(ptr %252, i32 0, i32 28)
  %254 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 1431519811, ptr %235, align 4
  %DataTransferLength.i87.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %235, i32 0, i32 2
  %255 = ptrtoint ptr %DataTransferLength.i87.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %mul.i77.i, ptr %DataTransferLength.i87.i, align 4
  %CDB.i88.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %235, i32 0, i32 6
  %256 = ptrtoint ptr %CDB.i88.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 -16, ptr %CDB.i88.i, align 1
  %arrayidx35.i.i = getelementptr %struct.bulk_cb_wrap, ptr %235, i32 0, i32 6, i32 1
  %257 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 4, ptr %arrayidx35.i.i, align 1
  %arrayidx38.i.i = getelementptr %struct.bulk_cb_wrap, ptr %235, i32 0, i32 6, i32 5
  %258 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %243, ptr %arrayidx38.i.i, align 1
  %arrayidx41.i.i = getelementptr %struct.bulk_cb_wrap, ptr %235, i32 0, i32 6, i32 4
  %259 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %241, ptr %arrayidx41.i.i, align 1
  %arrayidx45.i.i = getelementptr %struct.bulk_cb_wrap, ptr %235, i32 0, i32 6, i32 3
  %260 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %239, ptr %arrayidx45.i.i, align 1
  %arrayidx49.i.i = getelementptr %struct.bulk_cb_wrap, ptr %235, i32 0, i32 6, i32 2
  %261 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %237, ptr %arrayidx49.i.i, align 1
  %sdb.i.i89.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %262 = ptrtoint ptr %sdb.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %sdb.i.i89.i, align 4
  %call51.i.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 0, ptr noundef %263, i32 noundef 1) #9
  br label %sw.epilog.i106

if.end8.i.i109.i:                                 ; preds = %if.end.i83.i
  %call9.i.i108.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i77.i, i32 noundef 3264) #14
  %cmp53.i.i = icmp eq ptr %call9.i.i108.i, null
  br i1 %cmp53.i.i, label %if.end8.i.i109.i.if.end27_crit_edge, label %if.end56.i.i

if.end8.i.i109.i.if.end27_crit_edge:              ; preds = %if.end8.i.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end56.i.i:                                     ; preds = %if.end8.i.i109.i
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %call9.i.i108.i, i32 noundef %mul.i77.i, ptr noundef %srb) #9
  %call57.i.i = call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %cmp58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %cmp58.not.i.i, label %if.end66.i.i, label %cleanup.thread225.i.i

cleanup.thread225.i.i:                            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call65.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  call void @kfree(ptr noundef nonnull %call9.i.i108.i) #9
  br label %if.end27

if.end66.i.i:                                     ; preds = %if.end56.i.i
  %PagesPerBlock.i112.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 6
  %264 = ptrtoint ptr %PagesPerBlock.i112.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %PagesPerBlock.i112.i, align 4
  %conv67.i.i = zext i16 %265 to i32
  %or14.i69.i.frozen = freeze i32 %or14.i69.i
  %conv67.i.i.frozen = freeze i32 %conv67.i.i
  %div.i113.i = udiv i32 %or14.i69.i.frozen, %conv67.i.i.frozen
  %conv68.i114.i = trunc i32 %div.i113.i to i16
  %266 = mul i32 %div.i113.i, %conv67.i.i.frozen
  %rem.i115.i.decomposed = sub i32 %or14.i69.i.frozen, %266
  %conv72.i.i = trunc i32 %rem.i115.i.decomposed to i8
  %NumberOfLogBlock.i116.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 8
  %Log2PhyMap.i117.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 11
  %Phy2LogMap.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 17, i32 10
  br label %while.cond.i123.i

while.cond.i123.i:                                ; preds = %if.end122.i.i, %if.end66.i.i
  %blen.0.i118.i = phi i16 [ %or23.i75.i, %if.end66.i.i ], [ %sub116.i.i, %if.end122.i.i ]
  %offset.0.i119.i = phi i32 [ 0, %if.end66.i.i ], [ %add.i129.i, %if.end122.i.i ]
  %PhyBlockAddr.0.i.i = phi i16 [ %conv68.i114.i, %if.end66.i.i ], [ %inc.i128.i, %if.end122.i.i ]
  %PageNum.0.i120.i = phi i8 [ %conv72.i.i, %if.end66.i.i ], [ 0, %if.end122.i.i ]
  %conv73.i.i = zext i16 %blen.0.i118.i to i32
  %267 = ptrtoint ptr %PagesPerBlock.i112.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %PagesPerBlock.i112.i, align 4
  %conv76.i.i = zext i16 %268 to i32
  %conv77.i.i = zext i8 %PageNum.0.i120.i to i32
  %sub.i121.i = sub nsw i32 %conv76.i.i, %conv77.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i121.i, i32 %conv73.i.i)
  %cmp78.i.i = icmp slt i32 %sub.i121.i, %conv73.i.i
  %conv86.i.i = trunc i32 %sub.i121.i to i16
  %len.0.i122.i = select i1 %cmp78.i.i, i16 %conv86.i.i, i16 %blen.0.i118.i
  %269 = ptrtoint ptr %NumberOfLogBlock.i116.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %NumberOfLogBlock.i116.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %PhyBlockAddr.0.i.i, i16 %270)
  %cmp92.not.i.i = icmp ult i16 %PhyBlockAddr.0.i.i, %270
  br i1 %cmp92.not.i.i, label %cond.false.i124.i, label %while.cond.i123.i.cond.end.i126.i_crit_edge

while.cond.i123.i.cond.end.i126.i_crit_edge:      ; preds = %while.cond.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i126.i

cond.false.i124.i:                                ; preds = %while.cond.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv89.i.i = zext i16 %PhyBlockAddr.0.i.i to i32
  %271 = ptrtoint ptr %Log2PhyMap.i117.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %Log2PhyMap.i117.i, align 4
  %arrayidx95.i.i = getelementptr i16, ptr %272, i32 %conv89.i.i
  %273 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx95.i.i, align 2
  br label %cond.end.i126.i

cond.end.i126.i:                                  ; preds = %cond.false.i124.i, %while.cond.i123.i.cond.end.i126.i_crit_edge
  %cond.i125.i = phi i16 [ %274, %cond.false.i124.i ], [ -2, %while.cond.i123.i.cond.end.i126.i_crit_edge ]
  %275 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %extra, align 4
  %NumberOfLogBlock.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %276, i32 0, i32 17, i32 8
  %277 = ptrtoint ptr %NumberOfLogBlock.i.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %NumberOfLogBlock.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %278, i16 %PhyBlockAddr.0.i.i)
  %cmp.not.i.i.i = icmp ugt i16 %278, %PhyBlockAddr.0.i.i
  br i1 %cmp.not.i.i.i, label %cond.end.i.i.i, label %cond.end.i126.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge

cond.end.i126.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge: ; preds = %cond.end.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_libsearch_block_from_logical.exit.i.i

cond.end.i.i.i:                                   ; preds = %cond.end.i126.i
  %conv.i.i.i = zext i16 %PhyBlockAddr.0.i.i to i32
  %Log2PhyMap.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %276, i32 0, i32 17, i32 11
  %279 = ptrtoint ptr %Log2PhyMap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %Log2PhyMap.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %280, i32 %conv.i.i.i
  %281 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %282)
  %cmp7.i.i.i = icmp ugt i16 %282, -17
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 2
  %div.i.i.i = udiv i32 %add.i.i.i, 496
  %div.tr.i.i.i = trunc i32 %div.i.i.i to i16
  %283 = shl i16 %div.tr.i.i.i, 9
  %conv22.i.i.i = or i16 %283, 511
  %phyblk.0.i.i.i = select i1 %cmp7.i.i.i, i16 %conv22.i.i.i, i16 %282
  %NumberOfPhyBlock.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %276, i32 0, i32 17, i32 7
  %284 = ptrtoint ptr %NumberOfPhyBlock.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %NumberOfPhyBlock.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %285, i16 %phyblk.0.i.i.i)
  %cmp.not.i.i.i.i = icmp ugt i16 %285, %phyblk.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.preheader.i.i.i.i, label %cond.end.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge

cond.end.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_libsearch_block_from_logical.exit.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %cond.end.i.i.i
  %blk.0104.i.i.i.i = add nuw i16 %phyblk.0.i.i.i, 1
  %Phy2LogMap.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %276, i32 0, i32 17, i32 10
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i
  %blk.0106.i.i.i.i = phi i16 [ %blk.0104.i.i.i.i, %for.cond.preheader.i.i.i.i ], [ %blk.0.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %blk.0.in105.i.i.i.i = phi i16 [ %phyblk.0.i.i.i, %for.cond.preheader.i.i.i.i ], [ %spec.select.i.i202.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %286 = and i16 %blk.0106.i.i.i.i, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %286)
  %cmp10.i.i.i.i = icmp eq i16 %286, 0
  %sub.i.i.i.i = add i16 %blk.0.in105.i.i.i.i, -511
  %spec.select.i.i202.i.i = select i1 %cmp10.i.i.i.i, i16 %sub.i.i.i.i, i16 %blk.0106.i.i.i.i
  %287 = ptrtoint ptr %Phy2LogMap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %Phy2LogMap.i.i.i.i, align 4
  %idxprom.i.i.i.i = zext i16 %spec.select.i.i202.i.i to i32
  %arrayidx.i.i.i.i = getelementptr i16, ptr %288, i32 %idxprom.i.i.i.i
  %289 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %arrayidx.i.i.i.i, align 2
  %291 = zext i16 %290 to i64
  call void @__sanitizer_cov_trace_switch(i64 %291, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %290, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge [
    i16 -11, label %for.body.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge
    i16 -1, label %if.then29.i.i.i.i
  ]

for.body.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_libsearch_block_from_logical.exit.i.i.loopexit

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  %292 = ptrtoint ptr %iobuf.i53.i101 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %iobuf.i53.i101, align 4
  %294 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %extra, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %298 = getelementptr inbounds i8, ptr %293, i32 4
  %299 = call ptr @memset(ptr %298, i32 0, i32 28)
  %300 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 1431519811, ptr %293, align 4
  %DataTransferLength.i.i.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %293, i32 0, i32 2
  %301 = ptrtoint ptr %DataTransferLength.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 4, ptr %DataTransferLength.i.i.i.i.i, align 4
  %Flags.i.i.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %293, i32 0, i32 3
  %302 = ptrtoint ptr %Flags.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 -128, ptr %Flags.i.i.i.i.i, align 4
  %CDB.i.i.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %293, i32 0, i32 6
  %303 = ptrtoint ptr %CDB.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 -15, ptr %CDB.i.i.i.i.i, align 1
  %arrayidx3.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %293, i32 0, i32 6, i32 1
  %304 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 3, ptr %arrayidx3.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = trunc i16 %spec.select.i.i202.i.i to i8
  %arrayidx7.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %293, i32 0, i32 6, i32 4
  %305 = ptrtoint ptr %arrayidx7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv.i.i.i.i.i, ptr %arrayidx7.i.i.i.i.i, align 1
  %shr.i.i.i.i.i = lshr i16 %spec.select.i.i202.i.i, 8
  %conv8.i.i.i.i.i = trunc i16 %shr.i.i.i.i.i to i8
  %arrayidx10.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %293, i32 0, i32 6, i32 3
  %306 = ptrtoint ptr %arrayidx10.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %conv8.i.i.i.i.i, ptr %arrayidx10.i.i.i.i.i, align 1
  %arrayidx16.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %293, i32 0, i32 6, i32 6
  %307 = ptrtoint ptr %arrayidx16.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 1, ptr %arrayidx16.i.i.i.i.i, align 1
  %call.i.i.i.i.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %297, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %sw.epilog.i.i.i.i, label %sw.default.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.then29.i.i.i.i
  %308 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %309, i32 0, i32 17, i32 7
  %310 = ptrtoint ptr %NumberOfPhyBlock.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %NumberOfPhyBlock.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %311, i16 %spec.select.i.i202.i.i)
  %cmp.not.i77.i.i.i.i = icmp ugt i16 %311, %spec.select.i.i202.i.i
  br i1 %cmp.not.i77.i.i.i.i, label %if.end.i78.i.i.i.i, label %sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge

sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.end.i78.i.i.i.i:                               ; preds = %sw.default.i.i.i.i
  %Phy2LogMap.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %309, i32 0, i32 17, i32 10
  %312 = ptrtoint ptr %Phy2LogMap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %Phy2LogMap.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr i16, ptr %313, i32 %idxprom.i.i.i.i
  %314 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %arrayidx.i.i.i.i.i, align 2
  %NumberOfLogBlock.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %309, i32 0, i32 17, i32 8
  %316 = ptrtoint ptr %NumberOfLogBlock.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %NumberOfLogBlock.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %315, i16 %317)
  %cmp7.i.i.i.i.i = icmp ult i16 %315, %317
  br i1 %cmp7.i.i.i.i.i, label %if.then9.i.i.i.i.i, label %if.end.i78.i.i.i.i.if.end13.i.i.i.i.i_crit_edge

if.end.i78.i.i.i.i.if.end13.i.i.i.i.i_crit_edge:  ; preds = %if.end.i78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i.i.i

if.then9.i.i.i.i.i:                               ; preds = %if.end.i78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i.i.i.i = zext i16 %315 to i32
  %Log2PhyMap.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %309, i32 0, i32 17, i32 11
  %318 = ptrtoint ptr %Log2PhyMap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %Log2PhyMap.i.i.i.i.i, align 4
  %arrayidx12.i.i.i.i.i = getelementptr i16, ptr %319, i32 %conv4.i.i.i.i.i
  %320 = ptrtoint ptr %arrayidx12.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 -1, ptr %arrayidx12.i.i.i.i.i, align 2
  br label %if.end13.i.i.i.i.i

if.end13.i.i.i.i.i:                               ; preds = %if.then9.i.i.i.i.i, %if.end.i78.i.i.i.i.if.end13.i.i.i.i.i_crit_edge
  %321 = ptrtoint ptr %Phy2LogMap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %Phy2LogMap.i.i.i.i.i, align 4
  %arrayidx17.i.i.i.i.i = getelementptr i16, ptr %322, i32 %idxprom.i.i.i.i
  %323 = ptrtoint ptr %arrayidx17.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %arrayidx17.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %324)
  %cmp19.not.i.i.i.i.i = icmp eq i16 %324, -14
  br i1 %cmp19.not.i.i.i.i.i, label %if.end13.i.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then21.i.i.i.i.i

if.end13.i.i.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %if.end13.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.then21.i.i.i.i.i:                              ; preds = %if.end13.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %arrayidx17.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 -12, ptr %arrayidx17.i.i.i.i.i, align 2
  br label %for.inc.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %if.then29.i.i.i.i
  %326 = ptrtoint ptr %297 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %297, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %cmp37.not.i.i.i.i = icmp slt i8 %327, 0
  br i1 %cmp37.not.i.i.i.i, label %if.end41.i.i.i.i, label %if.then39.i.i.i.i

if.then39.i.i.i.i:                                ; preds = %sw.epilog.i.i.i.i
  %328 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i81.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %329, i32 0, i32 17, i32 7
  %330 = ptrtoint ptr %NumberOfPhyBlock.i81.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %NumberOfPhyBlock.i81.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %331, i16 %spec.select.i.i202.i.i)
  %cmp.not.i82.i.i.i.i = icmp ugt i16 %331, %spec.select.i.i202.i.i
  br i1 %cmp.not.i82.i.i.i.i, label %if.end.i87.i.i.i.i, label %if.then39.i.i.i.i.for.inc.i.i.i.i_crit_edge

if.then39.i.i.i.i.for.inc.i.i.i.i_crit_edge:      ; preds = %if.then39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.end.i87.i.i.i.i:                               ; preds = %if.then39.i.i.i.i
  %Phy2LogMap.i83.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %329, i32 0, i32 17, i32 10
  %332 = ptrtoint ptr %Phy2LogMap.i83.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %Phy2LogMap.i83.i.i.i.i, align 4
  %arrayidx.i84.i.i.i.i = getelementptr i16, ptr %333, i32 %idxprom.i.i.i.i
  %334 = ptrtoint ptr %arrayidx.i84.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %arrayidx.i84.i.i.i.i, align 2
  %NumberOfLogBlock.i85.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %329, i32 0, i32 17, i32 8
  %336 = ptrtoint ptr %NumberOfLogBlock.i85.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %NumberOfLogBlock.i85.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %335, i16 %337)
  %cmp7.i86.i.i.i.i = icmp ult i16 %335, %337
  br i1 %cmp7.i86.i.i.i.i, label %if.then9.i91.i.i.i.i, label %if.end.i87.i.i.i.i.if.end13.i94.i.i.i.i_crit_edge

if.end.i87.i.i.i.i.if.end13.i94.i.i.i.i_crit_edge: ; preds = %if.end.i87.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i94.i.i.i.i

if.then9.i91.i.i.i.i:                             ; preds = %if.end.i87.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i88.i.i.i.i = zext i16 %335 to i32
  %Log2PhyMap.i89.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %329, i32 0, i32 17, i32 11
  %338 = ptrtoint ptr %Log2PhyMap.i89.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %Log2PhyMap.i89.i.i.i.i, align 4
  %arrayidx12.i90.i.i.i.i = getelementptr i16, ptr %339, i32 %conv4.i88.i.i.i.i
  %340 = ptrtoint ptr %arrayidx12.i90.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 -1, ptr %arrayidx12.i90.i.i.i.i, align 2
  br label %if.end13.i94.i.i.i.i

if.end13.i94.i.i.i.i:                             ; preds = %if.then9.i91.i.i.i.i, %if.end.i87.i.i.i.i.if.end13.i94.i.i.i.i_crit_edge
  %341 = ptrtoint ptr %Phy2LogMap.i83.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %Phy2LogMap.i83.i.i.i.i, align 4
  %arrayidx17.i92.i.i.i.i = getelementptr i16, ptr %342, i32 %idxprom.i.i.i.i
  %343 = ptrtoint ptr %arrayidx17.i92.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %arrayidx17.i92.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %344)
  %cmp19.not.i93.i.i.i.i = icmp eq i16 %344, -14
  br i1 %cmp19.not.i93.i.i.i.i, label %if.end13.i94.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then21.i95.i.i.i.i

if.end13.i94.i.i.i.i.for.inc.i.i.i.i_crit_edge:   ; preds = %if.end13.i94.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.then21.i95.i.i.i.i:                            ; preds = %if.end13.i94.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %345 = ptrtoint ptr %arrayidx17.i92.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 -12, ptr %arrayidx17.i92.i.i.i.i, align 2
  br label %for.inc.i.i.i.i

if.end41.i.i.i.i:                                 ; preds = %sw.epilog.i.i.i.i
  %call42.i.i.i.i = call fastcc i32 @ms_lib_erase_phyblock(ptr noundef %us, i16 noundef zeroext %spec.select.i.i202.i.i) #9
  %346 = zext i32 %call42.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call42.i.i.i.i, label %sw.default47.i.i.i.i [
    i32 0, label %if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge
    i32 65534, label %if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge
  ]

if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge: ; preds = %if.end41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_libsearch_block_from_logical.exit.i.i

if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge: ; preds = %if.end41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_libsearch_block_from_logical.exit.i.i.loopexit

sw.default47.i.i.i.i:                             ; preds = %if.end41.i.i.i.i
  %347 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i99.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %348, i32 0, i32 17, i32 7
  %349 = ptrtoint ptr %NumberOfPhyBlock.i99.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %NumberOfPhyBlock.i99.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %350, i16 %spec.select.i.i202.i.i)
  %cmp.not.i100.i.i.i.i = icmp ugt i16 %350, %spec.select.i.i202.i.i
  br i1 %cmp.not.i100.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.default47.i.i.i.i.for.inc.i.i.i.i_crit_edge

sw.default47.i.i.i.i.for.inc.i.i.i.i_crit_edge:   ; preds = %sw.default47.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.default47.i.i.i.i
  %MS_Lib.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %348, i32 0, i32 17
  %Phy2LogMap.i.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %348, i32 0, i32 17, i32 10
  %351 = ptrtoint ptr %Phy2LogMap.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %Phy2LogMap.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr i16, ptr %352, i32 %idxprom.i.i.i.i
  %353 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %arrayidx.i.i.i.i.i.i, align 2
  %NumberOfLogBlock.i.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %348, i32 0, i32 17, i32 8
  %355 = ptrtoint ptr %NumberOfLogBlock.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %NumberOfLogBlock.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %354, i16 %356)
  %cmp7.i.i.i.i.i.i = icmp ult i16 %354, %356
  br i1 %cmp7.i.i.i.i.i.i, label %if.then9.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.if.end13.i.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.i.if.end13.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i.i.i.i

if.then9.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i.i.i.i.i = zext i16 %354 to i32
  %Log2PhyMap.i.i.i.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %348, i32 0, i32 17, i32 11
  %357 = ptrtoint ptr %Log2PhyMap.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %Log2PhyMap.i.i.i.i.i.i, align 4
  %arrayidx12.i.i.i.i.i.i = getelementptr i16, ptr %358, i32 %conv4.i.i.i.i.i.i
  %359 = ptrtoint ptr %arrayidx12.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 -1, ptr %arrayidx12.i.i.i.i.i.i, align 2
  br label %if.end13.i.i.i.i.i.i

if.end13.i.i.i.i.i.i:                             ; preds = %if.then9.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.if.end13.i.i.i.i.i.i_crit_edge
  %360 = ptrtoint ptr %Phy2LogMap.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %Phy2LogMap.i.i.i.i.i.i, align 4
  %arrayidx17.i.i.i.i.i.i = getelementptr i16, ptr %361, i32 %idxprom.i.i.i.i
  %362 = ptrtoint ptr %arrayidx17.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %arrayidx17.i.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %363)
  %cmp19.not.i.i.i.i.i.i = icmp eq i16 %363, -14
  br i1 %cmp19.not.i.i.i.i.i.i, label %if.end13.i.i.i.i.i.i.ms_lib_setacquired_errorblock.exit.i.i.i.i.i_crit_edge, label %if.then21.i.i.i.i.i.i

if.end13.i.i.i.i.i.i.ms_lib_setacquired_errorblock.exit.i.i.i.i.i_crit_edge: ; preds = %if.end13.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_setacquired_errorblock.exit.i.i.i.i.i

if.then21.i.i.i.i.i.i:                            ; preds = %if.end13.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %364 = ptrtoint ptr %arrayidx17.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 -12, ptr %arrayidx17.i.i.i.i.i.i, align 2
  br label %ms_lib_setacquired_errorblock.exit.i.i.i.i.i

ms_lib_setacquired_errorblock.exit.i.i.i.i.i:     ; preds = %if.then21.i.i.i.i.i.i, %if.end13.i.i.i.i.i.i.ms_lib_setacquired_errorblock.exit.i.i.i.i.i_crit_edge
  %365 = ptrtoint ptr %MS_Lib.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %MS_Lib.i.i.i.i.i, align 4
  %367 = and i32 %366, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %if.then11.i.i.i.i.i, label %ms_lib_setacquired_errorblock.exit.i.i.i.i.i.for.inc.i.i.i.i_crit_edge

ms_lib_setacquired_errorblock.exit.i.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %ms_lib_setacquired_errorblock.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %ms_lib_setacquired_errorblock.exit.i.i.i.i.i
  %369 = ptrtoint ptr %iobuf.i53.i101 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %iobuf.i53.i101, align 4
  %call.i.i.i.i.i.i = call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp.not.i1.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %cmp.not.i1.i.i.i.i.i, label %if.end.i4.i.i.i.i.i, label %if.then11.i.i.i.i.i.for.inc.i.i.i.i_crit_edge

if.then11.i.i.i.i.i.for.inc.i.i.i.i_crit_edge:    ; preds = %if.then11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.end.i4.i.i.i.i.i:                              ; preds = %if.then11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %371 = getelementptr inbounds i8, ptr %370, i32 4
  %372 = call ptr @memset(ptr %371, i32 0, i32 28)
  %373 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 1431519811, ptr %370, align 4
  %DataTransferLength.i.i.i.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %370, i32 0, i32 2
  %374 = ptrtoint ptr %DataTransferLength.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 4, ptr %DataTransferLength.i.i.i.i.i.i, align 4
  %Flags.i.i.i.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %370, i32 0, i32 3
  %375 = ptrtoint ptr %Flags.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 -128, ptr %Flags.i.i.i.i.i.i, align 4
  %CDB.i.i.i.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6
  %376 = ptrtoint ptr %CDB.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 -14, ptr %CDB.i.i.i.i.i.i, align 1
  %arrayidx2.i.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 1
  %377 = ptrtoint ptr %arrayidx2.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 5, ptr %arrayidx2.i.i.i.i.i.i, align 1
  %arrayidx6.i.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 4
  %378 = ptrtoint ptr %arrayidx6.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %conv.i.i.i.i.i, ptr %arrayidx6.i.i.i.i.i.i, align 1
  %arrayidx9.i.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 3
  %379 = ptrtoint ptr %arrayidx9.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %conv8.i.i.i.i.i, ptr %arrayidx9.i.i.i.i.i.i, align 1
  %arrayidx15.i.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 6
  %380 = ptrtoint ptr %arrayidx15.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 127, ptr %arrayidx15.i.i.i.i.i.i, align 1
  %arrayidx17.i3.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 7
  %381 = ptrtoint ptr %arrayidx17.i3.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 -1, ptr %arrayidx17.i3.i.i.i.i.i, align 1
  %arrayidx19.i.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 8
  %382 = ptrtoint ptr %arrayidx19.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 -1, ptr %arrayidx19.i.i.i.i.i.i, align 1
  %arrayidx21.i.i.i.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %370, i32 0, i32 6, i32 9
  %383 = ptrtoint ptr %arrayidx21.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 -1, ptr %arrayidx21.i.i.i.i.i.i, align 1
  %call22.i.i.i.i.i.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #9
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i4.i.i.i.i.i, %if.then11.i.i.i.i.i.for.inc.i.i.i.i_crit_edge, %ms_lib_setacquired_errorblock.exit.i.i.i.i.i.for.inc.i.i.i.i_crit_edge, %sw.default47.i.i.i.i.for.inc.i.i.i.i_crit_edge, %if.then21.i95.i.i.i.i, %if.end13.i94.i.i.i.i.for.inc.i.i.i.i_crit_edge, %if.then39.i.i.i.i.for.inc.i.i.i.i_crit_edge, %if.then21.i.i.i.i.i, %if.end13.i.i.i.i.i.for.inc.i.i.i.i_crit_edge, %sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %blk.0.i.i.i.i = add i16 %spec.select.i.i202.i.i, 1
  %cmp7.not.i.i.i.i = icmp eq i16 %blk.0.i.i.i.i, %phyblk.0.i.i.i
  br i1 %cmp7.not.i.i.i.i, label %for.inc.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_libsearch_block_from_logical.exit.i.i.loopexit

ms_libsearch_block_from_logical.exit.i.i.loopexit: ; preds = %for.inc.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge, %if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge, %for.body.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge
  %retval.0.i.i.i.ph = phi i16 [ -16, %for.inc.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge ], [ %spec.select.i.i202.i.i, %if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge ], [ %spec.select.i.i202.i.i, %for.body.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i.loopexit_crit_edge ]
  br label %ms_libsearch_block_from_logical.exit.i.i

ms_libsearch_block_from_logical.exit.i.i:         ; preds = %ms_libsearch_block_from_logical.exit.i.i.loopexit, %if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge, %cond.end.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge, %cond.end.i126.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ -16, %cond.end.i126.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge ], [ -16, %cond.end.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge ], [ %retval.0.i.i.i.ph, %ms_libsearch_block_from_logical.exit.i.i.loopexit ], [ -16, %if.end41.i.i.i.i.ms_libsearch_block_from_logical.exit.i.i_crit_edge ]
  %384 = ptrtoint ptr %iobuf.i53.i101 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %iobuf.i53.i101, align 4
  %call.i.i.i = call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i203.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i203.i.i, label %if.end.i206.i.i, label %ms_libsearch_block_from_logical.exit.i.i.do.end106.i.i_crit_edge

ms_libsearch_block_from_logical.exit.i.i.do.end106.i.i_crit_edge: ; preds = %ms_libsearch_block_from_logical.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106.i.i

if.end.i206.i.i:                                  ; preds = %ms_libsearch_block_from_logical.exit.i.i
  %add.ptr.i127.i = getelementptr i8, ptr %call9.i.i108.i, i32 %offset.0.i119.i
  %386 = getelementptr inbounds i8, ptr %385, i32 4
  %387 = call ptr @memset(ptr %386, i32 0, i32 28)
  %388 = ptrtoint ptr %385 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 1431519811, ptr %385, align 4
  %conv.i204.i.i = zext i16 %len.0.i122.i to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i204.i.i, 9
  %DataTransferLength.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %385, i32 0, i32 2
  %389 = ptrtoint ptr %DataTransferLength.i.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %mul.i.i.i, ptr %DataTransferLength.i.i.i, align 4
  %CDB.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6
  %390 = ptrtoint ptr %CDB.i.i.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 -16, ptr %CDB.i.i.i, align 1
  %arrayidx2.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 1
  %391 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 8, ptr %arrayidx2.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %cond.i125.i to i8
  %arrayidx5.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 4
  %392 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %conv3.i.i.i, ptr %arrayidx5.i.i.i, align 1
  %393 = lshr i16 %cond.i125.i, 8
  %conv7.i.i.i = trunc i16 %393 to i8
  %arrayidx9.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 3
  %394 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %conv7.i.i.i, ptr %arrayidx9.i.i.i, align 1
  %conv12.i.i.i = trunc i16 %retval.0.i.i.i to i8
  %arrayidx14.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 7
  %395 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %conv12.i.i.i, ptr %arrayidx14.i.i.i, align 1
  %396 = lshr i16 %retval.0.i.i.i, 8
  %conv17.i.i.i = trunc i16 %396 to i8
  %arrayidx19.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 6
  %397 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %conv17.i.i.i, ptr %arrayidx19.i.i.i, align 1
  %conv22.i205.i.i = trunc i16 %PhyBlockAddr.0.i.i to i8
  %arrayidx24.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 9
  %398 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %conv22.i205.i.i, ptr %arrayidx24.i.i.i, align 1
  %399 = lshr i16 %PhyBlockAddr.0.i.i, 8
  %conv27.i.i.i = trunc i16 %399 to i8
  %arrayidx29.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 8
  %400 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %conv27.i.i.i, ptr %arrayidx29.i.i.i, align 1
  %arrayidx31.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %385, i32 0, i32 6, i32 10
  %401 = ptrtoint ptr %arrayidx31.i.i.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %PageNum.0.i120.i, ptr %arrayidx31.i.i.i, align 1
  %call32.i.i.i = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 0, ptr noundef %add.ptr.i127.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %cmp33.not.i.i.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %cmp33.not.i.i.i, label %if.end109.i.i, label %if.end.i206.i.i.do.end106.i.i_crit_edge

if.end.i206.i.i.do.end106.i.i_crit_edge:          ; preds = %if.end.i206.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106.i.i

do.end106.i.i:                                    ; preds = %if.end.i206.i.i.do.end106.i.i_crit_edge, %ms_libsearch_block_from_logical.exit.i.i.do.end106.i.i_crit_edge
  %call108.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef 3) #13
  br label %cleanup.i131.i

if.end109.i.i:                                    ; preds = %if.end.i206.i.i
  %402 = ptrtoint ptr %Phy2LogMap.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %Phy2LogMap.i.i, align 4
  %idxprom111.i.i = zext i16 %cond.i125.i to i32
  %arrayidx112.i.i = getelementptr i16, ptr %403, i32 %idxprom111.i.i
  %404 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 -11, ptr %arrayidx112.i.i, align 2
  %conv.i208.i.i = zext i16 %PhyBlockAddr.0.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %PhyBlockAddr.0.i.i)
  %cmp.i209.i.i = icmp eq i16 %PhyBlockAddr.0.i.i, -1
  br i1 %cmp.i209.i.i, label %if.end109.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge, label %if.end.i212.i.i

if.end109.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge: ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_force_setlogical_pair.exit.i.i

if.end.i212.i.i:                                  ; preds = %if.end109.i.i
  %405 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %extra, align 4
  %NumberOfLogBlock.i211.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %406, i32 0, i32 17, i32 8
  %407 = ptrtoint ptr %NumberOfLogBlock.i211.i.i to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %NumberOfLogBlock.i211.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %408, i16 %PhyBlockAddr.0.i.i)
  %cmp4.not.i.i.i = icmp ugt i16 %408, %PhyBlockAddr.0.i.i
  br i1 %cmp4.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i212.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge

if.end.i212.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge: ; preds = %if.end.i212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_force_setlogical_pair.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i212.i.i
  %NumberOfPhyBlock.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %406, i32 0, i32 17, i32 7
  %409 = ptrtoint ptr %NumberOfPhyBlock.i.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %NumberOfPhyBlock.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %410, i16 %retval.0.i.i.i)
  %cmp9.not.i.i.i = icmp ugt i16 %410, %retval.0.i.i.i
  br i1 %cmp9.not.i.i.i, label %if.end12.i.i.i, label %lor.lhs.false.i.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge

lor.lhs.false.i.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_force_setlogical_pair.exit.i.i

if.end12.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i.i.i = zext i16 %retval.0.i.i.i to i32
  %Phy2LogMap.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %406, i32 0, i32 17, i32 10
  %411 = ptrtoint ptr %Phy2LogMap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %Phy2LogMap.i.i.i, align 4
  %arrayidx.i213.i.i = getelementptr i16, ptr %412, i32 %conv6.i.i.i
  %413 = ptrtoint ptr %arrayidx.i213.i.i to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %PhyBlockAddr.0.i.i, ptr %arrayidx.i213.i.i, align 2
  %Log2PhyMap.i214.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %406, i32 0, i32 17, i32 11
  %414 = ptrtoint ptr %Log2PhyMap.i214.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %Log2PhyMap.i214.i.i, align 4
  %arrayidx16.i.i.i = getelementptr i16, ptr %415, i32 %conv.i208.i.i
  %416 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %retval.0.i.i.i, ptr %arrayidx16.i.i.i, align 2
  br label %ms_lib_force_setlogical_pair.exit.i.i

ms_lib_force_setlogical_pair.exit.i.i:            ; preds = %if.end12.i.i.i, %lor.lhs.false.i.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge, %if.end.i212.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge, %if.end109.i.i.ms_lib_force_setlogical_pair.exit.i.i_crit_edge
  %sub116.i.i = sub i16 %blen.0.i118.i, %len.0.i122.i
  %cmp119.i.i = icmp eq i16 %sub116.i.i, 0
  br i1 %cmp119.i.i, label %ms_lib_force_setlogical_pair.exit.i.i.cleanup.i131.i_crit_edge, label %if.end122.i.i

ms_lib_force_setlogical_pair.exit.i.i.cleanup.i131.i_crit_edge: ; preds = %ms_lib_force_setlogical_pair.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i131.i

if.end122.i.i:                                    ; preds = %ms_lib_force_setlogical_pair.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i128.i = add i16 %PhyBlockAddr.0.i.i, 1
  %add.i129.i = add i32 %mul.i.i.i, %offset.0.i119.i
  br label %while.cond.i123.i

cleanup.i131.i:                                   ; preds = %ms_lib_force_setlogical_pair.exit.i.i.cleanup.i131.i_crit_edge, %do.end106.i.i
  %result.0.i130.i = phi i32 [ 3, %do.end106.i.i ], [ 0, %ms_lib_force_setlogical_pair.exit.i.i.cleanup.i131.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i108.i) #9
  br label %sw.epilog.i106

sw.default.i104:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %SrbStatus.i103 = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 25
  %417 = ptrtoint ptr %SrbStatus.i103 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 335872, ptr %SrbStatus.i103, align 4
  br label %if.end27

sw.epilog.i106:                                   ; preds = %cleanup.i131.i, %if.end32.i.i, %cleanup.i.i, %if.end31.i.i98
  %result.0.i = phi i32 [ %call50.i.i, %if.end31.i.i98 ], [ %result.0.i.i, %cleanup.i.i ], [ %call51.i.i, %if.end32.i.i ], [ %result.0.i130.i, %cleanup.i131.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp.i105 = icmp eq i32 %result.0.i, 0
  br i1 %cmp.i105, label %sw.epilog.i106.if.then.i108_crit_edge, label %sw.epilog.i106.if.end27_crit_edge

sw.epilog.i106.if.end27_crit_edge:                ; preds = %sw.epilog.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

sw.epilog.i106.if.then.i108_crit_edge:            ; preds = %sw.epilog.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i108

if.then.i108:                                     ; preds = %sw.epilog.i106.if.then.i108_crit_edge, %ms_scsi_read_capacity.exit.i, %sw.bb5.i60, %sw.bb3.i56, %sw.bb1.i55, %if.else.i.i50, %sw.bb.i48.if.then.i108_crit_edge
  %SrbStatus14.i107 = getelementptr inbounds %struct.ene_ub6250_info, ptr %129, i32 0, i32 25
  %418 = ptrtoint ptr %SrbStatus14.i107 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 0, ptr %SrbStatus14.i107, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then.i108, %sw.epilog.i106.if.end27_crit_edge, %sw.default.i104, %cleanup.thread225.i.i, %if.end8.i.i109.i.if.end27_crit_edge, %do.end.i.i, %sw.bb11.i102.if.end27_crit_edge, %cleanup.thread232.i.i, %if.end8.i.i.i.if.end27_crit_edge, %if.then30.i.i95, %sw.bb9.i92.if.end27_crit_edge, %if.end18.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %result.2 = phi i32 [ %result.1, %if.end18.if.end27_crit_edge ], [ %call, %if.end.if.end27_crit_edge ], [ 0, %if.then.i108 ], [ %result.0.i, %sw.epilog.i106.if.end27_crit_edge ], [ 3, %cleanup.thread225.i.i ], [ 3, %if.end8.i.i109.i.if.end27_crit_edge ], [ 3, %sw.bb11.i102.if.end27_crit_edge ], [ 3, %do.end.i.i ], [ 3, %cleanup.thread232.i.i ], [ 3, %if.end8.i.i.i.if.end27_crit_edge ], [ 3, %sw.bb9.i92.if.end27_crit_edge ], [ 3, %if.then30.i.i95 ], [ 1, %sw.default.i104 ]
  ret i32 %result.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ene_init(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %4 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobuf.i, align 4
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 28)
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1431519811, ptr %5, align 4
  %DataTransferLength.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %DataTransferLength.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %DataTransferLength.i, align 4
  %Flags.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %Flags.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %Flags.i, align 4
  %CDB.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %CDB.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -19, ptr %CDB.i, align 1
  %arrayidx3.i = getelementptr %struct.bulk_cb_wrap, ptr %5, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %arrayidx3.i, align 1
  %arrayidx6.i = getelementptr %struct.bulk_cb_wrap, ptr %5, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -125, ptr %arrayidx6.i, align 1
  %call.i = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %SD_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %SD_Status, align 4
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %if.then4, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %if.then2
  %call5 = tail call fastcc i32 @ene_sd_init(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.then2.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %and13 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end27_crit_edge, label %if.then15

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then15:                                        ; preds = %if.end11
  %MS_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load16 = load i8, ptr %MS_Status, align 1
  %19 = and i8 %bf.load16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp eq i8 %19, 0
  br i1 %tobool19.not, label %if.then20, label %if.then15.if.end27_crit_edge

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then20:                                        ; preds = %if.then15
  %call21 = tail call fastcc i32 @ene_ms_init(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.then20.if.end27_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.then15.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then20.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 3, %entry.cleanup_crit_edge ], [ 3, %if.then4.cleanup_crit_edge ], [ 3, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ene_sd_init(ptr noundef %us) unnamed_addr #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.7) #9
  %call = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds i8, ptr %1, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 28)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1431519811, ptr %1, align 4
  %Flags = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %Flags, align 4
  %CDB = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %CDB to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -14, ptr %CDB, align 1
  %call2 = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %11 = getelementptr inbounds i8, ptr %1, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 28)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1431519811, ptr %1, align 4
  %DataTransferLength = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %DataTransferLength, align 4
  %15 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %Flags, align 4
  %16 = ptrtoint ptr %CDB to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -15, ptr %CDB, align 1
  %call14 = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %SD_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 1
  %19 = ptrtoint ptr %SD_Status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %SD_Status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %18)
  %.not = icmp ugt i8 %18, -65
  br i1 %.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ene_get_card_status(ptr noundef %us, ptr noundef %5)
  %20 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load27 = load i8, ptr %SD_Status, align 1
  %bf.lshr28 = lshr i8 %bf.load27, 7
  %conv29 = zext i8 %bf.lshr28 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11, i32 noundef %conv29) #9
  %21 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load30 = load i8, ptr %SD_Status, align 1
  %bf.lshr31 = lshr i8 %bf.load30, 6
  %bf.clear32 = and i8 %bf.lshr31, 1
  %conv33 = zext i8 %bf.clear32 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12, i32 noundef %conv33) #9
  %22 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load34 = load i8, ptr %SD_Status, align 1
  %bf.lshr35 = lshr i8 %bf.load34, 4
  %bf.clear36 = and i8 %bf.lshr35, 1
  %conv37 = zext i8 %bf.clear36 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13, i32 noundef %conv37) #9
  %23 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load38 = load i8, ptr %SD_Status, align 1
  %bf.lshr39 = lshr i8 %bf.load38, 3
  %bf.clear40 = and i8 %bf.lshr39, 1
  %conv41 = zext i8 %bf.clear40 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14, i32 noundef %conv41) #9
  %24 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load42 = load i8, ptr %SD_Status, align 1
  %bf.lshr43 = lshr i8 %bf.load42, 2
  %bf.clear44 = and i8 %bf.lshr43, 1
  %conv45 = zext i8 %bf.clear44 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15, i32 noundef %conv45) #9
  %25 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load46 = load i8, ptr %SD_Status, align 1
  %bf.lshr47 = lshr i8 %bf.load46, 1
  %bf.clear48 = and i8 %bf.lshr47, 1
  %conv49 = zext i8 %bf.clear48 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16, i32 noundef %conv49) #9
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %5, align 1
  %conv51 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17, i32 noundef %conv51) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.then16, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 3, %if.then4 ], [ 3, %if.then8 ], [ 3, %if.then16 ], [ 0, %if.then24 ], [ 3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ene_ms_init(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  %extdat.i.i.i = alloca %struct.ms_lib_type_extdat, align 2
  %extdat.i = alloca %struct.ms_lib_type_extdat, align 8
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  %call2 = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds i8, ptr %1, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 28)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1431519811, ptr %1, align 4
  %DataTransferLength = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %DataTransferLength, align 4
  %Flags = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %Flags, align 4
  %CDB = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %CDB to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -15, ptr %CDB, align 1
  %arrayidx9 = getelementptr %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx9, align 1
  %call10 = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %MS_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %15 = ptrtoint ptr %MS_Status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %MS_Status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %14)
  %.not = icmp ugt i8 %14, -65
  br i1 %.not, label %do.end28, label %if.else97

do.end28:                                         ; preds = %if.end18
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1) #13
  %16 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load40 = load i8, ptr %MS_Status, align 1
  %bf.lshr41 = lshr i8 %bf.load40, 6
  %bf.clear42 = and i8 %bf.lshr41, 1
  %conv43 = zext i8 %bf.clear42 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv43) #13
  %17 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load50 = load i8, ptr %MS_Status, align 1
  %bf.lshr51 = lshr i8 %bf.load50, 4
  %bf.clear52 = and i8 %bf.lshr51, 1
  %conv53 = zext i8 %bf.clear52 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv53) #13
  %18 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load60 = load i8, ptr %MS_Status, align 1
  %bf.lshr61 = lshr i8 %bf.load60, 3
  %bf.clear62 = and i8 %bf.lshr61, 1
  %conv63 = zext i8 %bf.clear62 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv63) #13
  %19 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load70 = load i8, ptr %MS_Status, align 1
  %bf.lshr71 = lshr i8 %bf.load70, 1
  %bf.clear72 = and i8 %bf.lshr71, 1
  %conv73 = zext i8 %bf.clear72 to i32
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv73) #13
  %20 = ptrtoint ptr %MS_Status to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load76 = load i8, ptr %MS_Status, align 1
  %21 = and i8 %bf.load76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool79.not = icmp eq i8 %21, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx81 = getelementptr i8, ptr %5, i32 6
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv82, 8
  %arrayidx83 = getelementptr i8, ptr %5, i32 7
  %24 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %25 to i32
  %or = or i32 %shl, %conv84
  %arrayidx86 = getelementptr i8, ptr %5, i32 10
  %26 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %27 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %arrayidx89 = getelementptr i8, ptr %5, i32 11
  %28 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %29 to i32
  %or91 = or i32 %shl88, %conv90
  %mul = mul nuw i32 %or91, %or
  %MSP_TotalBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %MSP_TotalBlock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %MSP_TotalBlock, align 4
  br label %if.end96

if.else:                                          ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extdat.i) #9
  %31 = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %extdat.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %extdat.i, i32 0, i32 3
  %33 = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %extdat.i, i32 0, i32 4
  %34 = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %extdat.i, i32 0, i32 5
  %35 = ptrtoint ptr %extdat.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %extdat.i, align 8
  %36 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extra, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #13
  %38 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extra, align 4
  %wrtblk.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17, i32 12
  %40 = ptrtoint ptr %wrtblk.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %wrtblk.i.i.i, align 4
  %pagemap.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17, i32 13
  %41 = call ptr @memset(ptr %pagemap.i.i.i, i32 0, i32 16)
  %blkpag.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17, i32 14
  %42 = ptrtoint ptr %blkpag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %blkpag.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.else.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.else.if.end.i.i.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %43) #9
  %44 = ptrtoint ptr %blkpag.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %blkpag.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.else.if.end.i.i.i_crit_edge
  %blkext.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17, i32 15
  %45 = ptrtoint ptr %blkext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %blkext.i.i.i, align 4
  %tobool8.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.ms_lib_free_allocatedarea.exit.i_crit_edge, label %if.then9.i.i.i

if.end.i.i.i.ms_lib_free_allocatedarea.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_free_allocatedarea.exit.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %46) #9
  %47 = ptrtoint ptr %blkext.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %blkext.i.i.i, align 4
  br label %ms_lib_free_allocatedarea.exit.i

ms_lib_free_allocatedarea.exit.i:                 ; preds = %if.then9.i.i.i, %if.end.i.i.i.ms_lib_free_allocatedarea.exit.i_crit_edge
  %48 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extra, align 4
  %Phy2LogMap.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %49, i32 0, i32 17, i32 10
  %50 = ptrtoint ptr %Phy2LogMap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %Phy2LogMap.i.i.i, align 4
  tail call void @kfree(ptr noundef %51) #9
  %52 = ptrtoint ptr %Phy2LogMap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %Phy2LogMap.i.i.i, align 4
  %Log2PhyMap.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %49, i32 0, i32 17, i32 11
  %53 = ptrtoint ptr %Log2PhyMap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %Log2PhyMap.i.i.i, align 4
  tail call void @kfree(ptr noundef %54) #9
  %55 = ptrtoint ptr %Log2PhyMap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %Log2PhyMap.i.i.i, align 4
  %MS_Lib.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17
  %56 = ptrtoint ptr %MS_Lib.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %MS_Lib.i.i, align 4
  %BytesPerSector.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17, i32 1
  %57 = ptrtoint ptr %BytesPerSector.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %BytesPerSector.i.i, align 4
  %SectorsPerCylinder.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %39, i32 0, i32 17, i32 3
  %58 = call ptr @memset(ptr %SectorsPerCylinder.i.i, i32 0, i32 14)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3264, i32 noundef 512) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 512) #12
  %cmp.i = icmp eq ptr %call7.i.i, null
  %cmp3.i = icmp eq ptr %call7.i2.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %ms_lib_free_allocatedarea.exit.i.ms_card_init.exit_crit_edge, label %for.cond.preheader.i

ms_lib_free_allocatedarea.exit.i.ms_card_init.exit_crit_edge: ; preds = %ms_lib_free_allocatedarea.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

for.cond.preheader.i:                             ; preds = %ms_lib_free_allocatedarea.exit.i
  %wFormatVersion.i = getelementptr inbounds %struct.ms_bootblock_header, ptr %call7.i.i, i32 0, i32 1
  %bNumberOfDataEntry.i = getelementptr inbounds %struct.ms_bootblock_header, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %btBlk1stErred.049.i = phi i32 [ 0, %for.cond.preheader.i ], [ %btBlk1stErred.1.i, %for.inc.i.for.body.i_crit_edge ]
  %btBlk1st.048.i = phi i16 [ -1, %for.cond.preheader.i ], [ %btBlk1st.1.i, %for.inc.i.for.body.i_crit_edge ]
  %call7.i = call fastcc i32 @ms_read_readpage(ptr noundef %us, i32 noundef %indvars.iv.i, i8 noundef zeroext 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %extdat.i) #9
  %61 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call7.i, label %for.body.i.for.inc.i_crit_edge [
    i32 0, label %for.body.i.sw.epilog.i_crit_edge
    i32 65530, label %for.body.i.sw.epilog.i_crit_edge152
  ]

for.body.i.sw.epilog.i_crit_edge152:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge152
  %62 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp9.i = icmp sgt i8 %63, -1
  br i1 %cmp9.i, label %sw.epilog.i.for.inc.i_crit_edge, label %if.end12.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end12.i:                                       ; preds = %sw.epilog.i
  %64 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %34, align 1
  %66 = and i8 %65, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp15.not.i = icmp eq i8 %66, 0
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %if.end12.i.for.inc.i_crit_edge

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false17.i:                                ; preds = %if.end12.i
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %68)
  %cmp19.not.i = icmp eq i16 %68, 1
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false17.i.for.inc.i_crit_edge

lor.lhs.false17.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false17.i
  %69 = ptrtoint ptr %wFormatVersion.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %wFormatVersion.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %70)
  %cmp24.not.i = icmp eq i16 %70, 256
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %lor.lhs.false21.i.for.inc.i_crit_edge

lor.lhs.false21.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false21.i
  %71 = ptrtoint ptr %bNumberOfDataEntry.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bNumberOfDataEntry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp29.not.i = icmp eq i8 %72, 2
  br i1 %cmp29.not.i, label %if.end32.i, label %lor.lhs.false26.i.for.inc.i_crit_edge

lor.lhs.false26.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end32.i:                                       ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %btBlk1st.048.i)
  %cmp34.not.i = icmp eq i16 %btBlk1st.048.i, -1
  br i1 %cmp34.not.i, label %if.end37.i, label %if.end46.loopexit.i

if.end37.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = call ptr @memcpy(ptr %call7.i2.i, ptr %call7.i.i, i32 512)
  %74 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %32, align 1
  %76 = and i8 %75, 42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i = icmp eq i8 %76, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %btBlk1stErred.049.i, i32 1
  %77 = trunc i32 %indvars.iv.i to i16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end37.i, %lor.lhs.false26.i.for.inc.i_crit_edge, %lor.lhs.false21.i.for.inc.i_crit_edge, %lor.lhs.false17.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge, %sw.epilog.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %btBlk1st.1.i = phi i16 [ %btBlk1st.048.i, %for.body.i.for.inc.i_crit_edge ], [ %btBlk1st.048.i, %sw.epilog.i.for.inc.i_crit_edge ], [ %btBlk1st.048.i, %if.end12.i.for.inc.i_crit_edge ], [ %btBlk1st.048.i, %lor.lhs.false17.i.for.inc.i_crit_edge ], [ %btBlk1st.048.i, %lor.lhs.false21.i.for.inc.i_crit_edge ], [ %btBlk1st.048.i, %lor.lhs.false26.i.for.inc.i_crit_edge ], [ %77, %if.end37.i ]
  %btBlk1stErred.1.i = phi i32 [ %btBlk1stErred.049.i, %for.body.i.for.inc.i_crit_edge ], [ %btBlk1stErred.049.i, %sw.epilog.i.for.inc.i_crit_edge ], [ %btBlk1stErred.049.i, %if.end12.i.for.inc.i_crit_edge ], [ %btBlk1stErred.049.i, %lor.lhs.false17.i.for.inc.i_crit_edge ], [ %btBlk1stErred.049.i, %lor.lhs.false21.i.for.inc.i_crit_edge ], [ %btBlk1stErred.049.i, %lor.lhs.false26.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end37.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %btBlk1st.1.i)
  %cmp43.i = icmp eq i16 %btBlk1st.1.i, -1
  br i1 %cmp43.i, label %for.end.i.ms_card_init.exit_crit_edge, label %for.end.i.if.end46.i_crit_edge

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

for.end.i.ms_card_init.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

if.end46.loopexit.i:                              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = trunc i32 %indvars.iv.i to i16
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.loopexit.i, %for.end.i.if.end46.i_crit_edge
  %btBlk1st.047.i = phi i16 [ %btBlk1st.1.i, %for.end.i.if.end46.i_crit_edge ], [ %btBlk1st.048.i, %if.end46.loopexit.i ]
  %btBlk1stErred.045.i = phi i32 [ %btBlk1stErred.1.i, %for.end.i.if.end46.i_crit_edge ], [ %btBlk1stErred.049.i, %if.end46.loopexit.i ]
  %btBlk2nd.040.i = phi i16 [ -1, %for.end.i.if.end46.i_crit_edge ], [ %78, %if.end46.loopexit.i ]
  %conv4242.i = zext i16 %btBlk1st.047.i to i32
  %79 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %31, align 2
  %81 = and i8 %80, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp49.not.i = icmp eq i8 %81, 0
  br i1 %cmp49.not.i, label %if.end46.i.if.end52.i_crit_edge, label %if.then51.i

if.end46.i.if.end52.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then51.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %MS_Lib.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17
  %82 = ptrtoint ptr %MS_Lib.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %MS_Lib.i, align 4
  %or.i = or i32 %83, 2
  store i32 %or.i, ptr %MS_Lib.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %if.end46.i.if.end52.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %btBlk1stErred.045.i)
  %cmp53.i = icmp eq i32 %btBlk1stErred.045.i, 0
  br i1 %cmp53.i, label %if.then55.i, label %if.end52.i.land.lhs.true.i_crit_edge

if.end52.i.land.lhs.true.i_crit_edge:             ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then55.i:                                      ; preds = %if.end52.i
  %call56.i = tail call fastcc i32 @ms_lib_process_bootblock(ptr noundef %us, i16 noundef zeroext %btBlk1st.047.i, ptr noundef nonnull %call7.i2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %phi.cmp1.i = icmp eq i32 %call56.i, 0
  br i1 %phi.cmp1.i, label %if.then55.i.if.end67.i_crit_edge, label %if.then55.i.land.lhs.true.i_crit_edge

if.then55.i.land.lhs.true.i_crit_edge:            ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then55.i.if.end67.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %if.then55.i.land.lhs.true.i_crit_edge, %if.end52.i.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %btBlk2nd.040.i)
  %cmp60.not.i = icmp eq i16 %btBlk2nd.040.i, -1
  br i1 %cmp60.not.i, label %land.lhs.true.i.ms_card_init.exit_crit_edge, label %if.then62.i

land.lhs.true.i.ms_card_init.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

if.then62.i:                                      ; preds = %land.lhs.true.i
  %call63.i = tail call fastcc i32 @ms_lib_process_bootblock(ptr noundef %us, i16 noundef zeroext %btBlk2nd.040.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %phi.cmp.i = icmp eq i32 %call63.i, 0
  br i1 %phi.cmp.i, label %if.then62.i.if.end67.i_crit_edge, label %if.then62.i.ms_card_init.exit_crit_edge

if.then62.i.ms_card_init.exit_crit_edge:          ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

if.then62.i.if.end67.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then62.i.if.end67.i_crit_edge, %if.then55.i.if.end67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %btBlk1st.047.i)
  %cmp7152.not.i = icmp eq i16 %btBlk1st.047.i, 0
  br i1 %cmp7152.not.i, label %if.end67.i.for.end77.i_crit_edge, label %for.body73.lr.ph.i

if.end67.i.for.end77.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77.i

for.body73.lr.ph.i:                               ; preds = %if.end67.i
  %Phy2LogMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 10
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.body73.i.for.body73.i_crit_edge, %for.body73.lr.ph.i
  %indvars.iv62.i = phi i32 [ 0, %for.body73.lr.ph.i ], [ %indvars.iv.next63.i, %for.body73.i.for.body73.i_crit_edge ]
  %84 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %Phy2LogMap.i, align 4
  %arrayidx.i = getelementptr i16, ptr %85, i32 %indvars.iv62.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -14, ptr %arrayidx.i, align 2
  %indvars.iv.next63.i = add nuw nsw i32 %indvars.iv62.i, 1
  %exitcond64.not.i = icmp eq i32 %indvars.iv.next63.i, %conv4242.i
  br i1 %exitcond64.not.i, label %for.body73.i.for.end77.i_crit_edge, label %for.body73.i.for.body73.i_crit_edge

for.body73.i.for.body73.i_crit_edge:              ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73.i

for.body73.i.for.end77.i_crit_edge:               ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77.i

for.end77.i:                                      ; preds = %for.body73.i.for.end77.i_crit_edge, %if.end67.i.for.end77.i_crit_edge
  %MS_Lib78.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17
  %Phy2LogMap79.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 10
  %87 = ptrtoint ptr %Phy2LogMap79.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %Phy2LogMap79.i, align 4
  %arrayidx81.i = getelementptr i16, ptr %88, i32 %conv4242.i
  %89 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -15, ptr %arrayidx81.i, align 2
  %conv82.i = zext i16 %btBlk2nd.040.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %btBlk2nd.040.i)
  %cmp83.not.i = icmp eq i16 %btBlk2nd.040.i, -1
  br i1 %cmp83.not.i, label %for.end77.i.if.end105.i_crit_edge, label %for.cond88.preheader.i

for.end77.i.if.end105.i_crit_edge:                ; preds = %for.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

for.cond88.preheader.i:                           ; preds = %for.end77.i
  %TmpBlock.254.i = add i16 %btBlk1st.047.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %TmpBlock.254.i, i16 %btBlk2nd.040.i)
  %cmp9155.i = icmp ult i16 %TmpBlock.254.i, %btBlk2nd.040.i
  br i1 %cmp9155.i, label %for.body93.preheader.i, label %for.cond88.preheader.i.for.end100.i_crit_edge

for.cond88.preheader.i.for.end100.i_crit_edge:    ; preds = %for.cond88.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end100.i

for.body93.preheader.i:                           ; preds = %for.cond88.preheader.i
  %90 = zext i16 %TmpBlock.254.i to i32
  br label %for.body93.i

for.body93.i:                                     ; preds = %for.body93.i.for.body93.i_crit_edge, %for.body93.preheader.i
  %indvars.iv65.i = phi i32 [ %90, %for.body93.preheader.i ], [ %indvars.iv.next66.i, %for.body93.i.for.body93.i_crit_edge ]
  %TmpBlock.256.i = phi i16 [ %TmpBlock.254.i, %for.body93.preheader.i ], [ %TmpBlock.2.i, %for.body93.i.for.body93.i_crit_edge ]
  %91 = ptrtoint ptr %Phy2LogMap79.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %Phy2LogMap79.i, align 4
  %arrayidx97.i = getelementptr i16, ptr %92, i32 %indvars.iv65.i
  %93 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -14, ptr %arrayidx97.i, align 2
  %TmpBlock.2.i = add nuw i16 %TmpBlock.256.i, 1
  %cmp91.i = icmp ult i16 %TmpBlock.2.i, %btBlk2nd.040.i
  %indvars.iv.next66.i = add nuw nsw i32 %indvars.iv65.i, 1
  br i1 %cmp91.i, label %for.body93.i.for.body93.i_crit_edge, label %for.body93.i.for.end100.i_crit_edge

for.body93.i.for.end100.i_crit_edge:              ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end100.i

for.body93.i.for.body93.i_crit_edge:              ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93.i

for.end100.i:                                     ; preds = %for.body93.i.for.end100.i_crit_edge, %for.cond88.preheader.i.for.end100.i_crit_edge
  %94 = ptrtoint ptr %Phy2LogMap79.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %Phy2LogMap79.i, align 4
  %arrayidx104.i = getelementptr i16, ptr %95, i32 %conv82.i
  %96 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -15, ptr %arrayidx104.i, align 2
  br label %if.end105.i

if.end105.i:                                      ; preds = %for.end100.i, %for.end77.i.if.end105.i_crit_edge
  %97 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %extra, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %NumberOfPhyBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %98, i32 0, i32 17, i32 7
  %101 = ptrtoint ptr %NumberOfPhyBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %NumberOfPhyBlock.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp73.not.i.i = icmp eq i16 %102, 0
  br i1 %cmp73.not.i.i, label %if.end105.i.ms_lib_scan_logicalblocknumber.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end105.i.ms_lib_scan_logicalblocknumber.exit.i_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_scan_logicalblocknumber.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end105.i
  %Phy2LogMap.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %98, i32 0, i32 17, i32 10
  %NumberOfLogBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %98, i32 0, i32 17, i32 8
  %Log2PhyMap.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %98, i32 0, i32 17, i32 11
  br label %for.body.i.i

for.cond.loopexit.i.i:                            ; preds = %for.inc.i.i
  %103 = ptrtoint ptr %NumberOfPhyBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %NumberOfPhyBlock.i.i, align 2
  %cmp.i.i = icmp ult i16 %inc114.i.i, %104
  br i1 %cmp.i.i, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge, label %for.cond.loopexit.i.i.ms_lib_scan_logicalblocknumber.exit.i_crit_edge

for.cond.loopexit.i.i.ms_lib_scan_logicalblocknumber.exit.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_scan_logicalblocknumber.exit.i

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.075.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %count.3.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ]
  %PhyBlock.074.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %inc114.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %PhyBlock.074.i.i)
  %tobool.not.i.i4.i = icmp ult i16 %PhyBlock.074.i.i, 512
  %105 = lshr i16 %PhyBlock.074.i.i, 9
  %narrow.i.i.i = mul nuw i16 %105, 496
  %add.i.i.i = add i16 %narrow.i.i.i, -2
  %add5.i.i.i = add nuw i16 %narrow.i.i.i, 494
  %LogStart.0.i.i = select i1 %tobool.not.i.i4.i, i16 0, i16 %add.i.i.i
  %storemerge.i.i.i = select i1 %tobool.not.i.i4.i, i16 494, i16 %add5.i.i.i
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %for.inc.i.i.for.body8.i.i_crit_edge, %for.body.i.i
  %count.172.i.i = phi i32 [ %count.075.i.i, %for.body.i.i ], [ %count.3.i.i, %for.inc.i.i.for.body8.i.i_crit_edge ]
  %i.071.i.i = phi i16 [ 0, %for.body.i.i ], [ %inc.i.i, %for.inc.i.i.for.body8.i.i_crit_edge ]
  %PhyBlock.167.i.i = phi i16 [ %PhyBlock.074.i.i, %for.body.i.i ], [ %inc114.i.i, %for.inc.i.i.for.body8.i.i_crit_edge ]
  %conv9.i.i = zext i16 %PhyBlock.167.i.i to i32
  %106 = ptrtoint ptr %NumberOfPhyBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %NumberOfPhyBlock.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %PhyBlock.167.i.i, i16 %107)
  %cmp13.not.i.i = icmp ult i16 %PhyBlock.167.i.i, %107
  br i1 %cmp13.not.i.i, label %cond.end.i.i, label %for.body8.i.i.for.inc.i.i_crit_edge

for.body8.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

cond.end.i.i:                                     ; preds = %for.body8.i.i
  %108 = ptrtoint ptr %Phy2LogMap.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %Phy2LogMap.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %109, i32 %conv9.i.i
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %111)
  %cond116.i.i = icmp eq i16 %111, -2
  br i1 %cond116.i.i, label %cond.end.i.i.for.inc.i.i_crit_edge, label %sw.epilog.i.i

cond.end.i.i.for.inc.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

sw.epilog.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.172.i.i, i32 %conv9.i.i)
  %cmp18.i.i = icmp eq i32 %count.172.i.i, %conv9.i.i
  br i1 %cmp18.i.i, label %if.then.i.i, label %sw.epilog.i.i.if.end.i.i_crit_edge

sw.epilog.i.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iobuf, align 4
  %114 = getelementptr inbounds i8, ptr %113, i32 4
  %115 = call ptr @memset(ptr %114, i32 0, i32 28)
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1431519811, ptr %113, align 4
  %DataTransferLength.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %113, i32 0, i32 2
  %117 = ptrtoint ptr %DataTransferLength.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 512, ptr %DataTransferLength.i.i.i, align 4
  %Flags.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %113, i32 0, i32 3
  %118 = ptrtoint ptr %Flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -128, ptr %Flags.i.i.i, align 4
  %CDB.i.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %113, i32 0, i32 6
  %119 = ptrtoint ptr %CDB.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -15, ptr %CDB.i.i.i, align 1
  %arrayidx2.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %113, i32 0, i32 6, i32 1
  %120 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 3, ptr %arrayidx2.i.i.i, align 1
  %conv5.i.i.i = trunc i16 %PhyBlock.167.i.i to i8
  %arrayidx7.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %113, i32 0, i32 6, i32 4
  %121 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv5.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %shr.i.i.i = lshr i16 %PhyBlock.167.i.i, 8
  %conv8.i.i.i = trunc i16 %shr.i.i.i to i8
  %arrayidx10.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %113, i32 0, i32 6, i32 3
  %122 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv8.i.i.i, ptr %arrayidx10.i.i.i, align 1
  %arrayidx16.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %113, i32 0, i32 6, i32 6
  %123 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -128, ptr %arrayidx16.i.i.i, align 1
  %call.i.i.i = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %100, i32 noundef 0) #9
  %add.i.i = add i32 %count.172.i.i, 128
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.epilog.i.i.if.end.i.i_crit_edge
  %count.2.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %count.172.i.i, %sw.epilog.i.i.if.end.i.i_crit_edge ]
  %rem.i.i = shl nuw nsw i32 %conv9.i.i, 2
  %mul.i.i = and i32 %rem.i.i, 508
  %arrayidx22.i.i = getelementptr i8, ptr %100, i32 %mul.i.i
  %124 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx22.i.i, align 1
  %add25.i.i = or i32 %mul.i.i, 2
  %arrayidx26.i.i = getelementptr i8, ptr %100, i32 %add25.i.i
  %126 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx26.i.i, align 1
  %conv28.i.i = zext i8 %127 to i16
  %shl.i.i = shl nuw i16 %conv28.i.i, 8
  %add29.i.i = or i32 %mul.i.i, 3
  %arrayidx30.i.i = getelementptr i8, ptr %100, i32 %add29.i.i
  %128 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx30.i.i, align 1
  %conv31.i.i = zext i8 %129 to i16
  %or.i.i = or i16 %shl.i.i, %conv31.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp35.not.i.i = icmp slt i8 %125, 0
  br i1 %cmp35.not.i.i, label %if.end39.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end.i.i
  %130 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %131, i32 0, i32 17, i32 7
  %132 = ptrtoint ptr %NumberOfPhyBlock.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %NumberOfPhyBlock.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %133, i16 %PhyBlock.167.i.i)
  %cmp.not.i.i.i = icmp ugt i16 %133, %PhyBlock.167.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i6.i, label %if.then37.i.i.for.inc.i.i_crit_edge

if.then37.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i6.i:                                    ; preds = %if.then37.i.i
  %Phy2LogMap.i.i5.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %131, i32 0, i32 17, i32 10
  %134 = ptrtoint ptr %Phy2LogMap.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %Phy2LogMap.i.i5.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %135, i32 %conv9.i.i
  %136 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx.i.i.i, align 2
  %NumberOfLogBlock.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %131, i32 0, i32 17, i32 8
  %138 = ptrtoint ptr %NumberOfLogBlock.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %NumberOfLogBlock.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %137, i16 %139)
  %cmp7.i.i.i = icmp ult i16 %137, %139
  br i1 %cmp7.i.i.i, label %if.then9.i.i8.i, label %if.end.i.i6.i.if.end13.i.i.i_crit_edge

if.end.i.i6.i.if.end13.i.i.i_crit_edge:           ; preds = %if.end.i.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.then9.i.i8.i:                                  ; preds = %if.end.i.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i.i = zext i16 %137 to i32
  %Log2PhyMap.i.i7.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %131, i32 0, i32 17, i32 11
  %140 = ptrtoint ptr %Log2PhyMap.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %Log2PhyMap.i.i7.i, align 4
  %arrayidx12.i.i.i = getelementptr i16, ptr %141, i32 %conv4.i.i.i
  %142 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %arrayidx12.i.i.i, align 2
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then9.i.i8.i, %if.end.i.i6.i.if.end13.i.i.i_crit_edge
  %143 = ptrtoint ptr %Phy2LogMap.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %Phy2LogMap.i.i5.i, align 4
  %arrayidx17.i.i.i = getelementptr i16, ptr %144, i32 %conv9.i.i
  %145 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx17.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %146)
  %cmp19.not.i.i.i = icmp eq i16 %146, -14
  br i1 %cmp19.not.i.i.i, label %if.end13.i.i.i.for.inc.i.i_crit_edge, label %if.then21.i.i.i

if.end13.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then21.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -12, ptr %arrayidx17.i.i.i, align 2
  br label %for.inc.i.i

if.end39.i.i:                                     ; preds = %if.end.i.i
  %add23.i.i = or i32 %mul.i.i, 1
  %arrayidx24.i.i = getelementptr i8, ptr %100, i32 %add23.i.i
  %148 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx24.i.i, align 1
  %150 = and i8 %149, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp43.i.i = icmp eq i8 %150, 0
  br i1 %cmp43.i.i, label %if.then45.i.i, label %if.end47.i.i

if.then45.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call46.i.i = tail call fastcc i32 @ms_lib_erase_phyblock(ptr noundef %us, i16 noundef zeroext %PhyBlock.167.i.i) #9
  br label %for.inc.i.i

if.end47.i.i:                                     ; preds = %if.end39.i.i
  %conv49.i.i = zext i16 %or.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or.i.i)
  %cmp50.not.i.i = icmp eq i16 %or.i.i, -1
  br i1 %cmp50.not.i.i, label %if.end47.i.i.for.inc.i.i_crit_edge, label %if.then52.i.i

if.end47.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then52.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i, i16 %LogStart.0.i.i)
  %cmp56.i.i = icmp uge i16 %or.i.i, %LogStart.0.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %storemerge.i.i.i, i16 %or.i.i)
  %cmp61.not.i.i = icmp ugt i16 %storemerge.i.i.i, %or.i.i
  %or.cond.i.i = select i1 %cmp56.i.i, i1 %cmp61.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end65.i.i, label %if.then63.i.i

if.then63.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call64.i.i = tail call fastcc i32 @ms_lib_erase_phyblock(ptr noundef %us, i16 noundef zeroext %PhyBlock.167.i.i) #9
  br label %for.inc.i.i

if.end65.i.i:                                     ; preds = %if.then52.i.i
  %151 = ptrtoint ptr %NumberOfLogBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %NumberOfLogBlock.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i, i16 %152)
  %cmp70.not.i.i = icmp ult i16 %or.i.i, %152
  br i1 %cmp70.not.i.i, label %cond.end79.i.i, label %if.end65.i.i.if.then85.i.i_crit_edge

if.end65.i.i.if.then85.i.i_crit_edge:             ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85.i.i

cond.end79.i.i:                                   ; preds = %if.end65.i.i
  %153 = ptrtoint ptr %Log2PhyMap.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %Log2PhyMap.i.i, align 4
  %arrayidx77.i.i = getelementptr i16, ptr %154, i32 %conv49.i.i
  %155 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx77.i.i, align 2
  %conv82.i.i = zext i16 %156 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %156)
  %cmp83.not.i.i = icmp eq i16 %156, -1
  br i1 %cmp83.not.i.i, label %cond.end79.i.i.if.end110.i.i_crit_edge, label %cond.end79.i.i.if.then85.i.i_crit_edge

cond.end79.i.i.if.then85.i.i_crit_edge:           ; preds = %cond.end79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85.i.i

cond.end79.i.i.if.end110.i.i_crit_edge:           ; preds = %cond.end79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110.i.i

if.then85.i.i:                                    ; preds = %cond.end79.i.i.if.then85.i.i_crit_edge, %if.end65.i.i.if.then85.i.i_crit_edge
  %conv8266.i.i = phi i32 [ %conv82.i.i, %cond.end79.i.i.if.then85.i.i_crit_edge ], [ 65534, %if.end65.i.i.if.then85.i.i_crit_edge ]
  %cond8065.i.i = phi i16 [ %156, %cond.end79.i.i.if.then85.i.i_crit_edge ], [ -2, %if.end65.i.i.if.then85.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i.i)
  %cmp88.i.i = icmp eq i16 %or.i.i, 0
  br i1 %cmp88.i.i, label %if.then90.i.i, label %if.end98.i.i

if.then90.i.i:                                    ; preds = %if.then85.i.i
  %157 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %extra, align 4
  %NumberOfLogBlock.i3.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %158, i32 0, i32 17, i32 8
  %159 = ptrtoint ptr %NumberOfLogBlock.i3.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %NumberOfLogBlock.i3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %cmp.not.i4.not.i.i = icmp eq i16 %160, 0
  br i1 %cmp.not.i4.not.i.i, label %if.then90.i.i.ms_lib_set_logicalpair.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then90.i.i.ms_lib_set_logicalpair.exit.i.i_crit_edge: ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_set_logicalpair.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then90.i.i
  %NumberOfPhyBlock.i5.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %158, i32 0, i32 17, i32 7
  %161 = ptrtoint ptr %NumberOfPhyBlock.i5.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %NumberOfPhyBlock.i5.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %PhyBlock.167.i.i)
  %cmp6.not.i.i.i = icmp ugt i16 %162, %PhyBlock.167.i.i
  br i1 %cmp6.not.i.i.i, label %if.end.i9.i.i, label %lor.lhs.false.i.i.i.ms_lib_set_logicalpair.exit.i.i_crit_edge

lor.lhs.false.i.i.i.ms_lib_set_logicalpair.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_set_logicalpair.exit.i.i

if.end.i9.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %Phy2LogMap.i6.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %158, i32 0, i32 17, i32 10
  %163 = ptrtoint ptr %Phy2LogMap.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %Phy2LogMap.i6.i.i, align 4
  %arrayidx.i7.i.i = getelementptr i16, ptr %164, i32 %conv9.i.i
  %165 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %arrayidx.i7.i.i, align 2
  %Log2PhyMap.i8.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %158, i32 0, i32 17, i32 11
  %166 = ptrtoint ptr %Log2PhyMap.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %Log2PhyMap.i8.i.i, align 4
  %arrayidx11.i.i.i = getelementptr i16, ptr %167, i32 %conv49.i.i
  %168 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %PhyBlock.167.i.i, ptr %arrayidx11.i.i.i, align 2
  br label %ms_lib_set_logicalpair.exit.i.i

ms_lib_set_logicalpair.exit.i.i:                  ; preds = %if.end.i9.i.i, %lor.lhs.false.i.i.i.ms_lib_set_logicalpair.exit.i.i_crit_edge, %if.then90.i.i.ms_lib_set_logicalpair.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extdat.i.i.i) #9
  %169 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %extra, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %171 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3264, i32 noundef 512) #12
  %cmp.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i.i, label %ms_lib_set_logicalpair.exit.i.i.ms_lib_check_disableblock.exit.i.i_crit_edge, label %if.end.i13.i.i

ms_lib_set_logicalpair.exit.i.i.ms_lib_check_disableblock.exit.i.i_crit_edge: ; preds = %ms_lib_set_logicalpair.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_check_disableblock.exit.i.i

if.end.i13.i.i:                                   ; preds = %ms_lib_set_logicalpair.exit.i.i
  %call1.i.i.i = call fastcc i32 @ms_read_readpage(ptr noundef %us, i32 noundef %conv4242.i, i8 noundef zeroext 1, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %extdat.i.i.i) #9
  %Log2PhyMap.i12.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %170, i32 0, i32 17, i32 11
  %172 = ptrtoint ptr %Log2PhyMap.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %Log2PhyMap.i12.i.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %173, align 2
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end.i13.i.i
  %index.0.i.i.i = phi i16 [ 0, %if.end.i13.i.i ], [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %idxprom.i.i.i = zext i16 %index.0.i.i.i to i32
  %arrayidx.i14.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %idxprom.i.i.i
  %176 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i14.i.i, align 1
  %178 = zext i8 %177 to i16
  %cmp11.i.i.i = icmp eq i16 %175, %178
  %inc.i.i.i = add i16 %index.0.i.i.i, 1
  br i1 %cmp11.i.i.i, label %do.body.i.i.i.ms_lib_check_disableblock.exit.i.i_crit_edge, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

do.body.i.i.i.ms_lib_check_disableblock.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_check_disableblock.exit.i.i

ms_lib_check_disableblock.exit.i.i:               ; preds = %do.body.i.i.i.ms_lib_check_disableblock.exit.i.i_crit_edge, %ms_lib_set_logicalpair.exit.i.i.ms_lib_check_disableblock.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extdat.i.i.i) #9
  %179 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %extra, align 4
  %NumberOfLogBlock.i17.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %180, i32 0, i32 17, i32 8
  %181 = ptrtoint ptr %NumberOfLogBlock.i17.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %NumberOfLogBlock.i17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp.not.i18.not.i.i = icmp eq i16 %182, 0
  br i1 %cmp.not.i18.not.i.i, label %ms_lib_check_disableblock.exit.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i21.i.i

ms_lib_check_disableblock.exit.i.i.for.inc.i.i_crit_edge: ; preds = %ms_lib_check_disableblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false.i21.i.i:                            ; preds = %ms_lib_check_disableblock.exit.i.i
  %NumberOfPhyBlock.i19.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %180, i32 0, i32 17, i32 7
  %183 = ptrtoint ptr %NumberOfPhyBlock.i19.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %NumberOfPhyBlock.i19.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %184, i16 %cond8065.i.i)
  %cmp6.not.i20.i.i = icmp ugt i16 %184, %cond8065.i.i
  br i1 %cmp6.not.i20.i.i, label %if.end.i27.i.i, label %lor.lhs.false.i21.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i21.i.i.for.inc.i.i_crit_edge:      ; preds = %lor.lhs.false.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i27.i.i:                                   ; preds = %lor.lhs.false.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %Phy2LogMap.i23.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %180, i32 0, i32 17, i32 10
  %185 = ptrtoint ptr %Phy2LogMap.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %Phy2LogMap.i23.i.i, align 4
  %arrayidx.i24.i.i = getelementptr i16, ptr %186, i32 %conv8266.i.i
  %187 = ptrtoint ptr %arrayidx.i24.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %arrayidx.i24.i.i, align 2
  %Log2PhyMap.i25.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %180, i32 0, i32 17, i32 11
  %188 = ptrtoint ptr %Log2PhyMap.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %Log2PhyMap.i25.i.i, align 4
  %arrayidx11.i26.i.i = getelementptr i16, ptr %189, i32 %conv49.i.i
  %190 = ptrtoint ptr %arrayidx11.i26.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %cond8065.i.i, ptr %arrayidx11.i26.i.i, align 2
  br label %for.inc.i.i

if.end98.i.i:                                     ; preds = %if.then85.i.i
  %191 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %iobuf, align 4
  %193 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %extra, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %197 = getelementptr inbounds i8, ptr %192, i32 4
  %198 = call ptr @memset(ptr %197, i32 0, i32 28)
  %199 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1431519811, ptr %192, align 4
  %DataTransferLength.i31.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %192, i32 0, i32 2
  %200 = ptrtoint ptr %DataTransferLength.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 4, ptr %DataTransferLength.i31.i.i, align 4
  %Flags.i32.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %192, i32 0, i32 3
  %201 = ptrtoint ptr %Flags.i32.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -128, ptr %Flags.i32.i.i, align 4
  %CDB.i33.i.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %192, i32 0, i32 6
  %202 = ptrtoint ptr %CDB.i33.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 -15, ptr %CDB.i33.i.i, align 1
  %arrayidx3.i.i.i = getelementptr %struct.bulk_cb_wrap, ptr %192, i32 0, i32 6, i32 1
  %203 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 3, ptr %arrayidx3.i.i.i, align 1
  %conv.i34.i.i = trunc i32 %conv8266.i.i to i8
  %arrayidx7.i35.i.i = getelementptr %struct.bulk_cb_wrap, ptr %192, i32 0, i32 6, i32 4
  %204 = ptrtoint ptr %arrayidx7.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv.i34.i.i, ptr %arrayidx7.i35.i.i, align 1
  %shr.i36.i.i = lshr i32 %conv8266.i.i, 8
  %conv8.i37.i.i = trunc i32 %shr.i36.i.i to i8
  %arrayidx10.i38.i.i = getelementptr %struct.bulk_cb_wrap, ptr %192, i32 0, i32 6, i32 3
  %205 = ptrtoint ptr %arrayidx10.i38.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv8.i37.i.i, ptr %arrayidx10.i38.i.i, align 1
  %arrayidx16.i39.i.i = getelementptr %struct.bulk_cb_wrap, ptr %192, i32 0, i32 6, i32 6
  %206 = ptrtoint ptr %arrayidx16.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %arrayidx16.i39.i.i, align 1
  %call.i40.i.i = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %196, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i.i)
  %cmp.not.i41.i.i = icmp eq i32 %call.i40.i.i, 0
  br i1 %cmp.not.i41.i.i, label %if.end.i42.i.i, label %if.end98.i.i.ms_lib_read_extra.exit.i.i_crit_edge

if.end98.i.i.ms_lib_read_extra.exit.i.i_crit_edge: ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_read_extra.exit.i.i

if.end.i42.i.i:                                   ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %196 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %196, align 1
  %arrayidx20.i.i.i = getelementptr i8, ptr %196, i32 2
  %209 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx20.i.i.i, align 1
  %conv22.i.i.i = zext i8 %210 to i16
  %shl.i.i.i = shl nuw i16 %conv22.i.i.i, 8
  %arrayidx23.i.i.i = getelementptr i8, ptr %196, i32 3
  %211 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx23.i.i.i, align 1
  %conv24.i.i.i = zext i8 %212 to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv24.i.i.i
  br label %ms_lib_read_extra.exit.i.i

ms_lib_read_extra.exit.i.i:                       ; preds = %if.end.i42.i.i, %if.end98.i.i.ms_lib_read_extra.exit.i.i_crit_edge
  %extdat.sroa.19.0.i.i = phi i16 [ %or.i.i.i, %if.end.i42.i.i ], [ %or.i.i, %if.end98.i.i.ms_lib_read_extra.exit.i.i_crit_edge ]
  %extdat.sroa.10.0.i.i = phi i8 [ %208, %if.end.i42.i.i ], [ %125, %if.end98.i.i.ms_lib_read_extra.exit.i.i_crit_edge ]
  %213 = and i8 %extdat.sroa.10.0.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp104.i.i = icmp eq i8 %213, 0
  br i1 %cmp104.i.i, label %if.then106.i.i, label %if.else.i.i

if.then106.i.i:                                   ; preds = %ms_lib_read_extra.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call107.i.i = tail call fastcc i32 @ms_lib_erase_phyblock(ptr noundef %us, i16 noundef zeroext %PhyBlock.167.i.i) #9
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %ms_lib_read_extra.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call108.i.i = tail call fastcc i32 @ms_lib_erase_phyblock(ptr noundef %us, i16 noundef zeroext %cond8065.i.i) #9
  %.pre.i.i = zext i16 %extdat.sroa.19.0.i.i to i32
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.else.i.i, %cond.end79.i.i.if.end110.i.i_crit_edge
  %conv.i44.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.else.i.i ], [ %conv49.i.i, %cond.end79.i.i.if.end110.i.i_crit_edge ]
  %extdat.sroa.19.1.i.i = phi i16 [ %extdat.sroa.19.0.i.i, %if.else.i.i ], [ %or.i.i, %cond.end79.i.i.if.end110.i.i_crit_edge ]
  %214 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %extra, align 4
  %NumberOfLogBlock.i45.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %215, i32 0, i32 17, i32 8
  %216 = ptrtoint ptr %NumberOfLogBlock.i45.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %NumberOfLogBlock.i45.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %217, i16 %extdat.sroa.19.1.i.i)
  %cmp.not.i46.i.i = icmp ugt i16 %217, %extdat.sroa.19.1.i.i
  br i1 %cmp.not.i46.i.i, label %lor.lhs.false.i49.i.i, label %if.end110.i.i.for.inc.i.i_crit_edge

if.end110.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false.i49.i.i:                            ; preds = %if.end110.i.i
  %NumberOfPhyBlock.i47.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %215, i32 0, i32 17, i32 7
  %218 = ptrtoint ptr %NumberOfPhyBlock.i47.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %NumberOfPhyBlock.i47.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %219, i16 %PhyBlock.167.i.i)
  %cmp6.not.i48.i.i = icmp ugt i16 %219, %PhyBlock.167.i.i
  br i1 %cmp6.not.i48.i.i, label %if.end.i55.i.i, label %lor.lhs.false.i49.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i49.i.i.for.inc.i.i_crit_edge:      ; preds = %lor.lhs.false.i49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i55.i.i:                                   ; preds = %lor.lhs.false.i49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %Phy2LogMap.i51.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %215, i32 0, i32 17, i32 10
  %220 = ptrtoint ptr %Phy2LogMap.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %Phy2LogMap.i51.i.i, align 4
  %arrayidx.i52.i.i = getelementptr i16, ptr %221, i32 %conv9.i.i
  %222 = ptrtoint ptr %arrayidx.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %extdat.sroa.19.1.i.i, ptr %arrayidx.i52.i.i, align 2
  %Log2PhyMap.i53.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %215, i32 0, i32 17, i32 11
  %223 = ptrtoint ptr %Log2PhyMap.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %Log2PhyMap.i53.i.i, align 4
  %arrayidx11.i54.i.i = getelementptr i16, ptr %224, i32 %conv.i44.pre-phi.i.i
  %225 = ptrtoint ptr %arrayidx11.i54.i.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %PhyBlock.167.i.i, ptr %arrayidx11.i54.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i55.i.i, %lor.lhs.false.i49.i.i.for.inc.i.i_crit_edge, %if.end110.i.i.for.inc.i.i_crit_edge, %if.then106.i.i, %if.end.i27.i.i, %lor.lhs.false.i21.i.i.for.inc.i.i_crit_edge, %ms_lib_check_disableblock.exit.i.i.for.inc.i.i_crit_edge, %if.then63.i.i, %if.end47.i.i.for.inc.i.i_crit_edge, %if.then45.i.i, %if.then21.i.i.i, %if.end13.i.i.i.for.inc.i.i_crit_edge, %if.then37.i.i.for.inc.i.i_crit_edge, %cond.end.i.i.for.inc.i.i_crit_edge, %for.body8.i.i.for.inc.i.i_crit_edge
  %count.3.i.i = phi i32 [ %count.172.i.i, %cond.end.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %if.then45.i.i ], [ %count.2.i.i, %if.then63.i.i ], [ %count.2.i.i, %if.then106.i.i ], [ %count.2.i.i, %if.end47.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %if.then37.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %if.end13.i.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %if.then21.i.i.i ], [ %count.2.i.i, %ms_lib_check_disableblock.exit.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %lor.lhs.false.i21.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %if.end.i27.i.i ], [ %count.2.i.i, %if.end110.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %lor.lhs.false.i49.i.i.for.inc.i.i_crit_edge ], [ %count.2.i.i, %if.end.i55.i.i ], [ %count.172.i.i, %for.body8.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i16 %i.071.i.i, 1
  %inc114.i.i = add i16 %PhyBlock.167.i.i, 1
  %cmp6.i.i = icmp ult i16 %i.071.i.i, 511
  br i1 %cmp6.i.i, label %for.inc.i.i.for.body8.i.i_crit_edge, label %for.cond.loopexit.i.i

for.inc.i.i.for.body8.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i.i

ms_lib_scan_logicalblocknumber.exit.i:            ; preds = %for.cond.loopexit.i.i.ms_lib_scan_logicalblocknumber.exit.i_crit_edge, %if.end105.i.ms_lib_scan_logicalblocknumber.exit.i_crit_edge
  %NumberOfPhyBlock.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 7
  %226 = ptrtoint ptr %NumberOfPhyBlock.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %NumberOfPhyBlock.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %227)
  %cmp11457.i = icmp ugt i16 %227, 512
  br i1 %cmp11457.i, label %for.body116.lr.ph.i, label %ms_lib_scan_logicalblocknumber.exit.i.for.end129.i_crit_edge

ms_lib_scan_logicalblocknumber.exit.i.for.end129.i_crit_edge: ; preds = %ms_lib_scan_logicalblocknumber.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129.i

for.body116.lr.ph.i:                              ; preds = %ms_lib_scan_logicalblocknumber.exit.i
  %228 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %extra, align 4
  %Phy2LogMap.i11.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %229, i32 0, i32 17, i32 10
  %230 = ptrtoint ptr %Phy2LogMap.i11.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %Phy2LogMap.i11.i, align 4
  br label %for.body116.i

for.cond110.i:                                    ; preds = %ms_count_freeblock.exit.i
  %add127.i = add i16 %TmpBlock.358.i, 512
  %cmp114.i = icmp ult i16 %add127.i, %227
  br i1 %cmp114.i, label %for.cond110.i.for.body116.i_crit_edge, label %for.cond110.i.for.end129.i_crit_edge

for.cond110.i.for.end129.i_crit_edge:             ; preds = %for.cond110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129.i

for.cond110.i.for.body116.i_crit_edge:            ; preds = %for.cond110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body116.i

for.body116.i:                                    ; preds = %for.cond110.i.for.body116.i_crit_edge, %for.body116.lr.ph.i
  %TmpBlock.358.i = phi i16 [ 512, %for.body116.lr.ph.i ], [ %add127.i, %for.cond110.i.for.body116.i_crit_edge ]
  %conv.i.i = zext i16 %TmpBlock.358.i to i32
  %add.i9.i = add nuw nsw i32 %conv.i.i, 512
  br label %for.body.i14.i

for.body.i14.i:                                   ; preds = %for.inc.i17.i.for.body.i14.i_crit_edge, %for.body116.i
  %conv113.i.i = phi i32 [ %conv.i.i, %for.body116.i ], [ %conv1.i.i, %for.inc.i17.i.for.body.i14.i_crit_edge ]
  %Count.012.i.i = phi i32 [ 0, %for.body116.i ], [ %Count.1.i.i, %for.inc.i17.i.for.body.i14.i_crit_edge ]
  %PhyBlock.addr.011.i.i = phi i16 [ %TmpBlock.358.i, %for.body116.i ], [ %inc4.i.i, %for.inc.i17.i.for.body.i14.i_crit_edge ]
  %arrayidx.i13.i = getelementptr i16, ptr %231, i32 %conv113.i.i
  %232 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx.i13.i, align 2
  %234 = zext i16 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %233, label %for.body.i14.i.for.inc.i17.i_crit_edge [
    i16 -1, label %for.body.i14.i.sw.bb.i.i_crit_edge
    i16 -11, label %for.body.i14.i.sw.bb.i.i_crit_edge153
  ]

for.body.i14.i.sw.bb.i.i_crit_edge153:            ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

for.body.i14.i.sw.bb.i.i_crit_edge:               ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

for.body.i14.i.for.inc.i17.i_crit_edge:           ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i17.i

sw.bb.i.i:                                        ; preds = %for.body.i14.i.sw.bb.i.i_crit_edge, %for.body.i14.i.sw.bb.i.i_crit_edge153
  %inc.i15.i = add i32 %Count.012.i.i, 1
  br label %for.inc.i17.i

for.inc.i17.i:                                    ; preds = %sw.bb.i.i, %for.body.i14.i.for.inc.i17.i_crit_edge
  %Count.1.i.i = phi i32 [ %Count.012.i.i, %for.body.i14.i.for.inc.i17.i_crit_edge ], [ %inc.i15.i, %sw.bb.i.i ]
  %inc4.i.i = add i16 %PhyBlock.addr.011.i.i, 1
  %conv1.i.i = zext i16 %inc4.i.i to i32
  %cmp.i16.i = icmp ugt i32 %add.i9.i, %conv1.i.i
  br i1 %cmp.i16.i, label %for.inc.i17.i.for.body.i14.i_crit_edge, label %ms_count_freeblock.exit.i

for.inc.i17.i.for.body.i14.i_crit_edge:           ; preds = %for.inc.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14.i

ms_count_freeblock.exit.i:                        ; preds = %for.inc.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Count.1.i.i)
  %cmp118.i = icmp eq i32 %Count.1.i.i, 0
  br i1 %cmp118.i, label %if.then120.i, label %for.cond110.i

if.then120.i:                                     ; preds = %ms_count_freeblock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %235 = ptrtoint ptr %MS_Lib78.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %MS_Lib78.i, align 4
  %or123.i = or i32 %236, 2
  store i32 %or123.i, ptr %MS_Lib78.i, align 4
  br label %for.end129.i

for.end129.i:                                     ; preds = %if.then120.i, %for.cond110.i.for.end129.i_crit_edge, %ms_lib_scan_logicalblocknumber.exit.i.for.end129.i_crit_edge
  %237 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %extra, align 4
  %wrtblk.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %238, i32 0, i32 17, i32 12
  %239 = ptrtoint ptr %wrtblk.i.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 -1, ptr %wrtblk.i.i, align 4
  %PagesPerBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %238, i32 0, i32 17, i32 6
  %240 = ptrtoint ptr %PagesPerBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %PagesPerBlock.i.i, align 4
  %conv.i19.i = zext i16 %241 to i32
  %BytesPerSector.i20.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %238, i32 0, i32 17, i32 1
  %242 = ptrtoint ptr %BytesPerSector.i20.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %BytesPerSector.i20.i, align 4
  %244 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv.i19.i, i32 %243) #9
  %245 = extractvalue { i32, i1 } %244, 1
  br i1 %245, label %for.end129.i.kmalloc_array.exit.i.i_crit_edge, label %if.end7.i.i.i, !prof !189

for.end129.i.kmalloc_array.exit.i.i_crit_edge:    ; preds = %for.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc_array.exit.i.i

if.end7.i.i.i:                                    ; preds = %for.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  %246 = extractvalue { i32, i1 } %244, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %246, i32 noundef 3264) #14
  br label %kmalloc_array.exit.i.i

kmalloc_array.exit.i.i:                           ; preds = %if.end7.i.i.i, %for.end129.i.kmalloc_array.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %for.end129.i.kmalloc_array.exit.i.i_crit_edge ]
  %blkpag.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %238, i32 0, i32 17, i32 14
  %247 = ptrtoint ptr %blkpag.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %retval.0.i.i.i, ptr %blkpag.i.i, align 4
  %248 = ptrtoint ptr %PagesPerBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %PagesPerBlock.i.i, align 4
  %conv6.i.i = zext i16 %249 to i32
  %250 = shl nuw nsw i32 %conv6.i.i, 3
  %call8.i55.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %250, i32 noundef 3264) #14
  %blkext.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %238, i32 0, i32 17, i32 15
  %251 = ptrtoint ptr %blkext.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call8.i55.i.i, ptr %blkext.i.i, align 4
  %252 = ptrtoint ptr %blkpag.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %blkpag.i.i, align 4
  %cmp.i23.i = icmp eq ptr %253, null
  %cmp14.i.i = icmp eq ptr %call8.i55.i.i, null
  %or.cond.i24.i = select i1 %cmp.i23.i, i1 true, i1 %cmp14.i.i
  %254 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %extra, align 4
  %wrtblk.i.i25.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 12
  %256 = ptrtoint ptr %wrtblk.i.i25.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 -1, ptr %wrtblk.i.i25.i, align 4
  %pagemap.i.i26.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 13
  %257 = call ptr @memset(ptr %pagemap.i.i26.i, i32 0, i32 16)
  %blkpag.i.i27.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 14
  %258 = ptrtoint ptr %blkpag.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %blkpag.i.i27.i, align 4
  %tobool.not.i.i28.i = icmp eq ptr %259, null
  br i1 %or.cond.i24.i, label %if.then.i29.i, label %if.end.i34.i

if.then.i29.i:                                    ; preds = %kmalloc_array.exit.i.i
  br i1 %tobool.not.i.i28.i, label %if.then.i29.i.if.end.i59.i.i_crit_edge, label %if.then.i.i30.i

if.then.i29.i.if.end.i59.i.i_crit_edge:           ; preds = %if.then.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i59.i.i

if.then.i.i30.i:                                  ; preds = %if.then.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %259) #9
  %260 = ptrtoint ptr %blkpag.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %blkpag.i.i27.i, align 4
  br label %if.end.i59.i.i

if.end.i59.i.i:                                   ; preds = %if.then.i.i30.i, %if.then.i29.i.if.end.i59.i.i_crit_edge
  %blkext.i.i31.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 15
  %261 = ptrtoint ptr %blkext.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %blkext.i.i31.i, align 4
  %tobool8.not.i.i32.i = icmp eq ptr %262, null
  br i1 %tobool8.not.i.i32.i, label %if.end.i59.i.i.ms_card_init.exit_crit_edge, label %if.then9.i.i33.i

if.end.i59.i.i.ms_card_init.exit_crit_edge:       ; preds = %if.end.i59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

if.then9.i.i33.i:                                 ; preds = %if.end.i59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %262) #9
  %263 = ptrtoint ptr %blkext.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr null, ptr %blkext.i.i31.i, align 4
  br label %ms_card_init.exit

if.end.i34.i:                                     ; preds = %kmalloc_array.exit.i.i
  br i1 %tobool.not.i.i28.i, label %if.end.i34.i.if.end.i68.i.i_crit_edge, label %if.then.i65.i.i

if.end.i34.i.if.end.i68.i.i_crit_edge:            ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i68.i.i

if.then.i65.i.i:                                  ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  %PagesPerBlock.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 6
  %264 = ptrtoint ptr %PagesPerBlock.i.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %PagesPerBlock.i.i.i, align 4
  %conv.i.i.i = zext i16 %265 to i32
  %BytesPerSector.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 1
  %266 = ptrtoint ptr %BytesPerSector.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %BytesPerSector.i.i.i, align 4
  %mul.i.i.i = mul i32 %267, %conv.i.i.i
  %268 = call ptr @memset(ptr %259, i32 255, i32 %mul.i.i.i)
  br label %if.end.i68.i.i

if.end.i68.i.i:                                   ; preds = %if.then.i65.i.i, %if.end.i34.i.if.end.i68.i.i_crit_edge
  %blkext.i66.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 15
  %269 = ptrtoint ptr %blkext.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %blkext.i66.i.i, align 4
  %tobool8.not.i67.i.i = icmp eq ptr %270, null
  br i1 %tobool8.not.i67.i.i, label %if.end.i68.i.i.ms_card_init.exit_crit_edge, label %for.cond.preheader.i.i.i

if.end.i68.i.i.ms_card_init.exit_crit_edge:       ; preds = %if.end.i68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

for.cond.preheader.i.i.i:                         ; preds = %if.end.i68.i.i
  %PagesPerBlock11.i.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %255, i32 0, i32 17, i32 6
  %271 = ptrtoint ptr %PagesPerBlock11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %PagesPerBlock11.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %272)
  %cmp43.not.i.i.i = icmp eq i16 %272, 0
  br i1 %cmp43.not.i.i.i, label %for.cond.preheader.i.i.i.ms_card_init.exit_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.ms_card_init.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.044.i.i.i = phi i32 [ %inc.i.i35.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %273 = ptrtoint ptr %blkext.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %blkext.i66.i.i, align 4
  %status1.i.i.i = getelementptr %struct.ms_lib_type_extdat, ptr %274, i32 %i.044.i.i.i, i32 3
  %275 = ptrtoint ptr %status1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 -1, ptr %status1.i.i.i, align 1
  %276 = load ptr, ptr %blkext.i66.i.i, align 4
  %ovrflg.i.i.i = getelementptr %struct.ms_lib_type_extdat, ptr %276, i32 %i.044.i.i.i, i32 4
  %277 = ptrtoint ptr %ovrflg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 -8, ptr %ovrflg.i.i.i, align 2
  %278 = load ptr, ptr %blkext.i66.i.i, align 4
  %mngflg.i.i.i = getelementptr %struct.ms_lib_type_extdat, ptr %278, i32 %i.044.i.i.i, i32 5
  %279 = ptrtoint ptr %mngflg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 -1, ptr %mngflg.i.i.i, align 1
  %280 = load ptr, ptr %blkext.i66.i.i, align 4
  %logadr.i.i.i = getelementptr %struct.ms_lib_type_extdat, ptr %280, i32 %i.044.i.i.i, i32 6
  %281 = ptrtoint ptr %logadr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 -1, ptr %logadr.i.i.i, align 2
  %inc.i.i35.i = add nuw nsw i32 %i.044.i.i.i, 1
  %282 = ptrtoint ptr %PagesPerBlock11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %PagesPerBlock11.i.i.i, align 4
  %conv12.i.i.i = zext i16 %283 to i32
  %cmp.i.i36.i = icmp ult i32 %inc.i.i35.i, %conv12.i.i.i
  br i1 %cmp.i.i36.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.ms_card_init.exit_crit_edge

for.body.i.i.i.ms_card_init.exit_crit_edge:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_card_init.exit

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

ms_card_init.exit:                                ; preds = %for.body.i.i.i.ms_card_init.exit_crit_edge, %for.cond.preheader.i.i.i.ms_card_init.exit_crit_edge, %if.end.i68.i.i.ms_card_init.exit_crit_edge, %if.then9.i.i33.i, %if.end.i59.i.i.ms_card_init.exit_crit_edge, %if.then62.i.ms_card_init.exit_crit_edge, %land.lhs.true.i.ms_card_init.exit_crit_edge, %for.end.i.ms_card_init.exit_crit_edge, %ms_lib_free_allocatedarea.exit.i.ms_card_init.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i2.i) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extdat.i) #9
  br label %if.end96

if.end96:                                         ; preds = %ms_card_init.exit, %if.then80
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.else97:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %284 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %5, align 1
  %conv99 = zext i8 %285 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.60, i32 noundef %conv99) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else97, %if.end96, %do.end15, %do.end5
  %retval.0 = phi i32 [ 3, %do.end5 ], [ 3, %do.end15 ], [ 0, %if.end96 ], [ 3, %if.else97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext %flag) unnamed_addr #2 align 64 {
entry:
  %sd_fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd_fw) #9
  %0 = ptrtoint ptr %sd_fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sd_fw, align 4
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %1 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobuf, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extra, align 4
  %BIN_FLAG = getelementptr inbounds %struct.ene_ub6250_info, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %BIN_FLAG to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %BIN_FLAG, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %flag)
  %cmp = icmp eq i8 %6, %flag
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i8 %flag, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 6
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.30) #9
  br label %nofw

switch.lookup:                                    ; preds = %if.end
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.ene_load_bincode, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %10 = sext i8 %switch.tableidx to i32
  %switch.gep53 = getelementptr inbounds [6 x ptr], ptr @switch.table.ene_load_bincode.84, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load54 = load ptr, ptr %switch.gep53, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %switch.load) #9
  %pusb_dev = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %12 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pusb_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef nonnull %sd_fw, ptr noundef nonnull %switch.load54, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31, ptr noundef nonnull %switch.load54) #9
  br label %nofw

if.end10:                                         ; preds = %switch.lookup
  %14 = ptrtoint ptr %sd_fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %call11 = call ptr @kmemdup(ptr noundef %17, i32 noundef %19, i32 noundef 3264) #9
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.end10.nofw_crit_edge, label %if.end15

if.end10.nofw_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %nofw

if.end15:                                         ; preds = %if.end10
  %20 = getelementptr inbounds i8, ptr %2, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 28)
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1431519811, ptr %2, align 4
  %23 = ptrtoint ptr %sd_fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_fw, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %DataTransferLength = getelementptr inbounds %struct.bulk_cb_wrap, ptr %2, i32 0, i32 2
  %27 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %DataTransferLength, align 4
  %Flags = getelementptr inbounds %struct.bulk_cb_wrap, ptr %2, i32 0, i32 3
  %28 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %Flags, align 4
  %CDB = getelementptr inbounds %struct.bulk_cb_wrap, ptr %2, i32 0, i32 6
  %29 = ptrtoint ptr %CDB to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -17, ptr %CDB, align 1
  %call17 = call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %call11, i32 noundef 0)
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %30 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %srb, align 4
  %cmp18.not = icmp eq ptr %31, null
  br i1 %cmp18.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %resid_len.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  %33 = ptrtoint ptr %BIN_FLAG to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %flag, ptr %BIN_FLAG, align 4
  call void @kfree(ptr noundef nonnull %call11) #9
  br label %nofw

nofw:                                             ; preds = %if.end22, %if.end10.nofw_crit_edge, %if.then9, %sw.default
  %result.0 = phi i32 [ 3, %sw.default ], [ 3, %if.then9 ], [ 3, %if.end10.nofw_crit_edge ], [ %call17, %if.end22 ]
  %34 = ptrtoint ptr %sd_fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_fw, align 4
  call void @release_firmware(ptr noundef %35) #9
  br label %cleanup

cleanup:                                          ; preds = %nofw, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %nofw ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd_fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext %fDir, ptr noundef %buf, i32 noundef %use_sg) unnamed_addr #2 align 64 {
entry:
  %cswlen = alloca i32, align 4
  %partial = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cswlen) #9
  %2 = ptrtoint ptr %cswlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cswlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %partial) #9
  %3 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %partial, align 4
  %DataTransferLength = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DataTransferLength, align 4
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %6 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_bulk_pipe, align 4
  %call = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %7, ptr noundef %1, i32 noundef 31, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32) #9
  br label %cleanup67

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %if.then2

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %fDir)
  %cmp4 = icmp eq i8 %fDir, 1
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %pipe.0.in = select i1 %cmp4, ptr %recv_bulk_pipe, ptr %send_bulk_pipe
  %8 = ptrtoint ptr %pipe.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %pipe.0 = load i32, ptr %pipe.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_sg)
  %tobool9.not = icmp eq i32 %use_sg, 0
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %9 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %srb, align 4
  %call11 = tail call i32 @usb_stor_bulk_srb(ptr noundef %us, i32 noundef %pipe.0, ptr noundef %10) #9
  br label %if.end14

if.else12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %pipe.0, ptr noundef nonnull %buf, i32 noundef %5, i32 noundef 0, ptr noundef nonnull %partial) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  %result.0 = phi i32 [ %call11, %if.then10 ], [ %call13, %if.else12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp15.not = icmp eq i32 %result.0, 0
  br i1 %cmp15.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33) #9
  br label %cleanup67

if.end19:                                         ; preds = %if.end14.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %recv_bulk_pipe20 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %11 = ptrtoint ptr %recv_bulk_pipe20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recv_bulk_pipe20, align 4
  %call21 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %12, ptr noundef %1, i32 noundef 13, ptr noundef nonnull %cswlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end19
  %13 = ptrtoint ptr %cswlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cswlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true.cleanup67_crit_edge

land.lhs.true.cleanup67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34) #9
  %15 = ptrtoint ptr %recv_bulk_pipe20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %recv_bulk_pipe20, align 4
  %call28 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %16, ptr noundef %1, i32 noundef 13, ptr noundef nonnull %cswlen) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end19.if.end29_crit_edge
  %result.1 = phi i32 [ %call28, %if.then26 ], [ %call21, %if.end19.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %result.1)
  %cmp30 = icmp eq i32 %result.1, 2
  br i1 %cmp30, label %if.then32, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.35) #9
  %17 = ptrtoint ptr %recv_bulk_pipe20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %recv_bulk_pipe20, align 4
  %call34 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %18, ptr noundef %1, i32 noundef 13, ptr noundef null) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %result.2 = phi i32 [ %call34, %if.then32 ], [ %result.1, %if.end29.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %cmp36.not = icmp eq i32 %result.2, 0
  br i1 %cmp36.not, label %if.end39, label %if.end35.cleanup67_crit_edge

if.end35.cleanup67_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

if.end39:                                         ; preds = %if.end35
  %19 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DataTransferLength, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool40.not = icmp eq i32 %20, 0
  br i1 %tobool40.not, label %if.end39.if.end61_crit_edge, label %land.lhs.true41

if.end39.if.end61_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true41:                                  ; preds = %if.end39
  %fflags = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 4
  %22 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fflags, align 4
  %and = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true41.if.end61_crit_edge

land.lhs.true41.if.end61_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then43:                                        ; preds = %land.lhs.true41
  %srb46 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %24 = ptrtoint ptr %srb46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %srb46, align 4
  %cmp47.not = icmp eq ptr %25, null
  br i1 %cmp47.not, label %if.then43.if.end61_crit_edge, label %if.then49

if.then43.if.end61_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %26 = call i32 @llvm.umin.i32(i32 %21, i32 %5)
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %25, i32 0, i32 5
  %27 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resid_len.i, align 4
  %29 = call i32 @llvm.umax.i32(i32 %28, i32 %26)
  %30 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %resid_len.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then49, %if.then43.if.end61_crit_edge, %land.lhs.true41.if.end61_crit_edge, %if.end39.if.end61_crit_edge
  %Status = getelementptr inbounds %struct.bulk_cs_wrap, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %Status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %Status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp63.not = icmp eq i8 %32, 0
  %.118 = select i1 %cmp63.not, i32 0, i32 3
  br label %cleanup67

cleanup67:                                        ; preds = %if.end61, %if.end35.cleanup67_crit_edge, %land.lhs.true.cleanup67_crit_edge, %if.then17, %if.then
  %retval.1 = phi i32 [ 3, %if.then ], [ 3, %if.then17 ], [ 3, %if.end35.cleanup67_crit_edge ], [ %.118, %if.end61 ], [ 3, %land.lhs.true.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %partial) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cswlen) #9
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ene_get_card_status(ptr nocapture noundef readonly %us, ptr nocapture noundef readonly %buf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 24
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %3, 8
  %4 = trunc i32 %shr to i8
  %conv = and i8 %4, 15
  %SD_READ_BL_LEN = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %SD_READ_BL_LEN to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %SD_READ_BL_LEN, align 2
  %arrayidx2 = getelementptr i8, ptr %buf, i32 20
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %SD_Status = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %SD_Status to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %SD_Status, align 4
  %9 = and i8 %bf.load, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %10 = icmp eq i8 %9, 8
  br i1 %10, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr9 = lshr i32 %7, 8
  %and10 = and i32 %shr9, 4194303
  %HC_C_SIZE = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %HC_C_SIZE to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and10, ptr %HC_C_SIZE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and12 = shl i32 %3, 10
  %shl = and i32 %and12, 3072
  %shr13 = lshr i32 %7, 22
  %or = or i32 %shr13, %shl
  %conv16 = trunc i32 %or to i16
  %SD_C_SIZE = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %SD_C_SIZE to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv16, ptr %SD_C_SIZE, align 4
  %shr17 = lshr i32 %7, 7
  %13 = trunc i32 %shr17 to i8
  %conv21 = and i8 %13, 7
  %SD_C_SIZE_MULT = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %SD_C_SIZE_MULT to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %SD_C_SIZE_MULT, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %9)
  %.not = icmp eq i8 %9, 24
  br i1 %.not, label %if.then35, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36 = getelementptr i8, ptr %buf, i32 256
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx36, align 4
  %HC_C_SIZE37 = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %HC_C_SIZE37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %HC_C_SIZE37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv)
  %cmp = icmp ugt i8 %conv, 9
  br i1 %cmp, label %if.then42, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %conv40 = zext i8 %conv to i32
  %sub = add nsw i32 %conv40, -9
  %shl45 = shl nuw nsw i32 1, %sub
  %conv46 = trunc i32 %shl45 to i16
  %18 = ptrtoint ptr %SD_READ_BL_LEN to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %SD_READ_BL_LEN, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.end38.if.end49_crit_edge
  %.sink = phi i16 [ %conv46, %if.then42 ], [ 1, %if.end38.if.end49_crit_edge ]
  %19 = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink, ptr %19, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_srb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_readpage(ptr noundef %us, i32 noundef %PhyBlockAddr, i8 noundef zeroext %PageNum, ptr noundef %PageBuf, ptr nocapture noundef writeonly %ExtraDat) unnamed_addr #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %PhyBlockAddr, 5
  %conv = zext i8 %PageNum to i32
  %add = add i32 %mul, %conv
  %6 = getelementptr inbounds i8, ptr %1, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 28)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1431519811, ptr %1, align 4
  %DataTransferLength = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %DataTransferLength, align 4
  %Flags = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %Flags, align 4
  %CDB = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %CDB to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -15, ptr %CDB, align 1
  %arrayidx4 = getelementptr %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %arrayidx4, align 1
  %conv5 = trunc i32 %add to i8
  %arrayidx7 = getelementptr %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 5
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5, ptr %arrayidx7, align 1
  %shr = lshr i32 %add, 8
  %conv8 = trunc i32 %shr to i8
  %arrayidx10 = getelementptr %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %add, 16
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx14 = getelementptr %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12, ptr %arrayidx14, align 1
  %call19 = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %PageBuf, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %16 = getelementptr inbounds i8, ptr %1, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 28)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1431519811, ptr %1, align 4
  %19 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %DataTransferLength, align 4
  %20 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %Flags, align 4
  %21 = ptrtoint ptr %CDB to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -15, ptr %CDB, align 1
  %22 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %arrayidx4, align 1
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %PageNum, ptr %arrayidx7, align 1
  %conv33 = trunc i32 %PhyBlockAddr to i8
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv33, ptr %arrayidx10, align 1
  %shr36 = lshr i32 %PhyBlockAddr, 8
  %conv37 = trunc i32 %shr36 to i8
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv37, ptr %arrayidx14, align 1
  %arrayidx45 = getelementptr %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 6
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx45, align 1
  %call46 = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end50, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ExtraDat to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ExtraDat, align 2
  %intr = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %ExtraDat, i32 0, i32 1
  %28 = ptrtoint ptr %intr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %intr, align 1
  %status0 = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %ExtraDat, i32 0, i32 2
  %29 = ptrtoint ptr %status0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %status0, align 2
  %status1 = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %ExtraDat, i32 0, i32 3
  %30 = ptrtoint ptr %status1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %status1, align 1
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 1
  %ovrflg = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %ExtraDat, i32 0, i32 4
  %33 = ptrtoint ptr %ovrflg to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %ovrflg, align 2
  %arrayidx52 = getelementptr i8, ptr %5, i32 1
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx52, align 1
  %mngflg = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %ExtraDat, i32 0, i32 5
  %36 = ptrtoint ptr %mngflg to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %mngflg, align 1
  %arrayidx53 = getelementptr i8, ptr %5, i32 2
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx53, align 1
  %conv55 = zext i8 %38 to i16
  %shl = shl nuw i16 %conv55, 8
  %arrayidx56 = getelementptr i8, ptr %5, i32 3
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %40 to i16
  %or = or i16 %shl, %conv57
  %logadr = getelementptr inbounds %struct.ms_lib_type_extdat, ptr %ExtraDat, i32 0, i32 6
  %41 = ptrtoint ptr %logadr to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %or, ptr %logadr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_lib_process_bootblock(ptr noundef %us, i16 noundef zeroext %PhyBlock, ptr nocapture noundef readonly %PageData) unnamed_addr #2 align 64 {
entry:
  %ExtraData = alloca %struct.ms_lib_type_extdat, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ExtraData) #9
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 512) #12
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup161_crit_edge, label %if.end

entry.cleanup161_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup161

if.end:                                           ; preds = %entry
  %sysinf = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2
  %3 = ptrtoint ptr %sysinf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sysinf, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp1.not = icmp eq i8 %4, 1
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.if.then158_crit_edge

if.end.if.then158_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

lor.lhs.false:                                    ; preds = %if.end
  %wPageSize = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %wPageSize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %wPageSize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %cmp4.not = icmp eq i16 %6, 512
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.if.then158_crit_edge

lor.lhs.false.if.then158_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %bSecuritySupport = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %bSecuritySupport to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bSecuritySupport, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8 = icmp eq i8 %9, 0
  br i1 %cmp8, label %lor.lhs.false6.if.then158_crit_edge, label %lor.lhs.false10

lor.lhs.false6.if.then158_crit_edge:              ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %bReserved1 = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 15
  %10 = ptrtoint ptr %bReserved1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bReserved1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp12.not = icmp eq i8 %11, 1
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false10.if.then158_crit_edge

lor.lhs.false10.if.then158_crit_edge:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %bReserved2 = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 16
  %12 = ptrtoint ptr %bReserved2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bReserved2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp16.not = icmp eq i8 %13, 1
  br i1 %cmp16.not, label %lor.lhs.false18, label %lor.lhs.false14.if.then158_crit_edge

lor.lhs.false14.if.then158_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %bFormatType = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 24
  %14 = ptrtoint ptr %bFormatType to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bFormatType, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp20.not = icmp eq i8 %15, 1
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false18.if.then158_crit_edge

lor.lhs.false18.if.then158_crit_edge:             ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %bUsage = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 25
  %16 = ptrtoint ptr %bUsage to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bUsage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp24.not = icmp eq i8 %17, 0
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false22.if.then158_crit_edge

lor.lhs.false22.if.then158_crit_edge:             ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.end27:                                         ; preds = %lor.lhs.false22
  %bCardType = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %bCardType to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bCardType, align 1
  %conv28 = zext i8 %19 to i16
  %MS_Lib = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17
  %cardType = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 4
  %20 = ptrtoint ptr %cardType to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv28, ptr %cardType, align 4
  %21 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %19, label %if.end27.if.then158_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb31
  ]

if.end27.if.then158_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %MS_Lib to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %MS_Lib, align 4
  %or = or i32 %23, 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %MS_Lib to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %MS_Lib, align 4
  %and34 = and i32 %25, -2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb
  %storemerge = phi i32 [ %and34, %sw.bb31 ], [ %or, %sw.bb ]
  %26 = ptrtoint ptr %MS_Lib to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %MS_Lib, align 4
  %wBlockSize = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %wBlockSize to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %wBlockSize, align 2
  %blockSize = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 5
  %29 = ptrtoint ptr %blockSize to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %blockSize, align 2
  %wBlockNumber = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %wBlockNumber to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %wBlockNumber, align 2
  %NumberOfPhyBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 7
  %32 = ptrtoint ptr %NumberOfPhyBlock to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %NumberOfPhyBlock, align 2
  %wTotalBlockNumber = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %wTotalBlockNumber to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %wTotalBlockNumber, align 2
  %sub = add i16 %34, -2
  %NumberOfLogBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 8
  %35 = ptrtoint ptr %NumberOfLogBlock to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %sub, ptr %NumberOfLogBlock, align 4
  %div = shl i16 %28, 1
  %PagesPerBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 6
  %36 = ptrtoint ptr %PagesPerBlock to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %div, ptr %PagesPerBlock, align 4
  %37 = lshr i16 %31, 9
  %NumberOfSegment = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 9
  %38 = ptrtoint ptr %NumberOfSegment to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %NumberOfSegment, align 2
  %wMemorySize = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 2, i32 14
  %39 = ptrtoint ptr %wMemorySize to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wMemorySize, align 2
  %MS_Model = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 19
  %41 = ptrtoint ptr %MS_Model to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %MS_Model, align 2
  %call52 = tail call fastcc i32 @ms_lib_alloc_logicalmap(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %if.end54, label %sw.epilog.if.then158_crit_edge

sw.epilog.if.then158_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.end54:                                         ; preds = %sw.epilog
  %42 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %43, i32 0, i32 17, i32 7
  %44 = ptrtoint ptr %NumberOfPhyBlock.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %NumberOfPhyBlock.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %PhyBlock)
  %cmp.not.i.i = icmp ugt i16 %45, %PhyBlock
  %conv.i.i = zext i16 %PhyBlock to i32
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end54.ms_lib_set_bootblockmark.exit_crit_edge

if.end54.ms_lib_set_bootblockmark.exit_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %ms_lib_set_bootblockmark.exit

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %Phy2LogMap.i.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %43, i32 0, i32 17, i32 10
  %46 = ptrtoint ptr %Phy2LogMap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %Phy2LogMap.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %47, i32 %conv.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -15, ptr %arrayidx.i.i, align 2
  br label %ms_lib_set_bootblockmark.exit

ms_lib_set_bootblockmark.exit:                    ; preds = %if.end.i.i, %if.end54.ms_lib_set_bootblockmark.exit_crit_edge
  %sysent = getelementptr inbounds %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 1
  %BytesPerSector = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 1
  %bType118 = getelementptr %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 1, i32 0, i32 1, i32 2
  %bType = getelementptr %struct.ms_bootblock_page0, ptr %PageData, i32 0, i32 1, i32 0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ms_lib_set_bootblockmark.exit
  %i.0269 = phi i32 [ 0, %ms_lib_set_bootblockmark.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ms_bootblock_sysent_rec], ptr %sysent, i32 0, i32 %i.0269
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %50)
  %cmp59 = icmp eq i32 %50, 16777215
  br i1 %cmp59, label %for.body.for.inc_crit_edge, label %if.end62

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end62:                                         ; preds = %for.body
  %dwSize = getelementptr [4 x %struct.ms_bootblock_sysent_rec], ptr %sysent, i32 0, i32 %i.0269, i32 1
  %51 = ptrtoint ptr %dwSize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dwSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp65 = icmp eq i32 %52, 0
  br i1 %cmp65, label %if.end62.for.inc_crit_edge, label %if.end68

if.end62.for.inc_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end68:                                         ; preds = %if.end62
  %add = add i32 %50, 512
  %add69 = add i32 %add, %52
  %53 = ptrtoint ptr %blockSize to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %blockSize, align 2
  %conv72 = zext i16 %54 to i32
  %mul73 = shl nuw nsw i32 %conv72, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %mul73)
  %cmp74 = icmp ugt i32 %add69, %mul73
  br i1 %cmp74, label %if.end68.for.inc_crit_edge, label %if.end77

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end77:                                         ; preds = %if.end68
  %55 = zext i32 %i.0269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %i.0269, label %if.end77.for.inc_crit_edge [
    i32 0, label %if.then80
    i32 1, label %if.then115
  ]

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then80:                                        ; preds = %if.end77
  %56 = ptrtoint ptr %bType to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bType, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp84.not = icmp eq i8 %57, 1
  br i1 %cmp84.not, label %if.then80.while.body_crit_edge, label %if.then80.if.then158_crit_edge

if.then80.if.then158_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.then80.while.body_crit_edge:                   ; preds = %if.then80
  br label %while.body

while.body:                                       ; preds = %if.end109.while.body_crit_edge, %if.then80.while.body_crit_edge
  %PrevPageNumber.0268 = phi i8 [ %PrevPageNumber.1, %if.end109.while.body_crit_edge ], [ 0, %if.then80.while.body_crit_edge ]
  %EntrySize.0267 = phi i32 [ %sub111, %if.end109.while.body_crit_edge ], [ %52, %if.then80.while.body_crit_edge ]
  %EntryOffset.0266 = phi i32 [ %add110, %if.end109.while.body_crit_edge ], [ %50, %if.then80.while.body_crit_edge ]
  %div90238 = lshr i32 %EntryOffset.0266, 9
  %58 = trunc i32 %div90238 to i8
  %conv92 = add i8 %58, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv92, i8 %PrevPageNumber.0268)
  %cmp95.not = icmp eq i8 %conv92, %PrevPageNumber.0268
  br i1 %cmp95.not, label %while.body.if.end103_crit_edge, label %if.then97

while.body.if.end103_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then97:                                        ; preds = %while.body
  %call99 = call fastcc i32 @ms_read_readpage(ptr noundef %us, i32 noundef %conv.i.i, i8 noundef zeroext %conv92, ptr noundef nonnull %call7.i, ptr noundef nonnull %ExtraData)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cond170 = icmp eq i32 %call99, 0
  br i1 %cond170, label %if.then97.if.end103_crit_edge, label %if.then97.if.then158_crit_edge

if.then97.if.then158_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.then97.if.end103_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.end103:                                        ; preds = %if.then97.if.end103_crit_edge, %while.body.if.end103_crit_edge
  %PrevPageNumber.1 = phi i8 [ %PrevPageNumber.0268, %while.body.if.end103_crit_edge ], [ %conv92, %if.then97.if.end103_crit_edge ]
  %rem = and i32 %EntryOffset.0266, 511
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %rem
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %60)
  %cmp105 = icmp ult i16 %60, 4095
  br i1 %cmp105, label %if.then107, label %if.end103.if.end109_crit_edge

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then107:                                       ; preds = %if.end103
  %61 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i.i250 = getelementptr inbounds %struct.ene_ub6250_info, ptr %62, i32 0, i32 17, i32 7
  %63 = ptrtoint ptr %NumberOfPhyBlock.i.i250 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %NumberOfPhyBlock.i.i250, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %60)
  %cmp.not.i.i251 = icmp ugt i16 %64, %60
  br i1 %cmp.not.i.i251, label %if.end.i.i255, label %if.then107.if.end109_crit_edge

if.then107.if.end109_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end.i.i255:                                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i252 = zext i16 %60 to i32
  %Phy2LogMap.i.i253 = getelementptr inbounds %struct.ene_ub6250_info, ptr %62, i32 0, i32 17, i32 10
  %65 = ptrtoint ptr %Phy2LogMap.i.i253 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %Phy2LogMap.i.i253, align 4
  %arrayidx.i.i254 = getelementptr i16, ptr %66, i32 %conv.i.i252
  %67 = ptrtoint ptr %arrayidx.i.i254 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -14, ptr %arrayidx.i.i254, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.end.i.i255, %if.then107.if.end109_crit_edge, %if.end103.if.end109_crit_edge
  %add110 = add i32 %EntryOffset.0266, 2
  %sub111 = add i32 %EntrySize.0267, -2
  %cmp88.not = icmp eq i32 %sub111, 0
  br i1 %cmp88.not, label %if.end109.for.inc_crit_edge, label %if.end109.while.body_crit_edge

if.end109.while.body_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end109.for.inc_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then115:                                       ; preds = %if.end77
  %68 = ptrtoint ptr %bType118 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bType118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %69)
  %cmp120.not = icmp eq i8 %69, 10
  br i1 %cmp120.not, label %if.end123, label %if.then115.if.then158_crit_edge

if.then115.if.then158_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.end123:                                        ; preds = %if.then115
  %div125237 = lshr i32 %50, 9
  %70 = trunc i32 %div125237 to i8
  %conv127 = add i8 %70, 1
  %call128 = call fastcc i32 @ms_read_readpage(ptr noundef %us, i32 noundef %conv.i.i, i8 noundef zeroext %conv127, ptr noundef nonnull %call7.i, ptr noundef nonnull %ExtraData)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cond171 = icmp eq i32 %call128, 0
  br i1 %cond171, label %sw.epilog131, label %if.end123.if.then158_crit_edge

if.end123.if.then158_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

sw.epilog131:                                     ; preds = %if.end123
  %rem132 = and i32 %50, 511
  %add.ptr133 = getelementptr i8, ptr %call7.i, i32 %rem132
  %idi134 = getelementptr inbounds %struct.ms_bootblock_cis_idi, ptr %add.ptr133, i32 0, i32 1
  %71 = ptrtoint ptr %idi134 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %idi134, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30076, i16 %72)
  %cmp136.not = icmp eq i16 %72, -30076
  br i1 %cmp136.not, label %cleanup148, label %sw.epilog131.if.then158_crit_edge

sw.epilog131.if.then158_crit_edge:                ; preds = %sw.epilog131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

cleanup148:                                       ; preds = %sw.epilog131
  %wIDIbytesPerSector = getelementptr inbounds %struct.ms_bootblock_idi, ptr %idi134, i32 0, i32 5
  %73 = ptrtoint ptr %wIDIbytesPerSector to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %wIDIbytesPerSector, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv140 = zext i16 %75 to i32
  %76 = ptrtoint ptr %BytesPerSector to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv140, ptr %BytesPerSector, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %74)
  %cmp144.not = icmp eq i16 %74, 2
  br i1 %cmp144.not, label %cleanup148.for.inc_crit_edge, label %cleanup148.if.then158_crit_edge

cleanup148.if.then158_crit_edge:                  ; preds = %cleanup148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

cleanup148.for.inc_crit_edge:                     ; preds = %cleanup148
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %cleanup148.for.inc_crit_edge, %if.end109.for.inc_crit_edge, %if.end77.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %if.end62.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0269, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.if.end160_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end160_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then158:                                       ; preds = %cleanup148.if.then158_crit_edge, %sw.epilog131.if.then158_crit_edge, %if.end123.if.then158_crit_edge, %if.then115.if.then158_crit_edge, %if.then97.if.then158_crit_edge, %if.then80.if.then158_crit_edge, %sw.epilog.if.then158_crit_edge, %if.end27.if.then158_crit_edge, %lor.lhs.false22.if.then158_crit_edge, %lor.lhs.false18.if.then158_crit_edge, %lor.lhs.false14.if.then158_crit_edge, %lor.lhs.false10.if.then158_crit_edge, %lor.lhs.false6.if.then158_crit_edge, %lor.lhs.false.if.then158_crit_edge, %if.end.if.then158_crit_edge
  %77 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extra, align 4
  %Phy2LogMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %78, i32 0, i32 17, i32 10
  %79 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %Phy2LogMap.i, align 4
  tail call void @kfree(ptr noundef %80) #9
  %81 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %Phy2LogMap.i, align 4
  %Log2PhyMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %78, i32 0, i32 17, i32 11
  %82 = ptrtoint ptr %Log2PhyMap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %Log2PhyMap.i, align 4
  tail call void @kfree(ptr noundef %83) #9
  %84 = ptrtoint ptr %Log2PhyMap.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %Log2PhyMap.i, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %for.inc.if.end160_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup161

cleanup161:                                       ; preds = %if.end160, %entry.cleanup161_crit_edge
  %retval.0 = phi i32 [ 0, %if.end160 ], [ -1, %entry.cleanup161_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ExtraData) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_lib_alloc_logicalmap(ptr nocapture noundef readonly %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 7
  %2 = ptrtoint ptr %NumberOfPhyBlock to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %NumberOfPhyBlock, align 2
  %conv = zext i16 %3 to i32
  %4 = shl nuw nsw i32 %conv, 1
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #14
  %Phy2LogMap = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 10
  %5 = ptrtoint ptr %Phy2LogMap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i, ptr %Phy2LogMap, align 4
  %NumberOfLogBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 8
  %6 = ptrtoint ptr %NumberOfLogBlock to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %NumberOfLogBlock, align 4
  %conv3 = zext i16 %7 to i32
  %8 = shl nuw nsw i32 %conv3, 1
  %call8.i79 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #14
  %Log2PhyMap = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 11
  %9 = ptrtoint ptr %Log2PhyMap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i79, ptr %Log2PhyMap, align 4
  %10 = ptrtoint ptr %Phy2LogMap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %Phy2LogMap, align 4
  %cmp = icmp eq ptr %11, null
  %cmp11 = icmp eq ptr %call8.i79, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %12 = ptrtoint ptr %NumberOfPhyBlock to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %NumberOfPhyBlock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1789.not = icmp eq i16 %13, 0
  br i1 %cmp1789.not, label %for.cond.preheader.for.cond21.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond21.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extra, align 4
  %Phy2LogMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %15, i32 0, i32 17, i32 10
  %16 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %Phy2LogMap.i, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %Phy2LogMap.i, align 4
  %Log2PhyMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %15, i32 0, i32 17, i32 11
  %19 = ptrtoint ptr %Log2PhyMap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %Log2PhyMap.i, align 4
  tail call void @kfree(ptr noundef %20) #9
  %21 = ptrtoint ptr %Log2PhyMap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %Log2PhyMap.i, align 4
  br label %cleanup

for.cond21.preheader:                             ; preds = %for.body.for.cond21.preheader_crit_edge, %for.cond.preheader.for.cond21.preheader_crit_edge
  %22 = ptrtoint ptr %NumberOfLogBlock to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %NumberOfLogBlock, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp2592.not = icmp eq i16 %23, 0
  br i1 %cmp2592.not, label %for.cond21.preheader.cleanup_crit_edge, label %for.cond21.preheader.for.body27_crit_edge

for.cond21.preheader.for.body27_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body27

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %24 = ptrtoint ptr %Phy2LogMap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %Phy2LogMap, align 4
  %arrayidx = getelementptr i16, ptr %25, i32 %i.090
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.090, 1
  %27 = ptrtoint ptr %NumberOfPhyBlock to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %NumberOfPhyBlock, align 2
  %conv16 = zext i16 %28 to i32
  %cmp17 = icmp ult i32 %inc, %conv16
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.for.cond21.preheader_crit_edge

for.body.for.cond21.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.cond21.preheader.for.body27_crit_edge
  %i.193 = phi i32 [ %inc32, %for.body27.for.body27_crit_edge ], [ 0, %for.cond21.preheader.for.body27_crit_edge ]
  %29 = ptrtoint ptr %Log2PhyMap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %Log2PhyMap, align 4
  %arrayidx30 = getelementptr i16, ptr %30, i32 %i.193
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %arrayidx30, align 2
  %inc32 = add nuw nsw i32 %i.193, 1
  %32 = ptrtoint ptr %NumberOfLogBlock to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %NumberOfLogBlock, align 4
  %conv24 = zext i16 %33 to i32
  %cmp25 = icmp ult i32 %inc32, %conv24
  br i1 %cmp25, label %for.body27.for.body27_crit_edge, label %for.body27.cleanup_crit_edge

for.body27.cleanup_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

cleanup:                                          ; preds = %for.body27.cleanup_crit_edge, %for.cond21.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.cond21.preheader.cleanup_crit_edge ], [ 0, %for.body27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_lib_erase_phyblock(ptr noundef %us, i16 noundef zeroext %phyblk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %conv = zext i16 %phyblk to i32
  %MS_Lib = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17
  %NumberOfPhyBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 7
  %2 = ptrtoint ptr %NumberOfPhyBlock to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %NumberOfPhyBlock, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %phyblk)
  %cmp.not = icmp ugt i16 %3, %phyblk
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %Phy2LogMap = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 10
  %4 = ptrtoint ptr %Phy2LogMap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Phy2LogMap, align 4
  %arrayidx = getelementptr i16, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %NumberOfLogBlock = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 8
  %8 = ptrtoint ptr %NumberOfLogBlock to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %NumberOfLogBlock, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp7 = icmp ult i16 %7, %9
  br i1 %cmp7, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = zext i16 %7 to i32
  %Log2PhyMap = getelementptr inbounds %struct.ene_ub6250_info, ptr %1, i32 0, i32 17, i32 11
  %10 = ptrtoint ptr %Log2PhyMap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %Log2PhyMap, align 4
  %arrayidx12 = getelementptr i16, ptr %11, i32 %conv4
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %arrayidx12, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %13 = ptrtoint ptr %Phy2LogMap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %Phy2LogMap, align 4
  %arrayidx17 = getelementptr i16, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %arrayidx17, align 2
  %16 = ptrtoint ptr %MS_Lib to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %MS_Lib, align 4
  %18 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.then26, label %if.end38

if.then26:                                        ; preds = %if.end13
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %20 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobuf.i, align 4
  %call.i = tail call fastcc i32 @ene_load_bincode(ptr noundef %us, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then26.sw.default_crit_edge

if.then26.sw.default_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

if.end.i:                                         ; preds = %if.then26
  %22 = getelementptr inbounds i8, ptr %21, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 28)
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1431519811, ptr %21, align 4
  %DataTransferLength.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %DataTransferLength.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %DataTransferLength.i, align 4
  %Flags.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %Flags.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %Flags.i, align 4
  %CDB.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %21, i32 0, i32 6
  %27 = ptrtoint ptr %CDB.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -14, ptr %CDB.i, align 1
  %arrayidx2.i = getelementptr %struct.bulk_cb_wrap, ptr %21, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 6, ptr %arrayidx2.i, align 1
  %conv.i = trunc i16 %phyblk to i8
  %arrayidx4.i = getelementptr %struct.bulk_cb_wrap, ptr %21, i32 0, i32 6, i32 4
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %arrayidx4.i, align 1
  %shr.i = lshr i16 %phyblk, 8
  %conv5.i = trunc i16 %shr.i to i8
  %arrayidx7.i = getelementptr %struct.bulk_cb_wrap, ptr %21, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv5.i, ptr %arrayidx7.i, align 1
  %call12.i = tail call fastcc i32 @ene_send_scsi_cmd(ptr noundef %us, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.not.i, label %sw.bb, label %if.end.i.sw.default_crit_edge

if.end.i.sw.default_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %Phy2LogMap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %Phy2LogMap, align 4
  %arrayidx31 = getelementptr i16, ptr %32, i32 %conv
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -11, ptr %arrayidx31, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end.i.sw.default_crit_edge, %if.then26.sw.default_crit_edge
  %34 = ptrtoint ptr %MS_Lib to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %MS_Lib, align 4
  %or = or i32 %35, 1
  store i32 %or, ptr %MS_Lib, align 4
  %36 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 7
  %38 = ptrtoint ptr %NumberOfPhyBlock.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %NumberOfPhyBlock.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %phyblk)
  %cmp.not.i62 = icmp ugt i16 %39, %phyblk
  br i1 %cmp.not.i62, label %if.end.i63, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i63:                                       ; preds = %sw.default
  %Phy2LogMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 10
  %40 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %Phy2LogMap.i, align 4
  %arrayidx.i = getelementptr i16, ptr %41, i32 %conv
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i, align 2
  %NumberOfLogBlock.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 8
  %44 = ptrtoint ptr %NumberOfLogBlock.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %NumberOfLogBlock.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp7.i = icmp ult i16 %43, %45
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i63.if.end13.i_crit_edge

if.end.i63.if.end13.i_crit_edge:                  ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i = zext i16 %43 to i32
  %Log2PhyMap.i = getelementptr inbounds %struct.ene_ub6250_info, ptr %37, i32 0, i32 17, i32 11
  %46 = ptrtoint ptr %Log2PhyMap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %Log2PhyMap.i, align 4
  %arrayidx12.i = getelementptr i16, ptr %47, i32 %conv4.i
  %48 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %arrayidx12.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i63.if.end13.i_crit_edge
  %49 = ptrtoint ptr %Phy2LogMap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %Phy2LogMap.i, align 4
  %arrayidx17.i = getelementptr i16, ptr %50, i32 %conv
  %51 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %52)
  %cmp19.not.i = icmp eq i16 %52, -14
  br i1 %cmp19.not.i, label %if.end13.i.cleanup_crit_edge, label %if.then21.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -12, ptr %arrayidx17.i, align 2
  br label %cleanup

if.end38:                                         ; preds = %if.end13
  %54 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extra, align 4
  %NumberOfPhyBlock.i66 = getelementptr inbounds %struct.ene_ub6250_info, ptr %55, i32 0, i32 17, i32 7
  %56 = ptrtoint ptr %NumberOfPhyBlock.i66 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %NumberOfPhyBlock.i66, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %phyblk)
  %cmp.not.i67 = icmp ugt i16 %57, %phyblk
  br i1 %cmp.not.i67, label %if.end.i72, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i72:                                       ; preds = %if.end38
  %Phy2LogMap.i68 = getelementptr inbounds %struct.ene_ub6250_info, ptr %55, i32 0, i32 17, i32 10
  %58 = ptrtoint ptr %Phy2LogMap.i68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %Phy2LogMap.i68, align 4
  %arrayidx.i69 = getelementptr i16, ptr %59, i32 %conv
  %60 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i69, align 2
  %NumberOfLogBlock.i70 = getelementptr inbounds %struct.ene_ub6250_info, ptr %55, i32 0, i32 17, i32 8
  %62 = ptrtoint ptr %NumberOfLogBlock.i70 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %NumberOfLogBlock.i70, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp7.i71 = icmp ult i16 %61, %63
  br i1 %cmp7.i71, label %if.then9.i76, label %if.end.i72.if.end13.i79_crit_edge

if.end.i72.if.end13.i79_crit_edge:                ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i79

if.then9.i76:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i73 = zext i16 %61 to i32
  %Log2PhyMap.i74 = getelementptr inbounds %struct.ene_ub6250_info, ptr %55, i32 0, i32 17, i32 11
  %64 = ptrtoint ptr %Log2PhyMap.i74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %Log2PhyMap.i74, align 4
  %arrayidx12.i75 = getelementptr i16, ptr %65, i32 %conv4.i73
  %66 = ptrtoint ptr %arrayidx12.i75 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %arrayidx12.i75, align 2
  br label %if.end13.i79

if.end13.i79:                                     ; preds = %if.then9.i76, %if.end.i72.if.end13.i79_crit_edge
  %67 = ptrtoint ptr %Phy2LogMap.i68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %Phy2LogMap.i68, align 4
  %arrayidx17.i77 = getelementptr i16, ptr %68, i32 %conv
  %69 = ptrtoint ptr %arrayidx17.i77 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx17.i77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14, i16 %70)
  %cmp19.not.i78 = icmp eq i16 %70, -14
  br i1 %cmp19.not.i78, label %if.end13.i79.cleanup_crit_edge, label %if.then21.i80

if.end13.i79.cleanup_crit_edge:                   ; preds = %if.end13.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21.i80:                                    ; preds = %if.end13.i79
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %arrayidx17.i77 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -12, ptr %arrayidx17.i77, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then21.i80, %if.end13.i79.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then21.i, %if.end13.i.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ 65534, %entry.cleanup_crit_edge ], [ 65534, %sw.default.cleanup_crit_edge ], [ 65534, %if.end13.i.cleanup_crit_edge ], [ 65534, %if.then21.i ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %if.end13.i79.cleanup_crit_edge ], [ 0, %if.then21.i80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_reset_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !176, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_file291, !3, !"__UNIQUE_ID_file291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_license292, !3, !"__UNIQUE_ID_license292", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_import_ns293, !6, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!6 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_firmware294, !8, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 30, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware295, !10, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 31, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware296, !12, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!12 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 32, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware297, !14, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!14 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 33, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware298, !16, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!16 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 34, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware299, !18, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!18 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 35, i32 1}
!19 = !{ptr @__initcall__kmod_ums_eneub6250__304_2444_ene_ub6250_driver_init6, !20, !"__initcall__kmod_ums_eneub6250__304_2444_ene_ub6250_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2444, i32 1}
!21 = !{ptr @__exitcall_ene_ub6250_driver_exit, !20, !"__exitcall_ene_ub6250_driver_exit", i1 false, i1 false}
!22 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ene_ub6250_host_template, !24, !"ene_ub6250_host_template", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2323, i32 34}
!25 = !{ptr @ene_ub6250_driver, !26, !"ene_ub6250_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2430, i32 26}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2352, i32 23}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2369, i32 3}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ene_ub6250_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @ene_ub6250_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/storage/unusual_ene_ub6250.h", i32 5, i32 1}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ene_ub6250_unusual_dev_list, !39, !"ene_ub6250_unusual_dev_list", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 68, i32 30}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2134, i32 19}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2138, i32 20}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2149, i32 20}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2156, i32 20}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2177, i32 20}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2178, i32 20}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2179, i32 20}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2180, i32 20}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2181, i32 20}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2182, i32 20}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2184, i32 20}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1896, i32 20}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1897, i32 13}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1900, i32 20}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1901, i32 13}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1904, i32 20}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1905, i32 13}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1909, i32 20}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1910, i32 13}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1913, i32 20}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1914, i32 13}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1917, i32 20}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1918, i32 13}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1921, i32 20}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1927, i32 20}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 508, i32 20}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 528, i32 21}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 538, i32 20}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 545, i32 20}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2080, i32 2}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ene_ms_init._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ene_ms_init._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2086, i32 3}
!105 = !{ptr @ene_ms_init._entry.38, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ene_ms_init._entry_ptr.40, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2099, i32 3}
!109 = !{ptr @ene_ms_init._entry.41, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ene_ms_init._entry_ptr.43, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2106, i32 3}
!113 = !{ptr @ene_ms_init._entry.44, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ene_ms_init._entry_ptr.46, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2107, i32 3}
!117 = !{ptr @ene_ms_init._entry.47, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ene_ms_init._entry_ptr.49, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2108, i32 3}
!121 = !{ptr @ene_ms_init._entry.50, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ene_ms_init._entry_ptr.52, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2109, i32 3}
!125 = !{ptr @ene_ms_init._entry.53, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ene_ms_init._entry_ptr.55, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2110, i32 3}
!129 = !{ptr @ene_ms_init._entry.56, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ene_ms_init._entry_ptr.58, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2118, i32 20}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2120, i32 20}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1961, i32 2}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ms_card_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ms_card_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 2068, i32 2}
!142 = !{ptr @ms_card_init._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ms_card_init._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 643, i32 19}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 656, i32 19}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 657, i32 19}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 692, i32 20}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1496, i32 19}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1656, i32 21}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1687, i32 4}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ms_scsi_read._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ms_scsi_read._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1718, i32 5}
!163 = !{ptr @ms_scsi_read._entry.74, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ms_scsi_read._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1757, i32 4}
!167 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ms_scsi_write._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ms_scsi_write._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @ms_scsi_write._entry.79, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1788, i32 4}
!172 = !{ptr @ms_scsi_write._entry_ptr.80, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 1808, i32 5}
!175 = !{ptr @ms_scsi_write._entry.81, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ms_scsi_write._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @ene_ub6250_usb_ids, !178, !"ene_ub6250_usb_ids", i1 false, i1 false}
!178 = !{!"../drivers/usb/storage/ene_ub6250.c", i32 46, i32 29}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{!"branch_weights", i32 1, i32 2000}
