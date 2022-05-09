; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stv0680.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stv0680.c"
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, %struct.v4l2_pix_format, i8, i8, i8 }

@__UNIQUE_ID_author303 = internal constant [57 x i8] c"gspca_stv0680.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [52 x i8] c"gspca_stv0680.description=STV0680 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_stv0680.file=drivers/media/usb/gspca/gspca_stv0680\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_stv0680.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_stv0680__307_339_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_stv0680\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stv0680\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1363, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: STV(e): camera ping failed!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/stv0680.c\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Could not get descriptor 0200\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Camera supports neither CIF nor QVGA mode\0A\00", [47 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Camera supports CIF mode\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.13 = internal global ptr @sd_config._entry.11, section ".printk_index", align 4
@sd_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Camera supports VGA mode\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.16 = internal global ptr @sd_config._entry.14, section ".printk_index", align 4
@sd_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Camera supports QCIF mode\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.19 = internal global ptr @sd_config._entry.17, section ".printk_index", align 4
@sd_config._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Camera supports QVGA mode\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.22 = internal global ptr @sd_config._entry.20, section ".printk_index", align 4
@sd_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Firmware rev is %i.%i\0A\00", [35 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.25 = internal global ptr @sd_config._entry.23, section ".printk_index", align 4
@sd_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: ASIC rev is %i.%i\00", [40 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.28 = internal global ptr @sd_config._entry.26, section ".printk_index", align 4
@sd_config._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Sensor ID is %i\00", [42 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.31 = internal global ptr @sd_config._entry.29, section ".printk_index", align 4
@sd_config._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_stv0680: Could not get descriptor 0100\0A\00", [48 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.34 = internal global ptr @sd_config._entry.32, section ".printk_index", align 4
@stv_sndctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013gspca_stv0680: usb_control_msg error %i, request = 0x%x, error = %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stv_sndctrl\00", [20 x i8] zeroinitializer }, align 32
@stv_sndctrl._entry_ptr = internal global ptr @stv_sndctrl._entry, section ".printk_index", align 4
@stv0680_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: last error: %i,  command = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv0680_handle_error\00", [43 x i8] zeroinitializer }, align 32
@stv0680_handle_error._entry_ptr = internal global ptr @stv0680_handle_error._entry, section ".printk_index", align 4
@stv0680_get_video_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Get_Camera_Mode failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stv0680_get_video_mode\00", [41 x i8] zeroinitializer }, align 32
@stv0680_get_video_mode._entry_ptr = internal global ptr @stv0680_get_video_mode._entry, section ".printk_index", align 4
@stv0680_set_video_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Set_Camera_Mode failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stv0680_set_video_mode\00", [41 x i8] zeroinitializer }, align 32
@stv0680_set_video_mode._entry_ptr = internal global ptr @stv0680_set_video_mode._entry, section ".printk_index", align 4
@stv0680_set_video_mode._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error setting camera video mode!\0A\00", [56 x i8] zeroinitializer }, align 32
@stv0680_set_video_mode._entry_ptr.45 = internal global ptr @stv0680_set_video_mode._entry.43, section ".printk_index", align 4
@switch.table.stv_sndctrl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -2147483520, i32 -2147483648, i32 -2147483520, i32 -2147483648], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 327, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 339, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 328, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 312, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 301, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 135, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 145, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 156, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 160, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 162, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 164, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 166, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 174, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 176, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 178, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 223, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 66, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 75, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 105, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [37 x i8] c"../drivers/media/usb/gspca/stv0680.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 111, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [25 x i8] c"switch.table.stv_sndctrl\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_stv0680__307_339_sd_driver_init6, ptr @sd_config._entry, ptr @sd_config._entry.11, ptr @sd_config._entry.14, ptr @sd_config._entry.17, ptr @sd_config._entry.20, ptr @sd_config._entry.23, ptr @sd_config._entry.26, ptr @sd_config._entry.29, ptr @sd_config._entry.32, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.13, ptr @sd_config._entry_ptr.16, ptr @sd_config._entry_ptr.19, ptr @sd_config._entry_ptr.22, ptr @sd_config._entry_ptr.25, ptr @sd_config._entry_ptr.28, ptr @sd_config._entry_ptr.31, ptr @sd_config._entry_ptr.34, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @stv0680_get_video_mode._entry, ptr @stv0680_get_video_mode._entry_ptr, ptr @stv0680_handle_error._entry, ptr @stv0680_handle_error._entry_ptr, ptr @stv0680_set_video_mode._entry, ptr @stv0680_set_video_mode._entry.43, ptr @stv0680_set_video_mode._entry_ptr, ptr @stv0680_set_video_mode._entry_ptr.45, ptr @stv_sndctrl._entry, ptr @stv_sndctrl._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @switch.table.stv_sndctrl], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv_sndctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0680_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0680_get_video_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0680_set_video_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0680_set_video_mode._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stv_sndctrl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2664, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  tail call void @msleep(i32 noundef 1000) #5
  %dev12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev12.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i35.i = shl i32 %3, 8
  %or14.i = or i32 %shl.i35.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or14.i, i8 noundef zeroext -120, i8 noundef zeroext -62, i16 noundef zeroext 22136, i16 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp.i, label %stv_sndctrl.exit, label %stv_sndctrl.exit.thread

stv_sndctrl.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 136, i32 noundef %call16.i) #8
  br label %do.end

stv_sndctrl.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp.not = icmp eq i32 %call16.i, 2
  br i1 %cmp.not, label %lor.lhs.false, label %stv_sndctrl.exit.do.end_crit_edge

