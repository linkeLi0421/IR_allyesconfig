; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/realtek_cr.c_pt.bc'
source_filename = "../drivers/usb/storage/realtek_cr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.rts51x_chip = type { i16, i16, i8, ptr, i32, i32, ptr, %struct.timer_list, i32, i32, i8, i32, i32, ptr }
%struct.rts51x_status = type { i16, i16, i8, i8, i8, i16, i8, i8, i8, i8, %union.anon.84, [2 x i8] }
%union.anon.84 = type { i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.bulk_cb_wrap = type { i32, i32, i32, i8, i8, i8, [16 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@__UNIQUE_ID_description290 = internal constant [59 x i8] c"ums_realtek.description=Driver for Realtek USB Card Reader\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ums_realtek.author=wwang <wei_wang@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"ums_realtek.file=drivers/usb/storage/ums-realtek\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"ums_realtek.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [34 x i8] c"ums_realtek.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__param_str_auto_delink_en = internal constant [27 x i8] c"ums_realtek.auto_delink_en\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@auto_delink_en = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_auto_delink_en = internal constant %struct.kernel_param { ptr @__param_str_auto_delink_en, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @auto_delink_en } }, section "__param", align 4
@__UNIQUE_ID_auto_delink_entype295 = internal constant [40 x i8] c"ums_realtek.parmtype=auto_delink_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_delink_en296 = internal constant [84 x i8] c"ums_realtek.parm=auto_delink_en:auto delink mode (0=firmware, 1=software [default])\00", section ".modinfo", align 1
@__param_str_ss_en = internal constant [18 x i8] c"ums_realtek.ss_en\00", align 1
@ss_en = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ss_en = internal constant %struct.kernel_param { ptr @__param_str_ss_en, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ss_en } }, section "__param", align 4
@__UNIQUE_ID_ss_entype297 = internal constant [31 x i8] c"ums_realtek.parmtype=ss_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ss_en298 = internal constant [48 x i8] c"ums_realtek.parm=ss_en:enable selective suspend\00", section ".modinfo", align 1
@__param_str_ss_delay = internal constant [21 x i8] c"ums_realtek.ss_delay\00", align 1
@ss_delay = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_ss_delay = internal constant %struct.kernel_param { ptr @__param_str_ss_delay, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ss_delay } }, section "__param", align 4
@__UNIQUE_ID_ss_delaytype299 = internal constant [34 x i8] c"ums_realtek.parmtype=ss_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ss_delay300 = internal constant [77 x i8] c"ums_realtek.parm=ss_delay:seconds to delay before entering selective suspend\00", section ".modinfo", align 1
@__initcall__kmod_ums_realtek__302_1070_realtek_cr_driver_init6 = internal global ptr @realtek_cr_driver_init, section ".initcall6.init", align 4
@realtek_cr_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @realtek_cr_probe, ptr @usb_stor_disconnect, ptr null, ptr @realtek_cr_suspend, ptr @realtek_cr_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @realtek_cr_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -48 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_realtek_cr_driver_exit = internal global ptr @realtek_cr_driver_exit, section ".exitcall.exit", align 4
@realtek_cr_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums-realtek\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums_realtek\00", [20 x i8] zeroinitializer }, align 32
@realtek_cr_ids = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 3034, i16 312, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3034, i16 339, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3034, i16 344, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3034, i16 345, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3034, i16 375, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3034, i16 388, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@realtek_cr_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"realtek_cr_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/storage/realtek_cr.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Probe Realtek Card Reader!\0A\00", [36 x i8] zeroinitializer }, align 32
@realtek_cr_unusual_dev_list = internal global { [7 x %struct.us_unusual_dev], [48 x i8] } { [7 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr @init_realtek_cr }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr @init_realtek_cr }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr @init_realtek_cr }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr @init_realtek_cr }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr @init_realtek_cr }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -1, i8 -1, ptr @init_realtek_cr }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Realtek\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB Card Reader\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chip->max_lun = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chip->flag = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"GetMaxLUN command result is %d, data is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chip->status_len = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lun = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Signature mismatch: got %08X, expecting %08X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read status fail\0A\00", [46 x i8] zeroinitializer }, align 32
@realtek_cr_autosuspend_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&chip->rts51x_suspend_timer)\00", [34 x i8] zeroinitializer }, align 32
@rts51x_invoke_transport.card_first_show = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rts51x_invoke_transport.media_not_present = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"p\00\02\00\00\00\00\0A\00\00\00\00:\00\00\00\00\00", [46 x i8] zeroinitializer }, align 32
@rts51x_invoke_transport.invalid_cmd_field = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"p\00\05\00\00\00\00\0A\00\00\00\00$\00\00\00\00\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"working scsi, power.usage:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"working scsi, ret=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NOT working scsi\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_UNIT_READY\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALLOW_MEDIUM_REMOVAL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NOT working scsi, not SS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state:%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Not the specified device, return immediately!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Write memory fail\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read memory fail\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Read memory fail, OR (buf[0]&0x24)!=0x24\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"addr = 0x%x, len = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RTS51X_STAT_SS, power.usage:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Ready to enter SS state\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTS51X_STAT_SS 01, power.usage:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown state !!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Read memory fail, OR (val & 0x1F) != 0\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"addr = 0xfe47, len = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set 0xfe47 to 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@switch.table.rts51x_bulk_transport = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 312, i64 345]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 14464, i64 14466]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 312, i64 345]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 16, i64 312, i64 344, i64 345]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 16, i64 22664, i64 22665, i64 22785]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 312, i64 345]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 30]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 30]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"auto_delink_en\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 40, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"ss_en\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 45, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"ss_delay\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 49, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"realtek_cr_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1053, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"realtek_cr_host_template\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1031, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1070, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"realtek_cr_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 171, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1039, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"realtek_cr_unusual_dev_list\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 194, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [41 x i8] c"../drivers/usb/storage/unusual_realtek.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 15, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 987, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1015, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 350, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 457, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 430, i32 19 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 250, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 889, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 918, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [40 x i8] c"rts51x_invoke_transport.card_first_show\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"media_not_present\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 800, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"invalid_cmd_field\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 803, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 809, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 814, i32 21 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 821, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 832, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 845, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 849, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 869, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 725, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 735, i32 23 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 737, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 740, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 370, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 767, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 771, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 776, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 781, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 711, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 508, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [36 x i8] c"../drivers/usb/storage/realtek_cr.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 548, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant [35 x i8] c"switch.table.rts51x_bulk_transport\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_auto_delink_en296, ptr @__UNIQUE_ID_auto_delink_entype295, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_ss_delay300, ptr @__UNIQUE_ID_ss_delaytype299, ptr @__UNIQUE_ID_ss_en298, ptr @__UNIQUE_ID_ss_entype297, ptr @__exitcall_realtek_cr_driver_exit, ptr @__initcall__kmod_ums_realtek__302_1070_realtek_cr_driver_init6, ptr @__param_auto_delink_en, ptr @__param_ss_delay, ptr @__param_ss_en, ptr @realtek_cr_driver_exit, ptr @auto_delink_en, ptr @ss_en, ptr @ss_delay, ptr @realtek_cr_driver, ptr @realtek_cr_host_template, ptr @.str, ptr @.str.1, ptr @realtek_cr_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @realtek_cr_unusual_dev_list, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @realtek_cr_autosuspend_setup.__key, ptr @.str.14, ptr @rts51x_invoke_transport.card_first_show, ptr @rts51x_invoke_transport.media_not_present, ptr @rts51x_invoke_transport.invalid_cmd_field, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @switch.table.rts51x_bulk_transport], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_delink_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_cr_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_cr_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_cr_ids to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_cr_unusual_dev_list to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_cr_autosuspend_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts51x_invoke_transport.card_first_show to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts51x_invoke_transport.media_not_present to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts51x_invoke_transport.invalid_cmd_field to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rts51x_bulk_transport to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_cr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @realtek_cr_host_template, ptr noundef nonnull @.str, ptr noundef null) #7
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @realtek_cr_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @realtek_cr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @realtek_cr_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_cr_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #7
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @realtek_cr_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@realtek_cr_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @realtek_cr_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @realtek_cr_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @realtek_cr_unusual_dev_list, i32 %sub.ptr.div
  %call3 = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @realtek_cr_host_template) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %us, align 4
  %call7 = call i32 @usb_stor_probe2(ptr noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call3, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_cr_suspend(ptr nocapture noundef readonly %iface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  %cmnd.i72.i = alloca [12 x i8], align 1
  %cmnd.i56.i = alloca [12 x i8], align 1
  %cmnd.i42.i = alloca [12 x i8], align 1
  %cmnd.i26.i = alloca [12 x i8], align 1
  %cmnd.i12.i = alloca [12 x i8], align 1
  %cmnd.i1.i = alloca [12 x i8], align 1
  %cmnd.i.i = alloca [12 x i8], align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %extra.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %value.i, align 1, !annotation !124
  %flag.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.config_autodelink_before_power_down.exit_crit_edge, label %if.end.i

entry.config_autodelink_before_power_down.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %config_autodelink_before_power_down.exit

if.end.i:                                         ; preds = %entry
  %7 = load i32, ptr @auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  %8 = getelementptr inbounds i8, ptr %cmnd.i.i, i32 6
  %9 = call ptr @memset(ptr %8, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %rts51x_read_mem.exit.thread.i, label %if.end.i.i

rts51x_read_mem.exit.thread.i:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then3.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 65143, i32 noundef 1) #7
  %11 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -16, ptr %cmnd.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 13, ptr %arrayidx5.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -2, ptr %arrayidx8.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 119, ptr %arrayidx10.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx14.i.i, align 1
  %arrayidx16.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx16.i.i, align 1
  %call18.i.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %cmp19.not.i.i, label %rts51x_read_mem.exit.i, label %rts51x_read_mem.exit.thread88.i

rts51x_read_mem.exit.thread88.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %config_autodelink_before_power_down.exit

rts51x_read_mem.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i.i, align 8
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %value.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %rts51x_read_mem.exit.i, %rts51x_read_mem.exit.thread.i
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value.i, align 1
  %22 = or i8 %21, 4
  store i8 %22, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i1.i) #7
  %23 = getelementptr inbounds i8, ptr %cmnd.i1.i, i32 6
  %24 = call ptr @memset(ptr %23, i32 0, i32 6)
  %call.i.i = call ptr @kmemdup(ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 3072) #7
  %cmp.i2.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i2.i, label %if.end5.i.if.end11.i_crit_edge, label %if.end.i10.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end.i10.i:                                     ; preds = %if.end5.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 65143, i32 noundef 1) #7
  %25 = ptrtoint ptr %cmnd.i1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -16, ptr %cmnd.i1.i, align 1
  %arrayidx5.i3.i = getelementptr inbounds [12 x i8], ptr %cmnd.i1.i, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx5.i3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 14, ptr %arrayidx5.i3.i, align 1
  %arrayidx8.i4.i = getelementptr inbounds [12 x i8], ptr %cmnd.i1.i, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx8.i4.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -2, ptr %arrayidx8.i4.i, align 1
  %arrayidx10.i5.i = getelementptr inbounds [12 x i8], ptr %cmnd.i1.i, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx10.i5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 119, ptr %arrayidx10.i5.i, align 1
  %arrayidx14.i6.i = getelementptr inbounds [12 x i8], ptr %cmnd.i1.i, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx14.i6.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx14.i6.i, align 1
  %arrayidx16.i7.i = getelementptr inbounds [12 x i8], ptr %cmnd.i1.i, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx16.i7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx16.i7.i, align 1
  %call18.i8.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i1.i, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i8.i)
  %cmp19.not.i9.i = icmp eq i32 %call18.i8.i, 0
  br i1 %cmp19.not.i9.i, label %if.end.i10.i.if.end11.i_crit_edge, label %rts51x_write_mem.exit.i

if.end.i10.i.if.end11.i_crit_edge:                ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

rts51x_write_mem.exit.i:                          ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i1.i) #7
  br label %config_autodelink_before_power_down.exit

if.end11.i:                                       ; preds = %if.end.i10.i.if.end11.i_crit_edge, %if.end5.i.if.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i1.i) #7
  %product_id.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %product_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 345, i16 %32)
  %cmp13.i = icmp eq i16 %32, 345
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end11.i.if.end24.i_crit_edge

if.end11.i.if.end24.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %status.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %status.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.rts51x_status, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fw_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22664, i16 %36)
  %cmp16.i = icmp eq i16 %36, 22664
  br i1 %cmp16.i, label %if.then18.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i12.i) #7
  %38 = getelementptr inbounds i8, ptr %cmnd.i12.i, i32 6
  %39 = call ptr @memset(ptr %38, i32 0, i32 6)
  %call.i13.i = call ptr @kmemdup(ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 3072) #7
  %cmp.i14.i = icmp eq ptr %call.i13.i, null
  br i1 %cmp.i14.i, label %if.then18.i.rts51x_write_mem.exit25.thread.i_crit_edge, label %if.end.i23.i

if.then18.i.rts51x_write_mem.exit25.thread.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_write_mem.exit25.thread.i

