; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/vicam.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/vicam.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.102, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.102 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>

@__UNIQUE_ID_author303 = internal constant [55 x i8] c"gspca_vicam.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [54 x i8] c"gspca_vicam.description=GSPCA ViCam USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_vicam.file=drivers/media/usb/gspca/gspca_vicam\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_vicam.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [39 x i8] c"gspca_vicam.firmware=vicam/firmware.fw\00", section ".modinfo", align 1
@__initcall__kmod_gspca_vicam__308_347_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_vicam\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vicam\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1217, i16 157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1538, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr null, ptr null, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vicam_mode = internal global { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 256, i32 122, i32 1195528775, i32 1, i32 256, i32 31232, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 256, i32 200, i32 1195528775, i32 1, i32 256, i32 51200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 256, i32 240, i32 1195528775, i32 1, i32 256, i32 61440, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 512, i32 244, i32 1195528775, i32 1, i32 512, i32 124928, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&sd->work_struct)\00", [60 x i8] zeroinitializer }, align 32
@vicam_dostream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_vicam: Couldn't allocate USB buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vicam_dostream\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/vicam.c\00", [32 x i8] zeroinitializer }, align 32
@vicam_dostream._entry_ptr = internal global ptr @vicam_dostream._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vicam_read_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_vicam: bulk read fail (%d) len %d/%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vicam_read_frame\00", [47 x i8] zeroinitializer }, align 32
@vicam_read_frame._entry_ptr = internal global ptr @vicam_read_frame._entry, section ".printk_index", align 4
@vicam_control_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_vicam: control msg req %02X error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vicam_control_msg\00", [46 x i8] zeroinitializer }, align 32
@vicam_control_msg._entry_ptr = internal global ptr @vicam_control_msg._entry, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vicam/firmware.fw\00", [46 x i8] zeroinitializer }, align 32
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_vicam: Failed to load \22vicam/firmware.fw\22: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 77, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vicam:293:(hdl)->_lock\00", [41 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_vicam: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 335, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 347, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 336, i32 16 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 307, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 316, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"vicam_mode\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 218, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 178, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 152, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 79, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 231, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 234, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 76, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 293, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [35 x i8] c"../drivers/media/usb/gspca/vicam.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 300, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_vicam__308_347_sd_driver_init6, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @vicam_control_msg._entry, ptr @vicam_control_msg._entry_ptr, ptr @vicam_dostream._entry, ptr @vicam_dostream._entry_ptr, ptr @vicam_read_frame._entry, ptr @vicam_read_frame._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vicam_mode, ptr @sd_config.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @sd_init_controls._key, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicam_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicam_dostream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicam_read_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicam_control_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2656, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bulk, align 1
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %bulk_size, align 4
  %2 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vicam_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %nmodes, align 4
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work_struct, i32 noundef 0) #8
  %4 = ptrtoint ptr %work_struct to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work_struct, align 8
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vicam_dostream, ptr %func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readonly %gspca_dev) #2 align 64 {
entry:
  %lfw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #8
  %2 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !74
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull @.str.10, ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %sub.i.i = add i32 %8, -6
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %6, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %6, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.end, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %12, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #11
  %13 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %do.end.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 4096) #12
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.exit_crit_edge, label %if.end6

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %tobool7.not40 = icmp eq ptr %17, null
  br i1 %tobool7.not40, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %rec.041 = phi ptr [ %add.ptr.i.i, %for.inc.for.body_crit_edge ], [ %17, %if.end6.for.body_crit_edge ]
  %data8 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.041, i32 0, i32 2
  %len = getelementptr inbounds %struct.ihex_binrec, ptr %rec.041, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %len, align 1
  %conv = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %call7.i, ptr %data8, i32 %conv)
  %21 = load i16, ptr %len, align 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %25, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext -1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext %21, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %vicam_control_msg.exit.thread, label %for.inc