stv_sndctrl.exit.do.end_crit_edge:                ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %stv_sndctrl.exit
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %9)
  %cmp2.not = icmp eq i8 %9, 86
  br i1 %cmp2.not, label %lor.lhs.false4, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr i8, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %11)
  %cmp8.not = icmp eq i8 %11, 120
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %stv_sndctrl.exit.do.end_crit_edge, %stv_sndctrl.exit.thread
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #8
  %12 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i35.i.i = shl i32 %15, 8
  %or14.i.i = or i32 %shl.i35.i.i, -2147483520
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or14.i.i, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %17, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i)
  %cmp.i.i = icmp sgt i32 %call16.i.i, -1
  br i1 %cmp.i.i, label %do.end.stv0680_handle_error.exit_crit_edge, label %do.end.i.i

do.end.stv0680_handle_error.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i) #8
  br label %stv0680_handle_error.exit

stv0680_handle_error.exit:                        ; preds = %do.end.i.i, %do.end.stv0680_handle_error.exit_crit_edge
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv.i = zext i8 %21 to i32
  %arrayidx2.i = getelementptr i8, ptr %19, i32 1
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %23 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %24 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev12.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i35.i407 = shl i32 %27, 8
  %or14.i408 = or i32 %shl.i35.i407, -2147483520
  %call16.i411 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or14.i408, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 512, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 9, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i411)
  %cmp.i412 = icmp sgt i32 %call16.i411, -1
  br i1 %cmp.i412, label %stv_sndctrl.exit415, label %stv_sndctrl.exit415.thread

stv_sndctrl.exit415.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i413 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef 6, i32 noundef %call16.i411) #8
  br label %if.then15

stv_sndctrl.exit415:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call16.i411)
  %cmp13.not = icmp eq i32 %call16.i411, 9
  br i1 %cmp13.not, label %if.end17, label %stv_sndctrl.exit415.if.then15_crit_edge

stv_sndctrl.exit415.if.then15_crit_edge:          ; preds = %stv_sndctrl.exit415
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %stv_sndctrl.exit415.if.then15_crit_edge, %stv_sndctrl.exit415.thread
  %28 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev12.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i35.i.i417 = shl i32 %31, 8
  %or14.i.i418 = or i32 %shl.i35.i.i417, -2147483520
  %32 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i420 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or14.i.i418, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %33, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i420)
  %cmp.i.i421 = icmp sgt i32 %call16.i.i420, -1
  br i1 %cmp.i.i421, label %if.then15.stv0680_handle_error.exit429_crit_edge, label %do.end.i.i423

if.then15.stv0680_handle_error.exit429_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit429

do.end.i.i423:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i420) #8
  br label %stv0680_handle_error.exit429

stv0680_handle_error.exit429:                     ; preds = %do.end.i.i423, %if.then15.stv0680_handle_error.exit429_crit_edge
  %name.i424 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv.i425 = zext i8 %37 to i32
  %arrayidx2.i426 = getelementptr i8, ptr %35, i32 1
  %38 = ptrtoint ptr %arrayidx2.i426 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.i426, align 1
  %conv3.i427 = zext i8 %39 to i32
  %call4.i428 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i424, i32 noundef %conv.i425, i32 noundef %conv3.i427) #8
  br label %cleanup

if.end17:                                         ; preds = %stv_sndctrl.exit415
  %40 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev12.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i35.i431 = shl i32 %43, 8
  %or14.i432 = or i32 %shl.i35.i431, -2147483520
  %44 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i, align 4
  %call16.i435 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or14.i432, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 512, i16 noundef zeroext 0, ptr noundef %45, i16 noundef zeroext 34, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i435)
  %cmp.i436 = icmp sgt i32 %call16.i435, -1
  br i1 %cmp.i436, label %stv_sndctrl.exit439, label %stv_sndctrl.exit439.thread

stv_sndctrl.exit439.thread:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef 6, i32 noundef %call16.i435) #8
  br label %do.end36

stv_sndctrl.exit439:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %call16.i435)
  %cmp19.not = icmp eq i32 %call16.i435, 34
  br i1 %cmp19.not, label %lor.lhs.false21, label %stv_sndctrl.exit439.do.end36_crit_edge

stv_sndctrl.exit439.do.end36_crit_edge:           ; preds = %stv_sndctrl.exit439
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

lor.lhs.false21:                                  ; preds = %stv_sndctrl.exit439
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx23 = getelementptr i8, ptr %47, i32 7
  %48 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %49)
  %cmp25.not = icmp eq i8 %49, -96
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false21.do.end36_crit_edge

lor.lhs.false21.do.end36_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %arrayidx29 = getelementptr i8, ptr %47, i32 8
  %50 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %51)
  %cmp31.not = icmp eq i8 %51, 35
  br i1 %cmp31.not, label %if.end43, label %lor.lhs.false27.do.end36_crit_edge

lor.lhs.false27.do.end36_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false27.do.end36_crit_edge, %lor.lhs.false21.do.end36_crit_edge, %stv_sndctrl.exit439.do.end36_crit_edge, %stv_sndctrl.exit439.thread
  %name39 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name39) #8
  %52 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev12.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i35.i.i441 = shl i32 %55, 8
  %or14.i.i442 = or i32 %shl.i35.i.i441, -2147483520
  %56 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i444 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or14.i.i442, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %57, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i444)
  %cmp.i.i445 = icmp sgt i32 %call16.i.i444, -1
  br i1 %cmp.i.i445, label %do.end36.stv0680_handle_error.exit453_crit_edge, label %do.end.i.i447