if.end.i23.i:                                     ; preds = %if.then18.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 72, i32 noundef 1) #7
  %40 = ptrtoint ptr %cmnd.i12.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -16, ptr %cmnd.i12.i, align 1
  %arrayidx5.i15.i = getelementptr inbounds [12 x i8], ptr %cmnd.i12.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx5.i15.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 14, ptr %arrayidx5.i15.i, align 1
  %arrayidx8.i16.i = getelementptr inbounds [12 x i8], ptr %cmnd.i12.i, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx8.i16.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx8.i16.i, align 1
  %arrayidx10.i17.i = getelementptr inbounds [12 x i8], ptr %cmnd.i12.i, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx10.i17.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 72, ptr %arrayidx10.i17.i, align 1
  %arrayidx14.i18.i = getelementptr inbounds [12 x i8], ptr %cmnd.i12.i, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx14.i18.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx14.i18.i, align 1
  %arrayidx16.i19.i = getelementptr inbounds [12 x i8], ptr %cmnd.i12.i, i32 0, i32 5
  %45 = ptrtoint ptr %arrayidx16.i19.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx16.i19.i, align 1
  %call18.i20.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i12.i, ptr noundef nonnull %call.i13.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call.i13.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i20.i)
  %cmp19.not.i21.i = icmp eq i32 %call18.i20.i, 0
  br i1 %cmp19.not.i21.i, label %if.end.i23.i.rts51x_write_mem.exit25.thread.i_crit_edge, label %rts51x_write_mem.exit25.i

if.end.i23.i.rts51x_write_mem.exit25.thread.i_crit_edge: ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_write_mem.exit25.thread.i

rts51x_write_mem.exit25.thread.i:                 ; preds = %if.end.i23.i.rts51x_write_mem.exit25.thread.i_crit_edge, %if.then18.i.rts51x_write_mem.exit25.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i12.i) #7
  br label %if.end24.i

rts51x_write_mem.exit25.i:                        ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i12.i) #7
  br label %config_autodelink_before_power_down.exit

if.end24.i:                                       ; preds = %rts51x_write_mem.exit25.thread.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.end11.i.if.end24.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i26.i) #7
  %46 = getelementptr inbounds i8, ptr %cmnd.i26.i, i32 6
  %47 = call ptr @memset(ptr %46, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i27.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i28.i = icmp eq ptr %call7.i.i27.i, null
  br i1 %cmp.i28.i, label %rts51x_read_mem.exit41.thread.i, label %if.end.i36.i

rts51x_read_mem.exit41.thread.i:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i26.i) #7
  br label %if.end29.i

if.end.i36.i:                                     ; preds = %if.end24.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 65095, i32 noundef 1) #7
  %49 = ptrtoint ptr %cmnd.i26.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -16, ptr %cmnd.i26.i, align 1
  %arrayidx5.i29.i = getelementptr inbounds [12 x i8], ptr %cmnd.i26.i, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx5.i29.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 13, ptr %arrayidx5.i29.i, align 1
  %arrayidx8.i30.i = getelementptr inbounds [12 x i8], ptr %cmnd.i26.i, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx8.i30.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -2, ptr %arrayidx8.i30.i, align 1
  %arrayidx10.i31.i = getelementptr inbounds [12 x i8], ptr %cmnd.i26.i, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx10.i31.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 71, ptr %arrayidx10.i31.i, align 1
  %arrayidx14.i32.i = getelementptr inbounds [12 x i8], ptr %cmnd.i26.i, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx14.i32.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx14.i32.i, align 1
  %arrayidx16.i33.i = getelementptr inbounds [12 x i8], ptr %cmnd.i26.i, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx16.i33.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %arrayidx16.i33.i, align 1
  %call18.i34.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i26.i, ptr noundef nonnull %call7.i.i27.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i34.i)
  %cmp19.not.i35.i = icmp eq i32 %call18.i34.i, 0
  br i1 %cmp19.not.i35.i, label %rts51x_read_mem.exit41.i, label %rts51x_read_mem.exit41.thread99.i

rts51x_read_mem.exit41.thread99.i:                ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i27.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i26.i) #7
  br label %config_autodelink_before_power_down.exit

rts51x_read_mem.exit41.i:                         ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call7.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call7.i.i27.i, align 8
  %57 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %value.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i27.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i26.i) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %rts51x_read_mem.exit41.i, %rts51x_read_mem.exit41.thread.i
  %58 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %value.i, align 1
  %60 = or i8 %59, 1
  store i8 %60, ptr %value.i, align 1
  %61 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %product_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 312, i16 %62)
  %cmp35.i = icmp eq i16 %62, 312
  br i1 %cmp35.i, label %land.lhs.true37.i, label %if.end29.i.if.end48.i_crit_edge

if.end29.i.if.end48.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

land.lhs.true37.i:                                ; preds = %if.end29.i
  %status38.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %63 = ptrtoint ptr %status38.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %status38.i, align 4
  %fw_ver40.i = getelementptr inbounds %struct.rts51x_status, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %fw_ver40.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %fw_ver40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14466, i16 %66)
  %cmp42.i = icmp eq i16 %66, 14466
  br i1 %cmp42.i, label %if.then44.i, label %land.lhs.true37.i.if.end48.i_crit_edge

land.lhs.true37.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then44.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = or i8 %59, 5
  %68 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %value.i, align 1
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %land.lhs.true37.i.if.end48.i_crit_edge, %if.end29.i.if.end48.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i42.i) #7
  %69 = getelementptr inbounds i8, ptr %cmnd.i42.i, i32 6
  %70 = call ptr @memset(ptr %69, i32 0, i32 6)
  %call.i43.i = call ptr @kmemdup(ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 3072) #7
  %cmp.i44.i = icmp eq ptr %call.i43.i, null
  br i1 %cmp.i44.i, label %if.end48.i.rts51x_write_mem.exit55.i_crit_edge, label %if.end.i53.i

if.end48.i.rts51x_write_mem.exit55.i_crit_edge:   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_write_mem.exit55.i

if.end.i53.i:                                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 65143, i32 noundef 1) #7
  %71 = ptrtoint ptr %cmnd.i42.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -16, ptr %cmnd.i42.i, align 1
  %arrayidx5.i45.i = getelementptr inbounds [12 x i8], ptr %cmnd.i42.i, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx5.i45.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 14, ptr %arrayidx5.i45.i, align 1
  %arrayidx8.i46.i = getelementptr inbounds [12 x i8], ptr %cmnd.i42.i, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx8.i46.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -2, ptr %arrayidx8.i46.i, align 1
  %arrayidx10.i47.i = getelementptr inbounds [12 x i8], ptr %cmnd.i42.i, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx10.i47.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 119, ptr %arrayidx10.i47.i, align 1
  %arrayidx14.i48.i = getelementptr inbounds [12 x i8], ptr %cmnd.i42.i, i32 0, i32 4
  %75 = ptrtoint ptr %arrayidx14.i48.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx14.i48.i, align 1
  %arrayidx16.i49.i = getelementptr inbounds [12 x i8], ptr %cmnd.i42.i, i32 0, i32 5
  %76 = ptrtoint ptr %arrayidx16.i49.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %arrayidx16.i49.i, align 1
  %call18.i50.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i42.i, ptr noundef nonnull %call.i43.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call.i43.i) #7
  br label %rts51x_write_mem.exit55.i

rts51x_write_mem.exit55.i:                        ; preds = %if.end.i53.i, %if.end48.i.rts51x_write_mem.exit55.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i42.i) #7
  br label %config_autodelink_before_power_down.exit

if.else.i:                                        ; preds = %if.end.i
  %product_id54.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 1
  %77 = ptrtoint ptr %product_id54.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %product_id54.i, align 2
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i16 %78, label %if.else.i.config_autodelink_before_power_down.exit_crit_edge [
    i16 345, label %land.lhs.true58.i
    i16 312, label %land.lhs.true69.i
  ]

if.else.i.config_autodelink_before_power_down.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %config_autodelink_before_power_down.exit

land.lhs.true58.i:                                ; preds = %if.else.i
  %status59.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %80 = ptrtoint ptr %status59.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %status59.i, align 4
  %fw_ver61.i = getelementptr inbounds %struct.rts51x_status, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %fw_ver61.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %fw_ver61.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22665, i16 %83)
  %cmp63.i = icmp eq i16 %83, 22665
  br i1 %cmp63.i, label %land.lhs.true58.i.if.then88.i_crit_edge, label %land.lhs.true58.i.if.end146.i_crit_edge

land.lhs.true58.i.if.end146.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

land.lhs.true58.i.if.then88.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88.i

land.lhs.true69.i:                                ; preds = %if.else.i
  %status70.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %status70.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %status70.i, align 4
  %fw_ver72.i = getelementptr inbounds %struct.rts51x_status, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %fw_ver72.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %fw_ver72.i, align 2
  %88 = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %87, label %land.lhs.true69.i.if.end146.i_crit_edge [
    i16 14464, label %land.lhs.true69.i.if.then88.i_crit_edge
    i16 14466, label %land.lhs.true69.i.if.then88.i_crit_edge5
  ]

land.lhs.true69.i.if.then88.i_crit_edge5:         ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88.i

land.lhs.true69.i.if.then88.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88.i

land.lhs.true69.i.if.end146.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then88.i:                                      ; preds = %land.lhs.true69.i.if.then88.i_crit_edge, %land.lhs.true69.i.if.then88.i_crit_edge5, %land.lhs.true58.i.if.then88.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i56.i) #7
  %89 = getelementptr inbounds i8, ptr %cmnd.i56.i, i32 6
  %90 = call ptr @memset(ptr %89, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i57.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i58.i = icmp eq ptr %call7.i.i57.i, null
  br i1 %cmp.i58.i, label %rts51x_read_mem.exit71.thread.i, label %if.end.i66.i

rts51x_read_mem.exit71.thread.i:                  ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i56.i) #7
  br label %if.end93.i

if.end.i66.i:                                     ; preds = %if.then88.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 65095, i32 noundef 1) #7
  %92 = ptrtoint ptr %cmnd.i56.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -16, ptr %cmnd.i56.i, align 1
  %arrayidx5.i59.i = getelementptr inbounds [12 x i8], ptr %cmnd.i56.i, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx5.i59.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 13, ptr %arrayidx5.i59.i, align 1
  %arrayidx8.i60.i = getelementptr inbounds [12 x i8], ptr %cmnd.i56.i, i32 0, i32 2
  %94 = ptrtoint ptr %arrayidx8.i60.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -2, ptr %arrayidx8.i60.i, align 1
  %arrayidx10.i61.i = getelementptr inbounds [12 x i8], ptr %cmnd.i56.i, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx10.i61.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 71, ptr %arrayidx10.i61.i, align 1
  %arrayidx14.i62.i = getelementptr inbounds [12 x i8], ptr %cmnd.i56.i, i32 0, i32 4
  %96 = ptrtoint ptr %arrayidx14.i62.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx14.i62.i, align 1
  %arrayidx16.i63.i = getelementptr inbounds [12 x i8], ptr %cmnd.i56.i, i32 0, i32 5
  %97 = ptrtoint ptr %arrayidx16.i63.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %arrayidx16.i63.i, align 1
  %call18.i64.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i56.i, ptr noundef nonnull %call7.i.i57.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i64.i)
  %cmp19.not.i65.i = icmp eq i32 %call18.i64.i, 0
  br i1 %cmp19.not.i65.i, label %rts51x_read_mem.exit71.i, label %rts51x_read_mem.exit71.thread109.i

rts51x_read_mem.exit71.thread109.i:               ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i57.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i56.i) #7
  br label %config_autodelink_before_power_down.exit

rts51x_read_mem.exit71.i:                         ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %call7.i.i57.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %call7.i.i57.i, align 8
  %100 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %value.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i57.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i56.i) #7
  br label %if.end93.i

if.end93.i:                                       ; preds = %rts51x_read_mem.exit71.i, %rts51x_read_mem.exit71.thread.i
  %101 = ptrtoint ptr %product_id54.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %product_id54.i, align 2
  %103 = zext i16 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %102, label %if.end93.i.if.end140.i_crit_edge [
    i16 345, label %land.lhs.true98.i
    i16 312, label %land.lhs.true110.i
  ]

if.end93.i.if.end140.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i

land.lhs.true98.i:                                ; preds = %if.end93.i
  %status99.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %104 = ptrtoint ptr %status99.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %status99.i, align 4
  %fw_ver101.i = getelementptr inbounds %struct.rts51x_status, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %fw_ver101.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %fw_ver101.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22665, i16 %107)
  %cmp103.i = icmp eq i16 %107, 22665
  br i1 %cmp103.i, label %land.lhs.true98.i.if.then117.i_crit_edge, label %land.lhs.true98.i.if.end124.i_crit_edge

land.lhs.true98.i.if.end124.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

land.lhs.true98.i.if.then117.i_crit_edge:         ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117.i

land.lhs.true110.i:                               ; preds = %if.end93.i
  %status111.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %108 = ptrtoint ptr %status111.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %status111.i, align 4
  %fw_ver113.i = getelementptr inbounds %struct.rts51x_status, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %fw_ver113.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %fw_ver113.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14464, i16 %111)
  %cmp115.i = icmp eq i16 %111, 14464
  br i1 %cmp115.i, label %land.lhs.true110.i.if.then117.i_crit_edge, label %land.lhs.true110.i.if.end124.i_crit_edge

land.lhs.true110.i.if.end124.i_crit_edge:         ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

land.lhs.true110.i.if.then117.i_crit_edge:        ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117.i

if.then117.i:                                     ; preds = %land.lhs.true110.i.if.then117.i_crit_edge, %land.lhs.true98.i.if.then117.i_crit_edge
  %112 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %value.i, align 1
  %114 = or i8 %113, -127
  store i8 %114, ptr %value.i, align 1
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then117.i, %land.lhs.true110.i.if.end124.i_crit_edge, %land.lhs.true98.i.if.end124.i_crit_edge
  %115 = ptrtoint ptr %product_id54.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %.pr.i = load i16, ptr %product_id54.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 312, i16 %.pr.i)
  %cmp127.i = icmp eq i16 %.pr.i, 312
  br i1 %cmp127.i, label %land.lhs.true129.i, label %if.end124.i.if.end140.i_crit_edge