vicam_control_msg.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 255, i32 noundef %call2.i) #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %26 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %len, align 1
  %add.i.i.i32 = add i16 %27, 6
  %conv.i.i = zext i16 %add.i.i.i32 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %add.ptr.i.i = getelementptr i8, ptr %rec.041, i32 %and.i.i
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i33 = icmp eq i16 %29, 0
  %tobool7.not44 = icmp eq ptr %add.ptr.i.i, null
  %tobool7.not = select i1 %tobool.not.i33, i1 true, i1 %tobool7.not44
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vicam_control_msg.exit.thread, %if.end6.for.end_crit_edge
  %ret.1 = phi i32 [ %call2.i, %vicam_control_msg.exit.thread ], [ 0, %if.end6.for.end_crit_edge ], [ %call2.i, %for.inc.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %exit

exit:                                             ; preds = %for.end, %if.end.exit_crit_edge
  %ret.2 = phi i32 [ %ret.1, %for.end ], [ -12, %if.end.exit_crit_edge ]
  call void @release_firmware(ptr noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.2, %exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.18) #8
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef null, i32 noundef 9963793, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 256) #8
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %exposure, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef null, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 200) #8
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %gain, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i.i = shl i32 %3, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i.i, i8 noundef zeroext 80, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %vicam_control_msg.exit.thread.i, label %vicam_control_msg.exit.i

vicam_control_msg.exit.thread.i:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 80, i32 noundef %call2.i.i) #11
  br label %cleanup

vicam_control_msg.exit.i:                         ; preds = %entry
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i10.i = shl i32 %7, 8
  %or.i11.i = or i32 %shl.i.i10.i, -2147483648
  %call2.i12.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i11.i, i8 noundef zeroext 85, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i12.i)
  %cmp.i13.i = icmp slt i32 %call2.i12.i, 0
  br i1 %cmp.i13.i, label %do.end.i15.i, label %if.end

do.end.i15.i:                                     ; preds = %vicam_control_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 85, i32 noundef %call2.i12.i) #11
  br label %cleanup

if.end:                                           ; preds = %vicam_control_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work_struct) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i15.i, %vicam_control_msg.exit.thread.i
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i12.i, %do.end.i15.i ], [ %call2.i.i, %vicam_control_msg.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #8
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %call = tail call zeroext i1 @flush_work(ptr noundef %work_struct) #8
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #8
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i.i = shl i32 %5, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i.i, i8 noundef zeroext 80, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %vicam_control_msg.exit.thread.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

vicam_control_msg.exit.thread.i:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 80, i32 noundef %call2.i.i) #11
  br label %if.end

if.end:                                           ; preds = %vicam_control_msg.exit.thread.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vicam_dostream(ptr noundef %work) #2 align 64 {
entry:
  %act_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2608
  %cam = getelementptr i8, ptr %work, i32 -1052
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr i8, ptr %work, i32 -785
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %sizeimage = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %add = add i32 %5, 64
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %present = getelementptr i8, ptr %work, i32 -17
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not33 = icmp eq i8 %7, 0
  br i1 %tobool4.not33, label %while.cond.preheader.exit_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.exit_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %streaming = getelementptr i8, ptr %work, i32 -786
  %frozen = getelementptr i8, ptr %work, i32 -18
  %usb_buf.i = getelementptr i8, ptr %work, i32 -820
  %exposure.i = getelementptr i8, ptr %work, i32 -836
  %gain1.i = getelementptr i8, ptr %work, i32 -832
  %pixfmt.i = getelementptr i8, ptr %work, i32 -784
  %height.i = getelementptr i8, ptr %work, i32 -780
  %usb_lock.i = getelementptr i8, ptr %work, i32 -116
  %dev.i.i = getelementptr i8, ptr %work, i32 -1124
  %add.ptr12 = getelementptr i8, ptr %call9.i, i32 64
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %exit