do.end36.stv0680_handle_error.exit453_crit_edge:  ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit453

do.end.i.i447:                                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i446 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i444) #8
  br label %stv0680_handle_error.exit453

stv0680_handle_error.exit453:                     ; preds = %do.end.i.i447, %do.end36.stv0680_handle_error.exit453_crit_edge
  %58 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %conv.i449 = zext i8 %61 to i32
  %arrayidx2.i450 = getelementptr i8, ptr %59, i32 1
  %62 = ptrtoint ptr %arrayidx2.i450 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx2.i450, align 1
  %conv3.i451 = zext i8 %63 to i32
  %call4.i452 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name39, i32 noundef %conv.i449, i32 noundef %conv3.i451) #8
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false27
  %64 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev12.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i35.i455 = shl i32 %67, 8
  %or14.i456 = or i32 %shl.i35.i455, -2147483520
  %call16.i459 = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or14.i456, i8 noundef zeroext -118, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %47, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i459)
  %cmp.i460 = icmp sgt i32 %call16.i459, -1
  br i1 %cmp.i460, label %stv_sndctrl.exit463, label %stv_sndctrl.exit463.thread

stv_sndctrl.exit463.thread:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i461 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 138, i32 noundef %call16.i459) #8
  br label %if.then47

stv_sndctrl.exit463:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i459)
  %cmp45.not = icmp eq i32 %call16.i459, 2
  br i1 %cmp45.not, label %if.end49, label %stv_sndctrl.exit463.if.then47_crit_edge

stv_sndctrl.exit463.if.then47_crit_edge:          ; preds = %stv_sndctrl.exit463
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.then47:                                        ; preds = %stv_sndctrl.exit463.if.then47_crit_edge, %stv_sndctrl.exit463.thread
  %68 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev12.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i35.i.i465 = shl i32 %71, 8
  %or14.i.i466 = or i32 %shl.i35.i.i465, -2147483520
  %72 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i468 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or14.i.i466, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %73, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i468)
  %cmp.i.i469 = icmp sgt i32 %call16.i.i468, -1
  br i1 %cmp.i.i469, label %if.then47.stv0680_handle_error.exit477_crit_edge, label %do.end.i.i471

if.then47.stv0680_handle_error.exit477_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit477

do.end.i.i471:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i470 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i468) #8
  br label %stv0680_handle_error.exit477

stv0680_handle_error.exit477:                     ; preds = %do.end.i.i471, %if.then47.stv0680_handle_error.exit477_crit_edge
  %name.i472 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %74 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_buf.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 1
  %conv.i473 = zext i8 %77 to i32
  %arrayidx2.i474 = getelementptr i8, ptr %75, i32 1
  %78 = ptrtoint ptr %arrayidx2.i474 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx2.i474, align 1
  %conv3.i475 = zext i8 %79 to i32
  %call4.i476 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i472, i32 noundef %conv.i473, i32 noundef %conv3.i475) #8
  br label %cleanup

if.end49:                                         ; preds = %stv_sndctrl.exit463
  %80 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev12.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i35.i479 = shl i32 %83, 8
  %or14.i480 = or i32 %shl.i35.i479, -2147483520
  %84 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i, align 4
  %call16.i483 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or14.i480, i8 noundef zeroext -117, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %85, i16 noundef zeroext 36, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i483)
  %cmp.i484 = icmp sgt i32 %call16.i483, -1
  br i1 %cmp.i484, label %stv_sndctrl.exit487, label %stv_sndctrl.exit487.thread

stv_sndctrl.exit487.thread:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 139, i32 noundef %call16.i483) #8
  br label %if.then53

stv_sndctrl.exit487:                              ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call16.i483)
  %cmp51.not = icmp eq i32 %call16.i483, 36
  br i1 %cmp51.not, label %if.end55, label %stv_sndctrl.exit487.if.then53_crit_edge

stv_sndctrl.exit487.if.then53_crit_edge:          ; preds = %stv_sndctrl.exit487
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then53:                                        ; preds = %stv_sndctrl.exit487.if.then53_crit_edge, %stv_sndctrl.exit487.thread
  %86 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev12.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i35.i.i489 = shl i32 %89, 8
  %or14.i.i490 = or i32 %shl.i35.i.i489, -2147483520
  %90 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i492 = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or14.i.i490, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %91, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i492)
  %cmp.i.i493 = icmp sgt i32 %call16.i.i492, -1
  br i1 %cmp.i.i493, label %if.then53.stv0680_handle_error.exit501_crit_edge, label %do.end.i.i495

if.then53.stv0680_handle_error.exit501_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit501

do.end.i.i495:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i494 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i492) #8
  br label %stv0680_handle_error.exit501

stv0680_handle_error.exit501:                     ; preds = %do.end.i.i495, %if.then53.stv0680_handle_error.exit501_crit_edge
  %name.i496 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_buf.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %conv.i497 = zext i8 %95 to i32
  %arrayidx2.i498 = getelementptr i8, ptr %93, i32 1
  %96 = ptrtoint ptr %arrayidx2.i498 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx2.i498, align 1
  %conv3.i499 = zext i8 %97 to i32
  %call4.i500 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i496, i32 noundef %conv.i497, i32 noundef %conv3.i499) #8
  br label %cleanup

if.end55:                                         ; preds = %stv_sndctrl.exit487
  %98 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev12.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i35.i503 = shl i32 %101, 8
  %or14.i504 = or i32 %shl.i35.i503, -2147483520
  %102 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %usb_buf.i, align 4
  %call16.i507 = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or14.i504, i8 noundef zeroext -123, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %103, i16 noundef zeroext 16, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i507)
  %cmp.i508 = icmp sgt i32 %call16.i507, -1
  br i1 %cmp.i508, label %stv_sndctrl.exit511, label %stv_sndctrl.exit511.thread