if.end124.i.if.end140.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i

land.lhs.true129.i:                               ; preds = %if.end124.i
  %status130.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %116 = ptrtoint ptr %status130.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %status130.i, align 4
  %fw_ver132.i = getelementptr inbounds %struct.rts51x_status, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %fw_ver132.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %fw_ver132.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14466, i16 %119)
  %cmp134.i = icmp eq i16 %119, 14466
  br i1 %cmp134.i, label %if.then136.i, label %land.lhs.true129.i.if.end140.i_crit_edge

land.lhs.true129.i.if.end140.i_crit_edge:         ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i

if.then136.i:                                     ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %value.i, align 1
  %122 = or i8 %121, 4
  store i8 %122, ptr %value.i, align 1
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then136.i, %land.lhs.true129.i.if.end140.i_crit_edge, %if.end124.i.if.end140.i_crit_edge, %if.end93.i.if.end140.i_crit_edge
  %call141.i = call fastcc i32 @__do_config_autodelink(ptr noundef %1, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %cmp142.i = icmp slt i32 %call141.i, 0
  br i1 %cmp142.i, label %if.end140.i.config_autodelink_before_power_down.exit_crit_edge, label %if.end140.i.if.end146.i_crit_edge

if.end140.i.if.end146.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.end140.i.config_autodelink_before_power_down.exit_crit_edge: ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %config_autodelink_before_power_down.exit

if.end146.i:                                      ; preds = %if.end140.i.if.end146.i_crit_edge, %land.lhs.true69.i.if.end146.i_crit_edge, %land.lhs.true58.i.if.end146.i_crit_edge
  %123 = ptrtoint ptr %product_id54.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %.pr113.i = load i16, ptr %product_id54.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 345, i16 %.pr113.i)
  %cmp149.i = icmp eq i16 %.pr113.i, 345
  br i1 %cmp149.i, label %land.lhs.true151.i, label %if.end146.i.config_autodelink_before_power_down.exit_crit_edge

if.end146.i.config_autodelink_before_power_down.exit_crit_edge: ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %config_autodelink_before_power_down.exit

land.lhs.true151.i:                               ; preds = %if.end146.i
  %status152.i = getelementptr inbounds %struct.rts51x_chip, ptr %3, i32 0, i32 3
  %124 = ptrtoint ptr %status152.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %status152.i, align 4
  %fw_ver154.i = getelementptr inbounds %struct.rts51x_status, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %fw_ver154.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %fw_ver154.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22664, i16 %127)
  %cmp156.i = icmp eq i16 %127, 22664
  br i1 %cmp156.i, label %if.then158.i, label %land.lhs.true151.i.config_autodelink_before_power_down.exit_crit_edge

land.lhs.true151.i.config_autodelink_before_power_down.exit_crit_edge: ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %config_autodelink_before_power_down.exit

if.then158.i:                                     ; preds = %land.lhs.true151.i
  %128 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i72.i) #7
  %129 = getelementptr inbounds i8, ptr %cmnd.i72.i, i32 6
  %130 = call ptr @memset(ptr %129, i32 0, i32 6)
  %call.i73.i = call ptr @kmemdup(ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 3072) #7
  %cmp.i74.i = icmp eq ptr %call.i73.i, null
  br i1 %cmp.i74.i, label %if.then158.i.rts51x_write_mem.exit85.i_crit_edge, label %if.end.i83.i

if.then158.i.rts51x_write_mem.exit85.i_crit_edge: ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_write_mem.exit85.i

if.end.i83.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 72, i32 noundef 1) #7
  %131 = ptrtoint ptr %cmnd.i72.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -16, ptr %cmnd.i72.i, align 1
  %arrayidx5.i75.i = getelementptr inbounds [12 x i8], ptr %cmnd.i72.i, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx5.i75.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 14, ptr %arrayidx5.i75.i, align 1
  %arrayidx8.i76.i = getelementptr inbounds [12 x i8], ptr %cmnd.i72.i, i32 0, i32 2
  %133 = ptrtoint ptr %arrayidx8.i76.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %arrayidx8.i76.i, align 1
  %arrayidx10.i77.i = getelementptr inbounds [12 x i8], ptr %cmnd.i72.i, i32 0, i32 3
  %134 = ptrtoint ptr %arrayidx10.i77.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 72, ptr %arrayidx10.i77.i, align 1
  %arrayidx14.i78.i = getelementptr inbounds [12 x i8], ptr %cmnd.i72.i, i32 0, i32 4
  %135 = ptrtoint ptr %arrayidx14.i78.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx14.i78.i, align 1
  %arrayidx16.i79.i = getelementptr inbounds [12 x i8], ptr %cmnd.i72.i, i32 0, i32 5
  %136 = ptrtoint ptr %arrayidx16.i79.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %arrayidx16.i79.i, align 1
  %call18.i80.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i72.i, ptr noundef nonnull %call.i73.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call.i73.i) #7
  br label %rts51x_write_mem.exit85.i

rts51x_write_mem.exit85.i:                        ; preds = %if.end.i83.i, %if.then158.i.rts51x_write_mem.exit85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i72.i) #7
  br label %config_autodelink_before_power_down.exit

config_autodelink_before_power_down.exit:         ; preds = %rts51x_write_mem.exit85.i, %land.lhs.true151.i.config_autodelink_before_power_down.exit_crit_edge, %if.end146.i.config_autodelink_before_power_down.exit_crit_edge, %if.end140.i.config_autodelink_before_power_down.exit_crit_edge, %rts51x_read_mem.exit71.thread109.i, %if.else.i.config_autodelink_before_power_down.exit_crit_edge, %rts51x_write_mem.exit55.i, %rts51x_read_mem.exit41.thread99.i, %rts51x_write_mem.exit25.i, %rts51x_write_mem.exit.i, %rts51x_read_mem.exit.thread88.i, %entry.config_autodelink_before_power_down.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_cr_resume(ptr nocapture noundef readonly %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @fw5895_init(ptr noundef %1)
  tail call fastcc void @config_autodelink_after_power_on(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_reset_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_pre_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_post_reset(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_realtek_cr(ptr noundef %us) #2 align 64 {
entry:
  %cmnd.i.i123 = alloca [12 x i8], align 1
  %cmnd.i.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %1 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %extra, align 4
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %2 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @realtek_cr_destructor, ptr %extra_destructor, align 4
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %3 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobuf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 1
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %6 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %ifnum.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 17
  %8 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ifnum.i, align 1
  %conv.i = zext i8 %9 to i16
  %10 = load ptr, ptr %iobuf.i, align 4
  %call.i = tail call i32 @usb_stor_control_msg(ptr noundef %us, i32 noundef %7, i8 noundef zeroext -2, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 1000) #7
  %11 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobuf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv4.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9, i32 noundef %call.i, i32 noundef %conv4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.rts51x_get_max_lun.exit_crit_edge

if.end.rts51x_get_max_lun.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_get_max_lun.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobuf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv8.i = zext i8 %18 to i32
  br label %rts51x_get_max_lun.exit

rts51x_get_max_lun.exit:                          ; preds = %if.then.i, %if.end.rts51x_get_max_lun.exit_crit_edge
  %retval.0.i = phi i32 [ %conv8.i, %if.then.i ], [ 0, %if.end.rts51x_get_max_lun.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %max_lun = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %max_lun, align 4
  %max_lun3 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 16
  %20 = ptrtoint ptr %max_lun3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %max_lun3, align 2
  %us4 = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %us4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %us, ptr %us4, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #7
  %22 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_lun, align 4
  %conv8 = zext i8 %23 to i32
  %24 = mul nuw nsw i32 %conv8, 18
  %mul = add nuw nsw i32 %24, 18
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #11
  %status = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i, ptr %status, align 8
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %rts51x_get_max_lun.exit.INIT_FAIL_crit_edge, label %for.cond.preheader

rts51x_get_max_lun.exit.INIT_FAIL_crit_edge:      ; preds = %rts51x_get_max_lun.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %INIT_FAIL

for.cond.preheader:                               ; preds = %rts51x_get_max_lun.exit
  %26 = getelementptr inbounds i8, ptr %cmnd.i.i, i32 2
  %arrayidx2.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0186 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extra, align 4
  %status_len.i = getelementptr inbounds %struct.rts51x_chip, ptr %28, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  %29 = call ptr @memset(ptr %26, i32 0, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3072, i32 noundef 16) #10
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %rts51x_read_status.exit.thread.i, label %if.end.i.i121

rts51x_read_status.exit.thread.i:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %INIT_FAIL

if.end.i.i121:                                    ; preds = %for.body
  %conv17 = trunc i32 %i.0186 to i8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11, i32 noundef %i.0186) #7
  %31 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -16, ptr %cmnd.i.i, align 1
  %32 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %arrayidx2.i.i, align 1
  %call3.i.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext %conv17, ptr noundef nonnull %cmnd.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 16, i32 noundef 2, ptr noundef %status_len.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp4.not.i.i, label %if.end.i, label %rts51x_read_status.exit.i

rts51x_read_status.exit.i:                        ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %INIT_FAIL

if.end.i:                                         ; preds = %if.end.i.i121
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %buf.sroa.0.0.copyload.i = load i8, ptr %call7.i.i.i, align 8
  %buf.sroa.5.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 1
  %34 = ptrtoint ptr %buf.sroa.5.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %buf.sroa.5.0.copyload.i = load i8, ptr %buf.sroa.5.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.7.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 2
  %35 = ptrtoint ptr %buf.sroa.7.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %buf.sroa.7.0.copyload.i = load i8, ptr %buf.sroa.7.0.call7.i.i.sroa_idx.i, align 2
  %buf.sroa.9.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 3
  %36 = ptrtoint ptr %buf.sroa.9.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %buf.sroa.9.0.copyload.i = load i8, ptr %buf.sroa.9.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.11.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 4
  %37 = ptrtoint ptr %buf.sroa.11.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %buf.sroa.11.0.copyload.i = load i8, ptr %buf.sroa.11.0.call7.i.i.sroa_idx.i, align 4
  %buf.sroa.13.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 5
  %38 = ptrtoint ptr %buf.sroa.13.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %buf.sroa.13.0.copyload.i = load i8, ptr %buf.sroa.13.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.15.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 6
  %39 = ptrtoint ptr %buf.sroa.15.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %buf.sroa.15.0.copyload.i = load i8, ptr %buf.sroa.15.0.call7.i.i.sroa_idx.i, align 2
  %buf.sroa.17.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 7
  %40 = ptrtoint ptr %buf.sroa.17.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %buf.sroa.17.0.copyload.i = load i8, ptr %buf.sroa.17.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.19.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 8
  %41 = ptrtoint ptr %buf.sroa.19.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %buf.sroa.19.0.copyload.i = load i8, ptr %buf.sroa.19.0.call7.i.i.sroa_idx.i, align 8
  %buf.sroa.21.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 9
  %42 = ptrtoint ptr %buf.sroa.21.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %buf.sroa.21.0.copyload.i = load i8, ptr %buf.sroa.21.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.23.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 10
  %43 = ptrtoint ptr %buf.sroa.23.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %buf.sroa.23.0.copyload.i = load i8, ptr %buf.sroa.23.0.call7.i.i.sroa_idx.i, align 2
  %buf.sroa.25.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 11
  %44 = ptrtoint ptr %buf.sroa.25.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %buf.sroa.25.0.copyload.i = load i8, ptr %buf.sroa.25.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.27.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 12
  %45 = ptrtoint ptr %buf.sroa.27.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %buf.sroa.27.0.copyload.i = load i8, ptr %buf.sroa.27.0.call7.i.i.sroa_idx.i, align 4
  %buf.sroa.29.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 13
  %46 = ptrtoint ptr %buf.sroa.29.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %buf.sroa.29.0.copyload.i = load i8, ptr %buf.sroa.29.0.call7.i.i.sroa_idx.i, align 1
  %buf.sroa.31.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 14
  %47 = ptrtoint ptr %buf.sroa.31.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %buf.sroa.31.0.copyload.i = load i8, ptr %buf.sroa.31.0.call7.i.i.sroa_idx.i, align 2
  %buf.sroa.33.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 15
  %48 = ptrtoint ptr %buf.sroa.33.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %buf.sroa.33.0.copyload.i = load i8, ptr %buf.sroa.33.0.call7.i.i.sroa_idx.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  %49 = ptrtoint ptr %status_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status_len.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10, i32 noundef %50) #7
  %conv3.i = zext i8 %buf.sroa.0.0.copyload.i to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %conv5.i = zext i8 %buf.sroa.5.0.copyload.i to i16
  %or.i = or i16 %shl.i, %conv5.i
  %status.i = getelementptr inbounds %struct.rts51x_chip, ptr %28, i32 0, i32 3
  %51 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %status.i, align 4
  %arrayidx7.i = getelementptr %struct.rts51x_status, ptr %52, i32 %i.0186
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or.i, ptr %arrayidx7.i, align 2
  %conv10.i = zext i8 %buf.sroa.7.0.copyload.i to i16
  %shl11.i = shl nuw i16 %conv10.i, 8
  %conv13.i = zext i8 %buf.sroa.9.0.copyload.i to i16
  %or14.i = or i16 %shl11.i, %conv13.i
  %54 = load ptr, ptr %status.i, align 4
  %pid.i = getelementptr %struct.rts51x_status, ptr %54, i32 %i.0186, i32 1
  %55 = ptrtoint ptr %pid.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %or14.i, ptr %pid.i, align 2
  %56 = load ptr, ptr %status.i, align 4
  %cur_lun.i = getelementptr %struct.rts51x_status, ptr %56, i32 %i.0186, i32 2
  %57 = ptrtoint ptr %cur_lun.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %buf.sroa.11.0.copyload.i, ptr %cur_lun.i, align 2
  %58 = load ptr, ptr %status.i, align 4
  %card_type.i = getelementptr %struct.rts51x_status, ptr %58, i32 %i.0186, i32 3
  %59 = ptrtoint ptr %card_type.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %buf.sroa.13.0.copyload.i, ptr %card_type.i, align 1
  %60 = load ptr, ptr %status.i, align 4
  %total_lun.i = getelementptr %struct.rts51x_status, ptr %60, i32 %i.0186, i32 4
  %61 = ptrtoint ptr %total_lun.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %buf.sroa.15.0.copyload.i, ptr %total_lun.i, align 2
  %conv33.i = zext i8 %buf.sroa.17.0.copyload.i to i16
  %shl34.i = shl nuw i16 %conv33.i, 8
  %conv36.i = zext i8 %buf.sroa.19.0.copyload.i to i16
  %or37.i = or i16 %shl34.i, %conv36.i
  %62 = load ptr, ptr %status.i, align 4
  %fw_ver.i = getelementptr %struct.rts51x_status, ptr %62, i32 %i.0186, i32 5
  %63 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %or37.i, ptr %fw_ver.i, align 2
  %64 = load ptr, ptr %status.i, align 4
  %phy_exist.i = getelementptr %struct.rts51x_status, ptr %64, i32 %i.0186, i32 6
  %65 = ptrtoint ptr %phy_exist.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %buf.sroa.21.0.copyload.i, ptr %phy_exist.i, align 2
  %66 = load ptr, ptr %status.i, align 4
  %multi_flag.i = getelementptr %struct.rts51x_status, ptr %66, i32 %i.0186, i32 7
  %67 = ptrtoint ptr %multi_flag.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %buf.sroa.23.0.copyload.i, ptr %multi_flag.i, align 1
  %68 = load ptr, ptr %status.i, align 4
  %multi_card.i = getelementptr %struct.rts51x_status, ptr %68, i32 %i.0186, i32 8
  %69 = ptrtoint ptr %multi_card.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %buf.sroa.25.0.copyload.i, ptr %multi_card.i, align 2
  %70 = load ptr, ptr %status.i, align 4
  %log_exist.i = getelementptr %struct.rts51x_status, ptr %70, i32 %i.0186, i32 9
  %71 = ptrtoint ptr %log_exist.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %buf.sroa.27.0.copyload.i, ptr %log_exist.i, align 1
  %72 = ptrtoint ptr %status_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %73)
  %cmp59.i = icmp eq i32 %73, 16
  br i1 %cmp59.i, label %if.then61.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then61.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %status.i, align 4
  %detailed_type.i = getelementptr %struct.rts51x_status, ptr %75, i32 %i.0186, i32 10
  %76 = ptrtoint ptr %detailed_type.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %buf.sroa.29.0.copyload.i, ptr %detailed_type.i, align 2
  %77 = load ptr, ptr %status.i, align 4
  %function.i = getelementptr %struct.rts51x_status, ptr %77, i32 %i.0186, i32 11
  %78 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %buf.sroa.31.0.copyload.i, ptr %function.i, align 1
  %79 = load ptr, ptr %status.i, align 4
  %arrayidx76.i = getelementptr %struct.rts51x_status, ptr %79, i32 %i.0186, i32 11, i32 1
  %80 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %buf.sroa.33.0.copyload.i, ptr %arrayidx76.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then61.i, %if.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0186, 1
  %81 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %max_lun, align 4
  %conv15 = zext i8 %82 to i32
  %cmp.not.not = icmp ult i32 %i.0186, %conv15
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %product_id = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %product_id, align 2
  %85 = zext i16 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %84, label %for.end.if.end69_crit_edge [
    i16 312, label %for.end.if.then35_crit_edge
    i16 344, label %for.end.if.then35_crit_edge197
    i16 345, label %for.end.if.then35_crit_edge198
  ]

for.end.if.then35_crit_edge198:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

for.end.if.then35_crit_edge197:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

for.end.if.then35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

for.end.if.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then35:                                        ; preds = %for.end.if.then35_crit_edge, %for.end.if.then35_crit_edge197, %for.end.if.then35_crit_edge198
  %86 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %status, align 8
  %fw_ver = getelementptr inbounds %struct.rts51x_status, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %fw_ver, align 2
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %89, label %if.then35.if.end55_crit_edge [
    i16 22664, label %if.then35.if.then54_crit_edge
    i16 22665, label %if.then35.if.then54_crit_edge199
    i16 22785, label %if.then35.if.then54_crit_edge200
  ]

if.then35.if.then54_crit_edge200:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then35.if.then54_crit_edge199:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then35.if.then54_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then35.if.end55_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then54:                                        ; preds = %if.then35.if.then54_crit_edge, %if.then35.if.then54_crit_edge199, %if.then35.if.then54_crit_edge200
  %flag = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 5
  %91 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flag, align 8
  %or = or i32 %92, 1
  store i32 %or, ptr %flag, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then35.if.end55_crit_edge
  %status_len = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %status_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %status_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %94)
  %cmp56 = icmp eq i32 %94, 16
  br i1 %cmp56, label %if.then58, label %if.end55.if.end69_crit_edge

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then58:                                        ; preds = %if.end55
  %95 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %status, align 8
  %function = getelementptr inbounds %struct.rts51x_status, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %function, align 1
  %99 = and i8 %98, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool63.not = icmp eq i8 %99, 0
  br i1 %tobool63.not, label %if.then58.if.end69_crit_edge, label %if.then64

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %flag65 = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %flag65 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flag65, align 8
  %or66 = or i32 %101, 1
  store i32 %or66, ptr %flag65, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.then58.if.end69_crit_edge, %if.end55.if.end69_crit_edge, %for.end.if.end69_crit_edge
  %102 = load i32, ptr @ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool70.not = icmp eq i32 %102, 0
  br i1 %tobool70.not, label %if.end69.if.end73_crit_edge, label %if.then71

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then71:                                        ; preds = %if.end69
  %103 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %extra, align 4
  %support_auto_delink.i = getelementptr inbounds %struct.rts51x_chip, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %support_auto_delink.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %support_auto_delink.i, align 4
  %pwr_state.i = getelementptr inbounds %struct.rts51x_chip, ptr %104, i32 0, i32 9
  %106 = ptrtoint ptr %pwr_state.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %pwr_state.i, align 4
  %lun_ready.i = getelementptr inbounds %struct.rts51x_chip, ptr %104, i32 0, i32 10
  %107 = ptrtoint ptr %lun_ready.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %lun_ready.i, align 4
  %state.i = getelementptr inbounds %struct.rts51x_chip, ptr %104, i32 0, i32 11
  %108 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %state.i, align 4
  %status_len.i125 = getelementptr inbounds %struct.rts51x_chip, ptr %104, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i.i123) #7
  %109 = getelementptr inbounds i8, ptr %cmnd.i.i123, i32 2
  %110 = call ptr @memset(ptr %109, i32 0, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %111 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i126 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3072, i32 noundef 16) #10
  %cmp.i.i127 = icmp eq ptr %call7.i.i.i126, null
  br i1 %cmp.i.i127, label %rts51x_read_status.exit.thread.i128, label %if.end.i.i132