land.rhs:                                         ; preds = %if.end11.land.rhs_crit_edge, %land.rhs.lr.ph
  %8 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %streaming, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.rhs.exit_crit_edge, label %while.body

land.rhs.exit_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end8, label %while.body.exit_crit_edge

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end8:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len.i) #8
  %12 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %act_len.i, align 4
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exposure.i, align 4
  %call.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %16) #8
  %17 = ptrtoint ptr %gain1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gain1.i, align 8
  %call2.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %18) #8
  %19 = getelementptr inbounds i8, ptr %14, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 15)
  %conv.i = trunc i32 %call2.i to i8
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %14, align 1
  %22 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp.i25 = icmp eq i32 %23, 256
  br i1 %cmp.i25, label %if.then.i26, label %if.end8.if.end.i27_crit_edge

if.end8.if.end.i27_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i27

if.then.i26:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %19, align 1
  %26 = or i8 %25, 1
  store i8 %26, ptr %19, align 1
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i26, %if.end8.if.end.i27_crit_edge
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %28)
  %cmp8.i = icmp ult i32 %28, 123
  br i1 %cmp8.i, label %if.then10.i, label %if.end.i27.if.end19.i_crit_edge

if.end.i27.if.end19.i_crit_edge:                  ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %19, align 1
  %31 = or i8 %30, 16
  store i8 %31, ptr %19, align 1
  %32 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height.i, align 4
  %mul.i = shl i32 %33, 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then10.i, %if.end.i27.if.end19.i_crit_edge
  %unscaled_height.0.i = phi i32 [ %mul.i, %if.then10.i ], [ %28, %if.end.i27.if.end19.i_crit_edge ]
  %arrayidx20.i = getelementptr i8, ptr %14, i32 2
  %34 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -112, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %unscaled_height.0.i)
  %cmp21.i = icmp slt i32 %unscaled_height.0.i, 201
  br i1 %cmp21.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24.i = getelementptr i8, ptr %14, i32 3
  %35 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %arrayidx24.i, align 1
  br label %if.end33.i

if.else25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 243, i32 %unscaled_height.0.i)
  %cmp26.i = icmp ult i32 %unscaled_height.0.i, 243
  %arrayidx29.i = getelementptr i8, ptr %14, i32 3
  br i1 %cmp26.i, label %if.then28.i, label %if.else30.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %arrayidx29.i, align 1
  br label %if.end33.i

if.else30.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %arrayidx29.i, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else30.i, %if.then28.i, %if.then23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i)
  %cmp34.i = icmp slt i32 %call.i, 256
  %38 = trunc i32 %call.i to i8
  %conv37.i = xor i8 %38, -1
  %39 = lshr i32 %call.i, 8
  %conv47.i = trunc i32 %39 to i8
  %.sink.i = select i1 %cmp34.i, i8 %conv37.i, i8 0
  %40 = call i32 @llvm.smax.i32(i32 %call.i, i32 256) #8
  %41 = trunc i32 %40 to i8
  %conv47.sink.i = select i1 %cmp34.i, i8 1, i8 %conv47.i
  %42 = getelementptr i8, ptr %14, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink.i, ptr %42, align 1
  %44 = getelementptr i8, ptr %14, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %44, align 1
  %46 = getelementptr i8, ptr %14, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %41, ptr %46, align 1
  %48 = getelementptr i8, ptr %14, i32 7
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv47.sink.i, ptr %48, align 1
  %sub50.i = sub i32 244, %unscaled_height.0.i
  %div.i = sdiv i32 %sub50.i, 2
  %50 = trunc i32 %div.i to i8
  %conv52.i = and i8 %50, -2
  %arrayidx53.i = getelementptr i8, ptr %14, i32 8
  %51 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv52.i, ptr %arrayidx53.i, align 1
  call void @mutex_lock_nested(ptr noundef %usb_lock.i, i32 noundef 0) #8
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i = shl i32 %55, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i, i8 noundef zeroext 81, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 0, ptr noundef %14, i16 noundef zeroext 16, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i28 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i28, label %vicam_control_msg.exit.thread.i, label %if.end59.i