stv_sndctrl.exit511.thread:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i509 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 133, i32 noundef %call16.i507) #8
  br label %if.then59

stv_sndctrl.exit511:                              ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call16.i507)
  %cmp57.not = icmp eq i32 %call16.i507, 16
  br i1 %cmp57.not, label %if.end61, label %stv_sndctrl.exit511.if.then59_crit_edge

stv_sndctrl.exit511.if.then59_crit_edge:          ; preds = %stv_sndctrl.exit511
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

if.then59:                                        ; preds = %stv_sndctrl.exit511.if.then59_crit_edge, %stv_sndctrl.exit511.thread
  %104 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev12.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  %shl.i35.i.i513 = shl i32 %107, 8
  %or14.i.i514 = or i32 %shl.i35.i.i513, -2147483520
  %108 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i516 = tail call i32 @usb_control_msg(ptr noundef %105, i32 noundef %or14.i.i514, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %109, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i516)
  %cmp.i.i517 = icmp sgt i32 %call16.i.i516, -1
  br i1 %cmp.i.i517, label %if.then59.stv0680_handle_error.exit525_crit_edge, label %do.end.i.i519

if.then59.stv0680_handle_error.exit525_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit525

do.end.i.i519:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i518 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i516) #8
  br label %stv0680_handle_error.exit525

stv0680_handle_error.exit525:                     ; preds = %do.end.i.i519, %if.then59.stv0680_handle_error.exit525_crit_edge
  %name.i520 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %110 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb_buf.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1
  %conv.i521 = zext i8 %113 to i32
  %arrayidx2.i522 = getelementptr i8, ptr %111, i32 1
  %114 = ptrtoint ptr %arrayidx2.i522 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx2.i522, align 1
  %conv3.i523 = zext i8 %115 to i32
  %call4.i524 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i520, i32 noundef %conv.i521, i32 noundef %conv3.i523) #8
  br label %cleanup

if.end61:                                         ; preds = %stv_sndctrl.exit511
  %116 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx63 = getelementptr i8, ptr %117, i32 7
  %118 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %119 to i32
  %and = and i32 %conv64, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end68, label %if.end74

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %name71 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name71) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end61
  %and78 = and i32 %conv64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end74.if.end96_crit_edge, label %do.body81

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.body81:                                        ; preds = %if.end74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %120 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp82 = icmp sgt i32 %120, 0
  br i1 %cmp82, label %do.end87, label %do.body81.if.end96_crit_edge

do.body81.if.end96_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %name90 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name90) #8
  br label %if.end96

if.end96:                                         ; preds = %do.end87, %do.body81.if.end96_crit_edge, %if.end74.if.end96_crit_edge
  %121 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx98 = getelementptr i8, ptr %122, i32 7
  %123 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx98, align 1
  %125 = and i8 %124, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool101.not = icmp eq i8 %125, 0
  br i1 %tobool101.not, label %if.end96.if.end118_crit_edge, label %do.body103

if.end96.if.end118_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

do.body103:                                       ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %126 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp104 = icmp sgt i32 %126, 0
  br i1 %cmp104, label %do.end109, label %do.body103.if.end118_crit_edge

do.body103.if.end118_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

do.end109:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  %name112 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name112) #8
  br label %if.end118

if.end118:                                        ; preds = %do.end109, %do.body103.if.end118_crit_edge, %if.end96.if.end118_crit_edge
  %127 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx120 = getelementptr i8, ptr %128, i32 7
  %129 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx120, align 1
  %131 = and i8 %130, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool123.not = icmp eq i8 %131, 0
  br i1 %tobool123.not, label %if.end118.if.end140_crit_edge, label %do.body125

if.end118.if.end140_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.body125:                                       ; preds = %if.end118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %132 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp126 = icmp sgt i32 %132, 0
  br i1 %cmp126, label %do.end131, label %do.body125.if.end140_crit_edge

do.body125.if.end140_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  %name134 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name134) #8
  br label %if.end140

if.end140:                                        ; preds = %do.end131, %do.body125.if.end140_crit_edge, %if.end118.if.end140_crit_edge
  %133 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx142 = getelementptr i8, ptr %134, i32 7
  %135 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx142, align 1
  %137 = and i8 %136, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool145.not = icmp eq i8 %137, 0
  br i1 %tobool145.not, label %if.end140.if.end162_crit_edge, label %do.body147

if.end140.if.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

do.body147:                                       ; preds = %if.end140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %138 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp148 = icmp sgt i32 %138, 0
  br i1 %cmp148, label %do.end153, label %do.body147.if.end162_crit_edge

do.body147.if.end162_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  %name156 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name156) #8
  br label %if.end162

if.end162:                                        ; preds = %do.end153, %do.body147.if.end162_crit_edge, %if.end140.if.end162_crit_edge
  %139 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx164 = getelementptr i8, ptr %140, i32 7
  %141 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx164, align 1
  %143 = and i8 %142, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool167.not = icmp eq i8 %143, 0
  %spec.select = select i1 %tobool167.not, i8 3, i8 0
  %144 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %spec.select, ptr %144, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %146 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp172 = icmp sgt i32 %146, 0
  br i1 %cmp172, label %do.body192, label %if.end162.do.end233_crit_edge

if.end162.do.end233_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end233