rts51x_read_status.exit.thread.i128:              ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i123) #7
  br label %if.then.i134

if.end.i.i132:                                    ; preds = %if.then71
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11, i32 noundef 0) #7
  %112 = ptrtoint ptr %cmnd.i.i123 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -16, ptr %cmnd.i.i123, align 1
  %arrayidx2.i.i129 = getelementptr inbounds [12 x i8], ptr %cmnd.i.i123, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx2.i.i129 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 9, ptr %arrayidx2.i.i129, align 1
  %call3.i.i130 = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i.i123, ptr noundef nonnull %call7.i.i.i126, i32 noundef 16, i32 noundef 2, ptr noundef %status_len.i125) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i130)
  %cmp4.not.i.i131 = icmp eq i32 %call3.i.i130, 0
  br i1 %cmp4.not.i.i131, label %if.end.i179, label %rts51x_read_status.exit.i133

rts51x_read_status.exit.i133:                     ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i126) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i123) #7
  br label %if.then.i134

if.then.i134:                                     ; preds = %rts51x_read_status.exit.i133, %rts51x_read_status.exit.thread.i128
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #7
  br label %if.end73

if.end.i179:                                      ; preds = %if.end.i.i132
  %114 = ptrtoint ptr %call7.i.i.i126 to i32
  call void @__asan_load1_noabort(i32 %114)
  %buf.sroa.0.0.copyload.i135 = load i8, ptr %call7.i.i.i126, align 8
  %buf.sroa.5.0.call7.i.i.sroa_idx.i136 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 1
  %115 = ptrtoint ptr %buf.sroa.5.0.call7.i.i.sroa_idx.i136 to i32
  call void @__asan_load1_noabort(i32 %115)
  %buf.sroa.5.0.copyload.i137 = load i8, ptr %buf.sroa.5.0.call7.i.i.sroa_idx.i136, align 1
  %buf.sroa.7.0.call7.i.i.sroa_idx.i138 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 2
  %116 = ptrtoint ptr %buf.sroa.7.0.call7.i.i.sroa_idx.i138 to i32
  call void @__asan_load1_noabort(i32 %116)
  %buf.sroa.7.0.copyload.i139 = load i8, ptr %buf.sroa.7.0.call7.i.i.sroa_idx.i138, align 2
  %buf.sroa.9.0.call7.i.i.sroa_idx.i140 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 3
  %117 = ptrtoint ptr %buf.sroa.9.0.call7.i.i.sroa_idx.i140 to i32
  call void @__asan_load1_noabort(i32 %117)
  %buf.sroa.9.0.copyload.i141 = load i8, ptr %buf.sroa.9.0.call7.i.i.sroa_idx.i140, align 1
  %buf.sroa.11.0.call7.i.i.sroa_idx.i142 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 4
  %118 = ptrtoint ptr %buf.sroa.11.0.call7.i.i.sroa_idx.i142 to i32
  call void @__asan_load1_noabort(i32 %118)
  %buf.sroa.11.0.copyload.i143 = load i8, ptr %buf.sroa.11.0.call7.i.i.sroa_idx.i142, align 4
  %buf.sroa.13.0.call7.i.i.sroa_idx.i144 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 5
  %119 = ptrtoint ptr %buf.sroa.13.0.call7.i.i.sroa_idx.i144 to i32
  call void @__asan_load1_noabort(i32 %119)
  %buf.sroa.13.0.copyload.i145 = load i8, ptr %buf.sroa.13.0.call7.i.i.sroa_idx.i144, align 1
  %buf.sroa.15.0.call7.i.i.sroa_idx.i146 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 6
  %120 = ptrtoint ptr %buf.sroa.15.0.call7.i.i.sroa_idx.i146 to i32
  call void @__asan_load1_noabort(i32 %120)
  %buf.sroa.15.0.copyload.i147 = load i8, ptr %buf.sroa.15.0.call7.i.i.sroa_idx.i146, align 2
  %buf.sroa.17.0.call7.i.i.sroa_idx.i148 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 7
  %121 = ptrtoint ptr %buf.sroa.17.0.call7.i.i.sroa_idx.i148 to i32
  call void @__asan_load1_noabort(i32 %121)
  %buf.sroa.17.0.copyload.i149 = load i8, ptr %buf.sroa.17.0.call7.i.i.sroa_idx.i148, align 1
  %buf.sroa.19.0.call7.i.i.sroa_idx.i150 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 8
  %122 = ptrtoint ptr %buf.sroa.19.0.call7.i.i.sroa_idx.i150 to i32
  call void @__asan_load1_noabort(i32 %122)
  %buf.sroa.19.0.copyload.i151 = load i8, ptr %buf.sroa.19.0.call7.i.i.sroa_idx.i150, align 8
  %buf.sroa.21.0.call7.i.i.sroa_idx.i152 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 9
  %123 = ptrtoint ptr %buf.sroa.21.0.call7.i.i.sroa_idx.i152 to i32
  call void @__asan_load1_noabort(i32 %123)
  %buf.sroa.21.0.copyload.i153 = load i8, ptr %buf.sroa.21.0.call7.i.i.sroa_idx.i152, align 1
  %buf.sroa.23.0.call7.i.i.sroa_idx.i154 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 10
  %124 = ptrtoint ptr %buf.sroa.23.0.call7.i.i.sroa_idx.i154 to i32
  call void @__asan_load1_noabort(i32 %124)
  %buf.sroa.23.0.copyload.i155 = load i8, ptr %buf.sroa.23.0.call7.i.i.sroa_idx.i154, align 2
  %buf.sroa.25.0.call7.i.i.sroa_idx.i156 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 11
  %125 = ptrtoint ptr %buf.sroa.25.0.call7.i.i.sroa_idx.i156 to i32
  call void @__asan_load1_noabort(i32 %125)
  %buf.sroa.25.0.copyload.i157 = load i8, ptr %buf.sroa.25.0.call7.i.i.sroa_idx.i156, align 1
  %buf.sroa.27.0.call7.i.i.sroa_idx.i158 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 12
  %126 = ptrtoint ptr %buf.sroa.27.0.call7.i.i.sroa_idx.i158 to i32
  call void @__asan_load1_noabort(i32 %126)
  %buf.sroa.27.0.copyload.i159 = load i8, ptr %buf.sroa.27.0.call7.i.i.sroa_idx.i158, align 4
  %buf.sroa.29.0.call7.i.i.sroa_idx.i160 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 13
  %127 = ptrtoint ptr %buf.sroa.29.0.call7.i.i.sroa_idx.i160 to i32
  call void @__asan_load1_noabort(i32 %127)
  %buf.sroa.29.0.copyload.i161 = load i8, ptr %buf.sroa.29.0.call7.i.i.sroa_idx.i160, align 1
  %buf.sroa.31.0.call7.i.i.sroa_idx.i162 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 14
  %128 = ptrtoint ptr %buf.sroa.31.0.call7.i.i.sroa_idx.i162 to i32
  call void @__asan_load1_noabort(i32 %128)
  %buf.sroa.31.0.copyload.i163 = load i8, ptr %buf.sroa.31.0.call7.i.i.sroa_idx.i162, align 2
  %buf.sroa.33.0.call7.i.i.sroa_idx.i164 = getelementptr inbounds i8, ptr %call7.i.i.i126, i32 15
  %129 = ptrtoint ptr %buf.sroa.33.0.call7.i.i.sroa_idx.i164 to i32
  call void @__asan_load1_noabort(i32 %129)
  %buf.sroa.33.0.copyload.i165 = load i8, ptr %buf.sroa.33.0.call7.i.i.sroa_idx.i164, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i126) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i123) #7
  %status2.i = getelementptr inbounds %struct.rts51x_chip, ptr %104, i32 0, i32 3
  %130 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %status2.i, align 4
  %conv3.i166 = zext i8 %buf.sroa.0.0.copyload.i135 to i16
  %shl.i167 = shl nuw i16 %conv3.i166, 8
  %conv5.i168 = zext i8 %buf.sroa.5.0.copyload.i137 to i16
  %or.i169 = or i16 %shl.i167, %conv5.i168
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %or.i169, ptr %131, align 2
  %conv9.i = zext i8 %buf.sroa.7.0.copyload.i139 to i16
  %shl10.i = shl nuw i16 %conv9.i, 8
  %conv12.i = zext i8 %buf.sroa.9.0.copyload.i141 to i16
  %or13.i = or i16 %shl10.i, %conv12.i
  %pid.i170 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 1
  %133 = ptrtoint ptr %pid.i170 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %or13.i, ptr %pid.i170, align 2
  %cur_lun.i171 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 2
  %134 = ptrtoint ptr %cur_lun.i171 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %buf.sroa.11.0.copyload.i143, ptr %cur_lun.i171, align 2
  %card_type.i172 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 3
  %135 = ptrtoint ptr %card_type.i172 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %buf.sroa.13.0.copyload.i145, ptr %card_type.i172, align 1
  %total_lun.i173 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 4
  %136 = ptrtoint ptr %total_lun.i173 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %buf.sroa.15.0.copyload.i147, ptr %total_lun.i173, align 2
  %conv20.i = zext i8 %buf.sroa.17.0.copyload.i149 to i16
  %shl21.i = shl nuw i16 %conv20.i, 8
  %conv23.i = zext i8 %buf.sroa.19.0.copyload.i151 to i16
  %or24.i = or i16 %shl21.i, %conv23.i
  %fw_ver.i174 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 5
  %137 = ptrtoint ptr %fw_ver.i174 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %or24.i, ptr %fw_ver.i174, align 2
  %phy_exist.i175 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 6
  %138 = ptrtoint ptr %phy_exist.i175 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %buf.sroa.21.0.copyload.i153, ptr %phy_exist.i175, align 2
  %multi_flag.i176 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 7
  %139 = ptrtoint ptr %multi_flag.i176 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %buf.sroa.23.0.copyload.i155, ptr %multi_flag.i176, align 1
  %multi_card.i177 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 8
  %140 = ptrtoint ptr %multi_card.i177 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %buf.sroa.25.0.copyload.i157, ptr %multi_card.i177, align 2
  %log_exist.i178 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 9
  %141 = ptrtoint ptr %log_exist.i178 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %buf.sroa.27.0.copyload.i159, ptr %log_exist.i178, align 1
  %142 = ptrtoint ptr %status_len.i125 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %status_len.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %143)
  %cmp31.i = icmp eq i32 %143, 16
  br i1 %cmp31.i, label %if.then33.i, label %if.end.i179.if.end40.i_crit_edge