vicam_control_msg.exit.thread.i:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 81, i32 noundef %call2.i.i) #11
  call void @mutex_unlock(ptr noundef %usb_lock.i) #8
  br label %vicam_read_frame.exit.thread

if.end59.i:                                       ; preds = %if.end33.i
  call void @mutex_unlock(ptr noundef %usb_lock.i) #8
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i = shl i32 %59, 8
  %or63.i = or i32 %shl.i.i, -1069514624
  %call64.i = call i32 @usb_bulk_msg(ptr noundef %57, i32 noundef %or63.i, ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull %act_len.i, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %if.end59.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end59.i.do.end.i_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end59.i
  %60 = ptrtoint ptr %act_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %act_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add)
  %cmp67.not.i = icmp eq i32 %61, %add
  br i1 %cmp67.not.i, label %if.end11, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end59.i.do.end.i_crit_edge
  %62 = ptrtoint ptr %act_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %act_len.i, align 4
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call64.i, i32 noundef %63, i32 noundef %add) #11
  br label %vicam_read_frame.exit.thread

vicam_read_frame.exit.thread:                     ; preds = %do.end.i, %vicam_control_msg.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len.i) #8
  br label %exit

if.end11:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len.i) #8
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef 1, ptr noundef %add.ptr12, i32 noundef %5) #8
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef 3, ptr noundef null, i32 noundef 0) #8
  %64 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %present, align 1, !range !75
  %tobool4.not = icmp eq i8 %65, 0
  br i1 %tobool4.not, label %if.end11.exit_crit_edge, label %if.end11.land.rhs_crit_edge

if.end11.land.rhs_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %if.end11.exit_crit_edge, %vicam_read_frame.exit.thread, %while.body.exit_crit_edge, %land.rhs.exit_crit_edge, %do.end, %while.cond.preheader.exit_crit_edge
  %retval.1.i37 = phi ptr [ %call9.i, %while.cond.preheader.exit_crit_edge ], [ %call9.i, %vicam_read_frame.exit.thread ], [ null, %do.end ], [ %call9.i, %land.rhs.exit_crit_edge ], [ %call9.i, %while.body.exit_crit_edge ], [ %call9.i, %if.end11.exit_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i37) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/vicam.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/vicam.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/vicam.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware307, !8, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/vicam.c", i32 32, i32 1}
!9 = !{ptr @__initcall__kmod_gspca_vicam__308_347_sd_driver_init6, !10, !"__initcall__kmod_gspca_vicam__308_347_sd_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/gspca/vicam.c", i32 347, i32 1}
!11 = !{ptr @__exitcall_sd_driver_exit, !10, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/vicam.c", i32 336, i32 16}
!15 = !{ptr @sd_driver, !16, !"sd_driver", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/vicam.c", i32 335, i32 26}
!17 = !{ptr @sd_desc, !18, !"sd_desc", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/vicam.c", i32 316, i32 29}
!19 = !{ptr @sd_config.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/vicam.c", i32 218, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vicam_mode, !23, !"vicam_mode", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/vicam.c", i32 42, i32 31}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/vicam.c", i32 178, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vicam_dostream._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @vicam_dostream._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/vicam.c", i32 152, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vicam_read_frame._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @vicam_read_frame._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/vicam.c", i32 79, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vicam_control_msg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @vicam_control_msg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/vicam.c", i32 231, i32 35}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/vicam.c", i32 234, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sd_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @sd_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @request_ihex_firmware._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @request_ihex_firmware._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sd_init_controls._key, !56, !"_key", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/vicam.c", i32 293, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/vicam.c", i32 300, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sd_init_controls._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sd_init_controls._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @device_table, !64, !"device_table", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/vicam.c", i32 307, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