do.body192:                                       ; preds = %if.end162
  %name180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %147 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %140, align 1
  %conv184 = zext i8 %148 to i32
  %arrayidx186 = getelementptr i8, ptr %140, i32 1
  %149 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %150 to i32
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name180, i32 noundef %conv184, i32 noundef %conv187) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp193 = icmp sgt i32 %.pr, 0
  br i1 %cmp193, label %do.body213, label %do.body192.do.end233_crit_edge

do.body192.do.end233_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end233

do.body213:                                       ; preds = %do.body192
  %151 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx204 = getelementptr i8, ptr %152, i32 2
  %153 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %154 to i32
  %arrayidx207 = getelementptr i8, ptr %152, i32 3
  %155 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %156 to i32
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name180, i32 noundef %conv205, i32 noundef %conv208) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr533 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr533)
  %cmp214 = icmp sgt i32 %.pr533, 0
  br i1 %cmp214, label %do.end219, label %do.body213.do.end233_crit_edge

do.body213.do.end233_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end233

do.end219:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  %157 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx225 = getelementptr i8, ptr %158, i32 4
  %159 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx225, align 1
  %conv226 = zext i8 %160 to i32
  %mul = shl nuw nsw i32 %conv226, 4
  %arrayidx228 = getelementptr i8, ptr %158, i32 5
  %161 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx228, align 1
  %163 = lshr i8 %162, 4
  %164 = zext i8 %163 to i32
  %add = or i32 %mul, %164
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name180, i32 noundef %add) #8
  br label %do.end233