if.end.i179.if.end40.i_crit_edge:                 ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then33.i:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  %detailed_type.i180 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 10
  %144 = ptrtoint ptr %detailed_type.i180 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %buf.sroa.29.0.copyload.i161, ptr %detailed_type.i180, align 2
  %function.i181 = getelementptr inbounds %struct.rts51x_status, ptr %131, i32 0, i32 11
  %145 = ptrtoint ptr %function.i181 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %buf.sroa.31.0.copyload.i163, ptr %function.i181, align 1
  %arrayidx39.i = getelementptr %struct.rts51x_status, ptr %131, i32 0, i32 11, i32 1
  %146 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %buf.sroa.33.0.copyload.i165, ptr %arrayidx39.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then33.i, %if.end.i179.if.end40.i_crit_edge
  %147 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %extra, align 4
  %proto_handler.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 21
  %149 = ptrtoint ptr %proto_handler.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %proto_handler.i, align 4
  %proto_handler_backup.i = getelementptr inbounds %struct.rts51x_chip, ptr %148, i32 0, i32 13
  %151 = ptrtoint ptr %proto_handler_backup.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %proto_handler_backup.i, align 4
  %pusb_dev.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %152 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pusb_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %153, i32 0, i32 15
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev.i, i32 noundef 0) #7
  %154 = ptrtoint ptr %proto_handler.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @rts51x_invoke_transport, ptr %proto_handler.i, align 4
  %timer_expires.i = getelementptr inbounds %struct.rts51x_chip, ptr %148, i32 0, i32 8
  %155 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %timer_expires.i, align 4
  %rts51x_suspend_timer.i = getelementptr inbounds %struct.rts51x_chip, ptr %148, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %rts51x_suspend_timer.i, ptr noundef nonnull @rts51x_suspend_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @realtek_cr_autosuspend_setup.__key) #7
  tail call fastcc void @fw5895_init(ptr noundef %us) #7
  %156 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pusb_dev.i, align 4
  tail call void @usb_enable_autosuspend(ptr noundef %157) #7
  br label %if.end73

if.end73:                                         ; preds = %if.end40.i, %if.then.i134, %if.end69.if.end73_crit_edge
  %flag74 = getelementptr inbounds %struct.rts51x_chip, ptr %call7.i.i, i32 0, i32 5
  %158 = ptrtoint ptr %flag74 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flag74, align 8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.8, i32 noundef %159) #7
  tail call fastcc void @config_autodelink_after_power_on(ptr noundef %us)
  br label %cleanup

INIT_FAIL:                                        ; preds = %rts51x_read_status.exit.i, %rts51x_read_status.exit.thread.i, %rts51x_get_max_lun.exit.INIT_FAIL_crit_edge
  %160 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %extra, align 4
  %tobool77.not = icmp eq ptr %161, null
  br i1 %tobool77.not, label %INIT_FAIL.cleanup_crit_edge, label %if.then78

INIT_FAIL.cleanup_crit_edge:                      ; preds = %INIT_FAIL
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then78:                                        ; preds = %INIT_FAIL
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %status, align 8
  tail call void @kfree(ptr noundef %163) #7
  %164 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %extra, align 4
  tail call void @kfree(ptr noundef %165) #7
  %166 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %extra, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %INIT_FAIL.cleanup_crit_edge, %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ -12, %entry.cleanup_crit_edge ], [ -5, %if.then78 ], [ -5, %INIT_FAIL.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @realtek_cr_destructor(ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rts51x_suspend_timer = getelementptr inbounds %struct.rts51x_chip, ptr %extra, i32 0, i32 7
  %call = tail call i32 @del_timer(ptr noundef %rts51x_suspend_timer) #7
  %timer_expires = getelementptr inbounds %struct.rts51x_chip, ptr %extra, i32 0, i32 8
  %1 = ptrtoint ptr %timer_expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %timer_expires, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %status = getelementptr inbounds %struct.rts51x_chip, ptr %extra, i32 0, i32 3
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_autodelink_after_power_on(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  %cmnd.i.i3 = alloca [12 x i8], align 1
  %value.i4 = alloca i8, align 1
  %cmnd.i32.i = alloca [12 x i8], align 1
  %cmnd.i21.i = alloca [12 x i8], align 1
  %cmnd.i.i = alloca [12 x i8], align 1
  %value.i = alloca i8, align 1
  %cmnd.i = alloca [12 x i8], align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !124
  %flag = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flag, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i) #7
  %5 = getelementptr inbounds i8, ptr %cmnd.i, i32 6
  %6 = call ptr @memset(ptr %5, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %rts51x_read_mem.exit.thread, label %if.end.i

rts51x_read_mem.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 65095, i32 noundef 1) #7
  %8 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -16, ptr %cmnd.i, align 1
  %arrayidx5.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 13, ptr %arrayidx5.i, align 1
  %arrayidx8.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 71, ptr %arrayidx10.i, align 1
  %arrayidx14.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx14.i, align 1
  %arrayidx16.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx16.i, align 1
  %call18.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %rts51x_read_mem.exit, label %rts51x_read_mem.exit.thread19

rts51x_read_mem.exit.thread19:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %cleanup

rts51x_read_mem.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %value, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %if.end3

if.end3:                                          ; preds = %rts51x_read_mem.exit, %rts51x_read_mem.exit.thread
  %17 = load i32, ptr @auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %value, align 1
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %20 = and i8 %19, -8
  %21 = or i8 %20, 4
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %value, align 1
  %product_id = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 312, i16 %24)
  %cmp14 = icmp eq i16 %24, 312
  br i1 %cmp14, label %land.lhs.true, label %if.then5.if.end23_crit_edge

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then5
  %status = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %status, align 4
  %fw_ver = getelementptr inbounds %struct.rts51x_status, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14466, i16 %28)
  %cmp17 = icmp eq i16 %28, 14466
  br i1 %cmp17, label %if.then19, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %20, ptr %value, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true.if.end23_crit_edge, %if.then5.if.end23_crit_edge
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %value, align 1
  %32 = or i8 %31, -128
  store i8 %32, ptr %value, align 1
  %call27 = call fastcc i32 @__do_config_autodelink(ptr noundef %us, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %value.i, align 1, !annotation !124
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  %34 = getelementptr inbounds i8, ptr %cmnd.i.i, i32 6
  %35 = call ptr @memset(ptr %34, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %rts51x_read_mem.exit.thread.i, label %if.end.i.i

rts51x_read_mem.exit.thread.i:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %if.end.i1

if.end.i.i:                                       ; preds = %if.end31
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 65143, i32 noundef 1) #7
  %37 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -16, ptr %cmnd.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 13, ptr %arrayidx5.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -2, ptr %arrayidx8.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 119, ptr %arrayidx10.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx14.i.i, align 1
  %arrayidx16.i.i = getelementptr inbounds [12 x i8], ptr %cmnd.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx16.i.i, align 1
  %call18.i.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %cmp19.not.i.i, label %rts51x_read_mem.exit.i, label %rts51x_read_mem.exit.thread50.i

rts51x_read_mem.exit.thread50.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %enable_oscillator.exit.thread

rts51x_read_mem.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call7.i.i.i, align 8
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %value.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i) #7
  br label %if.end.i1

if.end.i1:                                        ; preds = %rts51x_read_mem.exit.i, %rts51x_read_mem.exit.thread.i
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %value.i, align 1
  %48 = or i8 %47, 4
  store i8 %48, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i21.i) #7
  %49 = getelementptr inbounds i8, ptr %cmnd.i21.i, i32 6
  %50 = call ptr @memset(ptr %49, i32 0, i32 6)
  %call.i.i = call ptr @kmemdup(ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 3072) #7
  %cmp.i22.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i22.i, label %if.end.i1.if.end7.i_crit_edge, label %if.end.i30.i

if.end.i1.if.end7.i_crit_edge:                    ; preds = %if.end.i1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end.i30.i:                                     ; preds = %if.end.i1
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 65143, i32 noundef 1) #7
  %51 = ptrtoint ptr %cmnd.i21.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -16, ptr %cmnd.i21.i, align 1
  %arrayidx5.i23.i = getelementptr inbounds [12 x i8], ptr %cmnd.i21.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx5.i23.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 14, ptr %arrayidx5.i23.i, align 1
  %arrayidx8.i24.i = getelementptr inbounds [12 x i8], ptr %cmnd.i21.i, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx8.i24.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -2, ptr %arrayidx8.i24.i, align 1
  %arrayidx10.i25.i = getelementptr inbounds [12 x i8], ptr %cmnd.i21.i, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx10.i25.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 119, ptr %arrayidx10.i25.i, align 1
  %arrayidx14.i26.i = getelementptr inbounds [12 x i8], ptr %cmnd.i21.i, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx14.i26.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx14.i26.i, align 1
  %arrayidx16.i27.i = getelementptr inbounds [12 x i8], ptr %cmnd.i21.i, i32 0, i32 5
  %56 = ptrtoint ptr %arrayidx16.i27.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %arrayidx16.i27.i, align 1
  %call18.i28.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i21.i, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i28.i)
  %cmp19.not.i29.i = icmp eq i32 %call18.i28.i, 0
  br i1 %cmp19.not.i29.i, label %if.end.i30.i.if.end7.i_crit_edge, label %rts51x_write_mem.exit.i