do.end233:                                        ; preds = %do.end219, %do.body213.do.end233_crit_edge, %do.body192.do.end233_crit_edge, %if.end162.do.end233_crit_edge
  %call234 = tail call fastcc i32 @stv0680_get_video_mode(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %do.end233.cleanup_crit_edge, label %if.end238

do.end233.cleanup_crit_edge:                      ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end238:                                        ; preds = %do.end233
  %conv239 = trunc i32 %call234 to i8
  %orig_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %165 = ptrtoint ptr %orig_mode to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv239, ptr %orig_mode, align 8
  %current_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %166 = ptrtoint ptr %current_mode to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv239, ptr %current_mode, align 2
  %167 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %144, align 1
  %call241 = tail call fastcc i32 @stv0680_set_video_mode(ptr noundef %gspca_dev, i8 noundef zeroext %168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %if.end238.cleanup_crit_edge, label %if.end245

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end245:                                        ; preds = %if.end238
  %call246 = tail call fastcc i32 @stv_sndctrl(ptr noundef %gspca_dev, i32 noundef 0, i8 noundef zeroext -113, i16 noundef zeroext 0, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call246)
  %cmp247.not = icmp eq i32 %call246, 16
  br i1 %cmp247.not, label %if.end251, label %if.then249

if.then249:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #7
  %call250 = tail call fastcc i32 @stv0680_handle_error(ptr noundef %gspca_dev, i32 noundef -5)
  br label %cleanup

if.end251:                                        ; preds = %if.end245
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %169 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %bulk, align 1
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %170 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %bulk_nurbs, align 2
  %171 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %usb_buf.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %172, align 1
  %conv254 = zext i8 %174 to i32
  %shl = shl nuw i32 %conv254, 24
  %arrayidx256 = getelementptr i8, ptr %172, i32 1
  %175 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx256, align 1
  %conv257 = zext i8 %176 to i32
  %shl258 = shl nuw nsw i32 %conv257, 16
  %or = or i32 %shl258, %shl
  %arrayidx260 = getelementptr i8, ptr %172, i32 2
  %177 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx260, align 1
  %conv261 = zext i8 %178 to i32
  %shl262 = shl nuw nsw i32 %conv261, 8
  %or263 = or i32 %or, %shl262
  %arrayidx265 = getelementptr i8, ptr %172, i32 3
  %179 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx265, align 1
  %conv266 = zext i8 %180 to i32
  %or267 = or i32 %or263, %conv266
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %181 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %or267, ptr %bulk_size, align 4
  %arrayidx269 = getelementptr i8, ptr %172, i32 4
  %182 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx269, align 1
  %conv270 = zext i8 %183 to i32
  %shl271 = shl nuw nsw i32 %conv270, 8
  %arrayidx273 = getelementptr i8, ptr %172, i32 5
  %184 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx273, align 1
  %conv274 = zext i8 %185 to i32
  %or275 = or i32 %shl271, %conv274
  %mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %186 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or275, ptr %mode, align 8
  %arrayidx277 = getelementptr i8, ptr %172, i32 6
  %187 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %188 to i32
  %shl279 = shl nuw nsw i32 %conv278, 8
  %arrayidx281 = getelementptr i8, ptr %172, i32 7
  %189 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx281, align 1
  %conv282 = zext i8 %190 to i32
  %or283 = or i32 %shl279, %conv282
  %height = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %191 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or283, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %192 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 808990291, ptr %pixelformat, align 8
  %field = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %193 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %194 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %or275, ptr %bytesperline, align 8
  %sizeimage = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %195 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or267, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %196 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 8, ptr %colorspace, align 8
  %197 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %198 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 1, ptr %nmodes, align 4
  %199 = ptrtoint ptr %orig_mode to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %orig_mode, align 8
  %call295 = tail call fastcc i32 @stv0680_set_video_mode(ptr noundef %gspca_dev, i8 noundef zeroext %200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %cmp296 = icmp slt i32 %call295, 0
  br i1 %cmp296, label %if.end251.cleanup_crit_edge, label %if.end299

if.end251.cleanup_crit_edge:                      ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end299:                                        ; preds = %if.end251
  %call300 = tail call fastcc i32 @stv_sndctrl(ptr noundef %gspca_dev, i32 noundef 2, i8 noundef zeroext 6, i16 noundef zeroext 256, i32 noundef 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call300)
  %cmp301.not = icmp eq i32 %call300, 18
  br i1 %cmp301.not, label %lor.lhs.false303, label %if.end299.do.end318_crit_edge

if.end299.do.end318_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end318

lor.lhs.false303:                                 ; preds = %if.end299
  %201 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx305 = getelementptr i8, ptr %202, i32 8
  %203 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx305, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %204)
  %cmp307.not = icmp eq i8 %204, 83
  br i1 %cmp307.not, label %lor.lhs.false309, label %lor.lhs.false303.do.end318_crit_edge

lor.lhs.false303.do.end318_crit_edge:             ; preds = %lor.lhs.false303
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end318

lor.lhs.false309:                                 ; preds = %lor.lhs.false303
  %arrayidx311 = getelementptr i8, ptr %202, i32 9
  %205 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx311, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %206)
  %cmp313.not = icmp eq i8 %206, 5
  br i1 %cmp313.not, label %lor.lhs.false309.cleanup_crit_edge, label %lor.lhs.false309.do.end318_crit_edge

lor.lhs.false309.do.end318_crit_edge:             ; preds = %lor.lhs.false309
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end318

lor.lhs.false309.cleanup_crit_edge:               ; preds = %lor.lhs.false309
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end318:                                        ; preds = %lor.lhs.false309.do.end318_crit_edge, %lor.lhs.false303.do.end318_crit_edge, %if.end299.do.end318_crit_edge
  %call320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
  %call321 = tail call fastcc i32 @stv0680_handle_error(ptr noundef %gspca_dev, i32 noundef -5)
  br label %cleanup

cleanup:                                          ; preds = %do.end318, %lor.lhs.false309.cleanup_crit_edge, %if.end251.cleanup_crit_edge, %if.then249, %if.end238.cleanup_crit_edge, %do.end233.cleanup_crit_edge, %do.end68, %stv0680_handle_error.exit525, %stv0680_handle_error.exit501, %stv0680_handle_error.exit477, %stv0680_handle_error.exit453, %stv0680_handle_error.exit429, %stv0680_handle_error.exit
  %retval.0 = phi i32 [ -19, %stv0680_handle_error.exit ], [ -19, %stv0680_handle_error.exit429 ], [ -19, %stv0680_handle_error.exit453 ], [ -19, %stv0680_handle_error.exit477 ], [ -19, %stv0680_handle_error.exit501 ], [ -19, %stv0680_handle_error.exit525 ], [ -5, %if.then249 ], [ -5, %do.end318 ], [ -19, %do.end68 ], [ %call234, %do.end233.cleanup_crit_edge ], [ %call241, %if.end238.cleanup_crit_edge ], [ %call295, %if.end251.cleanup_crit_edge ], [ 0, %lor.lhs.false309.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %video_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %video_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %video_mode, align 1
  %call = tail call fastcc i32 @stv0680_set_video_mode(ptr noundef %gspca_dev, i8 noundef zeroext %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev12.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i35.i = shl i32 %5, 8
  %or14.i = or i32 %shl.i35.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or14.i, i8 noundef zeroext -123, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 16, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp.i, label %stv_sndctrl.exit, label %stv_sndctrl.exit.thread

stv_sndctrl.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 133, i32 noundef %call16.i) #8
  br label %if.then3

stv_sndctrl.exit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call16.i)
  %cmp2.not = icmp eq i32 %call16.i, 16
  br i1 %cmp2.not, label %if.end5, label %stv_sndctrl.exit.if.then3_crit_edge

stv_sndctrl.exit.if.then3_crit_edge:              ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %stv_sndctrl.exit.if.then3_crit_edge, %stv_sndctrl.exit.thread
  %8 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i35.i.i = shl i32 %11, 8
  %or14.i.i = or i32 %shl.i35.i.i, -2147483520
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or14.i.i, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %13, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i)
  %cmp.i.i = icmp sgt i32 %call16.i.i, -1
  br i1 %cmp.i.i, label %if.then3.cleanup.sink.split_crit_edge, label %if.then3.cleanup.sink.split.sink.split_crit_edge

if.then3.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end5:                                          ; preds = %stv_sndctrl.exit
  %14 = ptrtoint ptr %video_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %video_mode, align 1
  %conv = zext i8 %15 to i16
  %shl = shl nuw i16 %conv, 8
  %16 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i35.i23 = shl i32 %19, 8
  %or14.i24 = or i32 %shl.i35.i23, -2147483648
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %call16.i27 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or14.i24, i8 noundef zeroext 9, i8 noundef zeroext 66, i16 noundef zeroext %shl, i16 noundef zeroext 0, ptr noundef %21, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i27)
  %cmp.i28 = icmp sgt i32 %call16.i27, -1
  br i1 %cmp.i28, label %stv_sndctrl.exit31, label %stv_sndctrl.exit31.thread

stv_sndctrl.exit31.thread:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 9, i32 noundef %call16.i27) #8
  br label %if.then11

stv_sndctrl.exit31:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i27)
  %cmp9.not = icmp eq i32 %call16.i27, 0
  br i1 %cmp9.not, label %stv_sndctrl.exit31.cleanup_crit_edge, label %stv_sndctrl.exit31.if.then11_crit_edge

stv_sndctrl.exit31.if.then11_crit_edge:           ; preds = %stv_sndctrl.exit31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