if.end.i30.i.if.end7.i_crit_edge:                 ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

rts51x_write_mem.exit.i:                          ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i21.i) #7
  br label %enable_oscillator.exit.thread

if.end7.i:                                        ; preds = %if.end.i30.i.if.end7.i_crit_edge, %if.end.i1.if.end7.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i21.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i32.i) #7
  %57 = getelementptr inbounds i8, ptr %cmnd.i32.i, i32 6
  %58 = call ptr @memset(ptr %57, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i34.i = icmp eq ptr %call7.i.i33.i, null
  br i1 %cmp.i34.i, label %rts51x_read_mem.exit47.thread.i, label %if.end.i42.i

rts51x_read_mem.exit47.thread.i:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i32.i) #7
  br label %if.end12.i

if.end.i42.i:                                     ; preds = %if.end7.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 65143, i32 noundef 1) #7
  %60 = ptrtoint ptr %cmnd.i32.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -16, ptr %cmnd.i32.i, align 1
  %arrayidx5.i35.i = getelementptr inbounds [12 x i8], ptr %cmnd.i32.i, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx5.i35.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 13, ptr %arrayidx5.i35.i, align 1
  %arrayidx8.i36.i = getelementptr inbounds [12 x i8], ptr %cmnd.i32.i, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx8.i36.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -2, ptr %arrayidx8.i36.i, align 1
  %arrayidx10.i37.i = getelementptr inbounds [12 x i8], ptr %cmnd.i32.i, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx10.i37.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 119, ptr %arrayidx10.i37.i, align 1
  %arrayidx14.i38.i = getelementptr inbounds [12 x i8], ptr %cmnd.i32.i, i32 0, i32 4
  %64 = ptrtoint ptr %arrayidx14.i38.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx14.i38.i, align 1
  %arrayidx16.i39.i = getelementptr inbounds [12 x i8], ptr %cmnd.i32.i, i32 0, i32 5
  %65 = ptrtoint ptr %arrayidx16.i39.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %arrayidx16.i39.i, align 1
  %call18.i40.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i32.i, ptr noundef nonnull %call7.i.i33.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i40.i)
  %cmp19.not.i41.i = icmp eq i32 %call18.i40.i, 0
  br i1 %cmp19.not.i41.i, label %rts51x_read_mem.exit47.i, label %rts51x_read_mem.exit47.thread57.i

rts51x_read_mem.exit47.thread57.i:                ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i33.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i32.i) #7
  br label %enable_oscillator.exit.thread

rts51x_read_mem.exit47.i:                         ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %call7.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %call7.i.i33.i, align 8
  %68 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %value.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i33.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i32.i) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %rts51x_read_mem.exit47.i, %rts51x_read_mem.exit47.thread.i
  %69 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %value.i, align 1
  %71 = and i8 %70, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i, label %if.end12.i.enable_oscillator.exit.thread_crit_edge, label %if.then35

if.end12.i.enable_oscillator.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_oscillator.exit.thread

enable_oscillator.exit.thread:                    ; preds = %if.end12.i.enable_oscillator.exit.thread_crit_edge, %rts51x_read_mem.exit47.thread57.i, %rts51x_write_mem.exit.i, %rts51x_read_mem.exit.thread50.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  br label %cleanup

if.then35:                                        ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i4) #7
  %72 = ptrtoint ptr %value.i4 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %value.i4, align 1, !annotation !124
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i.i3) #7
  %73 = getelementptr inbounds i8, ptr %cmnd.i.i3, i32 6
  %74 = call ptr @memset(ptr %73, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i5 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i.i6 = icmp eq ptr %call7.i.i.i5, null
  br i1 %cmp.i.i6, label %rts51x_read_mem.exit.thread.i7, label %if.end.i.i15

rts51x_read_mem.exit.thread.i7:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i3) #7
  br label %if.else.i

if.end.i.i15:                                     ; preds = %if.then35
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 65095, i32 noundef 1) #7
  %76 = ptrtoint ptr %cmnd.i.i3 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -16, ptr %cmnd.i.i3, align 1
  %arrayidx5.i.i8 = getelementptr inbounds [12 x i8], ptr %cmnd.i.i3, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx5.i.i8 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 13, ptr %arrayidx5.i.i8, align 1
  %arrayidx8.i.i9 = getelementptr inbounds [12 x i8], ptr %cmnd.i.i3, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx8.i.i9 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -2, ptr %arrayidx8.i.i9, align 1
  %arrayidx10.i.i10 = getelementptr inbounds [12 x i8], ptr %cmnd.i.i3, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx10.i.i10 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 71, ptr %arrayidx10.i.i10, align 1
  %arrayidx14.i.i11 = getelementptr inbounds [12 x i8], ptr %cmnd.i.i3, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx14.i.i11 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx14.i.i11, align 1
  %arrayidx16.i.i12 = getelementptr inbounds [12 x i8], ptr %cmnd.i.i3, i32 0, i32 5
  %81 = ptrtoint ptr %arrayidx16.i.i12 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %arrayidx16.i.i12, align 1
  %call18.i.i13 = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i.i3, ptr noundef nonnull %call7.i.i.i5, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i13)
  %cmp19.not.i.i14 = icmp eq i32 %call18.i.i13, 0
  br i1 %cmp19.not.i.i14, label %rts51x_read_mem.exit.i16, label %rts51x_read_mem.exit.thread3.i

rts51x_read_mem.exit.thread3.i:                   ; preds = %if.end.i.i15
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i3) #7
  br label %do_config_autodelink.exit

rts51x_read_mem.exit.i16:                         ; preds = %if.end.i.i15
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %call7.i.i.i5 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %call7.i.i.i5, align 8
  %84 = ptrtoint ptr %value.i4 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %value.i4, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i.i5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i.i3) #7
  br label %if.else.i

if.else.i:                                        ; preds = %rts51x_read_mem.exit.i16, %rts51x_read_mem.exit.thread.i7
  %85 = ptrtoint ptr %value.i4 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %value.i4, align 1
  %87 = or i8 %86, 1
  store i8 %87, ptr %value.i4, align 1
  %conv14.i = zext i8 %87 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33, i32 noundef %conv14.i) #7
  %call15.i = call fastcc i32 @__do_config_autodelink(ptr noundef %us, ptr noundef nonnull %value.i4) #7
  br label %do_config_autodelink.exit

do_config_autodelink.exit:                        ; preds = %if.else.i, %rts51x_read_mem.exit.thread3.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i4) #7
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %88 = or i8 %19, 4
  %89 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %value, align 1
  %product_id41 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 1
  %90 = ptrtoint ptr %product_id41 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %product_id41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 312, i16 %91)
  %cmp43 = icmp eq i16 %91, 312
  br i1 %cmp43, label %land.lhs.true45, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true45:                                  ; preds = %if.else
  %status46 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %status46 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %status46, align 4
  %fw_ver48 = getelementptr inbounds %struct.rts51x_status, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %fw_ver48 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %fw_ver48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14466, i16 %95)
  %cmp50 = icmp eq i16 %95, 14466
  br i1 %cmp50, label %if.then52, label %land.lhs.true45.if.end56thread-pre-split_crit_edge

land.lhs.true45.if.end56thread-pre-split_crit_edge: ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56thread-pre-split

if.then52:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  %96 = and i8 %19, -5
  %97 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %value, align 1
  br label %if.end56thread-pre-split

if.end56thread-pre-split:                         ; preds = %if.then52, %land.lhs.true45.if.end56thread-pre-split_crit_edge
  %98 = ptrtoint ptr %product_id41 to i32
  call void @__asan_load2_noabort(i32 %98)
  %.pr = load i16, ptr %product_id41, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.end56thread-pre-split, %if.else.if.end56_crit_edge
  %99 = phi i16 [ %.pr, %if.end56thread-pre-split ], [ %91, %if.else.if.end56_crit_edge ]
  %100 = zext i16 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %99, label %if.end56.if.end86_crit_edge [
    i16 345, label %land.lhs.true61
    i16 312, label %land.lhs.true72
  ]

if.end56.if.end86_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true61:                                  ; preds = %if.end56
  %status62 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %101 = ptrtoint ptr %status62 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %status62, align 4
  %fw_ver64 = getelementptr inbounds %struct.rts51x_status, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %fw_ver64 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %fw_ver64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22665, i16 %104)
  %cmp66 = icmp eq i16 %104, 22665
  br i1 %cmp66, label %land.lhs.true61.if.then79_crit_edge, label %land.lhs.true61.if.end86_crit_edge

land.lhs.true61.if.end86_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true61.if.then79_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

land.lhs.true72:                                  ; preds = %if.end56
  %status73 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %105 = ptrtoint ptr %status73 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %status73, align 4
  %fw_ver75 = getelementptr inbounds %struct.rts51x_status, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %fw_ver75 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %fw_ver75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14464, i16 %108)
  %cmp77 = icmp eq i16 %108, 14464
  br i1 %cmp77, label %land.lhs.true72.if.then79_crit_edge, label %land.lhs.true72.if.end86_crit_edge

land.lhs.true72.if.end86_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true72.if.then79_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.then79:                                        ; preds = %land.lhs.true72.if.then79_crit_edge, %land.lhs.true61.if.then79_crit_edge
  %109 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %value, align 1
  %111 = and i8 %110, 126
  store i8 %111, ptr %value, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %land.lhs.true72.if.end86_crit_edge, %land.lhs.true61.if.end86_crit_edge, %if.end56.if.end86_crit_edge
  %call87 = call fastcc i32 @__do_config_autodelink(ptr noundef %us, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end86.cleanup_crit_edge, label %if.end91

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91:                                         ; preds = %if.end86
  %112 = ptrtoint ptr %product_id41 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %product_id41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 345, i16 %113)
  %cmp94 = icmp eq i16 %113, 345
  br i1 %cmp94, label %land.lhs.true96, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true96:                                  ; preds = %if.end91
  %status97 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %114 = ptrtoint ptr %status97 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %status97, align 4
  %fw_ver99 = getelementptr inbounds %struct.rts51x_status, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %fw_ver99 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %fw_ver99, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22664, i16 %117)
  %cmp101 = icmp eq i16 %117, 22664
  br i1 %cmp101, label %if.then103, label %land.lhs.true96.cleanup_crit_edge

land.lhs.true96.cleanup_crit_edge:                ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then103:                                       ; preds = %land.lhs.true96
  %118 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -1, ptr %value, align 1
  %call104 = call fastcc i32 @rts51x_write_mem(ptr noundef %us, i16 noundef zeroext -391, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then103.cleanup_crit_edge, label %if.end108

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end108:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %value, align 1
  %call109 = call fastcc i32 @rts51x_write_mem(ptr noundef %us, i16 noundef zeroext 72, ptr noundef nonnull %value)
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.then103.cleanup_crit_edge, %land.lhs.true96.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %do_config_autodelink.exit, %enable_oscillator.exit.thread, %if.end23.cleanup_crit_edge, %rts51x_read_mem.exit.thread19, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext %lun, ptr nocapture noundef readonly %cmd, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %dir, ptr noundef writeonly %act_len) unnamed_addr #2 align 64 {
entry:
  %cswlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cswlen) #7
  %2 = ptrtoint ptr %cswlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cswlen, align 4, !annotation !124
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1431519811, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %buf_len)
  %DataTransferLength = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %DataTransferLength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %conv = select i1 %cmp, i8 -128, i8 0
  %Flags = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %Flags, align 4
  %tag = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 23
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tag, align 4
  %Tag = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %Tag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %Tag, align 4
  %Lun = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %Lun to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %lun, ptr %Lun, align 1
  %Length = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %Length to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %Length, align 2
  %CDB = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6
  %12 = call ptr @memset(ptr %CDB, i32 0, i32 16)
  %13 = call ptr @memcpy(ptr %CDB, ptr %cmd, i32 12)
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %14 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %send_bulk_pipe, align 4
  %call = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %15, ptr noundef %1, i32 noundef 31, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then10

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then10:                                        ; preds = %if.end
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %cond14.in = select i1 %cmp, ptr %recv_bulk_pipe, ptr %send_bulk_pipe
  %16 = ptrtoint ptr %cond14.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond14 = load i32, ptr %cond14.in, align 4
  %call15 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond14, ptr noundef nonnull %buf, i32 noundef %buf_len, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 4
  br i1 %cmp16, label %if.then10.cleanup54_crit_edge, label %if.then10.if.end20_crit_edge

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then10.cleanup54_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end20:                                         ; preds = %if.then10.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %recv_bulk_pipe21 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %17 = ptrtoint ptr %recv_bulk_pipe21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %recv_bulk_pipe21, align 4
  %call22 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %18, ptr noundef %1, i32 noundef 13, ptr noundef nonnull %cswlen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %if.end20.cleanup54_crit_edge

if.end20.cleanup54_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end26:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431519827, i32 %20)
  %cmp28.not = icmp eq i32 %20, 1431519827
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef 1396855637) #7
  br label %cleanup54

if.end32:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %Tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Tag, align 4
  %24 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp35.not = icmp eq i32 %23, %25
  br i1 %cmp35.not, label %if.end38, label %if.end32.cleanup54_crit_edge

if.end32.cleanup54_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end38:                                         ; preds = %if.end32
  %tobool48.not = icmp eq ptr %act_len, null
  br i1 %tobool48.not, label %if.end38.if.end50_crit_edge, label %if.then49

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %DataTransferLength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DataTransferLength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not = icmp eq i32 %27, 0
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 %buf_len)
  %residue.0 = select i1 %tobool39.not, i32 0, i32 %28
  %sub = sub i32 %buf_len, %residue.0
  %29 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %act_len, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end38.if.end50_crit_edge
  %30 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %Flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %32 = icmp ult i8 %31, 3
  br i1 %32, label %switch.lookup, label %if.end50.cleanup54_crit_edge

if.end50.cleanup54_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

switch.lookup:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %33 = sext i8 %31 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rts51x_bulk_transport, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %switch.lookup, %if.end50.cleanup54_crit_edge, %if.end32.cleanup54_crit_edge, %if.then30, %if.end20.cleanup54_crit_edge, %if.then10.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.1 = phi i32 [ 3, %if.then30 ], [ 3, %if.then10.cleanup54_crit_edge ], [ 3, %entry.cleanup54_crit_edge ], [ 3, %if.end20.cleanup54_crit_edge ], [ 3, %if.end32.cleanup54_crit_edge ], [ %switch.load, %switch.lookup ], [ 3, %if.end50.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cswlen) #7
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts51x_invoke_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %5, label %if.then [
    i8 30, label %entry.if.else_crit_edge
    i8 0, label %entry.if.else_crit_edge138
  ]

entry.if.else_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %entry
  %pusb_intf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 2
  %7 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pusb_intf, align 4
  %usage_count = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #7
  %9 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %usage_count, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15, i32 noundef %10) #7
  %11 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pusb_intf, align 4
  %usage_count5 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 12, i32 13
  %call.i.i136 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count5, i32 noundef 4) #7
  %13 = ptrtoint ptr %usage_count5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %usage_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp slt i32 %14, 1
  br i1 %cmp, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pusb_intf, align 4
  %call9 = tail call i32 @usb_autopm_get_interface(ptr noundef %16) #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16, i32 noundef %call9) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %state = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp10.not = icmp eq i32 %18, 2
  br i1 %cmp10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %state, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %proto_handler_backup = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %proto_handler_backup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %proto_handler_backup, align 4
  tail call void %21(ptr noundef %srb, ptr noundef %us) #7
  br label %out

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge138
  %state14 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp15 = icmp eq i32 %23, 3
  br i1 %cmp15, label %if.then16, label %if.else47

if.then16:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17) #7
  %24 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %27, label %if.then16.out_crit_edge [
    i8 0, label %land.lhs.true
    i8 30, label %if.then34
  ]

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %if.then16
  %pwr_state = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %pwr_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp19 = icmp eq i32 %30, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then21:                                        ; preds = %land.lhs.true
  %lun_ready = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %lun_ready to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lun_ready, align 4
  %conv22 = zext i8 %32 to i32
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lun, align 8
  %sh_prom = trunc i64 %36 to i32
  %shl = shl nuw i32 1, %sh_prom
  %and = and i32 %shl, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %result26 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %result26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %result26, align 4
  br label %if.end27

if.else25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %result26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %result26, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %39 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sense_buffer, align 4
  %41 = call ptr @memcpy(ptr %40, ptr @rts51x_invoke_transport.media_not_present, i32 18)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18) #7
  br label %out

if.then34:                                        ; preds = %if.then16
  %arrayidx36 = getelementptr i8, ptr %25, i32 4
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx36, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool39.not = icmp eq i8 %44, 0
  %result44 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %result44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %result44, align 4
  %sense_buffer42 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %46 = ptrtoint ptr %sense_buffer42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sense_buffer42, align 4
  %48 = call ptr @memcpy(ptr %47, ptr @rts51x_invoke_transport.invalid_cmd_field, i32 18)
  br label %if.end45

if.else43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %result44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %result44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then40
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19) #7
  br label %out

if.else47:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20) #7
  %proto_handler_backup48 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 13
  %50 = ptrtoint ptr %proto_handler_backup48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %proto_handler_backup48, align 4
  tail call void %51(ptr noundef %srb, ptr noundef %us) #7
  %52 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmnd.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp52 = icmp eq i8 %55, 0
  br i1 %cmp52, label %if.then54, label %if.else47.if.end79_crit_edge

if.else47.if.end79_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then54:                                        ; preds = %if.else47
  %result55 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %56 = ptrtoint ptr %result55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %result55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp56 = icmp eq i32 %57, 0
  %device59 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %58 = ptrtoint ptr %device59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device59, align 4
  %lun60 = getelementptr inbounds %struct.scsi_device, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %lun60 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %lun60, align 8
  %sh_prom61 = trunc i64 %61 to i32
  %shl62 = shl nuw i32 1, %sh_prom61
  %lun_ready63 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %lun_ready63 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %lun_ready63, align 4
  %64 = trunc i32 %shl62 to i8
  br i1 %cmp56, label %if.then58, label %if.else69

if.then58:                                        ; preds = %if.then54
  %conv65 = or i8 %63, %64
  %65 = ptrtoint ptr %lun_ready63 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv65, ptr %lun_ready63, align 4
  %.b = load i1, ptr @rts51x_invoke_transport.card_first_show, align 4
  br i1 %.b, label %if.then58.if.end79_crit_edge, label %if.then67

if.then58.if.end79_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then67:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rts51x_invoke_transport.card_first_show, align 4
  tail call fastcc void @fw5895_set_mmc_wp(ptr noundef %us)
  br label %if.end79

if.else69:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %66 = xor i8 %64, -1
  %conv77 = and i8 %63, %66
  %67 = ptrtoint ptr %lun_ready63 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv77, ptr %lun_ready63, align 4
  store i1 false, ptr @rts51x_invoke_transport.card_first_show, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else69, %if.then67, %if.then58.if.end79_crit_edge, %if.else47.if.end79_crit_edge
  %68 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp81.not = icmp eq i32 %69, 1
  br i1 %cmp81.not, label %if.end79.out_crit_edge, label %if.then83

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %state14, align 4
  br label %out

out:                                              ; preds = %if.then83, %if.end79.out_crit_edge, %if.end45, %if.end27, %land.lhs.true.out_crit_edge, %if.then16.out_crit_edge, %if.end13
  %state88 = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 11
  %71 = ptrtoint ptr %state88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state88, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %72) #7
  %73 = ptrtoint ptr %state88 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp90 = icmp eq i32 %74, 2
  br i1 %cmp90, label %if.then92, label %out.if.end93_crit_edge

out.if.end93_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then92:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %us1.i = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %us1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %us1.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %76, ptr noundef nonnull @.str.21, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %78 = load i32, ptr @ss_delay, align 4
  %mul.i = mul i32 %78, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #7
  %add.i = add i32 %call2.i.i, %77
  %timer_expires.i = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.i, ptr %timer_expires.i, align 4
  %rts51x_suspend_timer.i = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 7
  %call3.i = tail call i32 @mod_timer(ptr noundef %rts51x_suspend_timer.i, i32 noundef %add.i) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %out.if.end93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts51x_suspend_timer_fn(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %us1 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %us1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %us1, align 4
  %state = getelementptr i8, ptr %t, i32 60
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge30
    i32 1, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge31
  ]

entry.sw.bb2_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge30
  %5 = ptrtoint ptr %us1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %us1, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = load i32, ptr @ss_delay, align 4
  %mul.i = mul i32 %10, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #7
  %add.i = add i32 %call2.i.i, %9
  %timer_expires.i = getelementptr i8, ptr %t, i32 48
  %11 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %timer_expires.i, align 4
  %call3.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge31
  %pusb_intf = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pusb_intf, align 4
  %usage_count = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #7
  %14 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %usage_count, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %15) #7
  %16 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pusb_intf, align 4
  %usage_count6 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7, i32 12, i32 13
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count6, i32 noundef 4) #7
  %18 = ptrtoint ptr %usage_count6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %usage_count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.28) #7
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %state, align 4
  %21 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pusb_intf, align 4
  %ignore_children.i = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7, i32 12, i32 15
  %23 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %24 = load ptr, ptr %pusb_intf, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %24) #7
  %25 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pusb_intf, align 4
  %usage_count15 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7, i32 12, i32 13
  %call.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count15, i32 noundef 4) #7
  %27 = ptrtoint ptr %usage_count15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %usage_count15, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %28) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %1, ptr noundef nonnull @.str.30) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fw5895_init(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  %cmnd.i27 = alloca [12 x i8], align 1
  %cmnd.i = alloca [12 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %status = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %pid = getelementptr inbounds %struct.rts51x_status, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 344, i16 %5)
  %cmp.not = icmp eq i16 %5, 344
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fw_ver = getelementptr inbounds %struct.rts51x_status, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22677, i16 %7)
  %cmp5.not = icmp eq i16 %7, 22677
  br i1 %cmp5.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22) #7
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i) #7
  %8 = getelementptr inbounds i8, ptr %cmnd.i, i32 6
  %9 = call ptr @memset(ptr %8, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %rts51x_read_mem.exit.thread, label %if.end.i

rts51x_read_mem.exit.thread:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %if.else17

if.end.i:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 64879, i32 noundef 1) #7
  %11 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -16, ptr %cmnd.i, align 1
  %arrayidx5.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 13, ptr %arrayidx5.i, align 1
  %arrayidx8.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -3, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 111, ptr %arrayidx10.i, align 1
  %arrayidx14.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx14.i, align 1
  %arrayidx16.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx16.i, align 1
  %call18.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %land.lhs.true, label %rts51x_read_mem.exit

rts51x_read_mem.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %if.else17

land.lhs.true:                                    ; preds = %if.end.i
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  %19 = and i8 %18, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp10 = icmp eq i8 %19, 0
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.else17_crit_edge

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17

if.then12:                                        ; preds = %land.lhs.true
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 31, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i27) #7
  %21 = getelementptr inbounds i8, ptr %cmnd.i27, i32 6
  %22 = call ptr @memset(ptr %21, i32 0, i32 6)
  %call.i = call ptr @kmemdup(ptr noundef nonnull %val, i32 noundef 1, i32 noundef 3072) #7
  %cmp.i28 = icmp eq ptr %call.i, null
  br i1 %cmp.i28, label %if.then12.if.then16_crit_edge, label %if.end.i36

if.then12.if.then16_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end.i36:                                       ; preds = %if.then12
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 64880, i32 noundef 1) #7
  %23 = ptrtoint ptr %cmnd.i27 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -16, ptr %cmnd.i27, align 1
  %arrayidx5.i29 = getelementptr inbounds [12 x i8], ptr %cmnd.i27, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx5.i29 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 14, ptr %arrayidx5.i29, align 1
  %arrayidx8.i30 = getelementptr inbounds [12 x i8], ptr %cmnd.i27, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx8.i30 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -3, ptr %arrayidx8.i30, align 1
  %arrayidx10.i31 = getelementptr inbounds [12 x i8], ptr %cmnd.i27, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx10.i31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 112, ptr %arrayidx10.i31, align 1
  %arrayidx14.i32 = getelementptr inbounds [12 x i8], ptr %cmnd.i27, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx14.i32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx14.i32, align 1
  %arrayidx16.i33 = getelementptr inbounds [12 x i8], ptr %cmnd.i27, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx16.i33 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx16.i33, align 1
  %call18.i34 = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i27, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i34)
  %cmp19.not.i35 = icmp eq i32 %call18.i34, 0
  br i1 %cmp19.not.i35, label %rts51x_write_mem.exit, label %if.end.i36.if.then16_crit_edge

if.end.i36.if.then16_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

rts51x_write_mem.exit:                            ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i27) #7
  br label %if.end19

if.then16:                                        ; preds = %if.end.i36.if.then16_crit_edge, %if.then12.if.then16_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i27) #7
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23) #7
  br label %if.end19

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %rts51x_read_mem.exit, %rts51x_read_mem.exit.thread
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31) #7
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16, %rts51x_write_mem.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fw5895_set_mmc_wp(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  %cmnd.i42 = alloca [12 x i8], align 1
  %cmnd.i = alloca [12 x i8], align 1
  %buf = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf) #7
  %status = getelementptr inbounds %struct.rts51x_chip, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %buf, i32 255, i32 13)
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status, align 4
  %pid = getelementptr inbounds %struct.rts51x_status, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 344, i16 %6)
  %cmp.not = icmp eq i16 %6, 344
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fw_ver = getelementptr inbounds %struct.rts51x_status, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22677, i16 %8)
  %cmp5.not = icmp eq i16 %8, 22677
  br i1 %cmp5.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22) #7
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i) #7
  %9 = getelementptr inbounds i8, ptr %cmnd.i, i32 6
  %10 = call ptr @memset(ptr %9, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %rts51x_read_mem.exit.thread, label %if.end.i

rts51x_read_mem.exit.thread:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %if.else29

if.end.i:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 64879, i32 noundef 1) #7
  %12 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -16, ptr %cmnd.i, align 1
  %arrayidx5.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 13, ptr %arrayidx5.i, align 1
  %arrayidx8.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -3, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 111, ptr %arrayidx10.i, align 1
  %arrayidx14.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx14.i, align 1
  %arrayidx16.i = getelementptr inbounds [12 x i8], ptr %cmnd.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx16.i, align 1
  %call18.i = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %land.lhs.true, label %rts51x_read_mem.exit

rts51x_read_mem.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  br label %if.else29

land.lhs.true:                                    ; preds = %if.end.i
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i) #7
  %20 = and i8 %19, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %20)
  %cmp11 = icmp eq i8 %20, 36
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.else29_crit_edge

land.lhs.true.if.else29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd.i42) #7
  %21 = getelementptr inbounds i8, ptr %cmnd.i42, i32 6
  %22 = call ptr @memset(ptr %21, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3072, i32 noundef 1) #10
  %cmp.i44 = icmp eq ptr %call7.i.i43, null
  br i1 %cmp.i44, label %rts51x_read_mem.exit57.thread, label %if.end.i52