stv_sndctrl.exit31.cleanup_crit_edge:             ; preds = %stv_sndctrl.exit31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %stv_sndctrl.exit31.if.then11_crit_edge, %stv_sndctrl.exit31.thread
  %22 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i35.i.i33 = shl i32 %25, 8
  %or14.i.i34 = or i32 %shl.i35.i.i33, -2147483520
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i36 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or14.i.i34, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %27, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i36)
  %cmp.i.i37 = icmp sgt i32 %call16.i.i36, -1
  br i1 %cmp.i.i37, label %if.then11.cleanup.sink.split_crit_edge, label %if.then11.cleanup.sink.split.sink.split_crit_edge

if.then11.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then11.cleanup.sink.split.sink.split_crit_edge, %if.then3.cleanup.sink.split.sink.split_crit_edge
  %call16.i.i36.sink = phi i32 [ %call16.i.i, %if.then3.cleanup.sink.split.sink.split_crit_edge ], [ %call16.i.i36, %if.then11.cleanup.sink.split.sink.split_crit_edge ]
  %call22.i.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i36.sink) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then11.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i41 = zext i8 %31 to i32
  %arrayidx2.i42 = getelementptr i8, ptr %29, i32 1
  %32 = ptrtoint ptr %arrayidx2.i42 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.i42, align 1
  %conv3.i43 = zext i8 %33 to i32
  %call4.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i, i32 noundef %conv.i41, i32 noundef %conv3.i43) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %stv_sndctrl.exit31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %stv_sndctrl.exit31.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sizeimage = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp eq i32 %1, %len
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %2 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %data, i32 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev12.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i35.i = shl i32 %3, 8
  %or14.i = or i32 %shl.i35.i, -2147483648
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or14.i, i8 noundef zeroext 4, i8 noundef zeroext 66, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp.i, label %stv_sndctrl.exit, label %stv_sndctrl.exit.thread

stv_sndctrl.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 4, i32 noundef %call16.i) #8
  br label %if.then

stv_sndctrl.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.not = icmp eq i32 %call16.i, 0
  br i1 %cmp.not, label %stv_sndctrl.exit.if.end_crit_edge, label %stv_sndctrl.exit.if.then_crit_edge

stv_sndctrl.exit.if.then_crit_edge:               ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

stv_sndctrl.exit.if.end_crit_edge:                ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %stv_sndctrl.exit.if.then_crit_edge, %stv_sndctrl.exit.thread
  %6 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev12.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i35.i.i = shl i32 %9, 8
  %or14.i.i = or i32 %shl.i35.i.i, -2147483520
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call16.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or14.i.i, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %11, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i)
  %cmp.i.i = icmp sgt i32 %call16.i.i, -1
  br i1 %cmp.i.i, label %if.then.stv0680_handle_error.exit_crit_edge, label %do.end.i.i

if.then.stv0680_handle_error.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i) #8
  br label %stv0680_handle_error.exit

stv0680_handle_error.exit:                        ; preds = %do.end.i.i, %if.then.stv0680_handle_error.exit_crit_edge
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i = zext i8 %15 to i32
  %arrayidx2.i = getelementptr i8, ptr %13, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %17 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br label %if.end

if.end:                                           ; preds = %stv0680_handle_error.exit, %stv_sndctrl.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %orig_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %2 = ptrtoint ptr %orig_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %orig_mode, align 8
  %call = tail call fastcc i32 @stv0680_set_video_mode(ptr noundef %gspca_dev, i8 noundef zeroext %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv_sndctrl(ptr nocapture noundef readonly %gspca_dev, i32 noundef %set, i8 noundef zeroext %req, i16 noundef zeroext %val, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %set)
  %0 = icmp ult i32 %set, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.stv_sndctrl, i32 0, i32 %set
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.shiftamt = shl i32 %set, 3
  %switch.downshift = lshr i32 1082147522, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %dev12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev12, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i35 = shl i32 %5, 8
  %or14 = or i32 %shl.i35, %switch.load
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %req_type.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked, %switch.lookup ]
  %pipe.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %or14, %switch.lookup ]
  %dev15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev15, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %8 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf, align 4
  %conv = trunc i32 %size to i16
  %call16 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %pipe.0, i8 noundef zeroext %req, i8 noundef zeroext %req_type.0, i16 noundef zeroext %val, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext %conv, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp = icmp sgt i32 %call16, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %req)
  %cmp19.not = icmp eq i8 %req, 10
  %or.cond = or i1 %cmp19.not, %cmp
  br i1 %or.cond, label %sw.epilog.if.end_crit_edge, label %do.end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %conv18 = zext i8 %req to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %set, i32 noundef %conv18, i32 noundef %call16) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog.if.end_crit_edge
  ret i32 %call16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0680_handle_error(ptr noundef %gspca_dev, i32 noundef returned %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev12.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i35.i = shl i32 %3, 8
  %or14.i = or i32 %shl.i35.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or14.i, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp.i, label %entry.stv_sndctrl.exit_crit_edge, label %do.end.i

entry.stv_sndctrl.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv_sndctrl.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i) #8
  br label %stv_sndctrl.exit

stv_sndctrl.exit:                                 ; preds = %do.end.i, %entry.stv_sndctrl.exit_crit_edge
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %arrayidx2 = getelementptr i8, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %11 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3) #8
  ret i32 %ret
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0680_get_video_mode(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %usb_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %3, align 1
  %dev12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev12.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i35.i = shl i32 %8, 8
  %or14.i = or i32 %shl.i35.i, -2147483520
  %9 = load ptr, ptr %usb_buf, align 4
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or14.i, i8 noundef zeroext -121, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 8, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp.i, label %stv_sndctrl.exit, label %stv_sndctrl.exit.thread

stv_sndctrl.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 135, i32 noundef %call16.i) #8
  br label %do.end

stv_sndctrl.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i)
  %cmp.not = icmp eq i32 %call16.i, 8
  br i1 %cmp.not, label %if.end, label %stv_sndctrl.exit.do.end_crit_edge

stv_sndctrl.exit.do.end_crit_edge:                ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %stv_sndctrl.exit.do.end_crit_edge, %stv_sndctrl.exit.thread
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name) #8
  %10 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i35.i.i = shl i32 %13, 8
  %or14.i.i = or i32 %shl.i35.i.i, -2147483520
  %14 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf, align 4
  %call16.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or14.i.i, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %15, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i)
  %cmp.i.i = icmp sgt i32 %call16.i.i, -1
  br i1 %cmp.i.i, label %do.end.stv0680_handle_error.exit_crit_edge, label %do.end.i.i

do.end.stv0680_handle_error.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i) #8
  br label %stv0680_handle_error.exit

stv0680_handle_error.exit:                        ; preds = %do.end.i.i, %do.end.stv0680_handle_error.exit_crit_edge
  %16 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv.i = zext i8 %19 to i32
  %arrayidx2.i = getelementptr i8, ptr %17, i32 1
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %21 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br label %return

if.end:                                           ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv = zext i8 %25 to i32
  br label %return

return:                                           ; preds = %if.end, %stv0680_handle_error.exit
  %retval.0 = phi i32 [ -5, %stv0680_handle_error.exit ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0680_set_video_mode(ptr noundef %gspca_dev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_mode, align 2
  %conv1 = zext i8 %mode to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %mode)
  %cmp = icmp eq i8 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 1
  %5 = load ptr, ptr %usb_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %mode, ptr %5, align 1
  %dev12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev12.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i35.i = shl i32 %10, 8
  %or14.i = or i32 %shl.i35.i, -2147483648
  %11 = load ptr, ptr %usb_buf, align 4
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or14.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef %11, i16 noundef zeroext 8, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp.i, label %stv_sndctrl.exit, label %stv_sndctrl.exit.thread

stv_sndctrl.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 3, i32 noundef 7, i32 noundef %call16.i) #8
  br label %do.end

stv_sndctrl.exit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i)
  %cmp4.not = icmp eq i32 %call16.i, 8
  br i1 %cmp4.not, label %if.end9, label %stv_sndctrl.exit.do.end_crit_edge

stv_sndctrl.exit.do.end_crit_edge:                ; preds = %stv_sndctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %stv_sndctrl.exit.do.end_crit_edge, %stv_sndctrl.exit.thread
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name) #8
  %12 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i35.i.i = shl i32 %15, 8
  %or14.i.i = or i32 %shl.i35.i.i, -2147483520
  %16 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf, align 4
  %call16.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or14.i.i, i8 noundef zeroext -128, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %17, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i)
  %cmp.i.i = icmp sgt i32 %call16.i.i, -1
  br i1 %cmp.i.i, label %do.end.stv0680_handle_error.exit_crit_edge, label %do.end.i.i

do.end.stv0680_handle_error.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0680_handle_error.exit

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 128, i32 noundef %call16.i.i) #8
  br label %stv0680_handle_error.exit

stv0680_handle_error.exit:                        ; preds = %do.end.i.i, %do.end.stv0680_handle_error.exit_crit_edge
  %18 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv.i = zext i8 %21 to i32
  %arrayidx2.i = getelementptr i8, ptr %19, i32 1
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %23 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br label %cleanup

if.end9:                                          ; preds = %stv_sndctrl.exit
  %call10 = tail call fastcc i32 @stv0680_get_video_mode(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %conv1)
  %cmp12.not = icmp eq i32 %call10, %conv1
  br i1 %cmp12.not, label %if.end23, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %name20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name20) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %current_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %mode, ptr %current_mode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end17, %stv0680_handle_error.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %stv0680_handle_error.exit ], [ -5, %do.end17 ], [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_stv0680__307_339_sd_driver_init6, !8, !"__initcall__kmod_gspca_stv0680__307_339_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 339, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 328, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 327, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 301, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 135, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sd_config._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sd_config._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 145, i32 3}
!25 = !{ptr @sd_config._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_config._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 156, i32 3}
!29 = !{ptr @sd_config._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_config._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 160, i32 3}
!33 = !{ptr @sd_config._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_config._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 162, i32 3}
!37 = !{ptr @sd_config._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_config._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 164, i32 3}
!41 = !{ptr @sd_config._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sd_config._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 166, i32 3}
!45 = !{ptr @sd_config._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sd_config._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 174, i32 2}
!49 = !{ptr @sd_config._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sd_config._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 176, i32 2}
!53 = !{ptr @sd_config._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sd_config._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 178, i32 2}
!57 = !{ptr @sd_config._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sd_config._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 223, i32 3}
!61 = !{ptr @sd_config._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sd_config._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 66, i32 3}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stv_sndctrl._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @stv_sndctrl._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 75, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stv0680_handle_error._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stv0680_handle_error._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 87, i32 3}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stv0680_get_video_mode._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @stv0680_get_video_mode._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 105, i32 3}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stv0680_set_video_mode._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stv0680_set_video_mode._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 111, i32 3}
!85 = !{ptr @stv0680_set_video_mode._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @stv0680_set_video_mode._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @device_table, !88, !"device_table", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/stv0680.c", i32 312, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