rts51x_read_mem.exit57.thread:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i42) #7
  br label %if.else27

if.end.i52:                                       ; preds = %if.then13
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 53326, i32 noundef 1) #7
  %24 = ptrtoint ptr %cmnd.i42 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -16, ptr %cmnd.i42, align 1
  %arrayidx5.i45 = getelementptr inbounds [12 x i8], ptr %cmnd.i42, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx5.i45 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 13, ptr %arrayidx5.i45, align 1
  %arrayidx8.i46 = getelementptr inbounds [12 x i8], ptr %cmnd.i42, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx8.i46 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -48, ptr %arrayidx8.i46, align 1
  %arrayidx10.i47 = getelementptr inbounds [12 x i8], ptr %cmnd.i42, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx10.i47 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 78, ptr %arrayidx10.i47, align 1
  %arrayidx14.i48 = getelementptr inbounds [12 x i8], ptr %cmnd.i42, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx14.i48 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx14.i48, align 1
  %arrayidx16.i49 = getelementptr inbounds [12 x i8], ptr %cmnd.i42, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx16.i49 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx16.i49, align 1
  %call18.i50 = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd.i42, ptr noundef nonnull %call7.i.i43, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i50)
  %cmp19.not.i51 = icmp eq i32 %call18.i50, 0
  br i1 %cmp19.not.i51, label %if.then18, label %rts51x_read_mem.exit57

rts51x_read_mem.exit57:                           ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i43) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i42) #7
  br label %if.else27

if.then18:                                        ; preds = %if.end.i52
  %30 = ptrtoint ptr %call7.i.i43 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call7.i.i43, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i43) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd.i42) #7
  %32 = or i8 %31, 4
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %buf, align 1
  %call23 = call fastcc i32 @rts51x_write_mem(ptr noundef %us, i16 noundef zeroext -656, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.then18.if.end31_crit_edge, label %if.then26

if.then18.if.end31_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23) #7
  br label %if.end31

if.else27:                                        ; preds = %rts51x_read_mem.exit57, %rts51x_read_mem.exit57.thread
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24) #7
  br label %if.end31

if.else29:                                        ; preds = %land.lhs.true.if.else29_crit_edge, %rts51x_read_mem.exit, %rts51x_read_mem.exit.thread
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.25) #7
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.else27, %if.then26, %if.then18.if.end31_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rts51x_write_mem(ptr noundef %us, i16 noundef zeroext %addr, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %cmnd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmnd) #7
  %0 = getelementptr inbounds i8, ptr %cmnd, i32 6
  %1 = call ptr @memset(ptr %0, i32 0, i32 6)
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef 1, i32 noundef 3072) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef %conv3, i32 noundef 1) #7
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -16, ptr %cmnd, align 1
  %arrayidx5 = getelementptr inbounds [12 x i8], ptr %cmnd, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 14, ptr %arrayidx5, align 1
  %4 = lshr i16 %addr, 8
  %conv7 = trunc i16 %4 to i8
  %arrayidx8 = getelementptr inbounds [12 x i8], ptr %cmnd, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7, ptr %arrayidx8, align 1
  %conv9 = trunc i16 %addr to i8
  %arrayidx10 = getelementptr inbounds [12 x i8], ptr %cmnd, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %arrayidx10, align 1
  %arrayidx14 = getelementptr inbounds [12 x i8], ptr %cmnd, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr inbounds [12 x i8], ptr %cmnd, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx16, align 1
  %call18 = call fastcc i32 @rts51x_bulk_transport(ptr noundef %us, i8 noundef zeroext 0, ptr noundef nonnull %cmnd, ptr noundef nonnull %call, i32 noundef 1, i32 noundef 1, ptr noundef null)
  tail call void @kfree(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  %. = select i1 %cmp19.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmnd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_config_autodelink(ptr noundef %us, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %cswlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32, i32 noundef 1) #7
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef 1, i32 noundef 3072) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cswlen.i) #7
  %2 = ptrtoint ptr %cswlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cswlen.i, align 4, !annotation !124
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1431519811, ptr %1, align 4
  %DataTransferLength.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %DataTransferLength.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %DataTransferLength.i, align 4
  %Flags.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %Flags.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %Flags.i, align 4
  %tag.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 23
  %6 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %tag.i, align 4
  %Tag.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %Tag.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %Tag.i, align 4
  %Lun.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %Lun.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %Lun.i, align 1
  %Length.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %Length.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %Length.i, align 2
  %CDB.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6
  %11 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %11, align 1
  %13 = ptrtoint ptr %CDB.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -16, ptr %CDB.i, align 1
  %cmnd.sroa.5.0.CDB.i.sroa_idx = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %cmnd.sroa.5.0.CDB.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 14, ptr %cmnd.sroa.5.0.CDB.i.sroa_idx, align 1
  %cmnd.sroa.6.0.CDB.i.sroa_idx = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %cmnd.sroa.6.0.CDB.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -2, ptr %cmnd.sroa.6.0.CDB.i.sroa_idx, align 1
  %cmnd.sroa.7.0.CDB.i.sroa_idx = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %cmnd.sroa.7.0.CDB.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 71, ptr %cmnd.sroa.7.0.CDB.i.sroa_idx, align 1
  %cmnd.sroa.8.0.CDB.i.sroa_idx = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %cmnd.sroa.8.0.CDB.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %cmnd.sroa.8.0.CDB.i.sroa_idx, align 1
  %cmnd.sroa.9.0.CDB.i.sroa_idx = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %cmnd.sroa.9.0.CDB.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %cmnd.sroa.9.0.CDB.i.sroa_idx, align 1
  %cmnd.sroa.10.0.CDB.i.sroa_idx = getelementptr inbounds %struct.bulk_cb_wrap, ptr %1, i32 0, i32 6, i32 6
  %19 = call ptr @memset(ptr %cmnd.sroa.10.0.CDB.i.sroa_idx, i32 0, i32 6)
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %20 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %21, ptr noundef %1, i32 noundef 31, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.not.i, label %cond.end.i, label %if.end.rts51x_bulk_transport_special.exit.thread_crit_edge

if.end.rts51x_bulk_transport_special.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_bulk_transport_special.exit.thread

cond.end.i:                                       ; preds = %if.end
  %22 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %send_bulk_pipe.i, align 4
  %call15.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %23, ptr noundef nonnull %call, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 4
  br i1 %cmp16.i, label %cond.end.i.rts51x_bulk_transport_special.exit.thread_crit_edge, label %rts51x_bulk_transport_special.exit

cond.end.i.rts51x_bulk_transport_special.exit.thread_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rts51x_bulk_transport_special.exit.thread

rts51x_bulk_transport_special.exit.thread:        ; preds = %cond.end.i.rts51x_bulk_transport_special.exit.thread_crit_edge, %if.end.rts51x_bulk_transport_special.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cswlen.i) #7
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

rts51x_bulk_transport_special.exit:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pusb_dev.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %24 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pusb_dev.i, align 4
  %recv_bulk_pipe21.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %26 = ptrtoint ptr %recv_bulk_pipe21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %recv_bulk_pipe21.i, align 4
  %call22.i = call i32 @usb_bulk_msg(ptr noundef %25, i32 noundef %27, ptr noundef %1, i32 noundef 13, ptr noundef nonnull %cswlen.i, i32 noundef 250) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cswlen.i) #7
  call void @kfree(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.not = icmp eq i32 %call22.i, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %rts51x_bulk_transport_special.exit, %rts51x_bulk_transport_special.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ -5, %rts51x_bulk_transport_special.exit.thread ], [ %spec.select, %rts51x_bulk_transport_special.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/realtek_cr.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/realtek_cr.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/realtek_cr.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/realtek_cr.c", i32 38, i32 1}
!9 = !{ptr @__param_auto_delink_en, !10, !"__param_auto_delink_en", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/realtek_cr.c", i32 41, i32 1}
!11 = !{ptr @__UNIQUE_ID_auto_delink_entype295, !10, !"__UNIQUE_ID_auto_delink_entype295", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_auto_delink_en296, !13, !"__UNIQUE_ID_auto_delink_en296", i1 false, i1 false}
!13 = !{!"../drivers/usb/storage/realtek_cr.c", i32 42, i32 1}
!14 = !{ptr @__param_ss_en, !15, !"__param_ss_en", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/realtek_cr.c", i32 46, i32 1}
!16 = !{ptr @__UNIQUE_ID_ss_entype297, !15, !"__UNIQUE_ID_ss_entype297", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_ss_en298, !18, !"__UNIQUE_ID_ss_en298", i1 false, i1 false}
!18 = !{!"../drivers/usb/storage/realtek_cr.c", i32 47, i32 1}
!19 = !{ptr @__param_ss_delay, !20, !"__param_ss_delay", i1 false, i1 false}
!20 = !{!"../drivers/usb/storage/realtek_cr.c", i32 50, i32 1}
!21 = !{ptr @__UNIQUE_ID_ss_delaytype299, !20, !"__UNIQUE_ID_ss_delaytype299", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_ss_delay300, !23, !"__UNIQUE_ID_ss_delay300", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/realtek_cr.c", i32 51, i32 1}
!24 = !{ptr @__initcall__kmod_ums_realtek__302_1070_realtek_cr_driver_init6, !25, !"__initcall__kmod_ums_realtek__302_1070_realtek_cr_driver_init6", i1 false, i1 false}
!25 = !{!"../drivers/usb/storage/realtek_cr.c", i32 1070, i32 1}
!26 = !{ptr @__exitcall_realtek_cr_driver_exit, !25, !"__exitcall_realtek_cr_driver_exit", i1 false, i1 false}
!27 = !{ptr @__param_str_auto_delink_en, !10, !"__param_str_auto_delink_en", i1 false, i1 false}
!28 = !{ptr @auto_delink_en, !29, !"auto_delink_en", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/realtek_cr.c", i32 40, i32 12}
!30 = !{ptr @__param_str_ss_en, !15, !"__param_str_ss_en", i1 false, i1 false}
!31 = !{ptr @ss_en, !32, !"ss_en", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/realtek_cr.c", i32 45, i32 12}
!33 = !{ptr @__param_str_ss_delay, !20, !"__param_str_ss_delay", i1 false, i1 false}
!34 = !{ptr @ss_delay, !35, !"ss_delay", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/realtek_cr.c", i32 49, i32 12}
!36 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @realtek_cr_host_template, !39, !"realtek_cr_host_template", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/realtek_cr.c", i32 1031, i32 34}
!40 = !{ptr @realtek_cr_driver, !41, !"realtek_cr_driver", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/realtek_cr.c", i32 1053, i32 26}
!42 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/realtek_cr.c", i32 1039, i32 2}
!44 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @realtek_cr_probe.__UNIQUE_ID_ddebug301, !43, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/storage/unusual_realtek.h", i32 15, i32 1}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @realtek_cr_unusual_dev_list, !51, !"realtek_cr_unusual_dev_list", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/realtek_cr.c", i32 194, i32 30}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/realtek_cr.c", i32 987, i32 19}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/realtek_cr.c", i32 1015, i32 19}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/realtek_cr.c", i32 350, i32 19}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/realtek_cr.c", i32 457, i32 19}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/storage/realtek_cr.c", i32 430, i32 19}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/realtek_cr.c", i32 250, i32 20}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/storage/realtek_cr.c", i32 889, i32 20}
!66 = !{ptr @realtek_cr_autosuspend_setup.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/realtek_cr.c", i32 918, i32 2}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"card_first_show", i1 false, i1 false}
!70 = !{!"../drivers/usb/storage/realtek_cr.c", i32 799, i32 13}
!71 = !{ptr @rts51x_invoke_transport.media_not_present, !72, !"media_not_present", i1 false, i1 false}
!72 = !{!"../drivers/usb/storage/realtek_cr.c", i32 800, i32 12}
!73 = !{ptr @rts51x_invoke_transport.invalid_cmd_field, !74, !"invalid_cmd_field", i1 false, i1 false}
!74 = !{!"../drivers/usb/storage/realtek_cr.c", i32 803, i32 12}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/storage/realtek_cr.c", i32 809, i32 20}
!77 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/storage/realtek_cr.c", i32 814, i32 21}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/storage/realtek_cr.c", i32 821, i32 21}
!81 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/storage/realtek_cr.c", i32 832, i32 22}
!83 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/storage/realtek_cr.c", i32 845, i32 22}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/storage/realtek_cr.c", i32 849, i32 21}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/storage/realtek_cr.c", i32 869, i32 19}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/storage/realtek_cr.c", i32 725, i32 20}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/storage/realtek_cr.c", i32 735, i32 23}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/storage/realtek_cr.c", i32 737, i32 22}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/storage/realtek_cr.c", i32 740, i32 21}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/storage/realtek_cr.c", i32 370, i32 19}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/storage/realtek_cr.c", i32 767, i32 20}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/storage/realtek_cr.c", i32 771, i32 21}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/storage/realtek_cr.c", i32 776, i32 21}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/storage/realtek_cr.c", i32 781, i32 20}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/storage/realtek_cr.c", i32 711, i32 21}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/storage/realtek_cr.c", i32 508, i32 19}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/storage/realtek_cr.c", i32 548, i32 19}
!113 = !{ptr @realtek_cr_ids, !114, !"realtek_cr_ids", i1 false, i1 false}
!114 = !{!"../drivers/usb/storage/realtek_cr.c", i32 171, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i64 2148978357, i64 2148978362, i64 2148978375, i64 2148978419, i64 2148978453, i64 2148978474}
