; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/zc3xx.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/zc3xx.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.sensor_by_chipset_revision = type { i16, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.usb_action = type { i8, i8, i16 }
%struct.sd = type { %struct.gspca_dev, %struct.anon.108, %struct.anon.109, ptr, ptr, ptr, %struct.work_struct, i8, i8, i8, i16, [589 x i8] }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.103, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.anon.103 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.108 = type { ptr, ptr, ptr }
%struct.anon.109 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [104 x i8] c"gspca_zc3xx.author=Jean-Francois Moine <http://moinejf.free.fr>, Serge A. Suchkov <Serge.A.S@tochka.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [61 x i8] c"gspca_zc3xx.description=GSPCA ZC03xx/VC3xx USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_zc3xx.file=drivers/media/usb/gspca/gspca_zc3xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_zc3xx.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_zc3xx__307_7025_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__param_str_force_sensor = internal constant [25 x i8] c"gspca_zc3xx.force_sensor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_sensor = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_force_sensor = internal constant %struct.kernel_param { ptr @__param_str_force_sensor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @force_sensor } }, section "__param", align 4
@__UNIQUE_ID_force_sensortype308 = internal constant [38 x i8] c"gspca_zc3xx.parmtype=force_sensor:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_sensor309 = internal constant [64 x i8] c"gspca_zc3xx.parm=force_sensor:Force sensor. Only for experts!!!\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_zc3xx\00", [20 x i8] zeroinitializer }, align 32
@device_table = internal constant { [55 x %struct.usb_device_id], [344 x i8] } { [55 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1008, i16 6919, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 1054, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16407, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16412, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1054, i16 16414, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16415, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16425, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16436, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1054, i16 16437, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1054, i16 16438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16442, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16465, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1054, i16 16467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1112, i16 28679, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 28684, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 28687, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1121, i16 2560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2205, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 1133, i16 2208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2210, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2217, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2218, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2220, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2221, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2222, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2223, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2233, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 1137, i16 805, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1137, i16 806, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1137, i16 813, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1137, i16 814, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1375, i16 -16379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1375, i16 -12285, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1375, i16 -12284, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1688, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 2760, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 2760, i16 12315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 12347, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 12379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 12411, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4349, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4349, i16 -32691, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4349, i16 -32688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [344 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_pre_start, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr @sd_get_jcomp, ptr @sd_set_jcomp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&sd->work)\00", [35 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 5544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gspca_zc3xx: reg_r err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/zc3xx.c\00", [32 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 5566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_zc3xx: reg_w_i err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 6509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: probe sensor -> %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 6513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: sensor forced to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.11 = internal global ptr @sd_init._entry.9, section ".printk_index", align 4
@sd_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 6519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Sensor MC501CB\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.14 = internal global ptr @sd_init._entry.12, section ".printk_index", align 4
@sd_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.4, i32 6522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor GC0303\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.17 = internal global ptr @sd_init._entry.15, section ".printk_index", align 4
@sd_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.4, i32 6525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014gspca_zc3xx: Unknown sensor - set to TAS5130C\0A\00", [47 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.20 = internal global ptr @sd_init._entry.18, section ".printk_index", align 4
@sd_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.4, i32 6533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Sensor hv7131 type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.23 = internal global ptr @sd_init._entry.21, section ".printk_index", align 4
@sd_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.4, i32 6537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Find Sensor HV7131B\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.26 = internal global ptr @sd_init._entry.24, section ".printk_index", align 4
@sd_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.4, i32 6542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Find Sensor HV7131R\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.29 = internal global ptr @sd_init._entry.27, section ".printk_index", align 4
@sd_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.4, i32 6548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Sensor TAS5130C\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.32 = internal global ptr @sd_init._entry.30, section ".printk_index", align 4
@sd_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.4, i32 6552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor CS2102\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.35 = internal global ptr @sd_init._entry.33, section ".printk_index", align 4
@sd_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.8, ptr @.str.4, i32 6556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Find Sensor HDCS2020\0A\00", [36 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.38 = internal global ptr @sd_init._entry.36, section ".printk_index", align 4
@sd_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.8, ptr @.str.4, i32 6562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Find Sensor PB0330. Chip revision %x\0A\00", [52 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.41 = internal global ptr @sd_init._entry.39, section ".printk_index", align 4
@sd_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.8, ptr @.str.4, i32 6566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Find Sensor ICM105A\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.44 = internal global ptr @sd_init._entry.42, section ".printk_index", align 4
@sd_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.8, ptr @.str.4, i32 6570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Find Sensor PAS202B\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.47 = internal global ptr @sd_init._entry.45, section ".printk_index", align 4
@sd_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.8, ptr @.str.4, i32 6574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor PAS106\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.50 = internal global ptr @sd_init._entry.48, section ".printk_index", align 4
@sd_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.8, ptr @.str.4, i32 6579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Find Sensor TAS5130C\0A\00", [36 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.53 = internal global ptr @sd_init._entry.51, section ".printk_index", align 4
@sd_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.4, i32 6583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.55 = internal global ptr @sd_init._entry.54, section ".printk_index", align 4
@sd_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.8, ptr @.str.4, i32 6590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Sensor MT9V111. Chip revision %04x\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.58 = internal global ptr @sd_init._entry.56, section ".printk_index", align 4
@sd_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.8, ptr @.str.4, i32 6598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Find Sensor CS2102K?. Chip revision %x\0A\00", [50 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.61 = internal global ptr @sd_init._entry.59, section ".printk_index", align 4
@sd_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.8, ptr @.str.4, i32 6602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Find Sensor ADCM2700\0A\00", [36 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.64 = internal global ptr @sd_init._entry.62, section ".printk_index", align 4
@sd_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.8, ptr @.str.4, i32 6606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor GC0305\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.67 = internal global ptr @sd_init._entry.65, section ".printk_index", align 4
@sd_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.4, i32 6610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.69 = internal global ptr @sd_init._entry.68, section ".printk_index", align 4
@sd_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.8, ptr @.str.4, i32 6614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor PO2030\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.72 = internal global ptr @sd_init._entry.70, section ".printk_index", align 4
@sd_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.8, ptr @.str.4, i32 6618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor OV7620\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.75 = internal global ptr @sd_init._entry.73, section ".printk_index", align 4
@sd_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.8, ptr @.str.4, i32 6622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Find Sensor OV7630C\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.78 = internal global ptr @sd_init._entry.76, section ".printk_index", align 4
@sd_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.8, ptr @.str.4, i32 6626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor OV7648\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.81 = internal global ptr @sd_init._entry.79, section ".printk_index", align 4
@sd_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.8, ptr @.str.4, i32 6630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gspca_zc3xx: Unknown sensor %04x\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.84 = internal global ptr @sd_init._entry.82, section ".printk_index", align 4
@sif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 1195724874, i32 1, i32 176, i32 10094, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 352, i32 38606, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@broken_vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 232, i32 1195724874, i32 1, i32 320, i32 37710, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 472, i32 1195724874, i32 1, i32 640, i32 113870, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 6054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: probe sif 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sif_probe\00", [22 x i8] zeroinitializer }, align 32
@sif_probe._entry_ptr = internal global ptr @sif_probe._entry, section ".printk_index", align 4
@vga_2wr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 6142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: probe 2wr ov vga 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vga_2wr_probe\00", [18 x i8] zeroinitializer }, align 32
@vga_2wr_probe._entry_ptr = internal global ptr @vga_2wr_probe._entry, section ".printk_index", align 4
@i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 5606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gspca_zc3xx: i2c_w status error %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_write\00", [22 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr = internal global ptr @i2c_write._entry, section ".printk_index", align 4
@vga_3wr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 6199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: probe 3wr vga 1 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vga_3wr_probe\00", [18 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry_ptr = internal global ptr @vga_3wr_probe._entry, section ".printk_index", align 4
@chipset_revision_sensor = internal constant { [7 x %struct.sensor_by_chipset_revision], [36 x i8] } { [7 x %struct.sensor_by_chipset_revision] [%struct.sensor_by_chipset_revision { i16 -16384, i8 18 }, %struct.sensor_by_chipset_revision { i16 -16383, i8 19 }, %struct.sensor_by_chipset_revision { i16 -8191, i8 19 }, %struct.sensor_by_chipset_revision { i16 -32767, i8 19 }, %struct.sensor_by_chipset_revision { i16 -32768, i8 20 }, %struct.sensor_by_chipset_revision { i16 -31744, i8 21 }, %struct.sensor_by_chipset_revision { i16 -7168, i8 21 }], [36 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.4, i32 6219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: probe 3wr vga type 0a\0A\00", [35 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry_ptr.95 = internal global ptr @vga_3wr_probe._entry.93, section ".printk_index", align 4
@vga_3wr_probe._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.4, i32 6234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: probe 3wr vga type %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry_ptr.98 = internal global ptr @vga_3wr_probe._entry.96, section ".printk_index", align 4
@vga_3wr_probe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.4, i32 6265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: probe 3wr vga 2 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry_ptr.101 = internal global ptr @vga_3wr_probe._entry.99, section ".printk_index", align 4
@vga_3wr_probe._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.92, ptr @.str.4, i32 6271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: sensor PO2030 rev 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry_ptr.104 = internal global ptr @vga_3wr_probe._entry.102, section ".printk_index", align 4
@vga_3wr_probe._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.92, ptr @.str.4, i32 6288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: probe 3wr vga type 0a ? ret: %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@vga_3wr_probe._entry_ptr.107 = internal global ptr @vga_3wr_probe._entry.105, section ".printk_index", align 4
@i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.4, i32 5584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gspca_zc3xx: i2c_r status error %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_read\00", [23 x i8] zeroinitializer }, align 32
@i2c_read._entry_ptr = internal global ptr @i2c_read._entry, section ".printk_index", align 4
@sd_init_controls.gamma = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\04\04\05\03\04\04\04\04\04\04\04\04\03\04\04\04\04\04\03", [45 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zc3xx:6442:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@zcxx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @zcxx_g_volatile_ctrl, ptr null, ptr @zcxx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@jpeg_qual = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2KW", [29 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.4, i32 6470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_zc3xx: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setcontrast.delta_b = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"P8-($!\1E\1D\1D\1B\1B\1B\19\18\18\18", [16 x i8] zeroinitializer }, align 32
@setcontrast.delta_c = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",\1A\12\0C\0A\06\06\06\04\06\04\04\03\03\02\02", [16 x i8] zeroinitializer }, align 32
@setcontrast.gamma_tb = internal constant { [6 x [16 x i8]], [32 x i8] } { [6 x [16 x i8]] [[16 x i8] c"\00\00\03\0D\1B.E_y\93\AB\C1\D4\E5\F3\FF", [16 x i8] c"\01\0C\1F:Sm\85\9C\B0\C2\D1\DE\E9\F2\F9\FF", [16 x i8] c"\04\160Nh\81\98\AC\BE\CD\DA\E4\ED\F5\FB\FF", [16 x i8] c"\138Yy\92\A7\B9\C8\D4\DF\E7\EE\F4\F9\FC\FF", [16 x i8] c" Kn\8D\A3\B5\C5\D2\DC\E5\EC\F2\F6\FA\FD\FF", [16 x i8] c"$Dd\84\9D\B2\C4\D3\E0\EB\F4\FF\FF\FF\FF\FF"], [32 x i8] zeroinitializer }, align 32
@setlightfreq.freq_tb = internal constant { [19 x [6 x ptr]], [120 x i8] } { [19 x [6 x ptr]] [[6 x ptr] [ptr @adcm2700_NoFlicker, ptr @adcm2700_NoFlicker, ptr @adcm2700_50HZ, ptr @adcm2700_50HZ, ptr @adcm2700_60HZ, ptr @adcm2700_60HZ], [6 x ptr] [ptr @cs2102_NoFlicker, ptr @cs2102_NoFlickerScale, ptr @cs2102_50HZ, ptr @cs2102_50HZScale, ptr @cs2102_60HZ, ptr @cs2102_60HZScale], [6 x ptr] [ptr @cs2102_NoFlicker, ptr @cs2102_NoFlickerScale, ptr null, ptr null, ptr null, ptr null], [6 x ptr] [ptr @gc0303_NoFlicker, ptr @gc0303_NoFlickerScale, ptr @gc0303_50HZ, ptr @gc0303_50HZScale, ptr @gc0303_60HZ, ptr @gc0303_60HZScale], [6 x ptr] [ptr @gc0305_NoFlicker, ptr @gc0305_NoFlicker, ptr @gc0305_50HZ, ptr @gc0305_50HZ, ptr @gc0305_60HZ, ptr @gc0305_60HZ], [6 x ptr] [ptr @hdcs2020_NoFlicker, ptr @hdcs2020_NoFlicker, ptr @hdcs2020_50HZ, ptr @hdcs2020_50HZ, ptr @hdcs2020_60HZ, ptr @hdcs2020_60HZ], [6 x ptr] [ptr @hv7131b_NoFlicker, ptr @hv7131b_NoFlickerScale, ptr @hv7131b_50HZ, ptr @hv7131b_50HZScale, ptr @hv7131b_60HZ, ptr @hv7131b_60HZScale], [6 x ptr] [ptr @hv7131r_NoFlicker, ptr @hv7131r_NoFlickerScale, ptr @hv7131r_50HZ, ptr @hv7131r_50HZScale, ptr @hv7131r_60HZ, ptr @hv7131r_60HZScale], [6 x ptr] [ptr @icm105a_NoFlicker, ptr @icm105a_NoFlickerScale, ptr @icm105a_50HZ, ptr @icm105a_50HZScale, ptr @icm105a_60HZ, ptr @icm105a_60HZScale], [6 x ptr] [ptr @mc501cb_NoFlicker, ptr @mc501cb_NoFlickerScale, ptr @mc501cb_50HZ, ptr @mc501cb_50HZScale, ptr @mc501cb_60HZ, ptr @mc501cb_60HZScale], [6 x ptr] [ptr @mt9v111_1_AENoFlicker, ptr @mt9v111_1_AENoFlickerScale, ptr @mt9v111_1_AE50HZ, ptr @mt9v111_1_AE50HZScale, ptr @mt9v111_1_AE60HZ, ptr @mt9v111_1_AE60HZScale], [6 x ptr] [ptr @mt9v111_3_AENoFlicker, ptr @mt9v111_3_AENoFlickerScale, ptr @mt9v111_3_AE50HZ, ptr @mt9v111_3_AE50HZScale, ptr @mt9v111_3_AE60HZ, ptr @mt9v111_3_AE60HZScale], [6 x ptr] [ptr @ov7620_NoFlicker, ptr @ov7620_NoFlicker, ptr @ov7620_50HZ, ptr @ov7620_50HZ, ptr @ov7620_60HZ, ptr @ov7620_60HZ], [6 x ptr] zeroinitializer, [6 x ptr] [ptr @pas106b_NoFlicker, ptr @pas106b_NoFlicker, ptr @pas106b_50HZ, ptr @pas106b_50HZ, ptr @pas106b_60HZ, ptr @pas106b_60HZ], [6 x ptr] [ptr @pas202b_NoFlicker, ptr @pas202b_NoFlickerScale, ptr @pas202b_50HZ, ptr @pas202b_50HZScale, ptr @pas202b_60HZ, ptr @pas202b_60HZScale], [6 x ptr] [ptr @pb0330_NoFlicker, ptr @pb0330_NoFlickerScale, ptr @pb0330_50HZ, ptr @pb0330_50HZScale, ptr @pb0330_60HZ, ptr @pb0330_60HZScale], [6 x ptr] [ptr @po2030_NoFlicker, ptr @po2030_NoFlicker, ptr @po2030_50HZ, ptr @po2030_50HZ, ptr @po2030_60HZ, ptr @po2030_60HZ], [6 x ptr] [ptr @tas5130c_NoFlicker, ptr @tas5130c_NoFlickerScale, ptr @tas5130c_50HZ, ptr @tas5130c_50HZScale, ptr @tas5130c_60HZ, ptr @tas5130c_60HZScale]], [120 x i8] zeroinitializer }, align 32
@adcm2700_NoFlicker = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -69, i8 7, i16 -31744 }, %struct.usb_action { i8 -69, i8 5, i16 -20480 }, %struct.usb_action { i8 -69, i8 -96, i16 -18431 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 16 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@adcm2700_50HZ = internal constant { [11 x %struct.usb_action], [52 x i8] } { [11 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -69, i8 5, i16 -31744 }, %struct.usb_action { i8 -69, i8 -48, i16 -20473 }, %struct.usb_action { i8 -69, i8 -96, i16 -18417 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 16 }, %struct.usb_action { i8 -86, i8 38, i16 208 }, %struct.usb_action { i8 -86, i8 40, i16 2 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@adcm2700_60HZ = internal constant { [11 x %struct.usb_action], [52 x i8] } { [11 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -69, i8 7, i16 -31744 }, %struct.usb_action { i8 -69, i8 -126, i16 -20474 }, %struct.usb_action { i8 -69, i8 4, i16 -18419 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 16 }, %struct.usb_action { i8 -86, i8 38, i16 87 }, %struct.usb_action { i8 -86, i8 40, i16 2 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@cs2102_NoFlicker = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 35, i16 0 }, %struct.usb_action { i8 -86, i8 36, i16 175 }, %struct.usb_action { i8 -86, i8 37, i16 128 }, %struct.usb_action { i8 -86, i8 33, i16 1 }, %struct.usb_action { i8 -96, i8 1, i16 400 }, %struct.usb_action { i8 -96, i8 95, i16 401 }, %struct.usb_action { i8 -96, i8 -128, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -128, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 1, i16 29 }, %struct.usb_action { i8 -96, i8 64, i16 30 }, %struct.usb_action { i8 -96, i8 -96, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs2102_NoFlickerScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 35, i16 1 }, %struct.usb_action { i8 -86, i8 36, i16 95 }, %struct.usb_action { i8 -86, i8 37, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 1 }, %struct.usb_action { i8 -96, i8 2, i16 400 }, %struct.usb_action { i8 -96, i8 -65, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -128, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 1, i16 29 }, %struct.usb_action { i8 -96, i8 64, i16 30 }, %struct.usb_action { i8 -96, i8 -96, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs2102_50HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 35, i16 0 }, %struct.usb_action { i8 -86, i8 36, i16 175 }, %struct.usb_action { i8 -86, i8 37, i16 200 }, %struct.usb_action { i8 -86, i8 33, i16 104 }, %struct.usb_action { i8 -96, i8 1, i16 400 }, %struct.usb_action { i8 -96, i8 95, i16 401 }, %struct.usb_action { i8 -96, i8 -112, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 29, i16 406 }, %struct.usb_action { i8 -96, i8 76, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 104, i16 29 }, %struct.usb_action { i8 -96, i8 -29, i16 30 }, %struct.usb_action { i8 -96, i8 -16, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs2102_50HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 35, i16 1 }, %struct.usb_action { i8 -86, i8 36, i16 95 }, %struct.usb_action { i8 -86, i8 37, i16 144 }, %struct.usb_action { i8 -86, i8 33, i16 221 }, %struct.usb_action { i8 -96, i8 2, i16 400 }, %struct.usb_action { i8 -96, i8 -65, i16 401 }, %struct.usb_action { i8 -96, i8 32, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 58, i16 406 }, %struct.usb_action { i8 -96, i8 -104, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -35, i16 29 }, %struct.usb_action { i8 -96, i8 -28, i16 30 }, %struct.usb_action { i8 -96, i8 -16, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs2102_60HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 35, i16 0 }, %struct.usb_action { i8 -86, i8 36, i16 170 }, %struct.usb_action { i8 -86, i8 37, i16 230 }, %struct.usb_action { i8 -86, i8 33, i16 63 }, %struct.usb_action { i8 -96, i8 1, i16 400 }, %struct.usb_action { i8 -96, i8 85, i16 401 }, %struct.usb_action { i8 -96, i8 -52, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 24, i16 406 }, %struct.usb_action { i8 -96, i8 106, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 63, i16 29 }, %struct.usb_action { i8 -96, i8 -91, i16 30 }, %struct.usb_action { i8 -96, i8 -16, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs2102_60HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 35, i16 1 }, %struct.usb_action { i8 -86, i8 36, i16 85 }, %struct.usb_action { i8 -86, i8 37, i16 204 }, %struct.usb_action { i8 -86, i8 33, i16 63 }, %struct.usb_action { i8 -96, i8 2, i16 400 }, %struct.usb_action { i8 -96, i8 -85, i16 401 }, %struct.usb_action { i8 -96, i8 -104, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 48, i16 406 }, %struct.usb_action { i8 -96, i8 -44, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 57, i16 29 }, %struct.usb_action { i8 -96, i8 112, i16 30 }, %struct.usb_action { i8 -96, i8 -80, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gc0303_NoFlicker = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 12, i16 256 }, %struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 0 }, %struct.usb_action { i8 -86, i8 -124, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 0, i16 401 }, %struct.usb_action { i8 -96, i8 72, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 3, i16 384 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@gc0303_NoFlickerScale = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 12, i16 256 }, %struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 0 }, %struct.usb_action { i8 -86, i8 -124, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 0, i16 401 }, %struct.usb_action { i8 -96, i8 72, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 3, i16 384 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@gc0303_50HZ = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 1 }, %struct.usb_action { i8 -86, i8 -124, i16 99 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 6, i16 401 }, %struct.usb_action { i8 -96, i8 -88, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 71, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 72, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 127, i16 397 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@gc0303_50HZScale = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 3 }, %struct.usb_action { i8 -86, i8 -124, i16 84 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 13, i16 401 }, %struct.usb_action { i8 -96, i8 80, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -114, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 72, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 127, i16 397 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@gc0303_60HZ = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 0 }, %struct.usb_action { i8 -86, i8 -124, i16 59 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 5, i16 401 }, %struct.usb_action { i8 -96, i8 -120, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 59, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@gc0303_60HZScale = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 0 }, %struct.usb_action { i8 -86, i8 -124, i16 118 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 11, i16 401 }, %struct.usb_action { i8 -96, i8 16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 118, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@gc0305_NoFlicker = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 12, i16 256 }, %struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 0 }, %struct.usb_action { i8 -86, i8 -124, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 0, i16 401 }, %struct.usb_action { i8 -96, i8 72, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 3, i16 384 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gc0305_50HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 2 }, %struct.usb_action { i8 -86, i8 -124, i16 56 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 11, i16 401 }, %struct.usb_action { i8 -96, i8 24, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -114, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gc0305_60HZ = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -126, i16 0 }, %struct.usb_action { i8 -86, i8 -125, i16 0 }, %struct.usb_action { i8 -86, i8 -124, i16 236 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 11, i16 401 }, %struct.usb_action { i8 -96, i8 16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -20, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 21, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@hdcs2020_NoFlicker = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 19, i16 16 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 14, i16 4 }, %struct.usb_action { i8 -86, i8 25, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 112, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 4, i16 29 }, %struct.usb_action { i8 -96, i8 23, i16 30 }, %struct.usb_action { i8 -96, i8 42, i16 31 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@hdcs2020_50HZ = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 19, i16 24 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 14, i16 5 }, %struct.usb_action { i8 -86, i8 25, i16 31 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 118, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 70, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 12, i16 425 }, %struct.usb_action { i8 -96, i8 40, i16 426 }, %struct.usb_action { i8 -96, i8 5, i16 29 }, %struct.usb_action { i8 -96, i8 26, i16 30 }, %struct.usb_action { i8 -96, i8 47, i16 31 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@hdcs2020_60HZ = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 19, i16 49 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 14, i16 4 }, %struct.usb_action { i8 -86, i8 25, i16 205 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 98, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 61, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 12, i16 425 }, %struct.usb_action { i8 -96, i8 40, i16 426 }, %struct.usb_action { i8 -96, i8 4, i16 29 }, %struct.usb_action { i8 -96, i8 24, i16 30 }, %struct.usb_action { i8 -96, i8 44, i16 31 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@hv7131b_NoFlicker = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 37, i16 3 }, %struct.usb_action { i8 -86, i8 38, i16 0 }, %struct.usb_action { i8 -86, i8 39, i16 0 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 16 }, %struct.usb_action { i8 -86, i8 34, i16 0 }, %struct.usb_action { i8 -86, i8 35, i16 3 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 -8, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 2, i16 406 }, %struct.usb_action { i8 -96, i8 0, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 16, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 3, i16 32 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@hv7131b_NoFlickerScale = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 37, i16 3 }, %struct.usb_action { i8 -86, i8 38, i16 0 }, %struct.usb_action { i8 -86, i8 39, i16 0 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 160 }, %struct.usb_action { i8 -86, i8 34, i16 22 }, %struct.usb_action { i8 -86, i8 35, i16 64 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 -8, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 2, i16 406 }, %struct.usb_action { i8 -96, i8 0, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -96, i16 30 }, %struct.usb_action { i8 -96, i8 22, i16 31 }, %struct.usb_action { i8 -96, i8 64, i16 32 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@hv7131b_50HZ = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 37, i16 7 }, %struct.usb_action { i8 -86, i8 38, i16 83 }, %struct.usb_action { i8 -86, i8 39, i16 0 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 80 }, %struct.usb_action { i8 -86, i8 34, i16 27 }, %struct.usb_action { i8 -86, i8 35, i16 252 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 -101, i16 401 }, %struct.usb_action { i8 -96, i8 -128, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 -22, i16 406 }, %struct.usb_action { i8 -96, i8 96, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 24, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 80, i16 30 }, %struct.usb_action { i8 -96, i8 27, i16 31 }, %struct.usb_action { i8 -96, i8 -4, i16 32 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@hv7131b_50HZScale = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 37, i16 7 }, %struct.usb_action { i8 -86, i8 38, i16 83 }, %struct.usb_action { i8 -86, i8 39, i16 0 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 80 }, %struct.usb_action { i8 -86, i8 34, i16 18 }, %struct.usb_action { i8 -86, i8 35, i16 128 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 -101, i16 401 }, %struct.usb_action { i8 -96, i8 -128, i16 402 }, %struct.usb_action { i8 -96, i8 1, i16 405 }, %struct.usb_action { i8 -96, i8 -44, i16 406 }, %struct.usb_action { i8 -96, i8 -64, i16 407 }, %struct.usb_action { i8 -96, i8 7, i16 396 }, %struct.usb_action { i8 -96, i8 15, i16 399 }, %struct.usb_action { i8 -96, i8 24, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 80, i16 30 }, %struct.usb_action { i8 -96, i8 18, i16 31 }, %struct.usb_action { i8 -96, i8 -128, i16 32 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@hv7131b_60HZ = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 37, i16 7 }, %struct.usb_action { i8 -86, i8 38, i16 161 }, %struct.usb_action { i8 -86, i8 39, i16 32 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 64 }, %struct.usb_action { i8 -86, i8 34, i16 19 }, %struct.usb_action { i8 -86, i8 35, i16 76 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 77, i16 401 }, %struct.usb_action { i8 -96, i8 96, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 -61, i16 406 }, %struct.usb_action { i8 -96, i8 80, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 24, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 64, i16 30 }, %struct.usb_action { i8 -96, i8 19, i16 31 }, %struct.usb_action { i8 -96, i8 76, i16 32 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@hv7131b_60HZScale = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 37, i16 7 }, %struct.usb_action { i8 -86, i8 38, i16 161 }, %struct.usb_action { i8 -86, i8 39, i16 32 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 33, i16 160 }, %struct.usb_action { i8 -86, i8 34, i16 22 }, %struct.usb_action { i8 -86, i8 35, i16 64 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 77, i16 401 }, %struct.usb_action { i8 -96, i8 96, i16 402 }, %struct.usb_action { i8 -96, i8 1, i16 405 }, %struct.usb_action { i8 -96, i8 -122, i16 406 }, %struct.usb_action { i8 -96, i8 -96, i16 407 }, %struct.usb_action { i8 -96, i8 7, i16 396 }, %struct.usb_action { i8 -96, i8 15, i16 399 }, %struct.usb_action { i8 -96, i8 24, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -96, i16 30 }, %struct.usb_action { i8 -96, i8 22, i16 31 }, %struct.usb_action { i8 -96, i8 64, i16 32 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@hv7131r_NoFlicker = internal constant { [16 x %struct.usb_action], [32 x i8] } { [16 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 -8, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 2, i16 406 }, %struct.usb_action { i8 -96, i8 88, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 8, i16 32 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hv7131r_NoFlickerScale = internal constant { [16 x %struct.usb_action], [32 x i8] } { [16 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 47, i16 400 }, %struct.usb_action { i8 -96, i8 -8, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 4, i16 406 }, %struct.usb_action { i8 -96, i8 -80, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 8, i16 32 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hv7131r_50HZ = internal constant { [16 x %struct.usb_action], [32 x i8] } { [16 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 6, i16 400 }, %struct.usb_action { i8 -96, i8 104, i16 401 }, %struct.usb_action { i8 -96, i8 -96, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 -22, i16 406 }, %struct.usb_action { i8 -96, i8 96, i16 407 }, %struct.usb_action { i8 -96, i8 24, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 8, i16 32 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hv7131r_50HZScale = internal constant { [16 x %struct.usb_action], [32 x i8] } { [16 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 12, i16 400 }, %struct.usb_action { i8 -96, i8 -47, i16 401 }, %struct.usb_action { i8 -96, i8 64, i16 402 }, %struct.usb_action { i8 -96, i8 1, i16 405 }, %struct.usb_action { i8 -96, i8 -44, i16 406 }, %struct.usb_action { i8 -96, i8 -64, i16 407 }, %struct.usb_action { i8 -96, i8 24, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 8, i16 32 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hv7131r_60HZ = internal constant { [16 x %struct.usb_action], [32 x i8] } { [16 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 6, i16 400 }, %struct.usb_action { i8 -96, i8 26, i16 401 }, %struct.usb_action { i8 -96, i8 -128, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 -61, i16 406 }, %struct.usb_action { i8 -96, i8 80, i16 407 }, %struct.usb_action { i8 -96, i8 24, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 8, i16 32 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hv7131r_60HZScale = internal constant { [16 x %struct.usb_action], [32 x i8] } { [16 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 12, i16 400 }, %struct.usb_action { i8 -96, i8 53, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 1, i16 405 }, %struct.usb_action { i8 -96, i8 -122, i16 406 }, %struct.usb_action { i8 -96, i8 -96, i16 407 }, %struct.usb_action { i8 -96, i8 24, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 0, i16 31 }, %struct.usb_action { i8 -96, i8 8, i16 32 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@icm105a_NoFlicker = internal constant { [31 x %struct.usb_action], [36 x i8] } { [31 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 4 }, %struct.usb_action { i8 -86, i8 14, i16 129 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 128 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 -128, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 32, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 -63, i16 29 }, %struct.usb_action { i8 -96, i8 -44, i16 30 }, %struct.usb_action { i8 -96, i8 -24, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 -64, i16 424 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@icm105a_NoFlickerScale = internal constant { [29 x %struct.usb_action], [44 x i8] } { [29 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 4 }, %struct.usb_action { i8 -86, i8 14, i16 13 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 0 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 0, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 32, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 -63, i16 29 }, %struct.usb_action { i8 -96, i8 -44, i16 30 }, %struct.usb_action { i8 -96, i8 -24, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@icm105a_50HZ = internal constant { [31 x %struct.usb_action], [36 x i8] } { [31 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 140 }, %struct.usb_action { i8 -86, i8 14, i16 149 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 148 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 -108, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 32, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -124, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 18, i16 426 }, %struct.usb_action { i8 -96, i8 -29, i16 29 }, %struct.usb_action { i8 -96, i8 -20, i16 30 }, %struct.usb_action { i8 -96, i8 -11, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 -64, i16 424 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@icm105a_50HZScale = internal constant { [29 x %struct.usb_action], [44 x i8] } { [29 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 32 }, %struct.usb_action { i8 -86, i8 14, i16 14 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 13 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 13, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 26, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 75, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 18, i16 426 }, %struct.usb_action { i8 -96, i8 -56, i16 29 }, %struct.usb_action { i8 -96, i8 -40, i16 30 }, %struct.usb_action { i8 -96, i8 -22, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@icm105a_60HZ = internal constant { [31 x %struct.usb_action], [36 x i8] } { [31 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 8 }, %struct.usb_action { i8 -86, i8 14, i16 134 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 133 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 -123, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 8, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -127, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 18, i16 426 }, %struct.usb_action { i8 -96, i8 -62, i16 29 }, %struct.usb_action { i8 -96, i8 -42, i16 30 }, %struct.usb_action { i8 -96, i8 -22, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 -64, i16 424 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@icm105a_60HZScale = internal constant { [29 x %struct.usb_action], [44 x i8] } { [29 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 4 }, %struct.usb_action { i8 -86, i8 14, i16 13 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 8 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 8, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 65, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 18, i16 426 }, %struct.usb_action { i8 -96, i8 -63, i16 29 }, %struct.usb_action { i8 -96, i8 -44, i16 30 }, %struct.usb_action { i8 -96, i8 -24, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mc501cb_NoFlicker = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 24 }, %struct.usb_action { i8 -86, i8 55, i16 106 }, %struct.usb_action { i8 -86, i8 61, i16 24 }, %struct.usb_action { i8 -86, i8 62, i16 106 }, %struct.usb_action { i8 -86, i8 59, i16 24 }, %struct.usb_action { i8 -86, i8 60, i16 106 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mc501cb_NoFlickerScale = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 48 }, %struct.usb_action { i8 -86, i8 55, i16 212 }, %struct.usb_action { i8 -86, i8 61, i16 48 }, %struct.usb_action { i8 -86, i8 62, i16 212 }, %struct.usb_action { i8 -86, i8 59, i16 48 }, %struct.usb_action { i8 -86, i8 60, i16 212 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mc501cb_50HZ = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 29 }, %struct.usb_action { i8 -86, i8 55, i16 76 }, %struct.usb_action { i8 -86, i8 59, i16 29 }, %struct.usb_action { i8 -86, i8 60, i16 76 }, %struct.usb_action { i8 -86, i8 61, i16 29 }, %struct.usb_action { i8 -86, i8 62, i16 76 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mc501cb_50HZScale = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 58 }, %struct.usb_action { i8 -86, i8 55, i16 152 }, %struct.usb_action { i8 -86, i8 59, i16 58 }, %struct.usb_action { i8 -86, i8 60, i16 152 }, %struct.usb_action { i8 -86, i8 61, i16 58 }, %struct.usb_action { i8 -86, i8 62, i16 152 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mc501cb_60HZ = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 24 }, %struct.usb_action { i8 -86, i8 55, i16 106 }, %struct.usb_action { i8 -86, i8 61, i16 24 }, %struct.usb_action { i8 -86, i8 62, i16 106 }, %struct.usb_action { i8 -86, i8 59, i16 24 }, %struct.usb_action { i8 -86, i8 60, i16 106 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mc501cb_60HZScale = internal constant { [9 x %struct.usb_action], [60 x i8] } { [9 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 48 }, %struct.usb_action { i8 -86, i8 55, i16 212 }, %struct.usb_action { i8 -86, i8 61, i16 48 }, %struct.usb_action { i8 -86, i8 62, i16 212 }, %struct.usb_action { i8 -86, i8 59, i16 48 }, %struct.usb_action { i8 -86, i8 60, i16 212 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mt9v111_1_AENoFlicker = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1289 }, %struct.usb_action { i8 -69, i8 1, i16 2400 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 4, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 9, i16 29 }, %struct.usb_action { i8 -96, i8 64, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -32, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mt9v111_1_AENoFlickerScale = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1332 }, %struct.usb_action { i8 -69, i8 2, i16 2400 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 4, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 52, i16 29 }, %struct.usb_action { i8 -96, i8 96, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -32, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mt9v111_1_AE50HZ = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1378 }, %struct.usb_action { i8 -69, i8 1, i16 2474 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 3, i16 401 }, %struct.usb_action { i8 -96, i8 -101, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 71, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mt9v111_1_AE50HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1289 }, %struct.usb_action { i8 -69, i8 1, i16 2356 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -46, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -102, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -7, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_1_AE60HZ = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 61 }, %struct.usb_action { i8 -86, i8 9, i16 366 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -35, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 61, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 98, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mt9v111_1_AE60HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1289 }, %struct.usb_action { i8 -69, i8 1, i16 2435 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -113, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -127, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -7, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_3_AENoFlicker = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 52 }, %struct.usb_action { i8 -86, i8 9, i16 608 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 4, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 52, i16 29 }, %struct.usb_action { i8 -96, i8 96, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -32, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mt9v111_3_AENoFlickerScale = internal constant { [21 x %struct.usb_action], [44 x i8] } { [21 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 52 }, %struct.usb_action { i8 -86, i8 9, i16 608 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 4, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 52, i16 29 }, %struct.usb_action { i8 -96, i8 96, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -32, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mt9v111_3_AE50HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 9 }, %struct.usb_action { i8 -86, i8 9, i16 462 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -46, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -102, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -7, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_3_AE50HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 9 }, %struct.usb_action { i8 -86, i8 9, i16 462 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -46, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -102, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -7, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_3_AE60HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 9 }, %struct.usb_action { i8 -86, i8 9, i16 131 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -113, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -127, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -7, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_3_AE60HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 9 }, %struct.usb_action { i8 -86, i8 9, i16 131 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -113, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -127, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 28, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -7, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov7620_NoFlicker = internal constant { [11 x %struct.usb_action], [52 x i8] } { [11 x %struct.usb_action] [%struct.usb_action { i8 -35, i8 0, i16 256 }, %struct.usb_action { i8 -86, i8 43, i16 0 }, %struct.usb_action { i8 -86, i8 117, i16 138 }, %struct.usb_action { i8 -86, i8 45, i16 1 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 24, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 1, i16 407 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@ov7620_50HZ = internal constant { [12 x %struct.usb_action], [48 x i8] } { [12 x %struct.usb_action] [%struct.usb_action { i8 -35, i8 0, i16 256 }, %struct.usb_action { i8 -86, i8 43, i16 150 }, %struct.usb_action { i8 -86, i8 117, i16 142 }, %struct.usb_action { i8 -86, i8 45, i16 5 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 24, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -125, i16 407 }, %struct.usb_action { i8 -86, i8 118, i16 3 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov7620_60HZ = internal constant { [12 x %struct.usb_action], [48 x i8] } { [12 x %struct.usb_action] [%struct.usb_action { i8 -35, i8 0, i16 256 }, %struct.usb_action { i8 -86, i8 43, i16 0 }, %struct.usb_action { i8 -86, i8 117, i16 142 }, %struct.usb_action { i8 -86, i8 45, i16 5 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 24, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -125, i16 407 }, %struct.usb_action { i8 -86, i8 118, i16 3 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pas106b_NoFlicker = internal constant { [14 x %struct.usb_action], [40 x i8] } { [14 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 6, i16 401 }, %struct.usb_action { i8 -96, i8 80, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 16, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -86, i8 3, i16 19 }, %struct.usb_action { i8 -86, i8 4, i16 0 }, %struct.usb_action { i8 -86, i8 5, i16 1 }, %struct.usb_action { i8 -86, i8 7, i16 48 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pas106b_50HZ = internal constant { [14 x %struct.usb_action], [40 x i8] } { [14 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 6, i16 401 }, %struct.usb_action { i8 -96, i8 84, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -121, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 48, i16 399 }, %struct.usb_action { i8 -86, i8 3, i16 33 }, %struct.usb_action { i8 -86, i8 4, i16 12 }, %struct.usb_action { i8 -86, i8 5, i16 2 }, %struct.usb_action { i8 -86, i8 7, i16 28 }, %struct.usb_action { i8 -96, i8 4, i16 425 }, %struct.usb_action zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pas106b_60HZ = internal constant { [14 x %struct.usb_action], [40 x i8] } { [14 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 6, i16 401 }, %struct.usb_action { i8 -96, i8 46, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 113, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 48, i16 399 }, %struct.usb_action { i8 -86, i8 3, i16 28 }, %struct.usb_action { i8 -86, i8 4, i16 4 }, %struct.usb_action { i8 -86, i8 5, i16 1 }, %struct.usb_action { i8 -86, i8 7, i16 196 }, %struct.usb_action { i8 -96, i8 4, i16 425 }, %struct.usb_action zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pas202b_NoFlicker = internal constant { [27 x %struct.usb_action], [52 x i8] } { [27 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 2 }, %struct.usb_action { i8 -86, i8 33, i16 6 }, %struct.usb_action { i8 -86, i8 3, i16 64 }, %struct.usb_action { i8 -86, i8 4, i16 8 }, %struct.usb_action { i8 -86, i8 5, i16 6 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 6, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 1, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 64, i16 29 }, %struct.usb_action { i8 -96, i8 96, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 15, i16 135 }, %struct.usb_action { i8 -96, i8 14, i16 136 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pas202b_NoFlickerScale = internal constant { [27 x %struct.usb_action], [52 x i8] } { [27 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 4 }, %struct.usb_action { i8 -86, i8 33, i16 12 }, %struct.usb_action { i8 -86, i8 3, i16 64 }, %struct.usb_action { i8 -86, i8 4, i16 16 }, %struct.usb_action { i8 -86, i8 5, i16 12 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 12, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 2, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 64, i16 29 }, %struct.usb_action { i8 -96, i8 96, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 15, i16 135 }, %struct.usb_action { i8 -96, i8 14, i16 136 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pas202b_50HZ = internal constant { [27 x %struct.usb_action], [52 x i8] } { [27 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 2 }, %struct.usb_action { i8 -86, i8 33, i16 27 }, %struct.usb_action { i8 -86, i8 3, i16 68 }, %struct.usb_action { i8 -86, i8 4, i16 8 }, %struct.usb_action { i8 -86, i8 5, i16 27 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -96, i8 28, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 27, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 77, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 27, i16 399 }, %struct.usb_action { i8 -96, i8 68, i16 29 }, %struct.usb_action { i8 -96, i8 111, i16 30 }, %struct.usb_action { i8 -96, i8 -83, i16 31 }, %struct.usb_action { i8 -96, i8 -21, i16 32 }, %struct.usb_action { i8 -96, i8 15, i16 135 }, %struct.usb_action { i8 -96, i8 14, i16 136 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pas202b_50HZScale = internal constant { [27 x %struct.usb_action], [52 x i8] } { [27 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 4 }, %struct.usb_action { i8 -86, i8 33, i16 61 }, %struct.usb_action { i8 -86, i8 3, i16 65 }, %struct.usb_action { i8 -86, i8 4, i16 16 }, %struct.usb_action { i8 -86, i8 5, i16 61 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -96, i8 28, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 61, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -101, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 27, i16 399 }, %struct.usb_action { i8 -96, i8 65, i16 29 }, %struct.usb_action { i8 -96, i8 111, i16 30 }, %struct.usb_action { i8 -96, i8 -83, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 15, i16 135 }, %struct.usb_action { i8 -96, i8 14, i16 136 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pas202b_60HZ = internal constant { [27 x %struct.usb_action], [52 x i8] } { [27 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 2 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 69 }, %struct.usb_action { i8 -86, i8 4, i16 8 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -96, i8 28, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 64, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 27, i16 399 }, %struct.usb_action { i8 -96, i8 69, i16 29 }, %struct.usb_action { i8 -96, i8 -114, i16 30 }, %struct.usb_action { i8 -96, i8 -63, i16 31 }, %struct.usb_action { i8 -96, i8 -11, i16 32 }, %struct.usb_action { i8 -96, i8 15, i16 135 }, %struct.usb_action { i8 -96, i8 14, i16 136 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pas202b_60HZScale = internal constant { [27 x %struct.usb_action], [52 x i8] } { [27 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 4 }, %struct.usb_action { i8 -86, i8 33, i16 8 }, %struct.usb_action { i8 -86, i8 3, i16 66 }, %struct.usb_action { i8 -86, i8 4, i16 16 }, %struct.usb_action { i8 -86, i8 5, i16 8 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -96, i8 28, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 8, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -127, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 27, i16 399 }, %struct.usb_action { i8 -96, i8 66, i16 29 }, %struct.usb_action { i8 -96, i8 111, i16 30 }, %struct.usb_action { i8 -96, i8 -81, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 15, i16 135 }, %struct.usb_action { i8 -96, i8 14, i16 136 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pb0330_NoFlicker = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1289 }, %struct.usb_action { i8 -69, i8 2, i16 2368 }, %struct.usb_action { i8 -69, i8 0, i16 4098 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 1, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 9, i16 29 }, %struct.usb_action { i8 -96, i8 64, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -32, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pb0330_NoFlickerScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1333 }, %struct.usb_action { i8 -69, i8 1, i16 2432 }, %struct.usb_action { i8 -69, i8 0, i16 4097 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -16, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 1, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 53, i16 29 }, %struct.usb_action { i8 -96, i8 96, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -32, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pb0330_50HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1372 }, %struct.usb_action { i8 -69, i8 1, i16 2474 }, %struct.usb_action { i8 -69, i8 0, i16 4097 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -60, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 71, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 26, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 92, i16 29 }, %struct.usb_action { i8 -96, i8 -112, i16 30 }, %struct.usb_action { i8 -96, i8 -56, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pb0330_50HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1382 }, %struct.usb_action { i8 -69, i8 2, i16 2482 }, %struct.usb_action { i8 -69, i8 0, i16 4098 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -116, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -118, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 26, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 -41, i16 29 }, %struct.usb_action { i8 -96, i8 -16, i16 30 }, %struct.usb_action { i8 -96, i8 -8, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pb0330_60HZ = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1333 }, %struct.usb_action { i8 -69, i8 1, i16 2420 }, %struct.usb_action { i8 -69, i8 0, i16 4097 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -2, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 62, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 26, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 53, i16 29 }, %struct.usb_action { i8 -96, i8 80, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -48, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pb0330_60HZScale = internal constant { [20 x %struct.usb_action], [48 x i8] } { [20 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -69, i8 0, i16 1333 }, %struct.usb_action { i8 -69, i8 2, i16 2412 }, %struct.usb_action { i8 -69, i8 0, i16 4098 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -64, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 124, i16 407 }, %struct.usb_action { i8 -96, i8 14, i16 396 }, %struct.usb_action { i8 -96, i8 26, i16 399 }, %struct.usb_action { i8 -96, i8 20, i16 425 }, %struct.usb_action { i8 -96, i8 102, i16 426 }, %struct.usb_action { i8 -96, i8 53, i16 29 }, %struct.usb_action { i8 -96, i8 80, i16 30 }, %struct.usb_action { i8 -96, i8 -112, i16 31 }, %struct.usb_action { i8 -96, i8 -48, i16 32 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@po2030_NoFlicker = internal constant { [8 x %struct.usb_action], [32 x i8] } { [8 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -86, i8 -115, i16 13 }, %struct.usb_action { i8 -86, i8 26, i16 0 }, %struct.usb_action { i8 -86, i8 27, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 120 }, %struct.usb_action { i8 -86, i8 70, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 0 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@po2030_50HZ = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -115, i16 8 }, %struct.usb_action { i8 -86, i8 26, i16 1 }, %struct.usb_action { i8 -86, i8 27, i16 10 }, %struct.usb_action { i8 -86, i8 28, i16 176 }, %struct.usb_action { i8 -96, i8 5, i16 400 }, %struct.usb_action { i8 -96, i8 53, i16 401 }, %struct.usb_action { i8 -96, i8 112, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 -123, i16 406 }, %struct.usb_action { i8 -96, i8 88, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 34, i16 426 }, %struct.usb_action { i8 -96, i8 -120, i16 397 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@po2030_60HZ = internal constant { [19 x %struct.usb_action], [52 x i8] } { [19 x %struct.usb_action] [%struct.usb_action { i8 -86, i8 -115, i16 8 }, %struct.usb_action { i8 -86, i8 26, i16 0 }, %struct.usb_action { i8 -86, i8 27, i16 222 }, %struct.usb_action { i8 -86, i8 28, i16 64 }, %struct.usb_action { i8 -96, i8 8, i16 400 }, %struct.usb_action { i8 -96, i8 -82, i16 401 }, %struct.usb_action { i8 -96, i8 -128, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 111, i16 406 }, %struct.usb_action { i8 -96, i8 32, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 34, i16 426 }, %struct.usb_action { i8 -96, i8 -120, i16 397 }, %struct.usb_action { i8 -96, i8 88, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [52 x i8] zeroinitializer }, align 32
@tas5130c_NoFlicker = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 -93, i16 1 }, %struct.usb_action { i8 -86, i8 -92, i16 64 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 64, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 5, i16 401 }, %struct.usb_action { i8 -96, i8 -96, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 4, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 -68, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 -32, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 2, i16 159 }, %struct.usb_action { i8 -96, i8 -16, i16 160 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tas5130c_NoFlickerScale = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 -93, i16 1 }, %struct.usb_action { i8 -86, i8 -92, i16 144 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 -112, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 10, i16 401 }, %struct.usb_action { i8 -96, i8 0, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 4, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 0, i16 425 }, %struct.usb_action { i8 -96, i8 0, i16 426 }, %struct.usb_action { i8 -96, i8 -68, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 -32, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 2, i16 159 }, %struct.usb_action { i8 -96, i8 -16, i16 160 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tas5130c_50HZ = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 -93, i16 1 }, %struct.usb_action { i8 -86, i8 -92, i16 99 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 99, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 -2, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 71, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 8, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -45, i16 29 }, %struct.usb_action { i8 -96, i8 -38, i16 30 }, %struct.usb_action { i8 -96, i8 -22, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 3, i16 159 }, %struct.usb_action { i8 -96, i8 76, i16 160 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tas5130c_50HZScale = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 -93, i16 1 }, %struct.usb_action { i8 -86, i8 -92, i16 119 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 119, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -48, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 125, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 8, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -16, i16 29 }, %struct.usb_action { i8 -96, i8 -12, i16 30 }, %struct.usb_action { i8 -96, i8 -8, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 3, i16 159 }, %struct.usb_action { i8 -96, i8 -64, i16 160 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tas5130c_60HZ = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 -93, i16 1 }, %struct.usb_action { i8 -86, i8 -92, i16 54 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 54, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 5, i16 401 }, %struct.usb_action { i8 -96, i8 84, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 62, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 8, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -54, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 -32, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 3, i16 159 }, %struct.usb_action { i8 -96, i8 40, i16 160 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tas5130c_60HZScale = internal constant { [23 x %struct.usb_action], [36 x i8] } { [23 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 -93, i16 1 }, %struct.usb_action { i8 -86, i8 -92, i16 119 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 119, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 9, i16 401 }, %struct.usb_action { i8 -96, i8 71, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 125, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -96, i8 8, i16 425 }, %struct.usb_action { i8 -96, i8 36, i16 426 }, %struct.usb_action { i8 -96, i8 -56, i16 29 }, %struct.usb_action { i8 -96, i8 -48, i16 30 }, %struct.usb_action { i8 -96, i8 -32, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 3, i16 159 }, %struct.usb_action { i8 -96, i8 32, i16 160 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@setsharpness.sharpness_tb = internal constant { [4 x [2 x i8]], [24 x i8] } { [4 x [2 x i8]] [[2 x i8] c"\02\03", [2 x i8] c"\04\07", [2 x i8] c"\08\0F", [2 x i8] c"\10\1E"], [24 x i8] zeroinitializer }, align 32
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@sd_start.init_tb = internal constant { [19 x [2 x ptr]], [40 x i8] } { [19 x [2 x ptr]] [[2 x ptr] [ptr @adcm2700_Initial, ptr @adcm2700_InitialScale], [2 x ptr] [ptr @cs2102_Initial, ptr @cs2102_InitialScale], [2 x ptr] [ptr @cs2102K_Initial, ptr @cs2102K_InitialScale], [2 x ptr] [ptr @gc0303_Initial, ptr @gc0303_InitialScale], [2 x ptr] [ptr @gc0305_Initial, ptr @gc0305_InitialScale], [2 x ptr] [ptr @hdcs2020_Initial, ptr @hdcs2020_InitialScale], [2 x ptr] [ptr @hv7131b_Initial, ptr @hv7131b_InitialScale], [2 x ptr] [ptr @hv7131r_Initial, ptr @hv7131r_InitialScale], [2 x ptr] [ptr @icm105a_Initial, ptr @icm105a_InitialScale], [2 x ptr] [ptr @mc501cb_Initial, ptr @mc501cb_InitialScale], [2 x ptr] [ptr @mt9v111_1_Initial, ptr @mt9v111_1_InitialScale], [2 x ptr] [ptr @mt9v111_3_Initial, ptr @mt9v111_3_InitialScale], [2 x ptr] [ptr @ov7620_Initial, ptr @ov7620_InitialScale], [2 x ptr] [ptr @ov7630c_Initial, ptr @ov7630c_InitialScale], [2 x ptr] [ptr @pas106b_Initial, ptr @pas106b_InitialScale], [2 x ptr] [ptr @pas202b_Initial, ptr @pas202b_InitialScale], [2 x ptr] [ptr @pb0330_Initial, ptr @pb0330_InitialScale], [2 x ptr] [ptr @po2030_Initial, ptr @po2030_InitialScale], [2 x ptr] [ptr @tas5130c_Initial, ptr @tas5130c_InitialScale]], [40 x i8] zeroinitializer }, align 32
@adcm2700_Initial = internal constant { [85 x %struct.usb_action], [76 x i8] } { [85 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 4, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 -45, i16 139 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -40, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -34, i16 156 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -69, i8 0, i16 1024 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 15, i16 5135 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 88, i16 278 }, %struct.usb_action { i8 -96, i8 90, i16 280 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 -45, i16 139 }, %struct.usb_action { i8 -69, i8 0, i16 1032 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -69, i8 0, i16 1024 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 15, i16 5135 }, %struct.usb_action { i8 -69, i8 -32, i16 3118 }, %struct.usb_action { i8 -69, i8 1, i16 8192 }, %struct.usb_action { i8 -69, i8 -106, i16 9216 }, %struct.usb_action { i8 -69, i8 6, i16 4102 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 95, i16 8336 }, %struct.usb_action { i8 -69, i8 1, i16 -32768 }, %struct.usb_action { i8 -69, i8 9, i16 -31744 }, %struct.usb_action { i8 -69, i8 -122, i16 2 }, %struct.usb_action { i8 -69, i8 -26, i16 1025 }, %struct.usb_action { i8 -69, i8 -122, i16 2050 }, %struct.usb_action { i8 -69, i8 -26, i16 3073 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 0 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 32 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -86, i8 -76, i16 -13001 }, %struct.usb_action { i8 -86, i8 -92, i16 4 }, %struct.usb_action { i8 -86, i8 -88, i16 7 }, %struct.usb_action { i8 -86, i8 -84, i16 4 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 0 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 4, i16 1024 }, %struct.usb_action { i8 -35, i8 0, i16 256 }, %struct.usb_action { i8 -69, i8 1, i16 1024 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -69, i8 65, i16 10243 }, %struct.usb_action { i8 -69, i8 64, i16 11267 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 16 }, %struct.usb_action zeroinitializer], [76 x i8] zeroinitializer }, align 32
@adcm2700_InitialScale = internal constant { [78 x %struct.usb_action], [72 x i8] } { [78 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 -45, i16 139 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -48, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -40, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -69, i8 0, i16 1024 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 15, i16 5135 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 88, i16 278 }, %struct.usb_action { i8 -96, i8 90, i16 280 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 -45, i16 139 }, %struct.usb_action { i8 -69, i8 0, i16 1032 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -69, i8 0, i16 1024 }, %struct.usb_action { i8 -35, i8 0, i16 80 }, %struct.usb_action { i8 -69, i8 15, i16 5135 }, %struct.usb_action { i8 -69, i8 -32, i16 3118 }, %struct.usb_action { i8 -69, i8 1, i16 8192 }, %struct.usb_action { i8 -69, i8 -106, i16 9216 }, %struct.usb_action { i8 -69, i8 6, i16 4102 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 95, i16 8336 }, %struct.usb_action { i8 -69, i8 1, i16 -32768 }, %struct.usb_action { i8 -69, i8 9, i16 -31744 }, %struct.usb_action { i8 -69, i8 -122, i16 2 }, %struct.usb_action { i8 -69, i8 -26, i16 1025 }, %struct.usb_action { i8 -69, i8 -122, i16 2050 }, %struct.usb_action { i8 -69, i8 -26, i16 3073 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 0 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 32 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 0 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -35, i8 0, i16 16 }, %struct.usb_action { i8 -69, i8 4, i16 1024 }, %struct.usb_action { i8 -35, i8 0, i16 256 }, %struct.usb_action { i8 -69, i8 1, i16 1024 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 2 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -69, i8 65, i16 10243 }, %struct.usb_action { i8 -69, i8 64, i16 11267 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 -2, i16 16 }, %struct.usb_action zeroinitializer], [72 x i8] zeroinitializer }, align 32
@cs2102_Initial = internal constant { [49 x %struct.usb_action], [60 x i8] } { [49 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 32, i16 128 }, %struct.usb_action { i8 -96, i8 33, i16 129 }, %struct.usb_action { i8 -96, i8 48, i16 131 }, %struct.usb_action { i8 -96, i8 49, i16 132 }, %struct.usb_action { i8 -96, i8 50, i16 133 }, %struct.usb_action { i8 -96, i8 35, i16 134 }, %struct.usb_action { i8 -96, i8 36, i16 135 }, %struct.usb_action { i8 -96, i8 37, i16 136 }, %struct.usb_action { i8 -96, i8 -77, i16 139 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -86, i8 2, i16 8 }, %struct.usb_action { i8 -86, i8 3, i16 0 }, %struct.usb_action { i8 -86, i8 17, i16 1 }, %struct.usb_action { i8 -86, i8 18, i16 135 }, %struct.usb_action { i8 -86, i8 19, i16 1 }, %struct.usb_action { i8 -86, i8 20, i16 231 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 34, i16 0 }, %struct.usb_action { i8 -86, i8 11, i16 4 }, %struct.usb_action { i8 -86, i8 48, i16 48 }, %struct.usb_action { i8 -86, i8 49, i16 48 }, %struct.usb_action { i8 -86, i8 50, i16 48 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 21, i16 430 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 104, i16 397 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@cs2102_InitialScale = internal constant { [49 x %struct.usb_action], [60 x i8] } { [49 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 32, i16 128 }, %struct.usb_action { i8 -96, i8 33, i16 129 }, %struct.usb_action { i8 -96, i8 48, i16 131 }, %struct.usb_action { i8 -96, i8 49, i16 132 }, %struct.usb_action { i8 -96, i8 50, i16 133 }, %struct.usb_action { i8 -96, i8 35, i16 134 }, %struct.usb_action { i8 -96, i8 36, i16 135 }, %struct.usb_action { i8 -96, i8 37, i16 136 }, %struct.usb_action { i8 -96, i8 -77, i16 139 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -86, i8 2, i16 8 }, %struct.usb_action { i8 -86, i8 3, i16 0 }, %struct.usb_action { i8 -86, i8 17, i16 0 }, %struct.usb_action { i8 -86, i8 18, i16 137 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 233 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 34, i16 0 }, %struct.usb_action { i8 -86, i8 11, i16 4 }, %struct.usb_action { i8 -86, i8 48, i16 48 }, %struct.usb_action { i8 -86, i8 49, i16 48 }, %struct.usb_action { i8 -86, i8 50, i16 48 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 16, i16 430 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 104, i16 397 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action zeroinitializer], [60 x i8] zeroinitializer }, align 32
@cs2102K_Initial = internal constant { [373 x %struct.usb_action], [364 x i8] } { [373 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 85, i16 139 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 10, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 11, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 12, i16 146 }, %struct.usb_action { i8 -96, i8 123, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 13, i16 146 }, %struct.usb_action { i8 -96, i8 -93, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 3, i16 146 }, %struct.usb_action { i8 -96, i8 -5, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 5, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 6, i16 146 }, %struct.usb_action { i8 -96, i8 3, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 9, i16 146 }, %struct.usb_action { i8 -96, i8 8, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 14, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 15, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 16, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 17, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 18, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 21, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 22, i16 146 }, %struct.usb_action { i8 -96, i8 12, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 23, i16 146 }, %struct.usb_action { i8 -96, i8 12, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 -9, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 1, i16 433 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 96, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 76, i16 280 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 19, i16 288 }, %struct.usb_action { i8 -96, i8 56, i16 289 }, %struct.usb_action { i8 -96, i8 89, i16 290 }, %struct.usb_action { i8 -96, i8 121, i16 291 }, %struct.usb_action { i8 -96, i8 -110, i16 292 }, %struct.usb_action { i8 -96, i8 -89, i16 293 }, %struct.usb_action { i8 -96, i8 -71, i16 294 }, %struct.usb_action { i8 -96, i8 -56, i16 295 }, %struct.usb_action { i8 -96, i8 -44, i16 296 }, %struct.usb_action { i8 -96, i8 -33, i16 297 }, %struct.usb_action { i8 -96, i8 -25, i16 298 }, %struct.usb_action { i8 -96, i8 -18, i16 299 }, %struct.usb_action { i8 -96, i8 -12, i16 300 }, %struct.usb_action { i8 -96, i8 -7, i16 301 }, %struct.usb_action { i8 -96, i8 -4, i16 302 }, %struct.usb_action { i8 -96, i8 -1, i16 303 }, %struct.usb_action { i8 -96, i8 38, i16 304 }, %struct.usb_action { i8 -96, i8 34, i16 305 }, %struct.usb_action { i8 -96, i8 32, i16 306 }, %struct.usb_action { i8 -96, i8 28, i16 307 }, %struct.usb_action { i8 -96, i8 22, i16 308 }, %struct.usb_action { i8 -96, i8 19, i16 309 }, %struct.usb_action { i8 -96, i8 16, i16 310 }, %struct.usb_action { i8 -96, i8 13, i16 311 }, %struct.usb_action { i8 -96, i8 11, i16 312 }, %struct.usb_action { i8 -96, i8 9, i16 313 }, %struct.usb_action { i8 -96, i8 7, i16 314 }, %struct.usb_action { i8 -96, i8 6, i16 315 }, %struct.usb_action { i8 -96, i8 5, i16 316 }, %struct.usb_action { i8 -96, i8 4, i16 317 }, %struct.usb_action { i8 -96, i8 3, i16 318 }, %struct.usb_action { i8 -96, i8 2, i16 319 }, %struct.usb_action { i8 -96, i8 88, i16 266 }, %struct.usb_action { i8 -96, i8 -12, i16 267 }, %struct.usb_action { i8 -96, i8 -12, i16 268 }, %struct.usb_action { i8 -96, i8 -12, i16 269 }, %struct.usb_action { i8 -96, i8 88, i16 270 }, %struct.usb_action { i8 -96, i8 -12, i16 271 }, %struct.usb_action { i8 -96, i8 -12, i16 272 }, %struct.usb_action { i8 -96, i8 -12, i16 273 }, %struct.usb_action { i8 -96, i8 88, i16 274 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 34, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 34, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 34, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -18, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 58, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 12, i16 425 }, %struct.usb_action { i8 -96, i8 40, i16 426 }, %struct.usb_action { i8 -96, i8 4, i16 29 }, %struct.usb_action { i8 -96, i8 15, i16 30 }, %struct.usb_action { i8 -96, i8 25, i16 31 }, %struct.usb_action { i8 -96, i8 31, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 96, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 76, i16 280 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 92, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 92, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 -106, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 -106, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 -48, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 -48, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 2, i16 8 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 10, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 10, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 68, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 68, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 126, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 126, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action zeroinitializer], [364 x i8] zeroinitializer }, align 32
@cs2102K_InitialScale = internal constant { [256 x %struct.usb_action], [256 x i8] } { [256 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 17, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 85, i16 139 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 10, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 11, i16 146 }, %struct.usb_action { i8 -96, i8 2, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 12, i16 146 }, %struct.usb_action { i8 -96, i8 124, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 13, i16 146 }, %struct.usb_action { i8 -96, i8 -93, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 3, i16 146 }, %struct.usb_action { i8 -96, i8 -5, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 5, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 6, i16 146 }, %struct.usb_action { i8 -96, i8 3, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 9, i16 146 }, %struct.usb_action { i8 -96, i8 8, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 14, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 15, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 16, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 17, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 18, i16 146 }, %struct.usb_action { i8 -96, i8 24, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 21, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 22, i16 146 }, %struct.usb_action { i8 -96, i8 12, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 23, i16 146 }, %struct.usb_action { i8 -96, i8 12, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 32, i16 135 }, %struct.usb_action { i8 -96, i8 33, i16 136 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 1, i16 433 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 96, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 76, i16 280 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 19, i16 288 }, %struct.usb_action { i8 -96, i8 56, i16 289 }, %struct.usb_action { i8 -96, i8 89, i16 290 }, %struct.usb_action { i8 -96, i8 121, i16 291 }, %struct.usb_action { i8 -96, i8 -110, i16 292 }, %struct.usb_action { i8 -96, i8 -89, i16 293 }, %struct.usb_action { i8 -96, i8 -71, i16 294 }, %struct.usb_action { i8 -96, i8 -56, i16 295 }, %struct.usb_action { i8 -96, i8 -44, i16 296 }, %struct.usb_action { i8 -96, i8 -33, i16 297 }, %struct.usb_action { i8 -96, i8 -25, i16 298 }, %struct.usb_action { i8 -96, i8 -18, i16 299 }, %struct.usb_action { i8 -96, i8 -12, i16 300 }, %struct.usb_action { i8 -96, i8 -7, i16 301 }, %struct.usb_action { i8 -96, i8 -4, i16 302 }, %struct.usb_action { i8 -96, i8 -1, i16 303 }, %struct.usb_action { i8 -96, i8 38, i16 304 }, %struct.usb_action { i8 -96, i8 34, i16 305 }, %struct.usb_action { i8 -96, i8 32, i16 306 }, %struct.usb_action { i8 -96, i8 28, i16 307 }, %struct.usb_action { i8 -96, i8 22, i16 308 }, %struct.usb_action { i8 -96, i8 19, i16 309 }, %struct.usb_action { i8 -96, i8 16, i16 310 }, %struct.usb_action { i8 -96, i8 13, i16 311 }, %struct.usb_action { i8 -96, i8 11, i16 312 }, %struct.usb_action { i8 -96, i8 9, i16 313 }, %struct.usb_action { i8 -96, i8 7, i16 314 }, %struct.usb_action { i8 -96, i8 6, i16 315 }, %struct.usb_action { i8 -96, i8 5, i16 316 }, %struct.usb_action { i8 -96, i8 4, i16 317 }, %struct.usb_action { i8 -96, i8 3, i16 318 }, %struct.usb_action { i8 -96, i8 2, i16 319 }, %struct.usb_action { i8 -96, i8 88, i16 266 }, %struct.usb_action { i8 -96, i8 -12, i16 267 }, %struct.usb_action { i8 -96, i8 -12, i16 268 }, %struct.usb_action { i8 -96, i8 -12, i16 269 }, %struct.usb_action { i8 -96, i8 88, i16 270 }, %struct.usb_action { i8 -96, i8 -12, i16 271 }, %struct.usb_action { i8 -96, i8 -12, i16 272 }, %struct.usb_action { i8 -96, i8 -12, i16 273 }, %struct.usb_action { i8 -96, i8 88, i16 274 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 34, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 34, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 1, i16 163 }, %struct.usb_action { i8 -96, i8 34, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 7, i16 401 }, %struct.usb_action { i8 -96, i8 -18, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 58, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 12, i16 425 }, %struct.usb_action { i8 -96, i8 40, i16 426 }, %struct.usb_action { i8 -96, i8 4, i16 29 }, %struct.usb_action { i8 -96, i8 15, i16 30 }, %struct.usb_action { i8 -96, i8 25, i16 31 }, %struct.usb_action { i8 -96, i8 31, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 96, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 76, i16 280 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 92, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 92, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 32, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 33, i16 146 }, %struct.usb_action { i8 -96, i8 -106, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 0, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 19, i16 146 }, %struct.usb_action { i8 -96, i8 -106, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 20, i16 146 }, %struct.usb_action { i8 -96, i8 1, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 24, i16 146 }, %struct.usb_action { i8 -96, i8 4, i16 147 }, %struct.usb_action { i8 -96, i8 0, i16 148 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action zeroinitializer], [256 x i8] zeroinitializer }, align 32
@gc0303_Initial = internal constant { [55 x %struct.usb_action], [36 x i8] } { [55 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 2, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 -104, i16 139 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 -104, i16 139 }, %struct.usb_action { i8 -86, i8 1, i16 0 }, %struct.usb_action { i8 -86, i8 26, i16 0 }, %struct.usb_action { i8 -86, i8 28, i16 23 }, %struct.usb_action { i8 -86, i8 27, i16 0 }, %struct.usb_action { i8 -96, i8 -126, i16 134 }, %struct.usb_action { i8 -96, i8 -125, i16 135 }, %struct.usb_action { i8 -96, i8 -124, i16 136 }, %struct.usb_action { i8 -86, i8 5, i16 16 }, %struct.usb_action { i8 -86, i8 10, i16 2 }, %struct.usb_action { i8 -86, i8 11, i16 0 }, %struct.usb_action { i8 -86, i8 12, i16 2 }, %struct.usb_action { i8 -86, i8 13, i16 0 }, %struct.usb_action { i8 -86, i8 14, i16 2 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -86, i8 16, i16 2 }, %struct.usb_action { i8 -86, i8 17, i16 0 }, %struct.usb_action { i8 -86, i8 22, i16 1 }, %struct.usb_action { i8 -86, i8 23, i16 232 }, %struct.usb_action { i8 -86, i8 24, i16 2 }, %struct.usb_action { i8 -86, i8 25, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 32 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 118, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 88, i16 424 }, %struct.usb_action { i8 -96, i8 97, i16 278 }, %struct.usb_action { i8 -96, i8 101, i16 280 }, %struct.usb_action { i8 -86, i8 27, i16 0 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gc0303_InitialScale = internal constant { [54 x %struct.usb_action], [40 x i8] } { [54 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 2, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 -104, i16 139 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 -104, i16 139 }, %struct.usb_action { i8 -86, i8 1, i16 0 }, %struct.usb_action { i8 -86, i8 26, i16 0 }, %struct.usb_action { i8 -86, i8 28, i16 23 }, %struct.usb_action { i8 -86, i8 27, i16 0 }, %struct.usb_action { i8 -96, i8 -126, i16 134 }, %struct.usb_action { i8 -96, i8 -125, i16 135 }, %struct.usb_action { i8 -96, i8 -124, i16 136 }, %struct.usb_action { i8 -86, i8 5, i16 16 }, %struct.usb_action { i8 -86, i8 10, i16 1 }, %struct.usb_action { i8 -86, i8 11, i16 0 }, %struct.usb_action { i8 -86, i8 12, i16 1 }, %struct.usb_action { i8 -86, i8 13, i16 0 }, %struct.usb_action { i8 -86, i8 14, i16 1 }, %struct.usb_action { i8 -86, i8 15, i16 0 }, %struct.usb_action { i8 -86, i8 16, i16 1 }, %struct.usb_action { i8 -86, i8 17, i16 0 }, %struct.usb_action { i8 -86, i8 22, i16 1 }, %struct.usb_action { i8 -86, i8 23, i16 232 }, %struct.usb_action { i8 -86, i8 24, i16 2 }, %struct.usb_action { i8 -86, i8 25, i16 136 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 118, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 88, i16 424 }, %struct.usb_action { i8 -96, i8 97, i16 278 }, %struct.usb_action { i8 -96, i8 101, i16 280 }, %struct.usb_action { i8 -86, i8 27, i16 0 }, %struct.usb_action zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gc0305_Initial = internal constant { [62 x %struct.usb_action], [40 x i8] } { [62 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 4, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -96, i8 -104, i16 139 }, %struct.usb_action { i8 -86, i8 19, i16 2 }, %struct.usb_action { i8 -86, i8 21, i16 3 }, %struct.usb_action { i8 -86, i8 1, i16 0 }, %struct.usb_action { i8 -86, i8 2, i16 0 }, %struct.usb_action { i8 -86, i8 26, i16 0 }, %struct.usb_action { i8 -86, i8 28, i16 23 }, %struct.usb_action { i8 -86, i8 29, i16 128 }, %struct.usb_action { i8 -86, i8 31, i16 8 }, %struct.usb_action { i8 -86, i8 33, i16 18 }, %struct.usb_action { i8 -96, i8 -126, i16 134 }, %struct.usb_action { i8 -96, i8 -125, i16 135 }, %struct.usb_action { i8 -96, i8 -124, i16 136 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 10, i16 0 }, %struct.usb_action { i8 -86, i8 11, i16 176 }, %struct.usb_action { i8 -86, i8 12, i16 0 }, %struct.usb_action { i8 -86, i8 13, i16 176 }, %struct.usb_action { i8 -86, i8 14, i16 0 }, %struct.usb_action { i8 -86, i8 15, i16 176 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 17, i16 176 }, %struct.usb_action { i8 -86, i8 22, i16 1 }, %struct.usb_action { i8 -86, i8 23, i16 230 }, %struct.usb_action { i8 -86, i8 24, i16 2 }, %struct.usb_action { i8 -86, i8 25, i16 134 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 27, i16 32 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 118, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 -123, i16 397 }, %struct.usb_action { i8 -96, i8 0, i16 286 }, %struct.usb_action { i8 -96, i8 82, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 82, i16 280 }, %struct.usb_action { i8 -96, i8 3, i16 275 }, %struct.usb_action zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gc0305_InitialScale = internal constant { [61 x %struct.usb_action], [44 x i8] } { [61 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 -104, i16 139 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 1 }, %struct.usb_action { i8 -86, i8 1, i16 0 }, %struct.usb_action { i8 -86, i8 2, i16 0 }, %struct.usb_action { i8 -86, i8 26, i16 0 }, %struct.usb_action { i8 -86, i8 28, i16 23 }, %struct.usb_action { i8 -86, i8 29, i16 128 }, %struct.usb_action { i8 -86, i8 31, i16 8 }, %struct.usb_action { i8 -86, i8 33, i16 18 }, %struct.usb_action { i8 -96, i8 -126, i16 134 }, %struct.usb_action { i8 -96, i8 -125, i16 135 }, %struct.usb_action { i8 -96, i8 -124, i16 136 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 10, i16 0 }, %struct.usb_action { i8 -86, i8 11, i16 176 }, %struct.usb_action { i8 -86, i8 12, i16 0 }, %struct.usb_action { i8 -86, i8 13, i16 176 }, %struct.usb_action { i8 -86, i8 14, i16 0 }, %struct.usb_action { i8 -86, i8 15, i16 176 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 17, i16 176 }, %struct.usb_action { i8 -86, i8 22, i16 1 }, %struct.usb_action { i8 -86, i8 23, i16 232 }, %struct.usb_action { i8 -86, i8 24, i16 2 }, %struct.usb_action { i8 -86, i8 25, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 0 }, %struct.usb_action { i8 -86, i8 27, i16 32 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 118, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 286 }, %struct.usb_action { i8 -96, i8 82, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 82, i16 280 }, %struct.usb_action { i8 -96, i8 3, i16 275 }, %struct.usb_action zeroinitializer], [44 x i8] zeroinitializer }, align 32
@hdcs2020_Initial = internal constant { [125 x %struct.usb_action], [108 x i8] } { [125 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -86, i8 28, i16 0 }, %struct.usb_action { i8 -86, i8 10, i16 1 }, %struct.usb_action { i8 -86, i8 11, i16 6 }, %struct.usb_action { i8 -86, i8 12, i16 122 }, %struct.usb_action { i8 -86, i8 13, i16 167 }, %struct.usb_action { i8 -86, i8 3, i16 251 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 6, i16 3 }, %struct.usb_action { i8 -86, i8 9, i16 8 }, %struct.usb_action { i8 -86, i8 15, i16 24 }, %struct.usb_action { i8 -86, i8 16, i16 24 }, %struct.usb_action { i8 -86, i8 17, i16 24 }, %struct.usb_action { i8 -86, i8 18, i16 24 }, %struct.usb_action { i8 -86, i8 21, i16 78 }, %struct.usb_action { i8 -86, i8 28, i16 4 }, %struct.usb_action { i8 -96, i8 -9, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -95, i8 1, i16 2 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -95, i8 1, i16 456 }, %struct.usb_action { i8 -95, i8 1, i16 457 }, %struct.usb_action { i8 -95, i8 1, i16 458 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 19, i16 288 }, %struct.usb_action { i8 -96, i8 56, i16 289 }, %struct.usb_action { i8 -96, i8 89, i16 290 }, %struct.usb_action { i8 -96, i8 121, i16 291 }, %struct.usb_action { i8 -96, i8 -110, i16 292 }, %struct.usb_action { i8 -96, i8 -89, i16 293 }, %struct.usb_action { i8 -96, i8 -71, i16 294 }, %struct.usb_action { i8 -96, i8 -56, i16 295 }, %struct.usb_action { i8 -96, i8 -44, i16 296 }, %struct.usb_action { i8 -96, i8 -33, i16 297 }, %struct.usb_action { i8 -96, i8 -25, i16 298 }, %struct.usb_action { i8 -96, i8 -18, i16 299 }, %struct.usb_action { i8 -96, i8 -12, i16 300 }, %struct.usb_action { i8 -96, i8 -7, i16 301 }, %struct.usb_action { i8 -96, i8 -4, i16 302 }, %struct.usb_action { i8 -96, i8 -1, i16 303 }, %struct.usb_action { i8 -96, i8 38, i16 304 }, %struct.usb_action { i8 -96, i8 34, i16 305 }, %struct.usb_action { i8 -96, i8 32, i16 306 }, %struct.usb_action { i8 -96, i8 28, i16 307 }, %struct.usb_action { i8 -96, i8 22, i16 308 }, %struct.usb_action { i8 -96, i8 19, i16 309 }, %struct.usb_action { i8 -96, i8 16, i16 310 }, %struct.usb_action { i8 -96, i8 13, i16 311 }, %struct.usb_action { i8 -96, i8 11, i16 312 }, %struct.usb_action { i8 -96, i8 9, i16 313 }, %struct.usb_action { i8 -96, i8 7, i16 314 }, %struct.usb_action { i8 -96, i8 6, i16 315 }, %struct.usb_action { i8 -96, i8 5, i16 316 }, %struct.usb_action { i8 -96, i8 4, i16 317 }, %struct.usb_action { i8 -96, i8 3, i16 318 }, %struct.usb_action { i8 -96, i8 2, i16 319 }, %struct.usb_action { i8 -96, i8 102, i16 266 }, %struct.usb_action { i8 -96, i8 -19, i16 267 }, %struct.usb_action { i8 -96, i8 -19, i16 268 }, %struct.usb_action { i8 -96, i8 -19, i16 269 }, %struct.usb_action { i8 -96, i8 102, i16 270 }, %struct.usb_action { i8 -96, i8 -19, i16 271 }, %struct.usb_action { i8 -96, i8 -19, i16 272 }, %struct.usb_action { i8 -96, i8 -19, i16 273 }, %struct.usb_action { i8 -96, i8 102, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 19, i16 49 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 14, i16 4 }, %struct.usb_action { i8 -86, i8 25, i16 205 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 98, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 61, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 12, i16 425 }, %struct.usb_action { i8 -96, i8 40, i16 426 }, %struct.usb_action { i8 -96, i8 4, i16 29 }, %struct.usb_action { i8 -96, i8 24, i16 30 }, %struct.usb_action { i8 -96, i8 44, i16 31 }, %struct.usb_action { i8 -96, i8 65, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action zeroinitializer], [108 x i8] zeroinitializer }, align 32
@hdcs2020_InitialScale = internal constant { [125 x %struct.usb_action], [108 x i8] } { [125 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 17, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -86, i8 28, i16 0 }, %struct.usb_action { i8 -86, i8 10, i16 1 }, %struct.usb_action { i8 -86, i8 11, i16 6 }, %struct.usb_action { i8 -86, i8 12, i16 123 }, %struct.usb_action { i8 -86, i8 13, i16 167 }, %struct.usb_action { i8 -86, i8 3, i16 251 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 6, i16 3 }, %struct.usb_action { i8 -86, i8 9, i16 8 }, %struct.usb_action { i8 -86, i8 15, i16 24 }, %struct.usb_action { i8 -86, i8 16, i16 24 }, %struct.usb_action { i8 -86, i8 17, i16 24 }, %struct.usb_action { i8 -86, i8 18, i16 24 }, %struct.usb_action { i8 -86, i8 21, i16 78 }, %struct.usb_action { i8 -86, i8 28, i16 4 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -95, i8 1, i16 2 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -95, i8 1, i16 456 }, %struct.usb_action { i8 -95, i8 1, i16 457 }, %struct.usb_action { i8 -95, i8 1, i16 458 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 19, i16 288 }, %struct.usb_action { i8 -96, i8 56, i16 289 }, %struct.usb_action { i8 -96, i8 89, i16 290 }, %struct.usb_action { i8 -96, i8 121, i16 291 }, %struct.usb_action { i8 -96, i8 -110, i16 292 }, %struct.usb_action { i8 -96, i8 -89, i16 293 }, %struct.usb_action { i8 -96, i8 -71, i16 294 }, %struct.usb_action { i8 -96, i8 -56, i16 295 }, %struct.usb_action { i8 -96, i8 -44, i16 296 }, %struct.usb_action { i8 -96, i8 -33, i16 297 }, %struct.usb_action { i8 -96, i8 -25, i16 298 }, %struct.usb_action { i8 -96, i8 -18, i16 299 }, %struct.usb_action { i8 -96, i8 -12, i16 300 }, %struct.usb_action { i8 -96, i8 -7, i16 301 }, %struct.usb_action { i8 -96, i8 -4, i16 302 }, %struct.usb_action { i8 -96, i8 -1, i16 303 }, %struct.usb_action { i8 -96, i8 38, i16 304 }, %struct.usb_action { i8 -96, i8 34, i16 305 }, %struct.usb_action { i8 -96, i8 32, i16 306 }, %struct.usb_action { i8 -96, i8 28, i16 307 }, %struct.usb_action { i8 -96, i8 22, i16 308 }, %struct.usb_action { i8 -96, i8 19, i16 309 }, %struct.usb_action { i8 -96, i8 16, i16 310 }, %struct.usb_action { i8 -96, i8 13, i16 311 }, %struct.usb_action { i8 -96, i8 11, i16 312 }, %struct.usb_action { i8 -96, i8 9, i16 313 }, %struct.usb_action { i8 -96, i8 7, i16 314 }, %struct.usb_action { i8 -96, i8 6, i16 315 }, %struct.usb_action { i8 -96, i8 5, i16 316 }, %struct.usb_action { i8 -96, i8 4, i16 317 }, %struct.usb_action { i8 -96, i8 3, i16 318 }, %struct.usb_action { i8 -96, i8 2, i16 319 }, %struct.usb_action { i8 -96, i8 102, i16 266 }, %struct.usb_action { i8 -96, i8 -19, i16 267 }, %struct.usb_action { i8 -96, i8 -19, i16 268 }, %struct.usb_action { i8 -96, i8 -19, i16 269 }, %struct.usb_action { i8 -96, i8 102, i16 270 }, %struct.usb_action { i8 -96, i8 -19, i16 271 }, %struct.usb_action { i8 -96, i8 -19, i16 272 }, %struct.usb_action { i8 -96, i8 -19, i16 273 }, %struct.usb_action { i8 -96, i8 102, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 19, i16 49 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 14, i16 4 }, %struct.usb_action { i8 -86, i8 25, i16 205 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 2, i16 401 }, %struct.usb_action { i8 -96, i8 98, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 61, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 12, i16 425 }, %struct.usb_action { i8 -96, i8 40, i16 426 }, %struct.usb_action { i8 -96, i8 4, i16 29 }, %struct.usb_action { i8 -96, i8 24, i16 30 }, %struct.usb_action { i8 -96, i8 44, i16 31 }, %struct.usb_action { i8 -96, i8 65, i16 32 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action zeroinitializer], [108 x i8] zeroinitializer }, align 32
@hv7131b_Initial = internal constant { [44 x %struct.usb_action], [48 x i8] } { [44 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -86, i8 48, i16 45 }, %struct.usb_action { i8 -86, i8 1, i16 5 }, %struct.usb_action { i8 -86, i8 17, i16 1 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 21, i16 230 }, %struct.usb_action { i8 -86, i8 22, i16 2 }, %struct.usb_action { i8 -86, i8 23, i16 134 }, %struct.usb_action { i8 -86, i8 49, i16 56 }, %struct.usb_action { i8 -86, i8 50, i16 56 }, %struct.usb_action { i8 -86, i8 51, i16 56 }, %struct.usb_action { i8 -86, i8 91, i16 1 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 -64, i16 411 }, %struct.usb_action { i8 -96, i8 -96, i16 412 }, %struct.usb_action { i8 -96, i8 2, i16 392 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -86, i8 2, i16 144 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hv7131b_InitialScale = internal constant { [44 x %struct.usb_action], [48 x i8] } { [44 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -86, i8 48, i16 45 }, %struct.usb_action { i8 -86, i8 1, i16 5 }, %struct.usb_action { i8 -86, i8 17, i16 0 }, %struct.usb_action { i8 -86, i8 19, i16 1 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 21, i16 232 }, %struct.usb_action { i8 -86, i8 22, i16 2 }, %struct.usb_action { i8 -86, i8 23, i16 134 }, %struct.usb_action { i8 -86, i8 49, i16 56 }, %struct.usb_action { i8 -86, i8 50, i16 56 }, %struct.usb_action { i8 -86, i8 51, i16 56 }, %struct.usb_action { i8 -86, i8 91, i16 1 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 104, i16 397 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 -64, i16 411 }, %struct.usb_action { i8 -96, i8 -96, i16 412 }, %struct.usb_action { i8 -96, i8 2, i16 392 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -86, i8 2, i16 144 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hv7131r_Initial = internal constant { [44 x %struct.usb_action], [48 x i8] } { [44 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 12 }, %struct.usb_action { i8 -86, i8 17, i16 0 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 21, i16 230 }, %struct.usb_action { i8 -86, i8 22, i16 2 }, %struct.usb_action { i8 -86, i8 23, i16 134 }, %struct.usb_action { i8 -86, i8 48, i16 11 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action { i8 -96, i8 80, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 -64, i16 411 }, %struct.usb_action { i8 -96, i8 -96, i16 412 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hv7131r_InitialScale = internal constant { [44 x %struct.usb_action], [48 x i8] } { [44 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 12 }, %struct.usb_action { i8 -86, i8 17, i16 0 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 1 }, %struct.usb_action { i8 -86, i8 21, i16 232 }, %struct.usb_action { i8 -86, i8 22, i16 2 }, %struct.usb_action { i8 -86, i8 23, i16 136 }, %struct.usb_action { i8 -86, i8 48, i16 11 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action { i8 -96, i8 80, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 -64, i16 411 }, %struct.usb_action { i8 -96, i8 -96, i16 412 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@icm105a_Initial = internal constant { [175 x %struct.usb_action], [164 x i8] } { [175 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 12, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 -95, i16 139 }, %struct.usb_action { i8 -96, i8 0, i16 151 }, %struct.usb_action { i8 -96, i8 2, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 153 }, %struct.usb_action { i8 -96, i8 2, i16 154 }, %struct.usb_action { i8 -96, i8 2, i16 282 }, %struct.usb_action { i8 -96, i8 2, i16 284 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -86, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 3, i16 0 }, %struct.usb_action { i8 -86, i8 4, i16 1 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 1 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 1 }, %struct.usb_action { i8 -86, i8 4, i16 17 }, %struct.usb_action { i8 -86, i8 5, i16 160 }, %struct.usb_action { i8 -86, i8 6, i16 1 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 2 }, %struct.usb_action { i8 -86, i8 4, i16 19 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 1 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 4, i16 21 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 4 }, %struct.usb_action { i8 -86, i8 4, i16 23 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 13 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 5 }, %struct.usb_action { i8 -96, i8 4, i16 146 }, %struct.usb_action { i8 -96, i8 25, i16 147 }, %struct.usb_action { i8 -96, i8 1, i16 144 }, %struct.usb_action { i8 -95, i8 1, i16 145 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 6 }, %struct.usb_action { i8 -86, i8 4, i16 23 }, %struct.usb_action { i8 -86, i8 5, i16 38 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 7 }, %struct.usb_action { i8 -86, i8 4, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 34 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 8 }, %struct.usb_action { i8 -86, i8 4, i16 33 }, %struct.usb_action { i8 -86, i8 5, i16 170 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 9 }, %struct.usb_action { i8 -86, i8 4, i16 35 }, %struct.usb_action { i8 -86, i8 5, i16 170 }, %struct.usb_action { i8 -86, i8 6, i16 13 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 10 }, %struct.usb_action { i8 -86, i8 4, i16 37 }, %struct.usb_action { i8 -86, i8 5, i16 170 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 11 }, %struct.usb_action { i8 -86, i8 4, i16 236 }, %struct.usb_action { i8 -86, i8 5, i16 46 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 12 }, %struct.usb_action { i8 -86, i8 4, i16 250 }, %struct.usb_action { i8 -86, i8 5, i16 42 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 7, i16 13 }, %struct.usb_action { i8 -86, i8 1, i16 5 }, %struct.usb_action { i8 -86, i8 -108, i16 2 }, %struct.usb_action { i8 -86, i8 -112, i16 0 }, %struct.usb_action { i8 -86, i8 -111, i16 16 }, %struct.usb_action { i8 -86, i8 16, i16 100 }, %struct.usb_action { i8 -86, i8 -101, i16 240 }, %struct.usb_action { i8 -86, i8 -100, i16 2 }, %struct.usb_action { i8 -86, i8 20, i16 26 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -86, i8 -88, i16 128 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action { i8 -95, i8 1, i16 2 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -95, i8 1, i16 456 }, %struct.usb_action { i8 -95, i8 1, i16 457 }, %struct.usb_action { i8 -95, i8 1, i16 458 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 82, i16 266 }, %struct.usb_action { i8 -96, i8 -9, i16 267 }, %struct.usb_action { i8 -96, i8 -9, i16 268 }, %struct.usb_action { i8 -96, i8 -9, i16 269 }, %struct.usb_action { i8 -96, i8 82, i16 270 }, %struct.usb_action { i8 -96, i8 -9, i16 271 }, %struct.usb_action { i8 -96, i8 -9, i16 272 }, %struct.usb_action { i8 -96, i8 -9, i16 273 }, %struct.usb_action { i8 -96, i8 82, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 32 }, %struct.usb_action { i8 -86, i8 14, i16 14 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 13 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 13, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 26, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 75, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 18, i16 426 }, %struct.usb_action { i8 -96, i8 -56, i16 29 }, %struct.usb_action { i8 -96, i8 -40, i16 30 }, %struct.usb_action { i8 -96, i8 -22, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action zeroinitializer], [164 x i8] zeroinitializer }, align 32
@icm105a_InitialScale = internal constant { [173 x %struct.usb_action], [172 x i8] } { [173 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 12, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 -95, i16 139 }, %struct.usb_action { i8 -96, i8 0, i16 151 }, %struct.usb_action { i8 -96, i8 1, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 153 }, %struct.usb_action { i8 -96, i8 1, i16 154 }, %struct.usb_action { i8 -96, i8 1, i16 282 }, %struct.usb_action { i8 -96, i8 1, i16 284 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -86, i8 1, i16 16 }, %struct.usb_action { i8 -86, i8 3, i16 0 }, %struct.usb_action { i8 -86, i8 4, i16 1 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 1 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 1 }, %struct.usb_action { i8 -86, i8 4, i16 17 }, %struct.usb_action { i8 -86, i8 5, i16 160 }, %struct.usb_action { i8 -86, i8 6, i16 1 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 2 }, %struct.usb_action { i8 -86, i8 4, i16 19 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 1 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 4, i16 21 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 4 }, %struct.usb_action { i8 -86, i8 4, i16 23 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 13 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 5 }, %struct.usb_action { i8 -86, i8 4, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 6 }, %struct.usb_action { i8 -86, i8 4, i16 23 }, %struct.usb_action { i8 -86, i8 5, i16 38 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 7 }, %struct.usb_action { i8 -86, i8 4, i16 25 }, %struct.usb_action { i8 -86, i8 5, i16 34 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 8 }, %struct.usb_action { i8 -86, i8 4, i16 33 }, %struct.usb_action { i8 -86, i8 5, i16 170 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 9 }, %struct.usb_action { i8 -86, i8 4, i16 35 }, %struct.usb_action { i8 -86, i8 5, i16 170 }, %struct.usb_action { i8 -86, i8 6, i16 13 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 10 }, %struct.usb_action { i8 -86, i8 4, i16 37 }, %struct.usb_action { i8 -86, i8 5, i16 170 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 11 }, %struct.usb_action { i8 -86, i8 4, i16 236 }, %struct.usb_action { i8 -86, i8 5, i16 46 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 3, i16 12 }, %struct.usb_action { i8 -86, i8 4, i16 250 }, %struct.usb_action { i8 -86, i8 5, i16 42 }, %struct.usb_action { i8 -86, i8 6, i16 5 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 7, i16 13 }, %struct.usb_action { i8 -86, i8 1, i16 5 }, %struct.usb_action { i8 -86, i8 -108, i16 2 }, %struct.usb_action { i8 -86, i8 -112, i16 0 }, %struct.usb_action { i8 -86, i8 -111, i16 31 }, %struct.usb_action { i8 -86, i8 16, i16 100 }, %struct.usb_action { i8 -86, i8 -101, i16 240 }, %struct.usb_action { i8 -86, i8 -100, i16 2 }, %struct.usb_action { i8 -86, i8 20, i16 26 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -86, i8 -88, i16 192 }, %struct.usb_action { i8 -95, i8 1, i16 2 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -95, i8 1, i16 456 }, %struct.usb_action { i8 -95, i8 1, i16 457 }, %struct.usb_action { i8 -95, i8 1, i16 458 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 82, i16 266 }, %struct.usb_action { i8 -96, i8 -9, i16 267 }, %struct.usb_action { i8 -96, i8 -9, i16 268 }, %struct.usb_action { i8 -96, i8 -9, i16 269 }, %struct.usb_action { i8 -96, i8 82, i16 270 }, %struct.usb_action { i8 -96, i8 -9, i16 271 }, %struct.usb_action { i8 -96, i8 -9, i16 272 }, %struct.usb_action { i8 -96, i8 -9, i16 273 }, %struct.usb_action { i8 -96, i8 82, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -86, i8 13, i16 3 }, %struct.usb_action { i8 -86, i8 12, i16 140 }, %struct.usb_action { i8 -86, i8 14, i16 149 }, %struct.usb_action { i8 -86, i8 15, i16 2 }, %struct.usb_action { i8 -86, i8 28, i16 148 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 128 }, %struct.usb_action { i8 -86, i8 34, i16 128 }, %struct.usb_action { i8 -86, i8 36, i16 128 }, %struct.usb_action { i8 -86, i8 38, i16 128 }, %struct.usb_action { i8 -86, i8 0, i16 132 }, %struct.usb_action { i8 -96, i8 2, i16 163 }, %struct.usb_action { i8 -96, i8 -108, i16 164 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 4, i16 401 }, %struct.usb_action { i8 -96, i8 32, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -124, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 18, i16 426 }, %struct.usb_action { i8 -96, i8 -29, i16 29 }, %struct.usb_action { i8 -96, i8 -20, i16 30 }, %struct.usb_action { i8 -96, i8 -11, i16 31 }, %struct.usb_action { i8 -96, i8 -1, i16 32 }, %struct.usb_action { i8 -96, i8 0, i16 423 }, %struct.usb_action { i8 -96, i8 -64, i16 424 }, %struct.usb_action { i8 -96, i8 -64, i16 285 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action zeroinitializer], [172 x i8] zeroinitializer }, align 32
@mc501cb_Initial = internal constant { [116 x %struct.usb_action], [112 x i8] } { [116 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -40, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -34, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -96, i8 51, i16 134 }, %struct.usb_action { i8 -96, i8 52, i16 135 }, %struct.usb_action { i8 -96, i8 53, i16 136 }, %struct.usb_action { i8 -96, i8 -80, i16 139 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 1, i16 3 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 3, i16 0 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 17, i16 128 }, %struct.usb_action { i8 -86, i8 18, i16 0 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 0 }, %struct.usb_action { i8 -86, i8 22, i16 0 }, %struct.usb_action { i8 -86, i8 23, i16 1 }, %struct.usb_action { i8 -86, i8 24, i16 222 }, %struct.usb_action { i8 -86, i8 25, i16 2 }, %struct.usb_action { i8 -86, i8 26, i16 134 }, %struct.usb_action { i8 -86, i8 32, i16 168 }, %struct.usb_action { i8 -86, i8 34, i16 0 }, %struct.usb_action { i8 -86, i8 35, i16 0 }, %struct.usb_action { i8 -86, i8 36, i16 0 }, %struct.usb_action { i8 -86, i8 64, i16 51 }, %struct.usb_action { i8 -86, i8 65, i16 119 }, %struct.usb_action { i8 -86, i8 66, i16 83 }, %struct.usb_action { i8 -86, i8 67, i16 176 }, %struct.usb_action { i8 -86, i8 75, i16 1 }, %struct.usb_action { i8 -86, i8 114, i16 32 }, %struct.usb_action { i8 -86, i8 115, i16 0 }, %struct.usb_action { i8 -86, i8 -128, i16 0 }, %struct.usb_action { i8 -86, i8 -123, i16 80 }, %struct.usb_action { i8 -86, i8 -111, i16 112 }, %struct.usb_action { i8 -86, i8 -110, i16 114 }, %struct.usb_action { i8 -86, i8 3, i16 1 }, %struct.usb_action { i8 -86, i8 16, i16 160 }, %struct.usb_action { i8 -86, i8 17, i16 1 }, %struct.usb_action { i8 -86, i8 48, i16 0 }, %struct.usb_action { i8 -86, i8 96, i16 0 }, %struct.usb_action { i8 -86, i8 -96, i16 26 }, %struct.usb_action { i8 -86, i8 -95, i16 0 }, %struct.usb_action { i8 -86, i8 -94, i16 63 }, %struct.usb_action { i8 -86, i8 -93, i16 40 }, %struct.usb_action { i8 -86, i8 -92, i16 16 }, %struct.usb_action { i8 -86, i8 -91, i16 32 }, %struct.usb_action { i8 -86, i8 -79, i16 68 }, %struct.usb_action { i8 -86, i8 -48, i16 1 }, %struct.usb_action { i8 -86, i8 -47, i16 133 }, %struct.usb_action { i8 -86, i8 -46, i16 128 }, %struct.usb_action { i8 -86, i8 -45, i16 128 }, %struct.usb_action { i8 -86, i8 -44, i16 128 }, %struct.usb_action { i8 -86, i8 -43, i16 128 }, %struct.usb_action { i8 -86, i8 -64, i16 195 }, %struct.usb_action { i8 -86, i8 -62, i16 68 }, %struct.usb_action { i8 -86, i8 -60, i16 64 }, %struct.usb_action { i8 -86, i8 -59, i16 32 }, %struct.usb_action { i8 -86, i8 -58, i16 8 }, %struct.usb_action { i8 -86, i8 3, i16 4 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 64, i16 48 }, %struct.usb_action { i8 -86, i8 65, i16 32 }, %struct.usb_action { i8 -86, i8 66, i16 45 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 28, i16 80 }, %struct.usb_action { i8 -86, i8 17, i16 129 }, %struct.usb_action { i8 -86, i8 59, i16 29 }, %struct.usb_action { i8 -86, i8 60, i16 76 }, %struct.usb_action { i8 -86, i8 61, i16 24 }, %struct.usb_action { i8 -86, i8 62, i16 106 }, %struct.usb_action { i8 -86, i8 1, i16 0 }, %struct.usb_action { i8 -86, i8 82, i16 255 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -86, i8 3, i16 2 }, %struct.usb_action { i8 -86, i8 81, i16 39 }, %struct.usb_action { i8 -86, i8 82, i16 32 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 80, i16 16 }, %struct.usb_action { i8 -86, i8 81, i16 16 }, %struct.usb_action { i8 -86, i8 84, i16 16 }, %struct.usb_action { i8 -86, i8 85, i16 16 }, %struct.usb_action { i8 -96, i8 -16, i16 409 }, %struct.usb_action { i8 -96, i8 -128, i16 410 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 16, i16 252 }, %struct.usb_action { i8 -86, i8 54, i16 29 }, %struct.usb_action { i8 -86, i8 55, i16 76 }, %struct.usb_action { i8 -86, i8 59, i16 29 }, %struct.usb_action zeroinitializer], [112 x i8] zeroinitializer }, align 32
@mc501cb_InitialScale = internal constant { [111 x %struct.usb_action], [100 x i8] } { [111 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -48, i16 6 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -40, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 51, i16 134 }, %struct.usb_action { i8 -96, i8 52, i16 135 }, %struct.usb_action { i8 -96, i8 53, i16 136 }, %struct.usb_action { i8 -96, i8 -80, i16 139 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 1, i16 3 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 3, i16 0 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 17, i16 128 }, %struct.usb_action { i8 -86, i8 18, i16 0 }, %struct.usb_action { i8 -86, i8 19, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 0 }, %struct.usb_action { i8 -86, i8 22, i16 0 }, %struct.usb_action { i8 -86, i8 23, i16 1 }, %struct.usb_action { i8 -86, i8 24, i16 216 }, %struct.usb_action { i8 -86, i8 25, i16 2 }, %struct.usb_action { i8 -86, i8 26, i16 136 }, %struct.usb_action { i8 -86, i8 32, i16 168 }, %struct.usb_action { i8 -86, i8 34, i16 0 }, %struct.usb_action { i8 -86, i8 35, i16 0 }, %struct.usb_action { i8 -86, i8 36, i16 0 }, %struct.usb_action { i8 -86, i8 64, i16 51 }, %struct.usb_action { i8 -86, i8 65, i16 119 }, %struct.usb_action { i8 -86, i8 66, i16 83 }, %struct.usb_action { i8 -86, i8 67, i16 176 }, %struct.usb_action { i8 -86, i8 75, i16 1 }, %struct.usb_action { i8 -86, i8 114, i16 32 }, %struct.usb_action { i8 -86, i8 115, i16 0 }, %struct.usb_action { i8 -86, i8 -128, i16 0 }, %struct.usb_action { i8 -86, i8 -123, i16 80 }, %struct.usb_action { i8 -86, i8 -111, i16 112 }, %struct.usb_action { i8 -86, i8 -110, i16 114 }, %struct.usb_action { i8 -86, i8 3, i16 1 }, %struct.usb_action { i8 -86, i8 16, i16 160 }, %struct.usb_action { i8 -86, i8 17, i16 1 }, %struct.usb_action { i8 -86, i8 48, i16 0 }, %struct.usb_action { i8 -86, i8 96, i16 0 }, %struct.usb_action { i8 -86, i8 -96, i16 26 }, %struct.usb_action { i8 -86, i8 -95, i16 0 }, %struct.usb_action { i8 -86, i8 -94, i16 63 }, %struct.usb_action { i8 -86, i8 -93, i16 40 }, %struct.usb_action { i8 -86, i8 -92, i16 16 }, %struct.usb_action { i8 -86, i8 -91, i16 32 }, %struct.usb_action { i8 -86, i8 -79, i16 68 }, %struct.usb_action { i8 -86, i8 -48, i16 1 }, %struct.usb_action { i8 -86, i8 -47, i16 133 }, %struct.usb_action { i8 -86, i8 -46, i16 128 }, %struct.usb_action { i8 -86, i8 -45, i16 128 }, %struct.usb_action { i8 -86, i8 -44, i16 128 }, %struct.usb_action { i8 -86, i8 -43, i16 128 }, %struct.usb_action { i8 -86, i8 -64, i16 195 }, %struct.usb_action { i8 -86, i8 -62, i16 68 }, %struct.usb_action { i8 -86, i8 -60, i16 64 }, %struct.usb_action { i8 -86, i8 -59, i16 32 }, %struct.usb_action { i8 -86, i8 -58, i16 8 }, %struct.usb_action { i8 -86, i8 3, i16 4 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 64, i16 48 }, %struct.usb_action { i8 -86, i8 65, i16 32 }, %struct.usb_action { i8 -86, i8 66, i16 45 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 28, i16 80 }, %struct.usb_action { i8 -86, i8 17, i16 129 }, %struct.usb_action { i8 -86, i8 59, i16 58 }, %struct.usb_action { i8 -86, i8 60, i16 152 }, %struct.usb_action { i8 -86, i8 61, i16 48 }, %struct.usb_action { i8 -86, i8 62, i16 212 }, %struct.usb_action { i8 -86, i8 1, i16 0 }, %struct.usb_action { i8 -86, i8 82, i16 255 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -86, i8 3, i16 2 }, %struct.usb_action { i8 -86, i8 81, i16 78 }, %struct.usb_action { i8 -86, i8 82, i16 65 }, %struct.usb_action { i8 -86, i8 3, i16 3 }, %struct.usb_action { i8 -86, i8 80, i16 16 }, %struct.usb_action { i8 -86, i8 81, i16 16 }, %struct.usb_action { i8 -86, i8 84, i16 16 }, %struct.usb_action { i8 -86, i8 85, i16 16 }, %struct.usb_action { i8 -96, i8 -16, i16 409 }, %struct.usb_action { i8 -96, i8 -128, i16 410 }, %struct.usb_action zeroinitializer], [100 x i8] zeroinitializer }, align 32
@mt9v111_1_Initial = internal constant { [52 x %struct.usb_action], [48 x i8] } { [52 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 6, i16 0 }, %struct.usb_action { i8 -86, i8 8, i16 1155 }, %struct.usb_action { i8 -86, i8 1, i16 4 }, %struct.usb_action { i8 -86, i8 8, i16 6 }, %struct.usb_action { i8 -86, i8 2, i16 17 }, %struct.usb_action { i8 -86, i8 3, i16 485 }, %struct.usb_action { i8 -86, i8 4, i16 645 }, %struct.usb_action { i8 -86, i8 7, i16 12290 }, %struct.usb_action { i8 -86, i8 32, i16 20736 }, %struct.usb_action { i8 -86, i8 53, i16 20607 }, %struct.usb_action { i8 -86, i8 48, i16 5 }, %struct.usb_action { i8 -86, i8 49, i16 0 }, %struct.usb_action { i8 -86, i8 88, i16 120 }, %struct.usb_action { i8 -86, i8 98, i16 1041 }, %struct.usb_action { i8 -86, i8 43, i16 127 }, %struct.usb_action { i8 -86, i8 44, i16 127 }, %struct.usb_action { i8 -86, i8 45, i16 127 }, %struct.usb_action { i8 -86, i8 46, i16 127 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 108, i16 397 }, %struct.usb_action { i8 -96, i8 97, i16 278 }, %struct.usb_action { i8 -96, i8 101, i16 280 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_1_InitialScale = internal constant { [52 x %struct.usb_action], [48 x i8] } { [52 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 6, i16 0 }, %struct.usb_action { i8 -86, i8 8, i16 1155 }, %struct.usb_action { i8 -86, i8 1, i16 4 }, %struct.usb_action { i8 -86, i8 8, i16 6 }, %struct.usb_action { i8 -86, i8 2, i16 17 }, %struct.usb_action { i8 -86, i8 3, i16 487 }, %struct.usb_action { i8 -86, i8 4, i16 647 }, %struct.usb_action { i8 -86, i8 7, i16 12290 }, %struct.usb_action { i8 -86, i8 32, i16 20736 }, %struct.usb_action { i8 -86, i8 53, i16 127 }, %struct.usb_action { i8 -86, i8 48, i16 5 }, %struct.usb_action { i8 -86, i8 49, i16 0 }, %struct.usb_action { i8 -86, i8 88, i16 120 }, %struct.usb_action { i8 -86, i8 98, i16 1041 }, %struct.usb_action { i8 -86, i8 43, i16 127 }, %struct.usb_action { i8 -86, i8 44, i16 127 }, %struct.usb_action { i8 -86, i8 45, i16 127 }, %struct.usb_action { i8 -86, i8 46, i16 127 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 108, i16 397 }, %struct.usb_action { i8 -96, i8 97, i16 278 }, %struct.usb_action { i8 -96, i8 101, i16 280 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_3_Initial = internal constant { [52 x %struct.usb_action], [48 x i8] } { [52 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 6, i16 0 }, %struct.usb_action { i8 -86, i8 8, i16 1155 }, %struct.usb_action { i8 -86, i8 1, i16 4 }, %struct.usb_action { i8 -86, i8 8, i16 6 }, %struct.usb_action { i8 -86, i8 2, i16 17 }, %struct.usb_action { i8 -86, i8 3, i16 485 }, %struct.usb_action { i8 -86, i8 4, i16 645 }, %struct.usb_action { i8 -86, i8 7, i16 12290 }, %struct.usb_action { i8 -86, i8 32, i16 4352 }, %struct.usb_action { i8 -86, i8 53, i16 127 }, %struct.usb_action { i8 -86, i8 48, i16 5 }, %struct.usb_action { i8 -86, i8 49, i16 0 }, %struct.usb_action { i8 -86, i8 88, i16 120 }, %struct.usb_action { i8 -86, i8 98, i16 1041 }, %struct.usb_action { i8 -86, i8 43, i16 127 }, %struct.usb_action { i8 -86, i8 44, i16 127 }, %struct.usb_action { i8 -86, i8 45, i16 127 }, %struct.usb_action { i8 -86, i8 46, i16 127 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action { i8 -96, i8 97, i16 278 }, %struct.usb_action { i8 -96, i8 101, i16 280 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9v111_3_InitialScale = internal constant { [52 x %struct.usb_action], [48 x i8] } { [52 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -36, i16 139 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 1 }, %struct.usb_action { i8 -86, i8 6, i16 0 }, %struct.usb_action { i8 -86, i8 8, i16 1155 }, %struct.usb_action { i8 -86, i8 1, i16 4 }, %struct.usb_action { i8 -86, i8 8, i16 6 }, %struct.usb_action { i8 -86, i8 2, i16 17 }, %struct.usb_action { i8 -86, i8 3, i16 487 }, %struct.usb_action { i8 -86, i8 4, i16 647 }, %struct.usb_action { i8 -86, i8 7, i16 12290 }, %struct.usb_action { i8 -86, i8 32, i16 4352 }, %struct.usb_action { i8 -86, i8 53, i16 127 }, %struct.usb_action { i8 -86, i8 48, i16 5 }, %struct.usb_action { i8 -86, i8 49, i16 0 }, %struct.usb_action { i8 -86, i8 88, i16 120 }, %struct.usb_action { i8 -86, i8 98, i16 1041 }, %struct.usb_action { i8 -86, i8 43, i16 127 }, %struct.usb_action { i8 -86, i8 44, i16 127 }, %struct.usb_action { i8 -86, i8 45, i16 127 }, %struct.usb_action { i8 -86, i8 46, i16 127 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action { i8 -96, i8 97, i16 278 }, %struct.usb_action { i8 -96, i8 101, i16 280 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov7620_Initial = internal constant { [67 x %struct.usb_action], [84 x i8] } { [67 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 64, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 6, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 131 }, %struct.usb_action { i8 -96, i8 1, i16 133 }, %struct.usb_action { i8 -96, i8 -128, i16 134 }, %struct.usb_action { i8 -96, i8 -127, i16 135 }, %struct.usb_action { i8 -96, i8 16, i16 136 }, %struct.usb_action { i8 -96, i8 -95, i16 139 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -40, i16 6 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -34, i16 156 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -86, i8 18, i16 136 }, %struct.usb_action { i8 -86, i8 18, i16 72 }, %struct.usb_action { i8 -86, i8 117, i16 138 }, %struct.usb_action { i8 -86, i8 19, i16 163 }, %struct.usb_action { i8 -86, i8 4, i16 0 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 4 }, %struct.usb_action { i8 -86, i8 23, i16 24 }, %struct.usb_action { i8 -86, i8 24, i16 186 }, %struct.usb_action { i8 -86, i8 25, i16 2 }, %struct.usb_action { i8 -86, i8 26, i16 241 }, %struct.usb_action { i8 -86, i8 32, i16 64 }, %struct.usb_action { i8 -86, i8 36, i16 136 }, %struct.usb_action { i8 -86, i8 37, i16 120 }, %struct.usb_action { i8 -86, i8 39, i16 246 }, %struct.usb_action { i8 -86, i8 40, i16 160 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 42, i16 131 }, %struct.usb_action { i8 -86, i8 43, i16 150 }, %struct.usb_action { i8 -86, i8 45, i16 5 }, %struct.usb_action { i8 -86, i8 116, i16 32 }, %struct.usb_action { i8 -86, i8 97, i16 104 }, %struct.usb_action { i8 -86, i8 100, i16 136 }, %struct.usb_action { i8 -86, i8 0, i16 0 }, %struct.usb_action { i8 -86, i8 6, i16 128 }, %struct.usb_action { i8 -86, i8 1, i16 144 }, %struct.usb_action { i8 -86, i8 2, i16 48 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 104, i16 278 }, %struct.usb_action { i8 -96, i8 82, i16 280 }, %struct.usb_action { i8 -96, i8 64, i16 285 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 80, i16 424 }, %struct.usb_action zeroinitializer], [84 x i8] zeroinitializer }, align 32
@ov7620_InitialScale = internal constant { [67 x %struct.usb_action], [84 x i8] } { [67 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 80, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 6, i16 16 }, %struct.usb_action { i8 -96, i8 2, i16 131 }, %struct.usb_action { i8 -96, i8 1, i16 133 }, %struct.usb_action { i8 -96, i8 -128, i16 134 }, %struct.usb_action { i8 -96, i8 -127, i16 135 }, %struct.usb_action { i8 -96, i8 16, i16 136 }, %struct.usb_action { i8 -96, i8 -95, i16 139 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -48, i16 6 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -42, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -86, i8 18, i16 136 }, %struct.usb_action { i8 -86, i8 18, i16 72 }, %struct.usb_action { i8 -86, i8 117, i16 138 }, %struct.usb_action { i8 -86, i8 19, i16 163 }, %struct.usb_action { i8 -86, i8 4, i16 0 }, %struct.usb_action { i8 -86, i8 5, i16 0 }, %struct.usb_action { i8 -86, i8 20, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 4 }, %struct.usb_action { i8 -86, i8 36, i16 136 }, %struct.usb_action { i8 -86, i8 37, i16 120 }, %struct.usb_action { i8 -86, i8 23, i16 24 }, %struct.usb_action { i8 -86, i8 24, i16 186 }, %struct.usb_action { i8 -86, i8 25, i16 2 }, %struct.usb_action { i8 -86, i8 26, i16 242 }, %struct.usb_action { i8 -86, i8 32, i16 64 }, %struct.usb_action { i8 -86, i8 39, i16 246 }, %struct.usb_action { i8 -86, i8 40, i16 160 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 42, i16 131 }, %struct.usb_action { i8 -86, i8 43, i16 150 }, %struct.usb_action { i8 -86, i8 45, i16 5 }, %struct.usb_action { i8 -86, i8 116, i16 32 }, %struct.usb_action { i8 -86, i8 97, i16 104 }, %struct.usb_action { i8 -86, i8 100, i16 136 }, %struct.usb_action { i8 -86, i8 0, i16 0 }, %struct.usb_action { i8 -86, i8 6, i16 128 }, %struct.usb_action { i8 -86, i8 1, i16 144 }, %struct.usb_action { i8 -86, i8 2, i16 48 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 104, i16 278 }, %struct.usb_action { i8 -96, i8 82, i16 280 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 80, i16 424 }, %struct.usb_action zeroinitializer], [84 x i8] zeroinitializer }, align 32
@ov7630c_Initial = internal constant { [149 x %struct.usb_action], [140 x i8] } { [149 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 6, i16 16 }, %struct.usb_action { i8 -96, i8 -95, i16 139 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -86, i8 18, i16 128 }, %struct.usb_action { i8 -96, i8 2, i16 131 }, %struct.usb_action { i8 -96, i8 1, i16 133 }, %struct.usb_action { i8 -96, i8 -112, i16 134 }, %struct.usb_action { i8 -96, i8 -111, i16 135 }, %struct.usb_action { i8 -96, i8 16, i16 136 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -86, i8 18, i16 105 }, %struct.usb_action { i8 -86, i8 4, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 80 }, %struct.usb_action { i8 -86, i8 19, i16 195 }, %struct.usb_action { i8 -86, i8 20, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 36 }, %struct.usb_action { i8 -86, i8 25, i16 3 }, %struct.usb_action { i8 -86, i8 26, i16 246 }, %struct.usb_action { i8 -86, i8 27, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 194 }, %struct.usb_action { i8 -86, i8 36, i16 96 }, %struct.usb_action { i8 -86, i8 37, i16 64 }, %struct.usb_action { i8 -86, i8 38, i16 48 }, %struct.usb_action { i8 -86, i8 39, i16 234 }, %struct.usb_action { i8 -86, i8 40, i16 160 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 42, i16 129 }, %struct.usb_action { i8 -86, i8 43, i16 150 }, %struct.usb_action { i8 -86, i8 45, i16 132 }, %struct.usb_action { i8 -86, i8 47, i16 61 }, %struct.usb_action { i8 -86, i8 48, i16 36 }, %struct.usb_action { i8 -86, i8 96, i16 0 }, %struct.usb_action { i8 -86, i8 97, i16 64 }, %struct.usb_action { i8 -86, i8 104, i16 124 }, %struct.usb_action { i8 -86, i8 111, i16 21 }, %struct.usb_action { i8 -86, i8 117, i16 136 }, %struct.usb_action { i8 -86, i8 119, i16 181 }, %struct.usb_action { i8 -86, i8 1, i16 96 }, %struct.usb_action { i8 -86, i8 2, i16 96 }, %struct.usb_action { i8 -86, i8 23, i16 24 }, %struct.usb_action { i8 -86, i8 24, i16 186 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 278 }, %struct.usb_action { i8 -96, i8 70, i16 280 }, %struct.usb_action { i8 -96, i8 4, i16 275 }, %struct.usb_action { i8 -95, i8 1, i16 2 }, %struct.usb_action { i8 -96, i8 78, i16 266 }, %struct.usb_action { i8 -96, i8 -2, i16 267 }, %struct.usb_action { i8 -96, i8 -12, i16 268 }, %struct.usb_action { i8 -96, i8 -9, i16 269 }, %struct.usb_action { i8 -96, i8 77, i16 270 }, %struct.usb_action { i8 -96, i8 -4, i16 271 }, %struct.usb_action { i8 -96, i8 0, i16 272 }, %struct.usb_action { i8 -96, i8 -10, i16 273 }, %struct.usb_action { i8 -96, i8 74, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -95, i8 1, i16 456 }, %struct.usb_action { i8 -95, i8 1, i16 457 }, %struct.usb_action { i8 -95, i8 1, i16 458 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 22, i16 288 }, %struct.usb_action { i8 -96, i8 58, i16 289 }, %struct.usb_action { i8 -96, i8 91, i16 290 }, %struct.usb_action { i8 -96, i8 124, i16 291 }, %struct.usb_action { i8 -96, i8 -108, i16 292 }, %struct.usb_action { i8 -96, i8 -87, i16 293 }, %struct.usb_action { i8 -96, i8 -69, i16 294 }, %struct.usb_action { i8 -96, i8 -54, i16 295 }, %struct.usb_action { i8 -96, i8 -41, i16 296 }, %struct.usb_action { i8 -96, i8 -31, i16 297 }, %struct.usb_action { i8 -96, i8 -22, i16 298 }, %struct.usb_action { i8 -96, i8 -15, i16 299 }, %struct.usb_action { i8 -96, i8 -9, i16 300 }, %struct.usb_action { i8 -96, i8 -4, i16 301 }, %struct.usb_action { i8 -96, i8 -1, i16 302 }, %struct.usb_action { i8 -96, i8 -1, i16 303 }, %struct.usb_action { i8 -96, i8 32, i16 304 }, %struct.usb_action { i8 -96, i8 34, i16 305 }, %struct.usb_action { i8 -96, i8 32, i16 306 }, %struct.usb_action { i8 -96, i8 28, i16 307 }, %struct.usb_action { i8 -96, i8 22, i16 308 }, %struct.usb_action { i8 -96, i8 19, i16 309 }, %struct.usb_action { i8 -96, i8 16, i16 310 }, %struct.usb_action { i8 -96, i8 13, i16 311 }, %struct.usb_action { i8 -96, i8 11, i16 312 }, %struct.usb_action { i8 -96, i8 9, i16 313 }, %struct.usb_action { i8 -96, i8 7, i16 314 }, %struct.usb_action { i8 -96, i8 6, i16 315 }, %struct.usb_action { i8 -96, i8 5, i16 316 }, %struct.usb_action { i8 -96, i8 4, i16 317 }, %struct.usb_action { i8 -96, i8 0, i16 318 }, %struct.usb_action { i8 -96, i8 1, i16 319 }, %struct.usb_action { i8 -96, i8 78, i16 266 }, %struct.usb_action { i8 -96, i8 -2, i16 267 }, %struct.usb_action { i8 -96, i8 -12, i16 268 }, %struct.usb_action { i8 -96, i8 -9, i16 269 }, %struct.usb_action { i8 -96, i8 77, i16 270 }, %struct.usb_action { i8 -96, i8 -4, i16 271 }, %struct.usb_action { i8 -96, i8 0, i16 272 }, %struct.usb_action { i8 -96, i8 -10, i16 273 }, %struct.usb_action { i8 -96, i8 74, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -86, i8 16, i16 13 }, %struct.usb_action { i8 -86, i8 118, i16 2 }, %struct.usb_action { i8 -86, i8 42, i16 129 }, %struct.usb_action { i8 -86, i8 43, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 0, i16 401 }, %struct.usb_action { i8 -96, i8 -40, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 27, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 38, i16 426 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 384 }, %struct.usb_action { i8 -86, i8 19, i16 195 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [140 x i8] zeroinitializer }, align 32
@ov7630c_InitialScale = internal constant { [151 x %struct.usb_action], [132 x i8] } { [151 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 6, i16 16 }, %struct.usb_action { i8 -96, i8 -95, i16 139 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -86, i8 18, i16 128 }, %struct.usb_action { i8 -96, i8 2, i16 131 }, %struct.usb_action { i8 -96, i8 1, i16 133 }, %struct.usb_action { i8 -96, i8 -112, i16 134 }, %struct.usb_action { i8 -96, i8 -111, i16 135 }, %struct.usb_action { i8 -96, i8 16, i16 136 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -40, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -86, i8 18, i16 105 }, %struct.usb_action { i8 -86, i8 4, i16 32 }, %struct.usb_action { i8 -86, i8 6, i16 80 }, %struct.usb_action { i8 -86, i8 19, i16 131 }, %struct.usb_action { i8 -86, i8 20, i16 0 }, %struct.usb_action { i8 -86, i8 21, i16 36 }, %struct.usb_action { i8 -86, i8 23, i16 24 }, %struct.usb_action { i8 -86, i8 24, i16 186 }, %struct.usb_action { i8 -86, i8 25, i16 2 }, %struct.usb_action { i8 -86, i8 26, i16 246 }, %struct.usb_action { i8 -86, i8 27, i16 2 }, %struct.usb_action { i8 -86, i8 32, i16 194 }, %struct.usb_action { i8 -86, i8 36, i16 96 }, %struct.usb_action { i8 -86, i8 37, i16 64 }, %struct.usb_action { i8 -86, i8 38, i16 48 }, %struct.usb_action { i8 -86, i8 39, i16 234 }, %struct.usb_action { i8 -86, i8 40, i16 160 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 42, i16 129 }, %struct.usb_action { i8 -86, i8 43, i16 150 }, %struct.usb_action { i8 -86, i8 45, i16 148 }, %struct.usb_action { i8 -86, i8 47, i16 61 }, %struct.usb_action { i8 -86, i8 48, i16 36 }, %struct.usb_action { i8 -86, i8 96, i16 0 }, %struct.usb_action { i8 -86, i8 97, i16 64 }, %struct.usb_action { i8 -86, i8 104, i16 124 }, %struct.usb_action { i8 -86, i8 111, i16 21 }, %struct.usb_action { i8 -86, i8 117, i16 136 }, %struct.usb_action { i8 -86, i8 119, i16 181 }, %struct.usb_action { i8 -86, i8 1, i16 96 }, %struct.usb_action { i8 -86, i8 2, i16 96 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 119, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 4, i16 423 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 278 }, %struct.usb_action { i8 -96, i8 70, i16 280 }, %struct.usb_action { i8 -96, i8 4, i16 275 }, %struct.usb_action { i8 -95, i8 1, i16 2 }, %struct.usb_action { i8 -96, i8 80, i16 266 }, %struct.usb_action { i8 -96, i8 -8, i16 267 }, %struct.usb_action { i8 -96, i8 -8, i16 268 }, %struct.usb_action { i8 -96, i8 -8, i16 269 }, %struct.usb_action { i8 -96, i8 80, i16 270 }, %struct.usb_action { i8 -96, i8 -8, i16 271 }, %struct.usb_action { i8 -96, i8 -8, i16 272 }, %struct.usb_action { i8 -96, i8 -8, i16 273 }, %struct.usb_action { i8 -96, i8 80, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -95, i8 1, i16 456 }, %struct.usb_action { i8 -95, i8 1, i16 457 }, %struct.usb_action { i8 -95, i8 1, i16 458 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 1, i16 288 }, %struct.usb_action { i8 -96, i8 12, i16 289 }, %struct.usb_action { i8 -96, i8 31, i16 290 }, %struct.usb_action { i8 -96, i8 58, i16 291 }, %struct.usb_action { i8 -96, i8 83, i16 292 }, %struct.usb_action { i8 -96, i8 109, i16 293 }, %struct.usb_action { i8 -96, i8 -123, i16 294 }, %struct.usb_action { i8 -96, i8 -100, i16 295 }, %struct.usb_action { i8 -96, i8 -80, i16 296 }, %struct.usb_action { i8 -96, i8 -62, i16 297 }, %struct.usb_action { i8 -96, i8 -47, i16 298 }, %struct.usb_action { i8 -96, i8 -34, i16 299 }, %struct.usb_action { i8 -96, i8 -23, i16 300 }, %struct.usb_action { i8 -96, i8 -14, i16 301 }, %struct.usb_action { i8 -96, i8 -7, i16 302 }, %struct.usb_action { i8 -96, i8 -1, i16 303 }, %struct.usb_action { i8 -96, i8 5, i16 304 }, %struct.usb_action { i8 -96, i8 15, i16 305 }, %struct.usb_action { i8 -96, i8 22, i16 306 }, %struct.usb_action { i8 -96, i8 26, i16 307 }, %struct.usb_action { i8 -96, i8 25, i16 308 }, %struct.usb_action { i8 -96, i8 25, i16 309 }, %struct.usb_action { i8 -96, i8 23, i16 310 }, %struct.usb_action { i8 -96, i8 21, i16 311 }, %struct.usb_action { i8 -96, i8 18, i16 312 }, %struct.usb_action { i8 -96, i8 16, i16 313 }, %struct.usb_action { i8 -96, i8 14, i16 314 }, %struct.usb_action { i8 -96, i8 11, i16 315 }, %struct.usb_action { i8 -96, i8 9, i16 316 }, %struct.usb_action { i8 -96, i8 8, i16 317 }, %struct.usb_action { i8 -96, i8 6, i16 318 }, %struct.usb_action { i8 -96, i8 3, i16 319 }, %struct.usb_action { i8 -96, i8 80, i16 266 }, %struct.usb_action { i8 -96, i8 -8, i16 267 }, %struct.usb_action { i8 -96, i8 -8, i16 268 }, %struct.usb_action { i8 -96, i8 -8, i16 269 }, %struct.usb_action { i8 -96, i8 80, i16 270 }, %struct.usb_action { i8 -96, i8 -8, i16 271 }, %struct.usb_action { i8 -96, i8 -8, i16 272 }, %struct.usb_action { i8 -96, i8 -8, i16 273 }, %struct.usb_action { i8 -96, i8 80, i16 274 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -86, i8 16, i16 27 }, %struct.usb_action { i8 -86, i8 118, i16 2 }, %struct.usb_action { i8 -86, i8 42, i16 129 }, %struct.usb_action { i8 -86, i8 43, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 1, i16 401 }, %struct.usb_action { i8 -96, i8 -72, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 55, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -96, i8 16, i16 425 }, %struct.usb_action { i8 -96, i8 38, i16 426 }, %struct.usb_action { i8 -96, i8 80, i16 285 }, %struct.usb_action { i8 -96, i8 2, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 384 }, %struct.usb_action { i8 -86, i8 19, i16 131 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action zeroinitializer], [132 x i8] zeroinitializer }, align 32
@pas106b_Initial = internal constant { [85 x %struct.usb_action], [76 x i8] } { [85 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 15, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 3 }, %struct.usb_action { i8 -96, i8 96, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 3, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 3, i16 284 }, %struct.usb_action { i8 -96, i8 40, i16 156 }, %struct.usb_action { i8 -96, i8 104, i16 158 }, %struct.usb_action { i8 -86, i8 2, i16 4 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 9, i16 5 }, %struct.usb_action { i8 -86, i8 10, i16 2 }, %struct.usb_action { i8 -86, i8 11, i16 2 }, %struct.usb_action { i8 -86, i8 12, i16 5 }, %struct.usb_action { i8 -86, i8 13, i16 0 }, %struct.usb_action { i8 -86, i8 14, i16 2 }, %struct.usb_action { i8 -86, i8 20, i16 129 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 -96, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 -128, i16 397 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 88, i16 266 }, %struct.usb_action { i8 -96, i8 -12, i16 267 }, %struct.usb_action { i8 -96, i8 -12, i16 268 }, %struct.usb_action { i8 -96, i8 -12, i16 269 }, %struct.usb_action { i8 -96, i8 88, i16 270 }, %struct.usb_action { i8 -96, i8 -12, i16 271 }, %struct.usb_action { i8 -96, i8 -12, i16 272 }, %struct.usb_action { i8 -96, i8 -12, i16 273 }, %struct.usb_action { i8 -96, i8 88, i16 274 }, %struct.usb_action { i8 -96, i8 3, i16 385 }, %struct.usb_action { i8 -96, i8 8, i16 386 }, %struct.usb_action { i8 -96, i8 22, i16 387 }, %struct.usb_action { i8 -96, i8 3, i16 388 }, %struct.usb_action { i8 -96, i8 5, i16 389 }, %struct.usb_action { i8 -96, i8 20, i16 390 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 3, i16 401 }, %struct.usb_action { i8 -96, i8 -79, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -121, i16 407 }, %struct.usb_action { i8 -96, i8 16, i16 396 }, %struct.usb_action { i8 -96, i8 32, i16 399 }, %struct.usb_action { i8 -86, i8 7, i16 177 }, %struct.usb_action { i8 -86, i8 5, i16 3 }, %struct.usb_action { i8 -86, i8 4, i16 1 }, %struct.usb_action { i8 -86, i8 3, i16 59 }, %struct.usb_action { i8 -96, i8 32, i16 425 }, %struct.usb_action { i8 -96, i8 38, i16 426 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 64, i16 384 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action { i8 -96, i8 0, i16 7 }, %struct.usb_action { i8 -96, i8 -1, i16 24 }, %struct.usb_action zeroinitializer], [76 x i8] zeroinitializer }, align 32
@pas106b_InitialScale = internal constant { [83 x %struct.usb_action], [84 x i8] } { [83 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 15, i16 16 }, %struct.usb_action { i8 -96, i8 0, i16 3 }, %struct.usb_action { i8 -96, i8 -80, i16 4 }, %struct.usb_action { i8 -96, i8 0, i16 5 }, %struct.usb_action { i8 -96, i8 -112, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 3, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 3, i16 284 }, %struct.usb_action { i8 -96, i8 40, i16 156 }, %struct.usb_action { i8 -96, i8 104, i16 158 }, %struct.usb_action { i8 -86, i8 2, i16 4 }, %struct.usb_action { i8 -86, i8 8, i16 0 }, %struct.usb_action { i8 -86, i8 9, i16 5 }, %struct.usb_action { i8 -86, i8 10, i16 2 }, %struct.usb_action { i8 -86, i8 11, i16 2 }, %struct.usb_action { i8 -86, i8 12, i16 5 }, %struct.usb_action { i8 -86, i8 13, i16 0 }, %struct.usb_action { i8 -86, i8 14, i16 2 }, %struct.usb_action { i8 -86, i8 20, i16 129 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 0, i16 25 }, %struct.usb_action { i8 -96, i8 -96, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 8, i16 454 }, %struct.usb_action { i8 -96, i8 15, i16 459 }, %struct.usb_action { i8 -96, i8 88, i16 266 }, %struct.usb_action { i8 -96, i8 -12, i16 267 }, %struct.usb_action { i8 -96, i8 -12, i16 268 }, %struct.usb_action { i8 -96, i8 -12, i16 269 }, %struct.usb_action { i8 -96, i8 88, i16 270 }, %struct.usb_action { i8 -96, i8 -12, i16 271 }, %struct.usb_action { i8 -96, i8 -12, i16 272 }, %struct.usb_action { i8 -96, i8 -12, i16 273 }, %struct.usb_action { i8 -96, i8 88, i16 274 }, %struct.usb_action { i8 -96, i8 3, i16 385 }, %struct.usb_action { i8 -96, i8 8, i16 386 }, %struct.usb_action { i8 -96, i8 22, i16 387 }, %struct.usb_action { i8 -96, i8 3, i16 388 }, %struct.usb_action { i8 -96, i8 5, i16 389 }, %struct.usb_action { i8 -96, i8 20, i16 390 }, %struct.usb_action { i8 -96, i8 0, i16 384 }, %struct.usb_action { i8 -96, i8 0, i16 400 }, %struct.usb_action { i8 -96, i8 3, i16 401 }, %struct.usb_action { i8 -96, i8 -79, i16 402 }, %struct.usb_action { i8 -96, i8 0, i16 405 }, %struct.usb_action { i8 -96, i8 0, i16 406 }, %struct.usb_action { i8 -96, i8 -121, i16 407 }, %struct.usb_action { i8 -96, i8 12, i16 396 }, %struct.usb_action { i8 -96, i8 24, i16 399 }, %struct.usb_action { i8 -86, i8 7, i16 177 }, %struct.usb_action { i8 -86, i8 5, i16 3 }, %struct.usb_action { i8 -86, i8 4, i16 1 }, %struct.usb_action { i8 -86, i8 3, i16 59 }, %struct.usb_action { i8 -96, i8 32, i16 425 }, %struct.usb_action { i8 -96, i8 38, i16 426 }, %struct.usb_action { i8 -96, i8 -96, i16 285 }, %struct.usb_action { i8 -96, i8 96, i16 285 }, %struct.usb_action { i8 -96, i8 64, i16 384 }, %struct.usb_action { i8 -95, i8 1, i16 384 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -96, i8 64, i16 278 }, %struct.usb_action { i8 -96, i8 64, i16 279 }, %struct.usb_action { i8 -96, i8 64, i16 280 }, %struct.usb_action zeroinitializer], [84 x i8] zeroinitializer }, align 32
@pas202b_Initial = internal constant { [42 x %struct.usb_action], [56 x i8] } { [42 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 14, i16 16 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 3, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 3, i16 284 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -86, i8 2, i16 2 }, %struct.usb_action { i8 -86, i8 7, i16 6 }, %struct.usb_action { i8 -86, i8 8, i16 2 }, %struct.usb_action { i8 -86, i8 9, i16 6 }, %struct.usb_action { i8 -86, i8 10, i16 1 }, %struct.usb_action { i8 -86, i8 11, i16 1 }, %struct.usb_action { i8 -86, i8 12, i16 6 }, %struct.usb_action { i8 -86, i8 13, i16 0 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 18, i16 5 }, %struct.usb_action { i8 -86, i8 19, i16 99 }, %struct.usb_action { i8 -86, i8 21, i16 112 }, %struct.usb_action { i8 -96, i8 -73, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pas202b_InitialScale = internal constant { [44 x %struct.usb_action], [48 x i8] } { [44 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 14, i16 16 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 8, i16 141 }, %struct.usb_action { i8 -96, i8 8, i16 152 }, %struct.usb_action { i8 -96, i8 2, i16 154 }, %struct.usb_action { i8 -96, i8 8, i16 282 }, %struct.usb_action { i8 -96, i8 2, i16 284 }, %struct.usb_action { i8 -96, i8 1, i16 155 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -86, i8 2, i16 2 }, %struct.usb_action { i8 -86, i8 7, i16 6 }, %struct.usb_action { i8 -86, i8 8, i16 2 }, %struct.usb_action { i8 -86, i8 9, i16 6 }, %struct.usb_action { i8 -86, i8 10, i16 1 }, %struct.usb_action { i8 -86, i8 11, i16 1 }, %struct.usb_action { i8 -86, i8 12, i16 6 }, %struct.usb_action { i8 -86, i8 13, i16 0 }, %struct.usb_action { i8 -86, i8 16, i16 0 }, %struct.usb_action { i8 -86, i8 18, i16 5 }, %struct.usb_action { i8 -86, i8 19, i16 99 }, %struct.usb_action { i8 -86, i8 21, i16 112 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action { i8 -96, i8 -1, i16 151 }, %struct.usb_action { i8 -96, i8 -2, i16 152 }, %struct.usb_action zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pb0330_Initial = internal constant { [47 x %struct.usb_action], [36 x i8] } { [47 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 6 }, %struct.usb_action { i8 -86, i8 2, i16 17 }, %struct.usb_action { i8 -86, i8 3, i16 485 }, %struct.usb_action { i8 -86, i8 4, i16 645 }, %struct.usb_action { i8 -86, i8 6, i16 3 }, %struct.usb_action { i8 -86, i8 7, i16 12290 }, %struct.usb_action { i8 -86, i8 32, i16 4352 }, %struct.usb_action { i8 -86, i8 47, i16 -2128 }, %struct.usb_action { i8 -86, i8 48, i16 5 }, %struct.usb_action { i8 -86, i8 49, i16 0 }, %struct.usb_action { i8 -86, i8 52, i16 256 }, %struct.usb_action { i8 -86, i8 53, i16 96 }, %struct.usb_action { i8 -86, i8 61, i16 1679 }, %struct.usb_action { i8 -86, i8 64, i16 480 }, %struct.usb_action { i8 -86, i8 88, i16 120 }, %struct.usb_action { i8 -86, i8 98, i16 1041 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 21, i16 430 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@pb0330_InitialScale = internal constant { [47 x %struct.usb_action], [36 x i8] } { [47 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 10, i16 16 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 7, i16 18 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -35, i8 0, i16 512 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -86, i8 1, i16 6 }, %struct.usb_action { i8 -86, i8 2, i16 17 }, %struct.usb_action { i8 -86, i8 3, i16 487 }, %struct.usb_action { i8 -86, i8 4, i16 647 }, %struct.usb_action { i8 -86, i8 6, i16 3 }, %struct.usb_action { i8 -86, i8 7, i16 12290 }, %struct.usb_action { i8 -86, i8 32, i16 4352 }, %struct.usb_action { i8 -86, i8 47, i16 -2128 }, %struct.usb_action { i8 -86, i8 48, i16 5 }, %struct.usb_action { i8 -86, i8 49, i16 0 }, %struct.usb_action { i8 -86, i8 52, i16 256 }, %struct.usb_action { i8 -86, i8 53, i16 96 }, %struct.usb_action { i8 -86, i8 61, i16 1679 }, %struct.usb_action { i8 -86, i8 64, i16 480 }, %struct.usb_action { i8 -86, i8 88, i16 120 }, %struct.usb_action { i8 -86, i8 98, i16 1041 }, %struct.usb_action { i8 -96, i8 16, i16 135 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 9, i16 429 }, %struct.usb_action { i8 -96, i8 21, i16 430 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 96, i16 424 }, %struct.usb_action { i8 -96, i8 120, i16 397 }, %struct.usb_action zeroinitializer], [36 x i8] zeroinitializer }, align 32
@po2030_Initial = internal constant { [73 x %struct.usb_action], [92 x i8] } { [73 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 4, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 4, i16 128 }, %struct.usb_action { i8 -96, i8 5, i16 129 }, %struct.usb_action { i8 -96, i8 22, i16 131 }, %struct.usb_action { i8 -96, i8 24, i16 133 }, %struct.usb_action { i8 -96, i8 26, i16 134 }, %struct.usb_action { i8 -96, i8 27, i16 135 }, %struct.usb_action { i8 -96, i8 28, i16 136 }, %struct.usb_action { i8 -96, i8 -18, i16 139 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -86, i8 -115, i16 8 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -86, i8 9, i16 206 }, %struct.usb_action { i8 -86, i8 11, i16 5 }, %struct.usb_action { i8 -86, i8 13, i16 84 }, %struct.usb_action { i8 -86, i8 15, i16 235 }, %struct.usb_action { i8 -86, i8 -121, i16 0 }, %struct.usb_action { i8 -86, i8 -120, i16 4 }, %struct.usb_action { i8 -86, i8 -119, i16 0 }, %struct.usb_action { i8 -86, i8 -118, i16 5 }, %struct.usb_action { i8 -86, i8 19, i16 3 }, %struct.usb_action { i8 -86, i8 22, i16 64 }, %struct.usb_action { i8 -86, i8 24, i16 64 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 41, i16 232 }, %struct.usb_action { i8 -86, i8 69, i16 69 }, %struct.usb_action { i8 -86, i8 80, i16 237 }, %struct.usb_action { i8 -86, i8 81, i16 37 }, %struct.usb_action { i8 -86, i8 82, i16 66 }, %struct.usb_action { i8 -86, i8 83, i16 47 }, %struct.usb_action { i8 -86, i8 121, i16 37 }, %struct.usb_action { i8 -86, i8 123, i16 0 }, %struct.usb_action { i8 -86, i8 126, i16 37 }, %struct.usb_action { i8 -86, i8 127, i16 37 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 51, i16 54 }, %struct.usb_action { i8 -86, i8 54, i16 96 }, %struct.usb_action { i8 -86, i8 55, i16 8 }, %struct.usb_action { i8 -86, i8 59, i16 49 }, %struct.usb_action { i8 -86, i8 68, i16 15 }, %struct.usb_action { i8 -86, i8 88, i16 2 }, %struct.usb_action { i8 -86, i8 102, i16 192 }, %struct.usb_action { i8 -86, i8 103, i16 68 }, %struct.usb_action { i8 -86, i8 107, i16 160 }, %struct.usb_action { i8 -86, i8 108, i16 84 }, %struct.usb_action { i8 -86, i8 -42, i16 7 }, %struct.usb_action { i8 -96, i8 -9, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 122, i16 278 }, %struct.usb_action { i8 -96, i8 74, i16 280 }, %struct.usb_action zeroinitializer], [92 x i8] zeroinitializer }, align 32
@po2030_InitialScale = internal constant { [73 x %struct.usb_action], [92 x i8] } { [73 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 16, i16 2 }, %struct.usb_action { i8 -96, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 4, i16 128 }, %struct.usb_action { i8 -96, i8 5, i16 129 }, %struct.usb_action { i8 -96, i8 22, i16 131 }, %struct.usb_action { i8 -96, i8 24, i16 133 }, %struct.usb_action { i8 -96, i8 26, i16 134 }, %struct.usb_action { i8 -96, i8 27, i16 135 }, %struct.usb_action { i8 -96, i8 28, i16 136 }, %struct.usb_action { i8 -96, i8 -18, i16 139 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 3, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 66, i16 384 }, %struct.usb_action { i8 -86, i8 -115, i16 8 }, %struct.usb_action { i8 -96, i8 0, i16 152 }, %struct.usb_action { i8 -96, i8 0, i16 154 }, %struct.usb_action { i8 -96, i8 0, i16 282 }, %struct.usb_action { i8 -96, i8 0, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -86, i8 9, i16 204 }, %struct.usb_action { i8 -86, i8 11, i16 5 }, %struct.usb_action { i8 -86, i8 13, i16 88 }, %struct.usb_action { i8 -86, i8 15, i16 237 }, %struct.usb_action { i8 -86, i8 -121, i16 0 }, %struct.usb_action { i8 -86, i8 -120, i16 4 }, %struct.usb_action { i8 -86, i8 -119, i16 0 }, %struct.usb_action { i8 -86, i8 -118, i16 5 }, %struct.usb_action { i8 -86, i8 19, i16 3 }, %struct.usb_action { i8 -86, i8 22, i16 64 }, %struct.usb_action { i8 -86, i8 24, i16 64 }, %struct.usb_action { i8 -86, i8 29, i16 2 }, %struct.usb_action { i8 -86, i8 41, i16 232 }, %struct.usb_action { i8 -86, i8 69, i16 69 }, %struct.usb_action { i8 -86, i8 80, i16 237 }, %struct.usb_action { i8 -86, i8 81, i16 37 }, %struct.usb_action { i8 -86, i8 82, i16 66 }, %struct.usb_action { i8 -86, i8 83, i16 47 }, %struct.usb_action { i8 -86, i8 121, i16 37 }, %struct.usb_action { i8 -86, i8 123, i16 0 }, %struct.usb_action { i8 -86, i8 126, i16 37 }, %struct.usb_action { i8 -86, i8 127, i16 37 }, %struct.usb_action { i8 -86, i8 33, i16 0 }, %struct.usb_action { i8 -86, i8 51, i16 54 }, %struct.usb_action { i8 -86, i8 54, i16 96 }, %struct.usb_action { i8 -86, i8 55, i16 8 }, %struct.usb_action { i8 -86, i8 59, i16 49 }, %struct.usb_action { i8 -86, i8 68, i16 15 }, %struct.usb_action { i8 -86, i8 88, i16 2 }, %struct.usb_action { i8 -86, i8 102, i16 192 }, %struct.usb_action { i8 -86, i8 103, i16 68 }, %struct.usb_action { i8 -86, i8 107, i16 160 }, %struct.usb_action { i8 -86, i8 108, i16 84 }, %struct.usb_action { i8 -86, i8 -42, i16 7 }, %struct.usb_action { i8 -96, i8 -9, i16 257 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 122, i16 278 }, %struct.usb_action { i8 -96, i8 74, i16 280 }, %struct.usb_action zeroinitializer], [92 x i8] zeroinitializer }, align 32
@tas5130c_Initial = internal constant { [34 x %struct.usb_action], [56 x i8] } { [34 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 64, i16 2 }, %struct.usb_action { i8 -96, i8 0, i16 8 }, %struct.usb_action { i8 -96, i8 2, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 0, i16 1 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 5, i16 152 }, %struct.usb_action { i8 -96, i8 15, i16 154 }, %struct.usb_action { i8 -96, i8 5, i16 282 }, %struct.usb_action { i8 -96, i8 15, i16 284 }, %struct.usb_action { i8 -96, i8 -26, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -122, i16 158 }, %struct.usb_action { i8 -96, i8 6, i16 141 }, %struct.usb_action { i8 -96, i8 55, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action { i8 -96, i8 80, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 7, i16 165 }, %struct.usb_action { i8 -96, i8 2, i16 166 }, %struct.usb_action zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tas5130c_InitialScale = internal constant { [34 x %struct.usb_action], [56 x i8] } { [34 x %struct.usb_action] [%struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 80, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 8 }, %struct.usb_action { i8 -96, i8 2, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 0, i16 1 }, %struct.usb_action { i8 -96, i8 1, i16 18 }, %struct.usb_action { i8 -96, i8 1, i16 1 }, %struct.usb_action { i8 -96, i8 5, i16 18 }, %struct.usb_action { i8 -96, i8 2, i16 3 }, %struct.usb_action { i8 -96, i8 -128, i16 4 }, %struct.usb_action { i8 -96, i8 1, i16 5 }, %struct.usb_action { i8 -96, i8 -32, i16 6 }, %struct.usb_action { i8 -96, i8 4, i16 152 }, %struct.usb_action { i8 -96, i8 15, i16 154 }, %struct.usb_action { i8 -96, i8 4, i16 282 }, %struct.usb_action { i8 -96, i8 15, i16 284 }, %struct.usb_action { i8 -96, i8 -24, i16 156 }, %struct.usb_action { i8 -96, i8 2, i16 157 }, %struct.usb_action { i8 -96, i8 -120, i16 158 }, %struct.usb_action { i8 -96, i8 6, i16 141 }, %struct.usb_action { i8 -96, i8 -9, i16 257 }, %struct.usb_action { i8 -96, i8 13, i16 256 }, %struct.usb_action { i8 -96, i8 6, i16 393 }, %struct.usb_action { i8 -96, i8 112, i16 397 }, %struct.usb_action { i8 -96, i8 80, i16 424 }, %struct.usb_action { i8 -96, i8 0, i16 429 }, %struct.usb_action { i8 -96, i8 3, i16 453 }, %struct.usb_action { i8 -96, i8 19, i16 459 }, %struct.usb_action { i8 -96, i8 8, i16 592 }, %struct.usb_action { i8 -96, i8 8, i16 769 }, %struct.usb_action { i8 -96, i8 7, i16 165 }, %struct.usb_action { i8 -96, i8 2, i16 166 }, %struct.usb_action zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pas106b_Initial_com = internal constant { [8 x %struct.usb_action], [32 x i8] } { [8 x %struct.usb_action] [%struct.usb_action { i8 -95, i8 1, i16 16 }, %struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 1, i16 0 }, %struct.usb_action { i8 -96, i8 0, i16 2 }, %struct.usb_action { i8 -96, i8 3, i16 58 }, %struct.usb_action { i8 -96, i8 12, i16 59 }, %struct.usb_action { i8 -96, i8 4, i16 56 }, %struct.usb_action zeroinitializer], [32 x i8] zeroinitializer }, align 32
@setmatrix.adcm2700_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"t\ED\ED\EDt\ED\ED\EDt", [23 x i8] zeroinitializer }, align 32
@setmatrix.gc0305_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"P\F8\F8\F8P\F8\F8\F8P", [23 x i8] zeroinitializer }, align 32
@setmatrix.ov7620_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"X\F4\F4\F4X\F4\F4\F4X", [23 x i8] zeroinitializer }, align 32
@setmatrix.pas202b_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"L\F5\FF\F9Q\F5\FB\ED_", [23 x i8] zeroinitializer }, align 32
@setmatrix.po2030_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"`\F0\F0\F0`\F0\F0\F0`", [23 x i8] zeroinitializer }, align 32
@setmatrix.tas5130c_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"h\EC\EC\ECh\EC\EC\ECh", [23 x i8] zeroinitializer }, align 32
@setmatrix.gc0303_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l\EA\EA\EAl\EA\EA\EAl", [23 x i8] zeroinitializer }, align 32
@setmatrix.matrix_tb = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @setmatrix.adcm2700_matrix, ptr @setmatrix.ov7620_matrix, ptr null, ptr @setmatrix.gc0303_matrix, ptr @setmatrix.gc0305_matrix, ptr null, ptr null, ptr @setmatrix.po2030_matrix, ptr @setmatrix.po2030_matrix, ptr null, ptr @setmatrix.gc0305_matrix, ptr @setmatrix.gc0305_matrix, ptr @setmatrix.ov7620_matrix, ptr null, ptr null, ptr @setmatrix.pas202b_matrix, ptr @setmatrix.gc0305_matrix, ptr @setmatrix.po2030_matrix, ptr @setmatrix.tas5130c_matrix], [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 2, i64 4, i64 8, i64 10, i64 12, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 41, i64 771, i64 8240, i64 30240, i64 30257, i64 30280, i64 4294967295]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 18, i64 4294967295]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 14]
@__sancov_gen_cov_switch_values.118 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 3, i64 4, i64 7, i64 12, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.119 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 4, i64 7, i64 12, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 13]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 15]
@__sancov_gen_cov_switch_values.122 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 4, i64 7, i64 12, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 9, i64 14]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 16, i64 30240, i64 30257, i64 30280]
@__sancov_gen_cov_switch_values.126 = internal global [9 x i64] [i64 7, i64 16, i64 32768, i64 32769, i64 33792, i64 49152, i64 49153, i64 57345, i64 58368]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 41]
@__sancov_gen_cov_switch_values.128 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 4, i64 7, i64 10, i64 11, i64 12, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.130 = internal global [7 x i64] [i64 5, i64 32, i64 9963792, i64 9963794, i64 9963800, i64 9963803, i64 10291459]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 12, i64 15]
@__sancov_gen_cov_switch_values.133 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 160, i64 161, i64 170, i64 187]
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 7013, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"force_sensor\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 19, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 7025, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6945, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6929, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6333, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5544, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5566, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6509, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6512, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6519, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6522, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6525, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6532, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6537, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6542, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6548, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6552, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6556, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6560, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6566, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6570, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6574, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6579, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6583, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6588, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6596, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6602, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6606, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6610, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6614, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6618, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6622, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6626, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6630, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 104, i32 37 }
@___asan_gen_.338 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 78, i32 37 }
@___asan_gen_.341 = private unnamed_addr constant [16 x i8] c"broken_vga_mode\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 91, i32 37 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6054, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6142, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5606, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6199, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [24 x i8] c"chipset_revision_sensor\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6160, i32 48 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6219, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6233, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6265, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6270, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6287, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5584, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6419, i32 18 }
@___asan_gen_.425 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6442, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [14 x i8] c"zcxx_ctrl_ops\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6410, i32 35 }
@___asan_gen_.434 = private unnamed_addr constant [10 x i8] c"jpeg_qual\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 121, i32 11 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6470, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [8 x i8] c"delta_b\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5715, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant [8 x i8] c"delta_c\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5718, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant [9 x i8] c"gamma_tb\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5721, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant [8 x i8] c"freq_tb\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5816, i32 34 }
@___asan_gen_.458 = private unnamed_addr constant [19 x i8] c"adcm2700_NoFlicker\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 326, i32 32 }
@___asan_gen_.461 = private unnamed_addr constant [14 x i8] c"adcm2700_50HZ\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 300, i32 32 }
@___asan_gen_.464 = private unnamed_addr constant [14 x i8] c"adcm2700_60HZ\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 313, i32 32 }
@___asan_gen_.467 = private unnamed_addr constant [17 x i8] c"cs2102_NoFlicker\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 550, i32 32 }
@___asan_gen_.470 = private unnamed_addr constant [22 x i8] c"cs2102_NoFlickerScale\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 528, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant [12 x i8] c"cs2102_50HZ\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 462, i32 32 }
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"cs2102_50HZScale\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 440, i32 32 }
@___asan_gen_.479 = private unnamed_addr constant [12 x i8] c"cs2102_60HZ\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 506, i32 32 }
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"cs2102_60HZScale\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 484, i32 32 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"gc0303_NoFlicker\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5485, i32 32 }
@___asan_gen_.488 = private unnamed_addr constant [22 x i8] c"gc0303_NoFlickerScale\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5507, i32 32 }
@___asan_gen_.491 = private unnamed_addr constant [12 x i8] c"gc0303_50HZ\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5389, i32 32 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"gc0303_50HZScale\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5413, i32 32 }
@___asan_gen_.497 = private unnamed_addr constant [12 x i8] c"gc0303_60HZ\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5437, i32 32 }
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"gc0303_60HZScale\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5461, i32 32 }
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"gc0305_NoFlicker\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1388, i32 32 }
@___asan_gen_.506 = private unnamed_addr constant [12 x i8] c"gc0305_50HZ\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1338, i32 32 }
@___asan_gen_.509 = private unnamed_addr constant [12 x i8] c"gc0305_60HZ\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1364, i32 32 }
@___asan_gen_.512 = private unnamed_addr constant [19 x i8] c"hdcs2020_NoFlicker\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1713, i32 32 }
@___asan_gen_.515 = private unnamed_addr constant [14 x i8] c"hdcs2020_50HZ\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1671, i32 32 }
@___asan_gen_.518 = private unnamed_addr constant [14 x i8] c"hdcs2020_60HZ\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1692, i32 32 }
@___asan_gen_.521 = private unnamed_addr constant [18 x i8] c"hv7131b_NoFlicker\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1928, i32 32 }
@___asan_gen_.524 = private unnamed_addr constant [23 x i8] c"hv7131b_NoFlickerScale\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1953, i32 32 }
@___asan_gen_.527 = private unnamed_addr constant [13 x i8] c"hv7131b_50HZ\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1828, i32 32 }
@___asan_gen_.530 = private unnamed_addr constant [18 x i8] c"hv7131b_50HZScale\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1853, i32 32 }
@___asan_gen_.533 = private unnamed_addr constant [13 x i8] c"hv7131b_60HZ\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1878, i32 32 }
@___asan_gen_.536 = private unnamed_addr constant [18 x i8] c"hv7131b_60HZScale\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1903, i32 32 }
@___asan_gen_.539 = private unnamed_addr constant [18 x i8] c"hv7131r_NoFlicker\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2144, i32 32 }
@___asan_gen_.542 = private unnamed_addr constant [23 x i8] c"hv7131r_NoFlickerScale\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2162, i32 32 }
@___asan_gen_.545 = private unnamed_addr constant [13 x i8] c"hv7131r_50HZ\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2072, i32 32 }
@___asan_gen_.548 = private unnamed_addr constant [18 x i8] c"hv7131r_50HZScale\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2090, i32 32 }
@___asan_gen_.551 = private unnamed_addr constant [13 x i8] c"hv7131r_60HZ\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2108, i32 32 }
@___asan_gen_.554 = private unnamed_addr constant [18 x i8] c"hv7131r_60HZScale\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2126, i32 32 }
@___asan_gen_.557 = private unnamed_addr constant [18 x i8] c"icm105a_NoFlicker\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2696, i32 32 }
@___asan_gen_.560 = private unnamed_addr constant [23 x i8] c"icm105a_NoFlickerScale\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2665, i32 32 }
@___asan_gen_.563 = private unnamed_addr constant [13 x i8] c"icm105a_50HZ\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2568, i32 32 }
@___asan_gen_.566 = private unnamed_addr constant [18 x i8] c"icm105a_50HZScale\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2537, i32 32 }
@___asan_gen_.569 = private unnamed_addr constant [13 x i8] c"icm105a_60HZ\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2632, i32 32 }
@___asan_gen_.572 = private unnamed_addr constant [18 x i8] c"icm105a_60HZScale\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2601, i32 32 }
@___asan_gen_.575 = private unnamed_addr constant [18 x i8] c"mc501cb_NoFlicker\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3012, i32 32 }
@___asan_gen_.578 = private unnamed_addr constant [23 x i8] c"mc501cb_NoFlickerScale\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3024, i32 32 }
@___asan_gen_.581 = private unnamed_addr constant [13 x i8] c"mc501cb_50HZ\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2964, i32 32 }
@___asan_gen_.584 = private unnamed_addr constant [18 x i8] c"mc501cb_50HZScale\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2976, i32 32 }
@___asan_gen_.587 = private unnamed_addr constant [13 x i8] c"mc501cb_60HZ\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2988, i32 32 }
@___asan_gen_.590 = private unnamed_addr constant [18 x i8] c"mc501cb_60HZScale\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3000, i32 32 }
@___asan_gen_.593 = private unnamed_addr constant [22 x i8] c"mt9v111_1_AENoFlicker\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4312, i32 32 }
@___asan_gen_.596 = private unnamed_addr constant [27 x i8] c"mt9v111_1_AENoFlickerScale\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4335, i32 32 }
@___asan_gen_.599 = private unnamed_addr constant [17 x i8] c"mt9v111_1_AE50HZ\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4222, i32 32 }
@___asan_gen_.602 = private unnamed_addr constant [22 x i8] c"mt9v111_1_AE50HZScale\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4245, i32 32 }
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"mt9v111_1_AE60HZ\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4267, i32 32 }
@___asan_gen_.608 = private unnamed_addr constant [22 x i8] c"mt9v111_1_AE60HZScale\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4290, i32 32 }
@___asan_gen_.611 = private unnamed_addr constant [22 x i8] c"mt9v111_3_AENoFlicker\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4557, i32 32 }
@___asan_gen_.614 = private unnamed_addr constant [27 x i8] c"mt9v111_3_AENoFlickerScale\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4580, i32 32 }
@___asan_gen_.617 = private unnamed_addr constant [17 x i8] c"mt9v111_3_AE50HZ\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4469, i32 32 }
@___asan_gen_.620 = private unnamed_addr constant [22 x i8] c"mt9v111_3_AE50HZScale\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4491, i32 32 }
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"mt9v111_3_AE60HZ\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4513, i32 32 }
@___asan_gen_.626 = private unnamed_addr constant [22 x i8] c"mt9v111_3_AE60HZScale\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4535, i32 32 }
@___asan_gen_.629 = private unnamed_addr constant [17 x i8] c"ov7620_NoFlicker\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3214, i32 32 }
@___asan_gen_.632 = private unnamed_addr constant [12 x i8] c"ov7620_50HZ\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3177, i32 32 }
@___asan_gen_.635 = private unnamed_addr constant [12 x i8] c"ov7620_60HZ\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3194, i32 32 }
@___asan_gen_.638 = private unnamed_addr constant [18 x i8] c"pas106b_NoFlicker\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3830, i32 32 }
@___asan_gen_.641 = private unnamed_addr constant [13 x i8] c"pas106b_50HZ\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3798, i32 32 }
@___asan_gen_.644 = private unnamed_addr constant [13 x i8] c"pas106b_60HZ\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3814, i32 32 }
@___asan_gen_.647 = private unnamed_addr constant [18 x i8] c"pas202b_NoFlicker\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4054, i32 32 }
@___asan_gen_.650 = private unnamed_addr constant [23 x i8] c"pas202b_NoFlickerScale\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4083, i32 32 }
@___asan_gen_.653 = private unnamed_addr constant [13 x i8] c"pas202b_50HZ\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3938, i32 32 }
@___asan_gen_.656 = private unnamed_addr constant [18 x i8] c"pas202b_50HZScale\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3967, i32 32 }
@___asan_gen_.659 = private unnamed_addr constant [13 x i8] c"pas202b_60HZ\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3996, i32 32 }
@___asan_gen_.662 = private unnamed_addr constant [18 x i8] c"pas202b_60HZScale\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4025, i32 32 }
@___asan_gen_.665 = private unnamed_addr constant [17 x i8] c"pb0330_NoFlicker\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4790, i32 32 }
@___asan_gen_.668 = private unnamed_addr constant [22 x i8] c"pb0330_NoFlickerScale\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4812, i32 32 }
@___asan_gen_.671 = private unnamed_addr constant [12 x i8] c"pb0330_50HZ\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4702, i32 32 }
@___asan_gen_.674 = private unnamed_addr constant [17 x i8] c"pb0330_50HZScale\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4724, i32 32 }
@___asan_gen_.677 = private unnamed_addr constant [12 x i8] c"pb0330_60HZ\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4746, i32 32 }
@___asan_gen_.680 = private unnamed_addr constant [17 x i8] c"pb0330_60HZScale\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4768, i32 32 }
@___asan_gen_.683 = private unnamed_addr constant [17 x i8] c"po2030_NoFlicker\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5034, i32 32 }
@___asan_gen_.686 = private unnamed_addr constant [12 x i8] c"po2030_50HZ\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4989, i32 32 }
@___asan_gen_.689 = private unnamed_addr constant [12 x i8] c"po2030_60HZ\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5011, i32 32 }
@___asan_gen_.692 = private unnamed_addr constant [19 x i8] c"tas5130c_NoFlicker\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5218, i32 32 }
@___asan_gen_.695 = private unnamed_addr constant [24 x i8] c"tas5130c_NoFlickerScale\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5244, i32 32 }
@___asan_gen_.698 = private unnamed_addr constant [14 x i8] c"tas5130c_50HZ\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5118, i32 32 }
@___asan_gen_.701 = private unnamed_addr constant [19 x i8] c"tas5130c_50HZScale\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5143, i32 32 }
@___asan_gen_.704 = private unnamed_addr constant [14 x i8] c"tas5130c_60HZ\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5168, i32 32 }
@___asan_gen_.707 = private unnamed_addr constant [19 x i8] c"tas5130c_60HZScale\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5193, i32 32 }
@___asan_gen_.710 = private unnamed_addr constant [13 x i8] c"sharpness_tb\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5695, i32 18 }
@___asan_gen_.713 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 19, i32 17 }
@___asan_gen_.716 = private unnamed_addr constant [8 x i8] c"init_tb\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 6673, i32 34 }
@___asan_gen_.719 = private unnamed_addr constant [17 x i8] c"adcm2700_Initial\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 130, i32 32 }
@___asan_gen_.722 = private unnamed_addr constant [22 x i8] c"adcm2700_InitialScale\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 219, i32 32 }
@___asan_gen_.725 = private unnamed_addr constant [15 x i8] c"cs2102_Initial\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 389, i32 32 }
@___asan_gen_.728 = private unnamed_addr constant [20 x i8] c"cs2102_InitialScale\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 337, i32 32 }
@___asan_gen_.731 = private unnamed_addr constant [16 x i8] c"cs2102K_Initial\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 833, i32 32 }
@___asan_gen_.734 = private unnamed_addr constant [21 x i8] c"cs2102K_InitialScale\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 574, i32 32 }
@___asan_gen_.737 = private unnamed_addr constant [15 x i8] c"gc0303_Initial\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5271, i32 32 }
@___asan_gen_.740 = private unnamed_addr constant [20 x i8] c"gc0303_InitialScale\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5331, i32 32 }
@___asan_gen_.743 = private unnamed_addr constant [15 x i8] c"gc0305_Initial\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1211, i32 32 }
@___asan_gen_.746 = private unnamed_addr constant [20 x i8] c"gc0305_InitialScale\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1275, i32 32 }
@___asan_gen_.749 = private unnamed_addr constant [17 x i8] c"hdcs2020_Initial\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1543, i32 32 }
@___asan_gen_.752 = private unnamed_addr constant [22 x i8] c"hdcs2020_InitialScale\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1411, i32 32 }
@___asan_gen_.755 = private unnamed_addr constant [16 x i8] c"hv7131b_Initial\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1782, i32 32 }
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c"hv7131b_InitialScale\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1735, i32 32 }
@___asan_gen_.761 = private unnamed_addr constant [16 x i8] c"hv7131r_Initial\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2026, i32 32 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c"hv7131r_InitialScale\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1980, i32 32 }
@___asan_gen_.767 = private unnamed_addr constant [16 x i8] c"icm105a_Initial\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2358, i32 32 }
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c"icm105a_InitialScale\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2181, i32 32 }
@___asan_gen_.773 = private unnamed_addr constant [16 x i8] c"mc501cb_Initial\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2730, i32 32 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c"mc501cb_InitialScale\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2850, i32 32 }
@___asan_gen_.779 = private unnamed_addr constant [18 x i8] c"mt9v111_1_Initial\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4114, i32 32 }
@___asan_gen_.782 = private unnamed_addr constant [23 x i8] c"mt9v111_1_InitialScale\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4168, i32 32 }
@___asan_gen_.785 = private unnamed_addr constant [18 x i8] c"mt9v111_3_Initial\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4359, i32 32 }
@___asan_gen_.788 = private unnamed_addr constant [23 x i8] c"mt9v111_3_InitialScale\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4415, i32 32 }
@___asan_gen_.791 = private unnamed_addr constant [15 x i8] c"ov7620_Initial\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3037, i32 32 }
@___asan_gen_.794 = private unnamed_addr constant [20 x i8] c"ov7620_InitialScale\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3106, i32 32 }
@___asan_gen_.797 = private unnamed_addr constant [16 x i8] c"ov7630c_Initial\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3390, i32 32 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c"ov7630c_InitialScale\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3234, i32 32 }
@___asan_gen_.803 = private unnamed_addr constant [16 x i8] c"pas106b_Initial\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3677, i32 32 }
@___asan_gen_.806 = private unnamed_addr constant [21 x i8] c"pas106b_InitialScale\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3561, i32 32 }
@___asan_gen_.809 = private unnamed_addr constant [16 x i8] c"pas202b_Initial\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3848, i32 32 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c"pas202b_InitialScale\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3892, i32 32 }
@___asan_gen_.815 = private unnamed_addr constant [15 x i8] c"pb0330_Initial\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4604, i32 32 }
@___asan_gen_.818 = private unnamed_addr constant [20 x i8] c"pb0330_InitialScale\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4653, i32 32 }
@___asan_gen_.821 = private unnamed_addr constant [15 x i8] c"po2030_Initial\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4836, i32 32 }
@___asan_gen_.824 = private unnamed_addr constant [20 x i8] c"po2030_InitialScale\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 4913, i32 32 }
@___asan_gen_.827 = private unnamed_addr constant [17 x i8] c"tas5130c_Initial\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5082, i32 32 }
@___asan_gen_.830 = private unnamed_addr constant [22 x i8] c"tas5130c_InitialScale\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5045, i32 32 }
@___asan_gen_.833 = private unnamed_addr constant [20 x i8] c"pas106b_Initial_com\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3547, i32 32 }
@___asan_gen_.836 = private unnamed_addr constant [16 x i8] c"adcm2700_matrix\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5648, i32 18 }
@___asan_gen_.839 = private unnamed_addr constant [14 x i8] c"gc0305_matrix\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5652, i32 18 }
@___asan_gen_.842 = private unnamed_addr constant [14 x i8] c"ov7620_matrix\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5654, i32 18 }
@___asan_gen_.845 = private unnamed_addr constant [15 x i8] c"pas202b_matrix\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5656, i32 18 }
@___asan_gen_.848 = private unnamed_addr constant [14 x i8] c"po2030_matrix\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5658, i32 18 }
@___asan_gen_.851 = private unnamed_addr constant [16 x i8] c"tas5130c_matrix\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5660, i32 18 }
@___asan_gen_.854 = private unnamed_addr constant [14 x i8] c"gc0303_matrix\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5662, i32 18 }
@___asan_gen_.857 = private unnamed_addr constant [10 x i8] c"matrix_tb\00", align 1
@___asan_gen_.858 = private constant [35 x i8] c"../drivers/media/usb/gspca/zc3xx.c\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 5664, i32 19 }
@llvm.compiler.used = appending global [292 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_force_sensor309, ptr @__UNIQUE_ID_force_sensortype308, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_zc3xx__307_7025_sd_driver_init6, ptr @__param_force_sensor, ptr @i2c_read._entry, ptr @i2c_read._entry_ptr, ptr @i2c_write._entry, ptr @i2c_write._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.12, ptr @sd_init._entry.15, ptr @sd_init._entry.18, ptr @sd_init._entry.21, ptr @sd_init._entry.24, ptr @sd_init._entry.27, ptr @sd_init._entry.30, ptr @sd_init._entry.33, ptr @sd_init._entry.36, ptr @sd_init._entry.39, ptr @sd_init._entry.42, ptr @sd_init._entry.45, ptr @sd_init._entry.48, ptr @sd_init._entry.51, ptr @sd_init._entry.54, ptr @sd_init._entry.56, ptr @sd_init._entry.59, ptr @sd_init._entry.62, ptr @sd_init._entry.65, ptr @sd_init._entry.68, ptr @sd_init._entry.70, ptr @sd_init._entry.73, ptr @sd_init._entry.76, ptr @sd_init._entry.79, ptr @sd_init._entry.82, ptr @sd_init._entry.9, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.11, ptr @sd_init._entry_ptr.14, ptr @sd_init._entry_ptr.17, ptr @sd_init._entry_ptr.20, ptr @sd_init._entry_ptr.23, ptr @sd_init._entry_ptr.26, ptr @sd_init._entry_ptr.29, ptr @sd_init._entry_ptr.32, ptr @sd_init._entry_ptr.35, ptr @sd_init._entry_ptr.38, ptr @sd_init._entry_ptr.41, ptr @sd_init._entry_ptr.44, ptr @sd_init._entry_ptr.47, ptr @sd_init._entry_ptr.50, ptr @sd_init._entry_ptr.53, ptr @sd_init._entry_ptr.55, ptr @sd_init._entry_ptr.58, ptr @sd_init._entry_ptr.61, ptr @sd_init._entry_ptr.64, ptr @sd_init._entry_ptr.67, ptr @sd_init._entry_ptr.69, ptr @sd_init._entry_ptr.72, ptr @sd_init._entry_ptr.75, ptr @sd_init._entry_ptr.78, ptr @sd_init._entry_ptr.81, ptr @sd_init._entry_ptr.84, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sif_probe._entry, ptr @sif_probe._entry_ptr, ptr @vga_2wr_probe._entry, ptr @vga_2wr_probe._entry_ptr, ptr @vga_3wr_probe._entry, ptr @vga_3wr_probe._entry.102, ptr @vga_3wr_probe._entry.105, ptr @vga_3wr_probe._entry.93, ptr @vga_3wr_probe._entry.96, ptr @vga_3wr_probe._entry.99, ptr @vga_3wr_probe._entry_ptr, ptr @vga_3wr_probe._entry_ptr.101, ptr @vga_3wr_probe._entry_ptr.104, ptr @vga_3wr_probe._entry_ptr.107, ptr @vga_3wr_probe._entry_ptr.95, ptr @vga_3wr_probe._entry_ptr.98, ptr @sd_driver, ptr @force_sensor, ptr @.str, ptr @device_table, ptr @sd_desc, ptr @sd_config.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @sif_mode, ptr @vga_mode, ptr @broken_vga_mode, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @chipset_revision_sensor, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @sd_init_controls.gamma, ptr @sd_init_controls._key, ptr @.str.110, ptr @zcxx_ctrl_ops, ptr @jpeg_qual, ptr @.str.111, ptr @.str.112, ptr @setcontrast.delta_b, ptr @setcontrast.delta_c, ptr @setcontrast.gamma_tb, ptr @setlightfreq.freq_tb, ptr @adcm2700_NoFlicker, ptr @adcm2700_50HZ, ptr @adcm2700_60HZ, ptr @cs2102_NoFlicker, ptr @cs2102_NoFlickerScale, ptr @cs2102_50HZ, ptr @cs2102_50HZScale, ptr @cs2102_60HZ, ptr @cs2102_60HZScale, ptr @gc0303_NoFlicker, ptr @gc0303_NoFlickerScale, ptr @gc0303_50HZ, ptr @gc0303_50HZScale, ptr @gc0303_60HZ, ptr @gc0303_60HZScale, ptr @gc0305_NoFlicker, ptr @gc0305_50HZ, ptr @gc0305_60HZ, ptr @hdcs2020_NoFlicker, ptr @hdcs2020_50HZ, ptr @hdcs2020_60HZ, ptr @hv7131b_NoFlicker, ptr @hv7131b_NoFlickerScale, ptr @hv7131b_50HZ, ptr @hv7131b_50HZScale, ptr @hv7131b_60HZ, ptr @hv7131b_60HZScale, ptr @hv7131r_NoFlicker, ptr @hv7131r_NoFlickerScale, ptr @hv7131r_50HZ, ptr @hv7131r_50HZScale, ptr @hv7131r_60HZ, ptr @hv7131r_60HZScale, ptr @icm105a_NoFlicker, ptr @icm105a_NoFlickerScale, ptr @icm105a_50HZ, ptr @icm105a_50HZScale, ptr @icm105a_60HZ, ptr @icm105a_60HZScale, ptr @mc501cb_NoFlicker, ptr @mc501cb_NoFlickerScale, ptr @mc501cb_50HZ, ptr @mc501cb_50HZScale, ptr @mc501cb_60HZ, ptr @mc501cb_60HZScale, ptr @mt9v111_1_AENoFlicker, ptr @mt9v111_1_AENoFlickerScale, ptr @mt9v111_1_AE50HZ, ptr @mt9v111_1_AE50HZScale, ptr @mt9v111_1_AE60HZ, ptr @mt9v111_1_AE60HZScale, ptr @mt9v111_3_AENoFlicker, ptr @mt9v111_3_AENoFlickerScale, ptr @mt9v111_3_AE50HZ, ptr @mt9v111_3_AE50HZScale, ptr @mt9v111_3_AE60HZ, ptr @mt9v111_3_AE60HZScale, ptr @ov7620_NoFlicker, ptr @ov7620_50HZ, ptr @ov7620_60HZ, ptr @pas106b_NoFlicker, ptr @pas106b_50HZ, ptr @pas106b_60HZ, ptr @pas202b_NoFlicker, ptr @pas202b_NoFlickerScale, ptr @pas202b_50HZ, ptr @pas202b_50HZScale, ptr @pas202b_60HZ, ptr @pas202b_60HZScale, ptr @pb0330_NoFlicker, ptr @pb0330_NoFlickerScale, ptr @pb0330_50HZ, ptr @pb0330_50HZScale, ptr @pb0330_60HZ, ptr @pb0330_60HZScale, ptr @po2030_NoFlicker, ptr @po2030_50HZ, ptr @po2030_60HZ, ptr @tas5130c_NoFlicker, ptr @tas5130c_NoFlickerScale, ptr @tas5130c_50HZ, ptr @tas5130c_50HZScale, ptr @tas5130c_60HZ, ptr @tas5130c_60HZScale, ptr @setsharpness.sharpness_tb, ptr @jpeg_head, ptr @sd_start.init_tb, ptr @adcm2700_Initial, ptr @adcm2700_InitialScale, ptr @cs2102_Initial, ptr @cs2102_InitialScale, ptr @cs2102K_Initial, ptr @cs2102K_InitialScale, ptr @gc0303_Initial, ptr @gc0303_InitialScale, ptr @gc0305_Initial, ptr @gc0305_InitialScale, ptr @hdcs2020_Initial, ptr @hdcs2020_InitialScale, ptr @hv7131b_Initial, ptr @hv7131b_InitialScale, ptr @hv7131r_Initial, ptr @hv7131r_InitialScale, ptr @icm105a_Initial, ptr @icm105a_InitialScale, ptr @mc501cb_Initial, ptr @mc501cb_InitialScale, ptr @mt9v111_1_Initial, ptr @mt9v111_1_InitialScale, ptr @mt9v111_3_Initial, ptr @mt9v111_3_InitialScale, ptr @ov7620_Initial, ptr @ov7620_InitialScale, ptr @ov7630c_Initial, ptr @ov7630c_InitialScale, ptr @pas106b_Initial, ptr @pas106b_InitialScale, ptr @pas202b_Initial, ptr @pas202b_InitialScale, ptr @pb0330_Initial, ptr @pb0330_InitialScale, ptr @po2030_Initial, ptr @po2030_InitialScale, ptr @tas5130c_Initial, ptr @tas5130c_InitialScale, ptr @pas106b_Initial_com, ptr @setmatrix.adcm2700_matrix, ptr @setmatrix.gc0305_matrix, ptr @setmatrix.ov7620_matrix, ptr @setmatrix.pas202b_matrix, ptr @setmatrix.po2030_matrix, ptr @setmatrix.tas5130c_matrix, ptr @setmatrix.gc0303_matrix, ptr @setmatrix.matrix_tb], section "llvm.metadata"
@0 = internal global [242 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_sensor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broken_vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_2wr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_3wr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipset_revision_sensor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_3wr_probe._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_3wr_probe._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_3wr_probe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_3wr_probe._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_3wr_probe._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls.gamma to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zcxx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_qual to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcontrast.delta_b to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcontrast.delta_c to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcontrast.gamma_tb to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setlightfreq.freq_tb to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm2700_NoFlicker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm2700_50HZ to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm2700_60HZ to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_NoFlicker to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_NoFlickerScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_50HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_50HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_60HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_60HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_NoFlicker to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_NoFlickerScale to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_50HZ to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_50HZScale to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_60HZ to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_60HZScale to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0305_NoFlicker to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0305_50HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0305_60HZ to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs2020_NoFlicker to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs2020_50HZ to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs2020_60HZ to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_NoFlicker to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_NoFlickerScale to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_50HZ to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_50HZScale to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_60HZ to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_60HZScale to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_NoFlicker to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_NoFlickerScale to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_50HZ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_50HZScale to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_60HZ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_60HZScale to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_NoFlicker to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_NoFlickerScale to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_50HZ to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_50HZScale to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_60HZ to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_60HZScale to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_NoFlicker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_NoFlickerScale to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_50HZ to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_50HZScale to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_60HZ to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_60HZScale to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_AENoFlicker to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_AENoFlickerScale to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_AE50HZ to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_AE50HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_AE60HZ to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_AE60HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_AENoFlicker to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_AENoFlickerScale to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_AE50HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_AE50HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_AE60HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_AE60HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7620_NoFlicker to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7620_50HZ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7620_60HZ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106b_NoFlicker to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106b_50HZ to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106b_60HZ to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_NoFlicker to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_NoFlickerScale to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_50HZ to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_50HZScale to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_60HZ to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_60HZScale to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_NoFlicker to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_NoFlickerScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_50HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_50HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_60HZ to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_60HZScale to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030_NoFlicker to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030_50HZ to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030_60HZ to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_NoFlicker to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_NoFlickerScale to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_50HZ to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_50HZScale to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_60HZ to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_60HZScale to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setsharpness.sharpness_tb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.init_tb to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm2700_Initial to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm2700_InitialScale to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_Initial to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102_InitialScale to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102K_Initial to i32), i32 1492, i32 1856, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2102K_InitialScale to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_Initial to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0303_InitialScale to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0305_Initial to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0305_InitialScale to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs2020_Initial to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs2020_InitialScale to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_Initial to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131b_InitialScale to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_Initial to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_InitialScale to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_Initial to i32), i32 700, i32 864, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm105a_InitialScale to i32), i32 692, i32 864, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_Initial to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc501cb_InitialScale to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_Initial to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_1_InitialScale to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_Initial to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_3_InitialScale to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7620_Initial to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7620_InitialScale to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630c_Initial to i32), i32 596, i32 736, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630c_InitialScale to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106b_Initial to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106b_InitialScale to i32), i32 332, i32 416, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_Initial to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202b_InitialScale to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_Initial to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0330_InitialScale to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030_Initial to i32), i32 292, i32 384, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030_InitialScale to i32), i32 292, i32 384, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_Initial to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130c_InitialScale to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106b_Initial_com to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.adcm2700_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.gc0305_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.ov7620_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.pas202b_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.po2030_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.tas5130c_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.gc0303_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setmatrix.matrix_tb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3280, ptr noundef null) #7
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
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12315, i16 %1)
  %cmp = icmp ne i16 %1, 12315
  %spec.select = zext i1 %cmp to i8
  %2 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 1
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  %conv3 = trunc i32 %5 to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %sensor, align 2
  %reg08 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %7 = ptrtoint ptr %reg08 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %reg08, align 4
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @transfer_update, ptr %func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @zcxx_probeSensor(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %do.end, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %call) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  %1 = load i32, ptr @force_sensor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %1)
  %cmp8 = icmp ult i32 %1, 19
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %conv = trunc i32 %1 to i8
  %sensor10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %2 = ptrtoint ptr %sensor10 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %sensor10, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp sgt i32 %3, 0
  br i1 %cmp12, label %do.end17, label %if.then9.if.end441_crit_edge

if.then9.if.end441_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %name20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name20, i32 noundef %1) #10
  br label %if.end441

if.else:                                          ; preds = %if.end7
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end437 [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb66
    i32 2, label %do.body120
    i32 4, label %do.body137
    i32 8, label %do.body154
    i32 10, label %do.body171
    i32 12, label %do.body189
    i32 14, label %do.body206
    i32 15, label %do.body223
    i32 16, label %if.else.do.body240_crit_edge
    i32 18, label %if.else.do.body240_crit_edge574
    i32 17, label %do.body257
    i32 19, label %if.else.do.body274_crit_edge
    i32 21, label %if.else.do.body274_crit_edge575
    i32 20, label %do.body297
    i32 22, label %do.body316
    i32 41, label %do.body333
    i32 771, label %do.body350
    i32 8240, label %do.body367
    i32 30240, label %do.body384
    i32 30257, label %do.body401
    i32 30280, label %do.body418
  ]

if.else.do.body274_crit_edge575:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body274

if.else.do.body274_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body274

if.else.do.body240_crit_edge574:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body240

if.else.do.body240_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body240

sw.bb:                                            ; preds = %if.else
  %sensor26 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %5 = ptrtoint ptr %sensor26 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor26, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %6, label %do.end62 [
    i8 9, label %do.body29
    i8 3, label %do.body45
  ]

do.body29:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp30 = icmp sgt i32 %8, 0
  br i1 %cmp30, label %do.end35, label %do.body29.if.then452_crit_edge

do.body29.if.then452_crit_edge:                   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then452

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %name38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name38) #10
  br label %if.then452

do.body45:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp46 = icmp sgt i32 %9, 0
  br i1 %cmp46, label %do.end51, label %do.body45.if.then452_crit_edge

do.body45.if.then452_crit_edge:                   ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then452

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %name54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name54) #10
  br label %if.then452

do.end62:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  %10 = ptrtoint ptr %sensor26 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %sensor26, align 2
  br label %if.then452

sw.bb66:                                          ; preds = %if.else
  %call67 = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 0)
  %conv68 = zext i16 %call67 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp70 = icmp sgt i32 %11, 0
  br i1 %cmp70, label %do.end75, label %sw.bb66.do.end83_crit_edge

sw.bb66.do.end83_crit_edge:                       ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

do.end75:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  %name78 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name78, i32 noundef %conv68) #10
  br label %do.end83

do.end83:                                         ; preds = %do.end75, %sw.bb66.do.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call67)
  %switch = icmp ult i16 %call67, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp86 = icmp sgt i32 %12, 0
  br i1 %switch, label %do.body85, label %do.body102

do.body85:                                        ; preds = %do.end83
  br i1 %cmp86, label %do.end91, label %do.body85.do.end99_crit_edge

do.body85.do.end99_crit_edge:                     ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end99

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %name94 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name94) #10
  br label %do.end99

do.end99:                                         ; preds = %do.end91, %do.body85.do.end99_crit_edge
  %sensor100 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %13 = ptrtoint ptr %sensor100 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %sensor100, align 2
  br label %if.end441

do.body102:                                       ; preds = %do.end83
  br i1 %cmp86, label %do.end108, label %do.body102.do.end116_crit_edge

do.body102.do.end116_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %name111 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name111) #10
  br label %do.end116

do.end116:                                        ; preds = %do.end108, %do.body102.do.end116_crit_edge
  %sensor117 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %14 = ptrtoint ptr %sensor117 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %sensor117, align 2
  br label %if.end441

do.body120:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp121 = icmp sgt i32 %15, 0
  br i1 %cmp121, label %do.end126, label %do.body120.do.end134_crit_edge

do.body120.do.end134_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end134

do.end126:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  %name129 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name129) #10
  br label %do.end134

do.end134:                                        ; preds = %do.end126, %do.body120.do.end134_crit_edge
  %sensor135 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %16 = ptrtoint ptr %sensor135 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 18, ptr %sensor135, align 2
  br label %if.end453

do.body137:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp138 = icmp sgt i32 %17, 0
  br i1 %cmp138, label %do.end143, label %do.body137.do.end151_crit_edge

do.body137.do.end151_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end151

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %name146 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name146) #10
  br label %do.end151

do.end151:                                        ; preds = %do.end143, %do.body137.do.end151_crit_edge
  %sensor152 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %18 = ptrtoint ptr %sensor152 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sensor152, align 2
  br label %if.end453

do.body154:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp155 = icmp sgt i32 %19, 0
  br i1 %cmp155, label %do.end160, label %do.body154.do.end168_crit_edge

do.body154.do.end168_crit_edge:                   ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end168

do.end160:                                        ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  %name163 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name163) #10
  br label %do.end168

do.end168:                                        ; preds = %do.end160, %do.body154.do.end168_crit_edge
  %sensor169 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %20 = ptrtoint ptr %sensor169 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %sensor169, align 2
  br label %if.end453

do.body171:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp172 = icmp sgt i32 %21, 0
  br i1 %cmp172, label %do.end177, label %do.body171.do.end186_crit_edge

do.body171.do.end186_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end186

do.end177:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %name180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %chip_revision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %22 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %chip_revision, align 8
  %conv182 = zext i16 %23 to i32
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name180, i32 noundef %conv182) #10
  br label %do.end186

do.end186:                                        ; preds = %do.end177, %do.body171.do.end186_crit_edge
  %sensor187 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %24 = ptrtoint ptr %sensor187 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %sensor187, align 2
  br label %if.end453

do.body189:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp190 = icmp sgt i32 %25, 0
  br i1 %cmp190, label %do.end195, label %do.body189.do.end203_crit_edge

do.body189.do.end203_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end203

do.end195:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  %name198 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name198) #10
  br label %do.end203

do.end203:                                        ; preds = %do.end195, %do.body189.do.end203_crit_edge
  %sensor204 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %26 = ptrtoint ptr %sensor204 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %sensor204, align 2
  br label %if.end453

do.body206:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp207 = icmp sgt i32 %27, 0
  br i1 %cmp207, label %do.end212, label %do.body206.do.end220_crit_edge

do.body206.do.end220_crit_edge:                   ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end220

do.end212:                                        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  %name215 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name215) #10
  br label %do.end220

do.end220:                                        ; preds = %do.end212, %do.body206.do.end220_crit_edge
  %sensor221 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %28 = ptrtoint ptr %sensor221 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 15, ptr %sensor221, align 2
  br label %if.end453

do.body223:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp224 = icmp sgt i32 %29, 0
  br i1 %cmp224, label %do.end229, label %do.body223.do.end237_crit_edge

do.body223.do.end237_crit_edge:                   ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end237

do.end229:                                        ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #9
  %name232 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name232) #10
  br label %do.end237

do.end237:                                        ; preds = %do.end229, %do.body223.do.end237_crit_edge
  %sensor238 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %30 = ptrtoint ptr %sensor238 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 14, ptr %sensor238, align 2
  br label %if.end453

do.body240:                                       ; preds = %if.else.do.body240_crit_edge, %if.else.do.body240_crit_edge574
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp241 = icmp sgt i32 %31, 0
  br i1 %cmp241, label %do.end246, label %do.body240.if.then444.sink.split_crit_edge

do.body240.if.then444.sink.split_crit_edge:       ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then444.sink.split

do.end246:                                        ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  %name249 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name249) #10
  br label %if.then444.sink.split

do.body257:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp258 = icmp sgt i32 %32, 0
  br i1 %cmp258, label %do.end263, label %do.body257.do.end271_crit_edge

do.body257.do.end271_crit_edge:                   ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end271

do.end263:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #9
  %name266 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name266) #10
  br label %do.end271

do.end271:                                        ; preds = %do.end263, %do.body257.do.end271_crit_edge
  %sensor272 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %33 = ptrtoint ptr %sensor272 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %sensor272, align 2
  br label %if.end453

do.body274:                                       ; preds = %if.else.do.body274_crit_edge, %if.else.do.body274_crit_edge575
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %34 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp275 = icmp sgt i32 %34, 0
  br i1 %cmp275, label %do.end280, label %do.body274.do.end290_crit_edge

do.body274.do.end290_crit_edge:                   ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end290

do.end280:                                        ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #9
  %name283 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %chip_revision285 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %35 = ptrtoint ptr %chip_revision285 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %chip_revision285, align 8
  %conv286 = zext i16 %36 to i32
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name283, i32 noundef %conv286) #10
  br label %do.end290

do.end290:                                        ; preds = %do.end280, %do.body274.do.end290_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %37 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp292 = icmp eq i8 %38, 0
  %conv294 = select i1 %cmp292, i8 10, i8 11
  br label %if.then444.sink.split

do.body297:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %39 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp298 = icmp sgt i32 %39, 0
  br i1 %cmp298, label %do.end303, label %do.body297.do.end313_crit_edge

do.body297.do.end313_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end313

do.end303:                                        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #9
  %name306 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %chip_revision308 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %40 = ptrtoint ptr %chip_revision308 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %chip_revision308, align 8
  %conv309 = zext i16 %41 to i32
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name306, i32 noundef %conv309) #10
  br label %do.end313

do.end313:                                        ; preds = %do.end303, %do.body297.do.end313_crit_edge
  %sensor314 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %42 = ptrtoint ptr %sensor314 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %sensor314, align 2
  br label %if.end453

do.body316:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %43 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp317 = icmp sgt i32 %43, 0
  br i1 %cmp317, label %do.end322, label %do.body316.do.end330_crit_edge

do.body316.do.end330_crit_edge:                   ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end330

do.end322:                                        ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #9
  %name325 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call327 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name325) #10
  br label %do.end330

do.end330:                                        ; preds = %do.end322, %do.body316.do.end330_crit_edge
  %sensor331 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %44 = ptrtoint ptr %sensor331 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %sensor331, align 2
  br label %if.end453

do.body333:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %45 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp334 = icmp sgt i32 %45, 0
  br i1 %cmp334, label %do.end339, label %do.body333.do.end347_crit_edge

do.body333.do.end347_crit_edge:                   ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end347

do.end339:                                        ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #9
  %name342 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name342) #10
  br label %do.end347

do.end347:                                        ; preds = %do.end339, %do.body333.do.end347_crit_edge
  %sensor348 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %46 = ptrtoint ptr %sensor348 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %sensor348, align 2
  br label %if.end455

do.body350:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %47 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp351 = icmp sgt i32 %47, 0
  br i1 %cmp351, label %do.end356, label %do.body350.do.end364_crit_edge

do.body350.do.end364_crit_edge:                   ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end364

do.end356:                                        ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #9
  %name359 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name359) #10
  br label %do.end364

do.end364:                                        ; preds = %do.end356, %do.body350.do.end364_crit_edge
  %sensor365 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %48 = ptrtoint ptr %sensor365 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %sensor365, align 2
  br label %if.end455

do.body367:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp368 = icmp sgt i32 %49, 0
  br i1 %cmp368, label %do.end373, label %do.body367.do.end381_crit_edge

do.body367.do.end381_crit_edge:                   ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end381

do.end373:                                        ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #9
  %name376 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call378 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name376) #10
  br label %do.end381

do.end381:                                        ; preds = %do.end373, %do.body367.do.end381_crit_edge
  %sensor382 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %50 = ptrtoint ptr %sensor382 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 17, ptr %sensor382, align 2
  br label %if.end455

do.body384:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp385 = icmp sgt i32 %51, 0
  br i1 %cmp385, label %do.end390, label %do.body384.do.end398_crit_edge

do.body384.do.end398_crit_edge:                   ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end398

do.end390:                                        ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #9
  %name393 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call395 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name393) #10
  br label %do.end398

do.end398:                                        ; preds = %do.end390, %do.body384.do.end398_crit_edge
  %sensor399 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %52 = ptrtoint ptr %sensor399 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 12, ptr %sensor399, align 2
  br label %if.end455

do.body401:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %53 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp402 = icmp sgt i32 %53, 0
  br i1 %cmp402, label %do.end407, label %do.body401.do.end415_crit_edge

do.body401.do.end415_crit_edge:                   ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end415

do.end407:                                        ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #9
  %name410 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name410) #10
  br label %do.end415

do.end415:                                        ; preds = %do.end407, %do.body401.do.end415_crit_edge
  %sensor416 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %54 = ptrtoint ptr %sensor416 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 13, ptr %sensor416, align 2
  br label %if.end455

do.body418:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %55 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp419 = icmp sgt i32 %55, 0
  br i1 %cmp419, label %do.end424, label %do.body418.do.end432_crit_edge

do.body418.do.end432_crit_edge:                   ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end432

do.end424:                                        ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #9
  %name427 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name427) #10
  br label %do.end432

do.end432:                                        ; preds = %do.end424, %do.body418.do.end432_crit_edge
  %sensor433 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %56 = ptrtoint ptr %sensor433 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 12, ptr %sensor433, align 2
  br label %if.end455

do.end437:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call439 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call) #10
  br label %cleanup

if.end441:                                        ; preds = %do.end116, %do.end99, %do.end17, %if.then9.if.end441_crit_edge
  %sensor.0 = phi i32 [ %call, %do.end17 ], [ %call, %if.then9.if.end441_crit_edge ], [ %conv68, %do.end116 ], [ %conv68, %do.end99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sensor.0)
  %cmp442 = icmp slt i32 %sensor.0, 32
  br i1 %cmp442, label %if.end441.if.then444_crit_edge, label %if.end441.if.end455_crit_edge

if.end441.if.end455_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end455

if.end441.if.then444_crit_edge:                   ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then444

if.then444.sink.split:                            ; preds = %do.end290, %do.end246, %do.body240.if.then444.sink.split_crit_edge
  %.sink = phi i8 [ %conv294, %do.end290 ], [ 18, %do.end246 ], [ 18, %do.body240.if.then444.sink.split_crit_edge ]
  %sensor255 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %57 = ptrtoint ptr %sensor255 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink, ptr %sensor255, align 2
  br label %if.then444

if.then444:                                       ; preds = %if.then444.sink.split, %if.end441.if.then444_crit_edge
  %sensor.0562 = phi i32 [ %sensor.0, %if.end441.if.then444_crit_edge ], [ %call, %if.then444.sink.split ]
  %58 = zext i32 %sensor.0562 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %sensor.0562, label %if.then444.if.end453_crit_edge [
    i32 -1, label %if.then444.if.then452_crit_edge
    i32 16, label %if.then444.if.then452_crit_edge576
    i32 18, label %if.then444.if.then452_crit_edge577
  ]

if.then444.if.then452_crit_edge577:               ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then452

if.then444.if.then452_crit_edge576:               ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then452

if.then444.if.then452_crit_edge:                  ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then452

if.then444.if.end453_crit_edge:                   ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end453

if.then452:                                       ; preds = %if.then444.if.then452_crit_edge, %if.then444.if.then452_crit_edge576, %if.then444.if.then452_crit_edge577, %do.end62, %do.end51, %do.body45.if.then452_crit_edge, %do.end35, %do.body29.if.then452_crit_edge
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %59 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i = icmp slt i32 %60, 0
  br i1 %cmp.i, label %if.then452.if.end453_crit_edge, label %if.end.i

if.then452.if.end453_crit_edge:                   ; preds = %if.then452
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end453

if.end.i:                                         ; preds = %if.then452
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i = shl i32 %64, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.if.end453_crit_edge

if.end.i.if.end453_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end453

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  %65 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %if.end453

if.end453:                                        ; preds = %do.end.i, %if.end.i.if.end453_crit_edge, %if.then452.if.end453_crit_edge, %if.then444.if.end453_crit_edge, %do.end330, %do.end313, %do.end271, %do.end237, %do.end220, %do.end203, %do.end186, %do.end168, %do.end151, %do.end134
  %usb_err.i542 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %66 = ptrtoint ptr %usb_err.i542 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usb_err.i542, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i543 = icmp slt i32 %67, 0
  br i1 %cmp.i543, label %if.end453.if.end455_crit_edge, label %if.end.i546

if.end453.if.end455_crit_edge:                    ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end455

if.end.i546:                                      ; preds = %if.end453
  %dev.i544 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %68 = ptrtoint ptr %dev.i544 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i544, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i545 = shl i32 %71, 8
  %or2.i = or i32 %shl.i.i545, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %72 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef %73, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i548, label %if.end.i546.if.end455_crit_edge

if.end.i546.if.end455_crit_edge:                  ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end455

do.end.i548:                                      ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i547 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  %74 = ptrtoint ptr %usb_err.i542 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call3.i, ptr %usb_err.i542, align 8
  br label %if.end455

if.end455:                                        ; preds = %do.end.i548, %if.end.i546.if.end455_crit_edge, %if.end453.if.end455_crit_edge, %if.end441.if.end455_crit_edge, %do.end432, %do.end415, %do.end398, %do.end381, %do.end364, %do.end347
  %cam456 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %sensor457 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %75 = ptrtoint ptr %sensor457 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sensor457, align 2
  %idxprom = zext i8 %76 to i32
  %77 = lshr i32 503294, %idxprom
  %78 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %switch.selectcmp.not = icmp eq i32 %78, 0
  %switch.select = select i1 %switch.selectcmp.not, ptr @broken_vga_mode, ptr @vga_mode
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %76)
  %switch.selectcmp572 = icmp eq i8 %76, 14
  %switch.select573 = select i1 %switch.selectcmp572, ptr @sif_mode, ptr %switch.select
  %79 = ptrtoint ptr %cam456 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %switch.select573, ptr %cam456, align 4
  %nmodes465 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %80 = ptrtoint ptr %nmodes465 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %nmodes465, align 4
  %usb_err.i549 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %81 = ptrtoint ptr %usb_err.i549 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %usb_err.i549, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i550 = icmp slt i32 %82, 0
  br i1 %cmp.i550, label %if.end455.reg_w.exit559_crit_edge, label %if.end.i556

if.end455.reg_w.exit559_crit_edge:                ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit559

if.end.i556:                                      ; preds = %if.end455
  %dev.i551 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %83 = ptrtoint ptr %dev.i551 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i551, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %shl.i.i552 = shl i32 %86, 8
  %or.i553 = or i32 %shl.i.i552, -2147483648
  %call2.i554 = tail call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or.i553, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i554)
  %cmp3.i555 = icmp slt i32 %call2.i554, 0
  br i1 %cmp3.i555, label %do.end.i558, label %if.end.i556.reg_w.exit559_crit_edge

if.end.i556.reg_w.exit559_crit_edge:              ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit559

do.end.i558:                                      ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i554) #10
  %87 = ptrtoint ptr %usb_err.i549 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call2.i554, ptr %usb_err.i549, align 8
  br label %reg_w.exit559

reg_w.exit559:                                    ; preds = %do.end.i558, %if.end.i556.reg_w.exit559_crit_edge, %if.end455.reg_w.exit559_crit_edge
  %88 = ptrtoint ptr %usb_err.i549 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %usb_err.i549, align 8
  br label %cleanup

cleanup:                                          ; preds = %reg_w.exit559, %do.end437
  %retval.0 = phi i32 [ %89, %reg_w.exit559 ], [ -22, %do.end437 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 8, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.110) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %brightness, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %contrast, align 8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [19 x i8], ptr @sd_init_controls.gamma, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i64
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963792, i64 noundef 1, i64 noundef 6, i64 noundef 1, i64 noundef %conv) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %1, align 8
  %9 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sensor, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %10, label %entry.if.end16_crit_edge [
    i8 7, label %if.then
    i8 12, label %if.then13
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963793, i64 noundef 781, i64 noundef 18750, i64 noundef 1, i64 noundef 2343) #7
  br label %if.end16.sink.split

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 65) #7
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then13, %if.then
  %call14.sink = phi ptr [ %call14, %if.then13 ], [ %call8, %if.then ]
  %exposure15 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %exposure15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14.sink, ptr %exposure15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %entry.if.end16_crit_edge
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %13, align 4
  %15 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %16)
  %cmp20.not = icmp eq i8 %16, 13
  br i1 %cmp20.not, label %if.end16.if.end24_crit_edge, label %if.then22

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %plfreq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %17 = ptrtoint ptr %plfreq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %plfreq, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16.if.end24_crit_edge
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %19)
  %cmp27 = icmp eq i8 %19, 17
  %20 = select i1 %cmp27, i64 0, i64 2
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef %20) #7
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %21 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call30, ptr %sharpness, align 8
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zcxx_ctrl_ops, i32 noundef 10291459, i64 noundef 50, i64 noundef 87, i64 noundef 1, i64 noundef 75) #7
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %22 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call34, ptr %jpegqual, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %23 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end39, label %do.end

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #10
  %25 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end24
  tail call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %1) #7
  %27 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sensor, align 2
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %28, label %if.end39.cleanup_crit_edge [
    i8 7, label %if.end39.if.then49_crit_edge
    i8 12, label %if.end39.if.then49_crit_edge84
  ]

if.end39.if.then49_crit_edge84:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.end39.if.then49_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end39.if.then49_crit_edge, %if.end39.if.then49_crit_edge84
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %13, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end39.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %26, %do.end ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.then49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  %4 = call ptr @memcpy(ptr %jpeg_hdr, ptr @jpeg_head, i32 589)
  %5 = lshr i32 %1, 8
  %conv.i = trunc i32 %5 to i8
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %arrayidx9.i, align 1
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %12 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %14 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %15 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %13, i32 %idxprom, i32 7
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %priv, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sensor, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %19, label %entry.sw.epilog_crit_edge [
    i8 7, label %sw.bb
    i8 14, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @zcxx_probeSensor(ptr noundef %gspca_dev)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull @pas106b_Initial_com)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sensor, align 2
  %idxprom4 = zext i8 %22 to i32
  %arrayidx6 = getelementptr [19 x [2 x ptr]], ptr @sd_start.init_tb, i32 0, i32 %idxprom4, i32 %17
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6, align 4
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef %24)
  %25 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sensor, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %26, label %sw.epilog.sw.epilog21_crit_edge [
    i8 0, label %sw.epilog.sw.bb9_crit_edge
    i8 4, label %sw.epilog.sw.bb9_crit_edge560
    i8 12, label %sw.epilog.sw.bb9_crit_edge561
    i8 17, label %sw.epilog.sw.bb9_crit_edge562
    i8 18, label %sw.epilog.sw.bb9_crit_edge563
    i8 3, label %sw.epilog.sw.bb9_crit_edge564
    i8 7, label %sw.epilog.sw.bb14_crit_edge
    i8 15, label %sw.epilog.sw.bb14_crit_edge565
  ]

sw.epilog.sw.bb14_crit_edge565:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog.sw.bb14_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog.sw.bb9_crit_edge564:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge563:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge562:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge561:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge560:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb9:                                           ; preds = %sw.epilog.sw.bb9_crit_edge, %sw.epilog.sw.bb9_crit_edge560, %sw.epilog.sw.bb9_crit_edge561, %sw.epilog.sw.bb9_crit_edge562, %sw.epilog.sw.bb9_crit_edge563, %sw.epilog.sw.bb9_crit_edge564
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp slt i32 %29, 0
  br i1 %cmp.i, label %sw.bb9.reg_w.exit152_crit_edge, label %if.end.i

sw.bb9.reg_w.exit152_crit_edge:                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit152

if.end.i:                                         ; preds = %sw.bb9
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i = shl i32 %33, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %34 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 2, ptr noundef %35, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  br label %reg_w.exit152.sink.split

reg_r.exit:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i136 = icmp slt i32 %.pr, 0
  br i1 %cmp.i136, label %reg_r.exit.reg_w.exit152_crit_edge, label %if.end.i139

reg_r.exit.reg_w.exit152_crit_edge:               ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit152

if.end.i139:                                      ; preds = %reg_r.exit
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i138 = shl i32 %40, 8
  %or.i = or i32 %shl.i.i138, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext 429, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i141, label %reg_w.exit

do.end.i141:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  br label %reg_w.exit152.sink.split

reg_w.exit:                                       ; preds = %if.end.i139
  %41 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr498.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr498.pr)
  %cmp.i143 = icmp slt i32 %.pr498.pr, 0
  br i1 %cmp.i143, label %reg_w.exit.reg_w.exit152_crit_edge, label %if.end.i149

reg_w.exit.reg_w.exit152_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit152

if.end.i149:                                      ; preds = %reg_w.exit
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i145 = shl i32 %45, 8
  %or.i146 = or i32 %shl.i.i145, -2147483648
  %call2.i147 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i146, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 21, i16 noundef zeroext 430, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %cmp3.i148 = icmp slt i32 %call2.i147, 0
  br i1 %cmp3.i148, label %do.end.i151, label %if.end.i149.reg_w.exit152_crit_edge

if.end.i149.reg_w.exit152_crit_edge:              ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit152

do.end.i151:                                      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i147) #10
  br label %reg_w.exit152.sink.split

reg_w.exit152.sink.split:                         ; preds = %do.end.i151, %do.end.i141, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call2.i, %do.end.i141 ], [ %call2.i147, %do.end.i151 ]
  %46 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit152

reg_w.exit152:                                    ; preds = %reg_w.exit152.sink.split, %if.end.i149.reg_w.exit152_crit_edge, %reg_w.exit.reg_w.exit152_crit_edge, %reg_r.exit.reg_w.exit152_crit_edge, %sw.bb9.reg_w.exit152_crit_edge
  %47 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %48)
  %cmp = icmp eq i8 %48, 18
  br i1 %cmp, label %reg_w.exit152.sw.epilog21_crit_edge, label %if.end

reg_w.exit152.sw.epilog21_crit_edge:              ; preds = %reg_w.exit152
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end:                                           ; preds = %reg_w.exit152
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i154 = icmp slt i32 %50, 0
  br i1 %cmp.i154, label %if.end.sw.epilog21_crit_edge, label %if.end.i160

if.end.sw.epilog21_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end.i160:                                      ; preds = %if.end
  %dev.i155 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %51 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i155, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i156 = shl i32 %54, 8
  %or.i157 = or i32 %shl.i.i156, -2147483648
  %call2.i158 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i157, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 13, i16 noundef zeroext 58, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i158)
  %cmp3.i159 = icmp slt i32 %call2.i158, 0
  br i1 %cmp3.i159, label %do.end.i162, label %reg_w.exit163

do.end.i162:                                      ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i158) #10
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call2.i158, ptr %usb_err.i, align 8
  br label %sw.epilog21

reg_w.exit163:                                    ; preds = %if.end.i160
  %56 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr500 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr500)
  %cmp.i165 = icmp slt i32 %.pr500, 0
  br i1 %cmp.i165, label %reg_w.exit163.sw.epilog21_crit_edge, label %if.end.i171

reg_w.exit163.sw.epilog21_crit_edge:              ; preds = %reg_w.exit163
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end.i171:                                      ; preds = %reg_w.exit163
  %57 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i155, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i167 = shl i32 %60, 8
  %or.i168 = or i32 %shl.i.i167, -2147483648
  %call2.i169 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i168, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 59, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i169)
  %cmp3.i170 = icmp slt i32 %call2.i169, 0
  br i1 %cmp3.i170, label %do.end.i173, label %reg_w.exit174

do.end.i173:                                      ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i169) #10
  %61 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call2.i169, ptr %usb_err.i, align 8
  br label %sw.epilog21

reg_w.exit174:                                    ; preds = %if.end.i171
  %62 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr502.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr502.pr)
  %cmp.i176 = icmp slt i32 %.pr502.pr, 0
  br i1 %cmp.i176, label %reg_w.exit174.sw.epilog21_crit_edge, label %if.end.i182

reg_w.exit174.sw.epilog21_crit_edge:              ; preds = %reg_w.exit174
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end.i182:                                      ; preds = %reg_w.exit174
  %63 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i155, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i178 = shl i32 %66, 8
  %or.i179 = or i32 %shl.i.i178, -2147483648
  %call2.i180 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i179, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i180)
  %cmp3.i181 = icmp slt i32 %call2.i180, 0
  br i1 %cmp3.i181, label %do.end.i184, label %if.end.i182.sw.epilog21_crit_edge

if.end.i182.sw.epilog21_crit_edge:                ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

do.end.i184:                                      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i180) #10
  %67 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call2.i180, ptr %usb_err.i, align 8
  br label %sw.epilog21

sw.bb14:                                          ; preds = %sw.epilog.sw.bb14_crit_edge, %sw.epilog.sw.bb14_crit_edge565
  %usb_err.i186 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %68 = ptrtoint ptr %usb_err.i186 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usb_err.i186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i187 = icmp slt i32 %69, 0
  br i1 %cmp.i187, label %sw.bb14.reg_w.exit218_crit_edge, label %if.end.i193

sw.bb14.reg_w.exit218_crit_edge:                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218

if.end.i193:                                      ; preds = %sw.bb14
  %dev.i188 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %70 = ptrtoint ptr %dev.i188 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i188, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i189 = shl i32 %73, 8
  %or.i190 = or i32 %shl.i.i189, -2147483648
  %call2.i191 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i190, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 59, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i191)
  %cmp3.i192 = icmp slt i32 %call2.i191, 0
  br i1 %cmp3.i192, label %if.end.i193.reg_w.exit218.sink.split_crit_edge, label %reg_w.exit196

if.end.i193.reg_w.exit218.sink.split_crit_edge:   ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.sink.split

reg_w.exit196:                                    ; preds = %if.end.i193
  %74 = ptrtoint ptr %usb_err.i186 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr504 = load i32, ptr %usb_err.i186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr504)
  %cmp.i198 = icmp slt i32 %.pr504, 0
  br i1 %cmp.i198, label %reg_w.exit196.reg_w.exit218_crit_edge, label %if.end.i204

reg_w.exit196.reg_w.exit218_crit_edge:            ; preds = %reg_w.exit196
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218

if.end.i204:                                      ; preds = %reg_w.exit196
  %75 = ptrtoint ptr %dev.i188 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i188, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i200 = shl i32 %78, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %call2.i202 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i201, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 58, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i202)
  %cmp3.i203 = icmp slt i32 %call2.i202, 0
  br i1 %cmp3.i203, label %if.end.i204.reg_w.exit218.sink.split_crit_edge, label %reg_w.exit207

if.end.i204.reg_w.exit218.sink.split_crit_edge:   ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.sink.split

reg_w.exit207:                                    ; preds = %if.end.i204
  %79 = ptrtoint ptr %usb_err.i186 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr506.pr = load i32, ptr %usb_err.i186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr506.pr)
  %cmp.i209 = icmp slt i32 %.pr506.pr, 0
  br i1 %cmp.i209, label %reg_w.exit207.reg_w.exit218_crit_edge, label %if.end.i215

reg_w.exit207.reg_w.exit218_crit_edge:            ; preds = %reg_w.exit207
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218

if.end.i215:                                      ; preds = %reg_w.exit207
  %80 = ptrtoint ptr %dev.i188 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i188, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i211 = shl i32 %83, 8
  %or.i212 = or i32 %shl.i.i211, -2147483648
  %call2.i213 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or.i212, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 57, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i213)
  %cmp3.i214 = icmp slt i32 %call2.i213, 0
  br i1 %cmp3.i214, label %if.end.i215.reg_w.exit218.sink.split_crit_edge, label %if.end.i215.reg_w.exit218_crit_edge

if.end.i215.reg_w.exit218_crit_edge:              ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218

if.end.i215.reg_w.exit218.sink.split_crit_edge:   ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.sink.split

reg_w.exit218.sink.split:                         ; preds = %if.end.i215.reg_w.exit218.sink.split_crit_edge, %if.end.i204.reg_w.exit218.sink.split_crit_edge, %if.end.i193.reg_w.exit218.sink.split_crit_edge
  %call2.i191.sink558 = phi i32 [ %call2.i191, %if.end.i193.reg_w.exit218.sink.split_crit_edge ], [ %call2.i202, %if.end.i204.reg_w.exit218.sink.split_crit_edge ], [ %call2.i213, %if.end.i215.reg_w.exit218.sink.split_crit_edge ]
  %call6.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i191.sink558) #10
  %84 = ptrtoint ptr %usb_err.i186 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call2.i191.sink558, ptr %usb_err.i186, align 8
  br label %reg_w.exit218

reg_w.exit218:                                    ; preds = %reg_w.exit218.sink.split, %if.end.i215.reg_w.exit218_crit_edge, %reg_w.exit207.reg_w.exit218_crit_edge, %reg_w.exit196.reg_w.exit218_crit_edge, %sw.bb14.reg_w.exit218_crit_edge
  %85 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %86)
  %cmp17 = icmp eq i8 %86, 7
  br i1 %cmp17, label %if.then19, label %reg_w.exit218.sw.epilog21_crit_edge

reg_w.exit218.sw.epilog21_crit_edge:              ; preds = %reg_w.exit218
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.then19:                                        ; preds = %reg_w.exit218
  %87 = ptrtoint ptr %usb_err.i186 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %usb_err.i186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i220 = icmp slt i32 %88, 0
  br i1 %cmp.i220, label %if.then19.sw.epilog21_crit_edge, label %if.end.i226

if.then19.sw.epilog21_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end.i226:                                      ; preds = %if.then19
  %dev.i221 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %89 = ptrtoint ptr %dev.i221 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i221, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i222 = shl i32 %92, 8
  %or.i223 = or i32 %shl.i.i222, -2147483648
  %call2.i224 = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i223, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 80, i16 noundef zeroext 285, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i224)
  %cmp3.i225 = icmp slt i32 %call2.i224, 0
  br i1 %cmp3.i225, label %do.end.i228, label %if.end.i226.sw.epilog21_crit_edge

if.end.i226.sw.epilog21_crit_edge:                ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

do.end.i228:                                      ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i224) #10
  %93 = ptrtoint ptr %usb_err.i186 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call2.i224, ptr %usb_err.i186, align 8
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %do.end.i228, %if.end.i226.sw.epilog21_crit_edge, %if.then19.sw.epilog21_crit_edge, %reg_w.exit218.sw.epilog21_crit_edge, %do.end.i184, %if.end.i182.sw.epilog21_crit_edge, %reg_w.exit174.sw.epilog21_crit_edge, %do.end.i173, %reg_w.exit163.sw.epilog21_crit_edge, %do.end.i162, %if.end.sw.epilog21_crit_edge, %reg_w.exit152.sw.epilog21_crit_edge, %sw.epilog.sw.epilog21_crit_edge
  %94 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sensor, align 2
  %idxprom.i = zext i8 %95 to i32
  %arrayidx.i230 = getelementptr [19 x ptr], ptr @setmatrix.matrix_tb, i32 0, i32 %idxprom.i
  %96 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i230, align 4
  %98 = lshr i32 25188, %idxprom.i
  %99 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.not.i = icmp eq i32 %99, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %sw.epilog21.setmatrix.exit_crit_edge

sw.epilog21.setmatrix.exit_crit_edge:             ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %setmatrix.exit

for.cond.preheader.i:                             ; preds = %sw.epilog21
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %reg_w.exit.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.010.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %reg_w.exit.i.for.body.i_crit_edge ]
  %100 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i = icmp slt i32 %101, 0
  br i1 %cmp.i.i, label %for.body.i.reg_w.exit.i_crit_edge, label %if.end.i.i

for.body.i.reg_w.exit.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %102 = trunc i32 %i.010.i to i16
  %conv.i231 = add nuw nsw i16 %102, 266
  %arrayidx2.i232 = getelementptr i8, ptr %97, i32 %i.010.i
  %103 = ptrtoint ptr %arrayidx2.i232 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx2.i232, align 1
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %shl.i.i.i = shl i32 %108, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv.i.i = zext i8 %104 to i16
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %conv.i231, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit.i_crit_edge

if.end.i.i.reg_w.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i) #10
  %109 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit.i_crit_edge, %for.body.i.reg_w.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %reg_w.exit.i.setmatrix.exit_crit_edge, label %reg_w.exit.i.for.body.i_crit_edge

reg_w.exit.i.for.body.i_crit_edge:                ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

reg_w.exit.i.setmatrix.exit_crit_edge:            ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setmatrix.exit

setmatrix.exit:                                   ; preds = %reg_w.exit.i.setmatrix.exit_crit_edge, %sw.epilog21.setmatrix.exit_crit_edge
  %110 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %sensor, align 2
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %111, label %setmatrix.exit.sw.epilog29_crit_edge [
    i8 0, label %setmatrix.exit.sw.bb24_crit_edge
    i8 12, label %setmatrix.exit.sw.bb24_crit_edge566
    i8 15, label %setmatrix.exit.sw.bb26_crit_edge
    i8 4, label %setmatrix.exit.sw.bb26_crit_edge567
    i8 7, label %setmatrix.exit.sw.bb26_crit_edge568
    i8 18, label %setmatrix.exit.sw.bb26_crit_edge569
    i8 17, label %setmatrix.exit.sw.bb28_crit_edge
  ]

setmatrix.exit.sw.bb28_crit_edge:                 ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

setmatrix.exit.sw.bb26_crit_edge569:              ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

setmatrix.exit.sw.bb26_crit_edge568:              ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

setmatrix.exit.sw.bb26_crit_edge567:              ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

setmatrix.exit.sw.bb26_crit_edge:                 ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

setmatrix.exit.sw.bb24_crit_edge566:              ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

setmatrix.exit.sw.bb24_crit_edge:                 ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

setmatrix.exit.sw.epilog29_crit_edge:             ; preds = %setmatrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb24:                                          ; preds = %setmatrix.exit.sw.bb24_crit_edge, %setmatrix.exit.sw.bb24_crit_edge566
  %usb_err.i233 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %113 = ptrtoint ptr %usb_err.i233 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %usb_err.i233, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i234 = icmp slt i32 %114, 0
  br i1 %cmp.i234, label %sw.bb24.sw.epilog29_crit_edge, label %if.end.i241

sw.bb24.sw.epilog29_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

if.end.i241:                                      ; preds = %sw.bb24
  %dev.i235 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %115 = ptrtoint ptr %dev.i235 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i235, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i.i236 = shl i32 %118, 8
  %or2.i237 = or i32 %shl.i.i236, -2147483520
  %usb_buf.i238 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %119 = ptrtoint ptr %usb_buf.i238 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %usb_buf.i238, align 4
  %call3.i239 = tail call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or2.i237, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 8, ptr noundef %120, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i239)
  %cmp4.i240 = icmp slt i32 %call3.i239, 0
  br i1 %cmp4.i240, label %do.end.i243, label %reg_r.exit246

do.end.i243:                                      ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i239) #10
  %121 = ptrtoint ptr %usb_err.i233 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call3.i239, ptr %usb_err.i233, align 8
  br label %sw.epilog29

reg_r.exit246:                                    ; preds = %if.end.i241
  %122 = ptrtoint ptr %usb_err.i233 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr508 = load i32, ptr %usb_err.i233, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr508)
  %cmp.i248 = icmp slt i32 %.pr508, 0
  br i1 %cmp.i248, label %reg_r.exit246.sw.epilog29_crit_edge, label %if.end.i254

reg_r.exit246.sw.epilog29_crit_edge:              ; preds = %reg_r.exit246
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

if.end.i254:                                      ; preds = %reg_r.exit246
  %123 = ptrtoint ptr %dev.i235 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i235, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i250 = shl i32 %126, 8
  %or.i251 = or i32 %shl.i.i250, -2147483648
  %call2.i252 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i251, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i252)
  %cmp3.i253 = icmp slt i32 %call2.i252, 0
  br i1 %cmp3.i253, label %do.end.i256, label %if.end.i254.sw.epilog29_crit_edge

if.end.i254.sw.epilog29_crit_edge:                ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

do.end.i256:                                      ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i252) #10
  %127 = ptrtoint ptr %usb_err.i233 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call2.i252, ptr %usb_err.i233, align 8
  br label %sw.epilog29

sw.bb26:                                          ; preds = %setmatrix.exit.sw.bb26_crit_edge, %setmatrix.exit.sw.bb26_crit_edge567, %setmatrix.exit.sw.bb26_crit_edge568, %setmatrix.exit.sw.bb26_crit_edge569
  %usb_err.i258 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %128 = ptrtoint ptr %usb_err.i258 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %usb_err.i258, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i259 = icmp slt i32 %129, 0
  br i1 %cmp.i259, label %sw.bb26.sw.bb28_crit_edge, label %if.end.i266

sw.bb26.sw.bb28_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.i266:                                      ; preds = %sw.bb26
  %dev.i260 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %130 = ptrtoint ptr %dev.i260 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i260, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i261 = shl i32 %133, 8
  %or2.i262 = or i32 %shl.i.i261, -2147483520
  %usb_buf.i263 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %134 = ptrtoint ptr %usb_buf.i263 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usb_buf.i263, align 4
  %call3.i264 = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or2.i262, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 8, ptr noundef %135, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i264)
  %cmp4.i265 = icmp slt i32 %call3.i264, 0
  br i1 %cmp4.i265, label %do.end.i268, label %if.end.i266.sw.bb28_crit_edge

if.end.i266.sw.bb28_crit_edge:                    ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

do.end.i268:                                      ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i264) #10
  %136 = ptrtoint ptr %usb_err.i258 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call3.i264, ptr %usb_err.i258, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %do.end.i268, %if.end.i266.sw.bb28_crit_edge, %sw.bb26.sw.bb28_crit_edge, %setmatrix.exit.sw.bb28_crit_edge
  %usb_err.i272 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %137 = ptrtoint ptr %usb_err.i272 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %usb_err.i272, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i273 = icmp slt i32 %138, 0
  br i1 %cmp.i273, label %sw.bb28.sw.epilog29_crit_edge, label %if.end.i279

sw.bb28.sw.epilog29_crit_edge:                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

if.end.i279:                                      ; preds = %sw.bb28
  %dev.i274 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %139 = ptrtoint ptr %dev.i274 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i274, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i275 = shl i32 %142, 8
  %or.i276 = or i32 %shl.i.i275, -2147483648
  %call2.i277 = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i276, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i277)
  %cmp3.i278 = icmp slt i32 %call2.i277, 0
  br i1 %cmp3.i278, label %do.end.i281, label %if.end.i279.sw.epilog29_crit_edge

if.end.i279.sw.epilog29_crit_edge:                ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

do.end.i281:                                      ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i277) #10
  %143 = ptrtoint ptr %usb_err.i272 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call2.i277, ptr %usb_err.i272, align 8
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %do.end.i281, %if.end.i279.sw.epilog29_crit_edge, %sw.bb28.sw.epilog29_crit_edge, %do.end.i256, %if.end.i254.sw.epilog29_crit_edge, %reg_r.exit246.sw.epilog29_crit_edge, %do.end.i243, %sw.bb24.sw.epilog29_crit_edge, %setmatrix.exit.sw.epilog29_crit_edge
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %144 = ptrtoint ptr %sharpness to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sharpness, align 8
  %call30 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %145) #7
  tail call fastcc void @setsharpness(ptr noundef %gspca_dev, i32 noundef %call30)
  %146 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %sensor, align 2
  %148 = zext i8 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %147, label %sw.default [
    i8 2, label %sw.epilog29.sw.epilog37_crit_edge
    i8 5, label %sw.epilog29.sw.epilog37_crit_edge570
    i8 13, label %sw.epilog29.sw.epilog37_crit_edge571
  ]

sw.epilog29.sw.epilog37_crit_edge571:             ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37

sw.epilog29.sw.epilog37_crit_edge570:             ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37

sw.epilog29.sw.epilog37_crit_edge:                ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37

sw.default:                                       ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  %149 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  %call34 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %151) #7
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %152 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %brightness, align 4
  %call35 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %153) #7
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %154 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %contrast, align 8
  %call36 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %155) #7
  tail call fastcc void @setcontrast(ptr noundef %gspca_dev, i32 noundef %call34, i32 noundef %call35, i32 noundef %call36)
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %sw.default, %sw.epilog29.sw.epilog37_crit_edge, %sw.epilog29.sw.epilog37_crit_edge570, %sw.epilog29.sw.epilog37_crit_edge571
  %156 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %sensor, align 2
  %idxprom.i284 = zext i8 %157 to i32
  %arrayidx.i285 = getelementptr [19 x ptr], ptr @setmatrix.matrix_tb, i32 0, i32 %idxprom.i284
  %158 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i285, align 4
  %160 = lshr i32 25188, %idxprom.i284
  %161 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp.not.i286 = icmp eq i32 %161, 0
  br i1 %cmp.not.i286, label %for.cond.preheader.i289, label %sw.epilog37.setmatrix.exit306_crit_edge

sw.epilog37.setmatrix.exit306_crit_edge:          ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #9
  br label %setmatrix.exit306

for.cond.preheader.i289:                          ; preds = %sw.epilog37
  %usb_err.i.i287 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i.i288 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body.i292

for.body.i292:                                    ; preds = %reg_w.exit.i305.for.body.i292_crit_edge, %for.cond.preheader.i289
  %i.010.i290 = phi i32 [ 0, %for.cond.preheader.i289 ], [ %inc.i303, %reg_w.exit.i305.for.body.i292_crit_edge ]
  %162 = ptrtoint ptr %usb_err.i.i287 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %usb_err.i.i287, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp.i.i291 = icmp slt i32 %163, 0
  br i1 %cmp.i.i291, label %for.body.i292.reg_w.exit.i305_crit_edge, label %if.end.i.i300

for.body.i292.reg_w.exit.i305_crit_edge:          ; preds = %for.body.i292
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i305

if.end.i.i300:                                    ; preds = %for.body.i292
  %164 = trunc i32 %i.010.i290 to i16
  %conv.i293 = add nuw nsw i16 %164, 266
  %arrayidx2.i294 = getelementptr i8, ptr %159, i32 %i.010.i290
  %165 = ptrtoint ptr %arrayidx2.i294 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx2.i294, align 1
  %167 = ptrtoint ptr %dev.i.i288 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i.i288, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %shl.i.i.i295 = shl i32 %170, 8
  %or.i.i296 = or i32 %shl.i.i.i295, -2147483648
  %conv.i.i297 = zext i8 %166 to i16
  %call2.i.i298 = tail call i32 @usb_control_msg(ptr noundef %168, i32 noundef %or.i.i296, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i297, i16 noundef zeroext %conv.i293, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i298)
  %cmp3.i.i299 = icmp slt i32 %call2.i.i298, 0
  br i1 %cmp3.i.i299, label %do.end.i.i302, label %if.end.i.i300.reg_w.exit.i305_crit_edge

if.end.i.i300.reg_w.exit.i305_crit_edge:          ; preds = %if.end.i.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i305

do.end.i.i302:                                    ; preds = %if.end.i.i300
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i298) #10
  %171 = ptrtoint ptr %usb_err.i.i287 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call2.i.i298, ptr %usb_err.i.i287, align 8
  br label %reg_w.exit.i305

reg_w.exit.i305:                                  ; preds = %do.end.i.i302, %if.end.i.i300.reg_w.exit.i305_crit_edge, %for.body.i292.reg_w.exit.i305_crit_edge
  %inc.i303 = add nuw nsw i32 %i.010.i290, 1
  %exitcond.not.i304 = icmp eq i32 %inc.i303, 9
  br i1 %exitcond.not.i304, label %reg_w.exit.i305.setmatrix.exit306_crit_edge, label %reg_w.exit.i305.for.body.i292_crit_edge

reg_w.exit.i305.for.body.i292_crit_edge:          ; preds = %reg_w.exit.i305
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i292

reg_w.exit.i305.setmatrix.exit306_crit_edge:      ; preds = %reg_w.exit.i305
  call void @__sanitizer_cov_trace_pc() #9
  br label %setmatrix.exit306

setmatrix.exit306:                                ; preds = %reg_w.exit.i305.setmatrix.exit306_crit_edge, %sw.epilog37.setmatrix.exit306_crit_edge
  %172 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %sensor, align 2
  %174 = zext i8 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %173, label %setmatrix.exit306.sw.epilog42_crit_edge [
    i8 12, label %setmatrix.exit306.sw.bb40_crit_edge
    i8 15, label %setmatrix.exit306.sw.bb40_crit_edge572
  ]

setmatrix.exit306.sw.bb40_crit_edge572:           ; preds = %setmatrix.exit306
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

setmatrix.exit306.sw.bb40_crit_edge:              ; preds = %setmatrix.exit306
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

setmatrix.exit306.sw.epilog42_crit_edge:          ; preds = %setmatrix.exit306
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

sw.bb40:                                          ; preds = %setmatrix.exit306.sw.bb40_crit_edge, %setmatrix.exit306.sw.bb40_crit_edge572
  %usb_err.i307 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %175 = ptrtoint ptr %usb_err.i307 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %usb_err.i307, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i308 = icmp slt i32 %176, 0
  br i1 %cmp.i308, label %sw.bb40.sw.epilog42_crit_edge, label %if.end.i315

sw.bb40.sw.epilog42_crit_edge:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.i315:                                      ; preds = %sw.bb40
  %dev.i309 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %177 = ptrtoint ptr %dev.i309 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i309, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 8
  %shl.i.i310 = shl i32 %180, 8
  %or2.i311 = or i32 %shl.i.i310, -2147483520
  %usb_buf.i312 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %181 = ptrtoint ptr %usb_buf.i312 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %usb_buf.i312, align 4
  %call3.i313 = tail call i32 @usb_control_msg(ptr noundef %178, i32 noundef %or2.i311, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 384, ptr noundef %182, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i313)
  %cmp4.i314 = icmp slt i32 %call3.i313, 0
  br i1 %cmp4.i314, label %do.end.i317, label %reg_r.exit320

do.end.i317:                                      ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i313) #10
  br label %sw.epilog42.sink.split

reg_r.exit320:                                    ; preds = %if.end.i315
  %183 = ptrtoint ptr %usb_err.i307 to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pr510 = load i32, ptr %usb_err.i307, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr510)
  %cmp.i322 = icmp slt i32 %.pr510, 0
  br i1 %cmp.i322, label %reg_r.exit320.sw.epilog42_crit_edge, label %if.end.i328

reg_r.exit320.sw.epilog42_crit_edge:              ; preds = %reg_r.exit320
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

if.end.i328:                                      ; preds = %reg_r.exit320
  %184 = ptrtoint ptr %dev.i309 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i309, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 8
  %shl.i.i324 = shl i32 %187, 8
  %or.i325 = or i32 %shl.i.i324, -2147483648
  %call2.i326 = tail call i32 @usb_control_msg(ptr noundef %185, i32 noundef %or.i325, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 384, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i326)
  %cmp3.i327 = icmp slt i32 %call2.i326, 0
  br i1 %cmp3.i327, label %do.end.i330, label %if.end.i328.sw.epilog42_crit_edge

if.end.i328.sw.epilog42_crit_edge:                ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

do.end.i330:                                      ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i326) #10
  br label %sw.epilog42.sink.split

sw.epilog42.sink.split:                           ; preds = %do.end.i330, %do.end.i317
  %call3.i313.sink = phi i32 [ %call3.i313, %do.end.i317 ], [ %call2.i326, %do.end.i330 ]
  %188 = ptrtoint ptr %usb_err.i307 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call3.i313.sink, ptr %usb_err.i307, align 8
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.epilog42.sink.split, %if.end.i328.sw.epilog42_crit_edge, %reg_r.exit320.sw.epilog42_crit_edge, %sw.bb40.sw.epilog42_crit_edge, %setmatrix.exit306.sw.epilog42_crit_edge
  tail call fastcc void @setquality(ptr noundef %gspca_dev)
  %usb_err.i332 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %189 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i333 = icmp slt i32 %190, 0
  br i1 %cmp.i333, label %sw.epilog42.reg_w.exit342_crit_edge, label %if.end.i339

sw.epilog42.reg_w.exit342_crit_edge:              ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit342

if.end.i339:                                      ; preds = %sw.epilog42
  %dev.i334 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %191 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i334, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 8
  %shl.i.i335 = shl i32 %194, 8
  %or.i336 = or i32 %shl.i.i335, -2147483648
  %call2.i337 = tail call i32 @usb_control_msg(ptr noundef %192, i32 noundef %or.i336, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i337)
  %cmp3.i338 = icmp slt i32 %call2.i337, 0
  br i1 %cmp3.i338, label %do.end.i341, label %if.end.i339.reg_w.exit342_crit_edge

if.end.i339.reg_w.exit342_crit_edge:              ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit342

do.end.i341:                                      ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i337) #10
  %195 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call2.i337, ptr %usb_err.i332, align 8
  br label %reg_w.exit342

reg_w.exit342:                                    ; preds = %do.end.i341, %if.end.i339.reg_w.exit342_crit_edge, %sw.epilog42.reg_w.exit342_crit_edge
  %plfreq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %196 = ptrtoint ptr %plfreq to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %plfreq, align 4
  %tobool.not = icmp eq ptr %197, null
  br i1 %tobool.not, label %reg_w.exit342.if.end46_crit_edge, label %if.then43

reg_w.exit342.if.end46_crit_edge:                 ; preds = %reg_w.exit342
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then43:                                        ; preds = %reg_w.exit342
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %197) #7
  tail call fastcc void @setlightfreq(ptr noundef %gspca_dev, i32 noundef %call45)
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %reg_w.exit342.if.end46_crit_edge
  %198 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %sensor, align 2
  %200 = zext i8 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %199, label %if.end46.sw.epilog59_crit_edge [
    i8 0, label %sw.bb49
    i8 7, label %sw.bb50
    i8 4, label %if.end46.sw.bb52_crit_edge
    i8 18, label %if.end46.sw.bb52_crit_edge573
    i8 15, label %if.end46.sw.bb53_crit_edge
    i8 17, label %if.end46.sw.bb53_crit_edge574
    i8 12, label %sw.bb55
  ]

if.end46.sw.bb53_crit_edge574:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end46.sw.bb53_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end46.sw.bb52_crit_edge573:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.end46.sw.bb52_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.end46.sw.epilog59_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

sw.bb49:                                          ; preds = %if.end46
  %201 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp.i344 = icmp slt i32 %202, 0
  br i1 %cmp.i344, label %sw.bb49.sw.epilog59_crit_edge, label %if.end.i350

sw.bb49.sw.epilog59_crit_edge:                    ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i350:                                      ; preds = %sw.bb49
  %dev.i345 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %203 = ptrtoint ptr %dev.i345 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev.i345, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 8
  %shl.i.i346 = shl i32 %206, 8
  %or.i347 = or i32 %shl.i.i346, -2147483648
  %call2.i348 = tail call i32 @usb_control_msg(ptr noundef %204, i32 noundef %or.i347, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext 429, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i348)
  %cmp3.i349 = icmp slt i32 %call2.i348, 0
  br i1 %cmp3.i349, label %do.end.i352, label %reg_w.exit353

do.end.i352:                                      ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i348) #10
  br label %sw.epilog59.sink.split

reg_w.exit353:                                    ; preds = %if.end.i350
  %207 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pr512 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr512)
  %cmp.i355 = icmp slt i32 %.pr512, 0
  br i1 %cmp.i355, label %reg_w.exit353.sw.epilog59_crit_edge, label %if.end.i361

reg_w.exit353.sw.epilog59_crit_edge:              ; preds = %reg_w.exit353
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i361:                                      ; preds = %reg_w.exit353
  %208 = ptrtoint ptr %dev.i345 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev.i345, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 8
  %shl.i.i357 = shl i32 %211, 8
  %or.i358 = or i32 %shl.i.i357, -2147483648
  %call2.i359 = tail call i32 @usb_control_msg(ptr noundef %209, i32 noundef %or.i358, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 21, i16 noundef zeroext 430, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i359)
  %cmp3.i360 = icmp slt i32 %call2.i359, 0
  br i1 %cmp3.i360, label %do.end.i363, label %reg_w.exit364

do.end.i363:                                      ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i362 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i359) #10
  br label %sw.epilog59.sink.split

reg_w.exit364:                                    ; preds = %if.end.i361
  %212 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pr514.pr = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr514.pr)
  %cmp.i366 = icmp slt i32 %.pr514.pr, 0
  br i1 %cmp.i366, label %reg_w.exit364.sw.epilog59_crit_edge, label %if.end.i372

reg_w.exit364.sw.epilog59_crit_edge:              ; preds = %reg_w.exit364
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i372:                                      ; preds = %reg_w.exit364
  %213 = ptrtoint ptr %dev.i345 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev.i345, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 8
  %shl.i.i368 = shl i32 %216, 8
  %or.i369 = or i32 %shl.i.i368, -2147483648
  %call2.i370 = tail call i32 @usb_control_msg(ptr noundef %214, i32 noundef %or.i369, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 384, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i370)
  %cmp3.i371 = icmp slt i32 %call2.i370, 0
  br i1 %cmp3.i371, label %do.end.i374, label %reg_w.exit375

do.end.i374:                                      ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i370) #10
  br label %sw.epilog59.sink.split

reg_w.exit375:                                    ; preds = %if.end.i372
  %217 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pr516.pr = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr516.pr)
  %cmp.i377 = icmp slt i32 %.pr516.pr, 0
  br i1 %cmp.i377, label %reg_w.exit375.sw.epilog59_crit_edge, label %if.end.i383

reg_w.exit375.sw.epilog59_crit_edge:              ; preds = %reg_w.exit375
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i383:                                      ; preds = %reg_w.exit375
  %218 = ptrtoint ptr %dev.i345 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev.i345, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 8
  %shl.i.i379 = shl i32 %221, 8
  %or.i380 = or i32 %shl.i.i379, -2147483648
  %call2.i381 = tail call i32 @usb_control_msg(ptr noundef %219, i32 noundef %or.i380, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i381)
  %cmp3.i382 = icmp slt i32 %call2.i381, 0
  br i1 %cmp3.i382, label %do.end.i385, label %if.end.i383.sw.epilog59_crit_edge

if.end.i383.sw.epilog59_crit_edge:                ; preds = %if.end.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

do.end.i385:                                      ; preds = %if.end.i383
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i381) #10
  br label %sw.epilog59.sink.split

sw.bb50:                                          ; preds = %if.end46
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %222 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %exposure, align 4
  %call51 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %223) #7
  %224 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %sensor, align 2
  %226 = zext i8 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %225, label %sw.bb50.setexposure.exit_crit_edge [
    i8 7, label %sw.bb.i
    i8 12, label %sw.bb7.i
  ]

sw.bb50.setexposure.exit_crit_edge:               ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  br label %setexposure.exit

sw.bb.i:                                          ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  %227 = lshr i32 %call51, 9
  %conv1.i388 = trunc i32 %227 to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 37, i8 noundef zeroext %conv1.i388, i8 noundef zeroext 0) #7
  %228 = lshr i32 %call51, 1
  %conv3.i = trunc i32 %228 to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 38, i8 noundef zeroext %conv3.i, i8 noundef zeroext 0) #7
  %val.tr.i = trunc i32 %call51 to i8
  %conv5.i = shl i8 %val.tr.i, 7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext %conv5.i, i8 noundef zeroext 0) #7
  br label %setexposure.exit

sw.bb7.i:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i = trunc i32 %call51 to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %conv8.i, i8 noundef zeroext 0) #7
  br label %setexposure.exit

setexposure.exit:                                 ; preds = %sw.bb7.i, %sw.bb.i, %sw.bb50.setexposure.exit_crit_edge
  %229 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp.i390 = icmp slt i32 %230, 0
  br i1 %cmp.i390, label %setexposure.exit.sw.epilog59_crit_edge, label %if.end.i396

setexposure.exit.sw.epilog59_crit_edge:           ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i396:                                      ; preds = %setexposure.exit
  %dev.i391 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %231 = ptrtoint ptr %dev.i391 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev.i391, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 8
  %shl.i.i392 = shl i32 %234, 8
  %or.i393 = or i32 %shl.i.i392, -2147483648
  %call2.i394 = tail call i32 @usb_control_msg(ptr noundef %232, i32 noundef %or.i393, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 423, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i394)
  %cmp3.i395 = icmp slt i32 %call2.i394, 0
  br i1 %cmp3.i395, label %do.end.i398, label %if.end.i396.sw.epilog59_crit_edge

if.end.i396.sw.epilog59_crit_edge:                ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

do.end.i398:                                      ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i394) #10
  br label %sw.epilog59.sink.split

sw.bb52:                                          ; preds = %if.end46.sw.bb52_crit_edge, %if.end46.sw.bb52_crit_edge573
  %235 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp.i401 = icmp slt i32 %236, 0
  br i1 %cmp.i401, label %sw.bb52.sw.epilog59_crit_edge, label %if.end.i407

sw.bb52.sw.epilog59_crit_edge:                    ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i407:                                      ; preds = %sw.bb52
  %dev.i402 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %237 = ptrtoint ptr %dev.i402 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i402, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 8
  %shl.i.i403 = shl i32 %240, 8
  %or.i404 = or i32 %shl.i.i403, -2147483648
  %call2.i405 = tail call i32 @usb_control_msg(ptr noundef %238, i32 noundef %or.i404, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext 429, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i405)
  %cmp3.i406 = icmp slt i32 %call2.i405, 0
  br i1 %cmp3.i406, label %do.end.i409, label %reg_w.exit410

do.end.i409:                                      ; preds = %if.end.i407
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i405) #10
  br label %sw.epilog59.sink.split

reg_w.exit410:                                    ; preds = %if.end.i407
  %241 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %241)
  %.pr518 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr518)
  %cmp.i412 = icmp slt i32 %.pr518, 0
  br i1 %cmp.i412, label %reg_w.exit410.sw.epilog59_crit_edge, label %if.end.i418

reg_w.exit410.sw.epilog59_crit_edge:              ; preds = %reg_w.exit410
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i418:                                      ; preds = %reg_w.exit410
  %242 = ptrtoint ptr %dev.i402 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev.i402, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 8
  %shl.i.i414 = shl i32 %245, 8
  %or.i415 = or i32 %shl.i.i414, -2147483648
  %call2.i416 = tail call i32 @usb_control_msg(ptr noundef %243, i32 noundef %or.i415, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 21, i16 noundef zeroext 430, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i416)
  %cmp3.i417 = icmp slt i32 %call2.i416, 0
  br i1 %cmp3.i417, label %do.end.i420, label %if.end.i418.sw.bb53_crit_edge

if.end.i418.sw.bb53_crit_edge:                    ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

do.end.i420:                                      ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i416) #10
  br label %sw.epilog59.sink.split

sw.bb53:                                          ; preds = %if.end.i418.sw.bb53_crit_edge, %if.end46.sw.bb53_crit_edge, %if.end46.sw.bb53_crit_edge574
  %246 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %246)
  %.pr520.pr = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr520.pr)
  %cmp.i423 = icmp slt i32 %.pr520.pr, 0
  br i1 %cmp.i423, label %sw.bb53.sw.epilog59_crit_edge, label %if.end.i430

sw.bb53.sw.epilog59_crit_edge:                    ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i430:                                      ; preds = %sw.bb53
  %dev.i424 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %247 = ptrtoint ptr %dev.i424 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i424, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 8
  %shl.i.i425 = shl i32 %250, 8
  %or2.i426 = or i32 %shl.i.i425, -2147483520
  %usb_buf.i427 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %251 = ptrtoint ptr %usb_buf.i427 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %usb_buf.i427, align 4
  %call3.i428 = tail call i32 @usb_control_msg(ptr noundef %248, i32 noundef %or2.i426, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 384, ptr noundef %252, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i428)
  %cmp4.i429 = icmp slt i32 %call3.i428, 0
  br i1 %cmp4.i429, label %do.end.i432, label %if.end.i430.sw.epilog59_crit_edge

if.end.i430.sw.epilog59_crit_edge:                ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

do.end.i432:                                      ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i431 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i428) #10
  br label %sw.epilog59.sink.split

sw.bb55:                                          ; preds = %if.end46
  %253 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp.i437 = icmp slt i32 %254, 0
  br i1 %cmp.i437, label %sw.bb55.reg_w.exit457_crit_edge, label %if.end.i443

sw.bb55.reg_w.exit457_crit_edge:                  ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit457

if.end.i443:                                      ; preds = %sw.bb55
  %dev.i438 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %255 = ptrtoint ptr %dev.i438 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i438, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 8
  %shl.i.i439 = shl i32 %258, 8
  %or.i440 = or i32 %shl.i.i439, -2147483648
  %call2.i441 = tail call i32 @usb_control_msg(ptr noundef %256, i32 noundef %or.i440, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext 429, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i441)
  %cmp3.i442 = icmp slt i32 %call2.i441, 0
  br i1 %cmp3.i442, label %if.end.i443.reg_w.exit457.sink.split_crit_edge, label %reg_w.exit446

if.end.i443.reg_w.exit457.sink.split_crit_edge:   ; preds = %if.end.i443
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit457.sink.split

reg_w.exit446:                                    ; preds = %if.end.i443
  %259 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pr522 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr522)
  %cmp.i448 = icmp slt i32 %.pr522, 0
  br i1 %cmp.i448, label %reg_w.exit446.reg_w.exit457_crit_edge, label %if.end.i454

reg_w.exit446.reg_w.exit457_crit_edge:            ; preds = %reg_w.exit446
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit457

if.end.i454:                                      ; preds = %reg_w.exit446
  %260 = ptrtoint ptr %dev.i438 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev.i438, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 8
  %shl.i.i450 = shl i32 %263, 8
  %or.i451 = or i32 %shl.i.i450, -2147483648
  %call2.i452 = tail call i32 @usb_control_msg(ptr noundef %261, i32 noundef %or.i451, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 21, i16 noundef zeroext 430, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i452)
  %cmp3.i453 = icmp slt i32 %call2.i452, 0
  br i1 %cmp3.i453, label %if.end.i454.reg_w.exit457.sink.split_crit_edge, label %if.end.i454.reg_w.exit457_crit_edge

if.end.i454.reg_w.exit457_crit_edge:              ; preds = %if.end.i454
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit457

if.end.i454.reg_w.exit457.sink.split_crit_edge:   ; preds = %if.end.i454
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit457.sink.split

reg_w.exit457.sink.split:                         ; preds = %if.end.i454.reg_w.exit457.sink.split_crit_edge, %if.end.i443.reg_w.exit457.sink.split_crit_edge
  %call2.i441.sink559 = phi i32 [ %call2.i441, %if.end.i443.reg_w.exit457.sink.split_crit_edge ], [ %call2.i452, %if.end.i454.reg_w.exit457.sink.split_crit_edge ]
  %call6.i444 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i441.sink559) #10
  %264 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %call2.i441.sink559, ptr %usb_err.i332, align 8
  br label %reg_w.exit457

reg_w.exit457:                                    ; preds = %reg_w.exit457.sink.split, %if.end.i454.reg_w.exit457_crit_edge, %reg_w.exit446.reg_w.exit457_crit_edge, %sw.bb55.reg_w.exit457_crit_edge
  %call56 = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 19)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext -93, i8 noundef zeroext 0)
  %265 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp.i459 = icmp slt i32 %266, 0
  br i1 %cmp.i459, label %reg_w.exit457.sw.epilog59_crit_edge, label %if.end.i465

reg_w.exit457.sw.epilog59_crit_edge:              ; preds = %reg_w.exit457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i465:                                      ; preds = %reg_w.exit457
  %dev.i460 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %267 = ptrtoint ptr %dev.i460 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev.i460, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %268, align 8
  %shl.i.i461 = shl i32 %270, 8
  %or.i462 = or i32 %shl.i.i461, -2147483648
  %call2.i463 = tail call i32 @usb_control_msg(ptr noundef %268, i32 noundef %or.i462, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i463)
  %cmp3.i464 = icmp slt i32 %call2.i463, 0
  br i1 %cmp3.i464, label %do.end.i467, label %reg_w.exit468

do.end.i467:                                      ; preds = %if.end.i465
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i466 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i463) #10
  br label %sw.epilog59.sink.split

reg_w.exit468:                                    ; preds = %if.end.i465
  %271 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %271)
  %.pr524 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr524)
  %cmp.i470 = icmp slt i32 %.pr524, 0
  br i1 %cmp.i470, label %reg_w.exit468.sw.epilog59_crit_edge, label %if.end.i477

reg_w.exit468.sw.epilog59_crit_edge:              ; preds = %reg_w.exit468
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

if.end.i477:                                      ; preds = %reg_w.exit468
  %272 = ptrtoint ptr %dev.i460 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev.i460, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %273, align 8
  %shl.i.i472 = shl i32 %275, 8
  %or2.i473 = or i32 %shl.i.i472, -2147483520
  %usb_buf.i474 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %276 = ptrtoint ptr %usb_buf.i474 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %usb_buf.i474, align 4
  %call3.i475 = tail call i32 @usb_control_msg(ptr noundef %273, i32 noundef %or2.i473, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 384, ptr noundef %277, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i475)
  %cmp4.i476 = icmp slt i32 %call3.i475, 0
  br i1 %cmp4.i476, label %do.end.i479, label %if.end.i477.sw.epilog59_crit_edge

if.end.i477.sw.epilog59_crit_edge:                ; preds = %if.end.i477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

do.end.i479:                                      ; preds = %if.end.i477
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i478 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i475) #10
  br label %sw.epilog59.sink.split

sw.epilog59.sink.split:                           ; preds = %do.end.i479, %do.end.i467, %do.end.i432, %do.end.i420, %do.end.i409, %do.end.i398, %do.end.i385, %do.end.i374, %do.end.i363, %do.end.i352
  %call2.i405.sink = phi i32 [ %call2.i405, %do.end.i409 ], [ %call2.i359, %do.end.i363 ], [ %call2.i348, %do.end.i352 ], [ %call2.i463, %do.end.i467 ], [ %call2.i416, %do.end.i420 ], [ %call2.i370, %do.end.i374 ], [ %call3.i475, %do.end.i479 ], [ %call3.i428, %do.end.i432 ], [ %call2.i394, %do.end.i398 ], [ %call2.i381, %do.end.i385 ]
  %278 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call2.i405.sink, ptr %usb_err.i332, align 8
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.epilog59.sink.split, %if.end.i477.sw.epilog59_crit_edge, %reg_w.exit468.sw.epilog59_crit_edge, %reg_w.exit457.sw.epilog59_crit_edge, %if.end.i430.sw.epilog59_crit_edge, %sw.bb53.sw.epilog59_crit_edge, %reg_w.exit410.sw.epilog59_crit_edge, %sw.bb52.sw.epilog59_crit_edge, %if.end.i396.sw.epilog59_crit_edge, %setexposure.exit.sw.epilog59_crit_edge, %if.end.i383.sw.epilog59_crit_edge, %reg_w.exit375.sw.epilog59_crit_edge, %reg_w.exit364.sw.epilog59_crit_edge, %reg_w.exit353.sw.epilog59_crit_edge, %sw.bb49.sw.epilog59_crit_edge, %if.end46.sw.epilog59_crit_edge
  %279 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %call60 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %281) #7
  %282 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %283)
  %cmp.i484 = icmp eq i8 %283, 12
  br i1 %cmp.i484, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool.not.i = icmp eq i32 %call60, 0
  %conv2.i = select i1 %tobool.not.i, i8 -128, i8 -93
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %conv2.i, i8 noundef zeroext 0) #7
  br label %setautogain.exit

if.else.i:                                        ; preds = %sw.epilog59
  %284 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp.i.i486 = icmp slt i32 %285, 0
  br i1 %cmp.i.i486, label %if.else.i.cleanup_crit_edge, label %if.end.i.i493

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i493:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool3.not.i = icmp eq i32 %call60, 0
  %dev.i.i487 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %286 = ptrtoint ptr %dev.i.i487 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dev.i.i487, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 8
  %shl.i.i.i488 = shl i32 %289, 8
  %or.i.i489 = or i32 %shl.i.i.i488, -2147483648
  %conv.i.i490 = select i1 %tobool3.not.i, i16 2, i16 66
  %call2.i.i491 = tail call i32 @usb_control_msg(ptr noundef %287, i32 noundef %or.i.i489, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i490, i16 noundef zeroext 384, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i491)
  %cmp3.i.i492 = icmp slt i32 %call2.i.i491, 0
  br i1 %cmp3.i.i492, label %do.end.i.i495, label %if.end.i.i493.setautogain.exit_crit_edge

if.end.i.i493.setautogain.exit_crit_edge:         ; preds = %if.end.i.i493
  call void @__sanitizer_cov_trace_pc() #9
  br label %setautogain.exit

do.end.i.i495:                                    ; preds = %if.end.i.i493
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i494 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i491) #10
  %290 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %call2.i.i491, ptr %usb_err.i332, align 8
  br label %cleanup

setautogain.exit:                                 ; preds = %if.end.i.i493.setautogain.exit_crit_edge, %if.then.i
  %291 = ptrtoint ptr %usb_err.i332 to i32
  call void @__asan_load4_noabort(i32 %291)
  %.pr526 = load i32, ptr %usb_err.i332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr526)
  %cmp61 = icmp slt i32 %.pr526, 0
  br i1 %cmp61, label %setautogain.exit.cleanup_crit_edge, label %if.end65

setautogain.exit.cleanup_crit_edge:               ; preds = %setautogain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %setautogain.exit
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %292 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %292, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %setautogain.exit.cleanup_crit_edge, %do.end.i.i495, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ %.pr526, %setautogain.exit.cleanup_crit_edge ], [ %call2.i.i491, %do.end.i.i495 ], [ %285, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp sgt i32 %len, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub = add nsw i32 %len, -3
  %arrayidx = getelementptr i8, ptr %data, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp1 = icmp eq i8 %1, -1
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sub4 = add nsw i32 %len, -2
  %arrayidx5 = getelementptr i8, ptr %data, i32 %sub4
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %3)
  %cmp7 = icmp eq i8 %3, -39
  br i1 %cmp7, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %sub9 = add nsw i32 %len, -1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef %sub9) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp12 = icmp eq i8 %5, -1
  br i1 %cmp12, label %land.lhs.true14, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true14:                                  ; preds = %if.end
  %arrayidx15 = getelementptr i8, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %7)
  %cmp17 = icmp eq i8 %7, -40
  br i1 %cmp17, label %if.then19, label %land.lhs.true14.if.end21_crit_edge

land.lhs.true14.if.end21_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #7
  %add.ptr = getelementptr i8, ptr %data, i32 18
  %sub20 = add i32 %len, -18
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true14.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.then19 ], [ %data, %land.lhs.true14.if.end21_crit_edge ], [ %data, %if.end.if.end21_crit_edge ]
  %len.addr.0 = phi i32 [ %sub20, %if.then19 ], [ %len, %land.lhs.true14.if.end21_crit_edge ], [ %len, %if.end.if.end21_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_pre_start(ptr nocapture noundef %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg08 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %reg08 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg08, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ugt i8 %1, 3
  %conv2 = zext i1 %cmp to i8
  %needs_full_bandwidth = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 9
  %2 = ptrtoint ptr %needs_full_bandwidth to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %needs_full_bandwidth, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #7
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor, align 2
  %conv = zext i8 %3 to i32
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_get_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef writeonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %jcomp, i32 0, i32 140)
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %1 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jpegqual, align 4
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %2) #7
  %3 = ptrtoint ptr %jcomp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %jcomp, align 4
  %jpeg_markers = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %jcomp, i32 0, i32 6
  %4 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %jpeg_markers, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_set_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %0 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jpegqual, align 4
  %2 = ptrtoint ptr %jcomp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jcomp, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #7
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %1, i32 noundef %3) #7
  %8 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %11) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp = icmp eq i32 %len, 8
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1 = icmp eq i8 %1, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 212, i32 noundef 1) #7
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 212, i32 noundef 0) #7
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @transfer_update(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr i8, ptr %work, i32 -49
  %streaming = getelementptr i8, ptr %work, i32 -818
  tail call void @msleep(i32 noundef 100) #7
  %usb_lock = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  %frozen = getelementptr i8, ptr %work, i32 -50
  %0 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not99 = icmp eq i8 %1, 0
  br i1 %tobool.not99, label %if.end.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %usb_err = getelementptr i8, ptr %work, i32 -56
  %dev.i = getelementptr i8, ptr %work, i32 -1156
  %usb_buf.i = getelementptr i8, ptr %work, i32 -852
  br label %if.end

if.end:                                           ; preds = %if.end48.if.end_crit_edge, %if.end.lr.ph
  %reg07.0101 = phi i8 [ 0, %if.end.lr.ph ], [ %reg07.188, %if.end48.if.end_crit_edge ]
  %good.0100 = phi i32 [ 0, %if.end.lr.ph ], [ %good.187, %if.end48.if.end_crit_edge ]
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 1, !range !500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.while.end_crit_edge, label %lor.lhs.false

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streaming, align 2, !range !500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.while.end_crit_edge, label %if.end5

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %usb_err, align 8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 17, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %reg_r.exit.thread, label %reg_r.exit

reg_r.exit.thread:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  br label %while.end.sink.split

reg_r.exit:                                       ; preds = %if.end5
  %13 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool7.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool7.not, label %if.end9, label %reg_r.exit.while.end_crit_edge

reg_r.exit.while.end_crit_edge:                   ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end9:                                          ; preds = %reg_r.exit
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  br i1 %tobool10.not, label %if.else24, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reg07.0101)
  %cmp = icmp eq i8 %reg07.0101, 0
  br i1 %cmp, label %if.then11.if.then42_crit_edge, label %if.end40

if.then11.if.then42_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.else24:                                        ; preds = %if.end9
  %inc = add i32 %good.0100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp25 = icmp sgt i32 %inc, 9
  br i1 %cmp25, label %if.then27, label %if.else24.if.end48_crit_edge

if.else24.if.end48_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reg07.0101)
  %tobool28.not = icmp eq i8 %reg07.0101, 0
  br i1 %tobool28.not, label %if.then27.if.end48_crit_edge, label %if.then29

if.then27.if.end48_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %reg07.0101)
  %cmp31 = icmp ult i8 %reg07.0101, 50
  %add = add i8 %reg07.0101, 2
  %spec.select71 = select i1 %cmp31, i8 %add, i8 0
  br label %if.then42

if.end40:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %reg07.0101)
  %cmp16 = icmp ugt i8 %reg07.0101, 2
  %sub = add i8 %reg07.0101, -2
  br i1 %cmp16, label %if.end40.if.then42_crit_edge, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end40.if.then42_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.then42:                                        ; preds = %if.end40.if.then42_crit_edge, %if.then29, %if.then11.if.then42_crit_edge
  %reg07.196 = phi i8 [ %sub, %if.end40.if.then42_crit_edge ], [ %spec.select71, %if.then29 ], [ 50, %if.then11.if.then42_crit_edge ]
  %19 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %usb_err, align 8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i75 = shl i32 %23, 8
  %or.i = or i32 %shl.i.i75, -2147483648
  %conv.i = zext i8 %reg07.196 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %reg_w.exit.thread, label %reg_w.exit

reg_w.exit.thread:                                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  br label %while.end.sink.split

reg_w.exit:                                       ; preds = %if.then42
  %24 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr97.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr97.pr)
  %tobool45.not = icmp eq i32 %.pr97.pr, 0
  br i1 %tobool45.not, label %reg_w.exit.if.end48_crit_edge, label %reg_w.exit.while.end_crit_edge

reg_w.exit.while.end_crit_edge:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

reg_w.exit.if.end48_crit_edge:                    ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end48:                                         ; preds = %reg_w.exit.if.end48_crit_edge, %if.end40.if.end48_crit_edge, %if.then27.if.end48_crit_edge, %if.else24.if.end48_crit_edge
  %reg07.188 = phi i8 [ %reg07.196, %reg_w.exit.if.end48_crit_edge ], [ %reg07.0101, %if.end40.if.end48_crit_edge ], [ 0, %if.then27.if.end48_crit_edge ], [ %reg07.0101, %if.else24.if.end48_crit_edge ]
  %good.187 = phi i32 [ 0, %reg_w.exit.if.end48_crit_edge ], [ 0, %if.end40.if.end48_crit_edge ], [ 0, %if.then27.if.end48_crit_edge ], [ %inc, %if.else24.if.end48_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  tail call void @msleep(i32 noundef 100) #7
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  %25 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frozen, align 2
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.end48.if.end_crit_edge, label %if.end48.while.end_crit_edge

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end48.if.end_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.end.sink.split:                             ; preds = %reg_w.exit.thread, %reg_r.exit.thread
  %call3.i.lcssa.sink = phi i32 [ %call3.i, %reg_r.exit.thread ], [ %call2.i, %reg_w.exit.thread ]
  %27 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3.i.lcssa.sink, ptr %usb_err, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end48.while.end_crit_edge, %reg_w.exit.while.end_crit_edge, %reg_r.exit.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %value, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %conv = zext i8 %value to i16
  %call2 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2) #10
  %6 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zcxx_probeSensor(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor1, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 9, label %entry.cleanup_crit_edge
    i8 3, label %entry.cleanup_crit_edge62
    i8 14, label %sw.bb3
  ]

entry.cleanup_crit_edge62:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 15) #7
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp slt i32 %4, 0
  br i1 %cmp.i.i, label %sw.bb3.reg_w.exit.i_crit_edge, label %if.end.i.i

sw.bb3.reg_w.exit.i_crit_edge:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i

if.end.i.i:                                       ; preds = %sw.bb3
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 141, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit.i_crit_edge

if.end.i.i.reg_w.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i) #10
  %9 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit.i_crit_edge, %sw.bb3.reg_w.exit.i_crit_edge
  tail call void @msleep(i32 noundef 150) #7
  %call.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 0) #7
  %10 = shl i16 %call.i, 4
  %11 = and i16 %10, 240
  %call1.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  %12 = lshr i16 %call1.i, 4
  %13 = and i16 %12, 15
  %or22.i = or i16 %13, %11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp sgt i32 %14, 0
  br i1 %cmp.i, label %do.end.i, label %reg_w.exit.i.do.end10.i_crit_edge

reg_w.exit.i.do.end10.i_crit_edge:                ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end.i:                                         ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i = zext i16 %or22.i to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name.i, i32 noundef %conv7.i) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %reg_w.exit.i.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %or22.i)
  %cmp12.i = icmp eq i16 %or22.i, 7
  br i1 %cmp12.i, label %sif_probe.exit.thread, label %do.end10.i.sw.epilog_crit_edge

do.end10.i.sw.epilog_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sif_probe.exit.thread:                            ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef 14) #7
  br label %cleanup

sw.epilog:                                        ; preds = %do.end10.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 0) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 1, i8 noundef zeroext -86, i8 noundef zeroext 0) #7
  %call1.i18 = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i18)
  %cmp.not.i = icmp eq i16 %call1.i18, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 4) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 1, i8 noundef zeroext -86, i8 noundef zeroext 0) #7
  %call4.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4.i)
  %cmp6.not.i = icmp eq i16 %call4.i, 0
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 6) #7
  %usb_err.i.i19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %15 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i20 = icmp slt i32 %16, 0
  br i1 %cmp.i.i20, label %if.end9.i.reg_w.exit.i29_crit_edge, label %if.end.i.i26

if.end9.i.reg_w.exit.i29_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i29

if.end.i.i26:                                     ; preds = %if.end9.i
  %dev.i.i21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i21, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i.i22 = shl i32 %20, 8
  %or.i.i23 = or i32 %shl.i.i.i22, -2147483648
  %call2.i.i24 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i.i23, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 141, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i24)
  %cmp3.i.i25 = icmp slt i32 %call2.i.i24, 0
  br i1 %cmp3.i.i25, label %do.end.i.i28, label %if.end.i.i26.reg_w.exit.i29_crit_edge

if.end.i.i26.reg_w.exit.i29_crit_edge:            ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.i29

do.end.i.i28:                                     ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i24) #10
  %21 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2.i.i24, ptr %usb_err.i.i19, align 8
  br label %reg_w.exit.i29

reg_w.exit.i29:                                   ; preds = %do.end.i.i28, %if.end.i.i26.reg_w.exit.i29_crit_edge, %if.end9.i.reg_w.exit.i29_crit_edge
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext -86, i8 noundef zeroext 0) #7
  %call11.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i)
  %cmp13.not.i = icmp eq i16 %call11.i, 0
  br i1 %cmp13.not.i, label %if.end16.i, label %reg_w.exit.i29.ov_check.i_crit_edge

reg_w.exit.i29.ov_check.i_crit_edge:              ; preds = %reg_w.exit.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov_check.i

if.end16.i:                                       ; preds = %reg_w.exit.i29
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 8) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 28, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 21, i8 noundef zeroext -86, i8 noundef zeroext 0) #7
  %call19.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call19.i)
  %cmp21.not.i = icmp eq i16 %call19.i, 0
  br i1 %cmp21.not.i, label %if.end24.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.i:                                       ; preds = %if.end16.i
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 10) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 7, i8 noundef zeroext -86, i8 noundef zeroext -86) #7
  %call26.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call26.i)
  %cmp28.not.i = icmp eq i16 %call26.i, 0
  br i1 %cmp28.not.i, label %if.end31.i, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.i:                                       ; preds = %if.end24.i
  %call32.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call32.i)
  %cmp34.not.i = icmp eq i16 %call32.i, 0
  br i1 %cmp34.not.i, label %if.end37.i, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37.i:                                       ; preds = %if.end31.i
  %call38.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call38.i)
  %cmp40.not.i = icmp eq i16 %call38.i, 0
  br i1 %cmp40.not.i, label %if.end43.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43.i:                                       ; preds = %if.end37.i
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 12) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 1, i8 noundef zeroext 17, i8 noundef zeroext 0) #7
  %call45.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call45.i)
  %cmp47.not.i = icmp eq i16 %call45.i, 0
  br i1 %cmp47.not.i, label %if.end50.i, label %if.end43.i.cleanup_crit_edge

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50.i:                                       ; preds = %if.end43.i
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 14) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 8, i16 noundef zeroext 141) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 3, i8 noundef zeroext -86, i8 noundef zeroext 0) #7
  tail call void @msleep(i32 noundef 50) #7
  %call52.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call52.i)
  %cmp54.not.i = icmp eq i16 %call52.i, 0
  br i1 %cmp54.not.i, label %if.end57.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef 15) #7
  br label %cleanup

if.end57.i:                                       ; preds = %if.end50.i
  tail call fastcc void @start_2wr_probe(ptr noundef %gspca_dev, i32 noundef 2) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 1, i8 noundef zeroext -86, i8 noundef zeroext 0) #7
  %call59.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call59.i)
  %cmp61.not.i = icmp eq i16 %call59.i, 0
  br i1 %cmp61.not.i, label %if.end57.i.ov_check.i_crit_edge, label %if.end57.i.cleanup_crit_edge

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57.i.ov_check.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov_check.i

ov_check.i:                                       ; preds = %if.end57.i.ov_check.i_crit_edge, %reg_w.exit.i29.ov_check.i_crit_edge
  %22 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i144.i = icmp slt i32 %23, 0
  br i1 %cmp.i144.i, label %ov_check.i.reg_w.exit218.i_crit_edge, label %if.end.i147.i

ov_check.i.reg_w.exit218.i_crit_edge:             ; preds = %ov_check.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i147.i:                                    ; preds = %ov_check.i
  %dev.i145.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i145.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i146.i = shl i32 %27, 8
  %or2.i.i = or i32 %shl.i.i146.i, -2147483520
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %28 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or2.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i149.i, label %reg_r.exit.i

do.end.i149.i:                                    ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i.i) #10
  br label %reg_w.exit218.sink.split.i

reg_r.exit.i:                                     ; preds = %if.end.i147.i
  %30 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i151.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i151.i, label %reg_r.exit.i.reg_w.exit218.i_crit_edge, label %if.end.i158.i

reg_r.exit.i.reg_w.exit218.i_crit_edge:           ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i158.i:                                    ; preds = %reg_r.exit.i
  %31 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i145.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i153.i = shl i32 %34, 8
  %or2.i154.i = or i32 %shl.i.i153.i, -2147483520
  %35 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i156.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or2.i154.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i156.i)
  %cmp4.i157.i = icmp slt i32 %call3.i156.i, 0
  br i1 %cmp4.i157.i, label %do.end.i160.i, label %reg_r.exit163.i

do.end.i160.i:                                    ; preds = %if.end.i158.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i156.i) #10
  br label %reg_w.exit218.sink.split.i

reg_r.exit163.i:                                  ; preds = %if.end.i158.i
  %37 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr242.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr242.pr.i)
  %cmp.i165.i = icmp slt i32 %.pr242.pr.i, 0
  br i1 %cmp.i165.i, label %reg_r.exit163.i.reg_w.exit218.i_crit_edge, label %if.end.i171.i

reg_r.exit163.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_r.exit163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i171.i:                                    ; preds = %reg_r.exit163.i
  %38 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i145.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i167.i = shl i32 %41, 8
  %or.i168.i = or i32 %shl.i.i167.i, -2147483648
  %call2.i169.i = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i168.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i169.i)
  %cmp3.i170.i = icmp slt i32 %call2.i169.i, 0
  br i1 %cmp3.i170.i, label %do.end.i173.i, label %reg_w.exit174.i

do.end.i173.i:                                    ; preds = %if.end.i171.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i172.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i169.i) #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit174.i:                                  ; preds = %if.end.i171.i
  %42 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr244.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr244.pr.i)
  %cmp.i176.i = icmp slt i32 %.pr244.pr.i, 0
  br i1 %cmp.i176.i, label %reg_w.exit174.i.reg_w.exit218.i_crit_edge, label %if.end.i182.i

reg_w.exit174.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i182.i:                                    ; preds = %reg_w.exit174.i
  %43 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i145.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i178.i = shl i32 %46, 8
  %or.i179.i = or i32 %shl.i.i178.i, -2147483648
  %call2.i180.i = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i179.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i180.i)
  %cmp3.i181.i = icmp slt i32 %call2.i180.i, 0
  br i1 %cmp3.i181.i, label %do.end.i184.i, label %reg_w.exit185.i

do.end.i184.i:                                    ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i183.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i180.i) #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit185.i:                                  ; preds = %if.end.i182.i
  %47 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr246.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr246.pr.pr.i)
  %cmp.i187.i = icmp slt i32 %.pr246.pr.pr.i, 0
  br i1 %cmp.i187.i, label %reg_w.exit185.i.reg_w.exit218.i_crit_edge, label %if.end.i193.i

reg_w.exit185.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i193.i:                                    ; preds = %reg_w.exit185.i
  %48 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i145.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i189.i = shl i32 %51, 8
  %or.i190.i = or i32 %shl.i.i189.i, -2147483648
  %call2.i191.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i190.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i191.i)
  %cmp3.i192.i = icmp slt i32 %call2.i191.i, 0
  br i1 %cmp3.i192.i, label %do.end.i195.i, label %reg_w.exit196.i

do.end.i195.i:                                    ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i191.i) #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit196.i:                                  ; preds = %if.end.i193.i
  %52 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr248.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr248.pr.pr.i)
  %cmp.i198.i = icmp slt i32 %.pr248.pr.pr.i, 0
  br i1 %cmp.i198.i, label %reg_w.exit196.i.reg_w.exit218.i_crit_edge, label %if.end.i204.i

reg_w.exit196.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i204.i:                                    ; preds = %reg_w.exit196.i
  %53 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i145.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i200.i = shl i32 %56, 8
  %or.i201.i = or i32 %shl.i.i200.i, -2147483648
  %call2.i202.i = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i201.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 161, i16 noundef zeroext 139, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i202.i)
  %cmp3.i203.i = icmp slt i32 %call2.i202.i, 0
  br i1 %cmp3.i203.i, label %do.end.i206.i, label %reg_w.exit207.i

do.end.i206.i:                                    ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i205.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i202.i) #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit207.i:                                  ; preds = %if.end.i204.i
  %57 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr250.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr250.pr.pr.i)
  %cmp.i209.i = icmp slt i32 %.pr250.pr.pr.i, 0
  br i1 %cmp.i209.i, label %reg_w.exit207.i.reg_w.exit218.i_crit_edge, label %if.end.i215.i

reg_w.exit207.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

if.end.i215.i:                                    ; preds = %reg_w.exit207.i
  %58 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i145.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i211.i = shl i32 %61, 8
  %or.i212.i = or i32 %shl.i.i211.i, -2147483648
  %call2.i213.i = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i212.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 141, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i213.i)
  %cmp3.i214.i = icmp slt i32 %call2.i213.i, 0
  br i1 %cmp3.i214.i, label %do.end.i217.i, label %if.end.i215.i.reg_w.exit218.i_crit_edge

if.end.i215.i.reg_w.exit218.i_crit_edge:          ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit218.i

do.end.i217.i:                                    ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i216.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i213.i) #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit218.sink.split.i:                       ; preds = %do.end.i217.i, %do.end.i206.i, %do.end.i195.i, %do.end.i184.i, %do.end.i173.i, %do.end.i160.i, %do.end.i149.i
  %call2.i169.sink.i = phi i32 [ %call2.i169.i, %do.end.i173.i ], [ %call3.i156.i, %do.end.i160.i ], [ %call3.i.i, %do.end.i149.i ], [ %call2.i191.i, %do.end.i195.i ], [ %call2.i180.i, %do.end.i184.i ], [ %call2.i202.i, %do.end.i206.i ], [ %call2.i213.i, %do.end.i217.i ]
  %62 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call2.i169.sink.i, ptr %usb_err.i.i19, align 8
  br label %reg_w.exit218.i

reg_w.exit218.i:                                  ; preds = %reg_w.exit218.sink.split.i, %if.end.i215.i.reg_w.exit218.i_crit_edge, %reg_w.exit207.i.reg_w.exit218.i_crit_edge, %reg_w.exit196.i.reg_w.exit218.i_crit_edge, %reg_w.exit185.i.reg_w.exit218.i_crit_edge, %reg_w.exit174.i.reg_w.exit218.i_crit_edge, %reg_r.exit163.i.reg_w.exit218.i_crit_edge, %reg_r.exit.i.reg_w.exit218.i_crit_edge, %ov_check.i.reg_w.exit218.i_crit_edge
  tail call void @msleep(i32 noundef 500) #7
  %63 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i220.i = icmp slt i32 %64, 0
  br i1 %cmp.i220.i, label %reg_w.exit218.i.reg_w.exit229.i_crit_edge, label %if.end.i226.i

reg_w.exit218.i.reg_w.exit229.i_crit_edge:        ; preds = %reg_w.exit218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit229.i

if.end.i226.i:                                    ; preds = %reg_w.exit218.i
  %dev.i221.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %65 = ptrtoint ptr %dev.i221.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i221.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i222.i = shl i32 %68, 8
  %or.i223.i = or i32 %shl.i.i222.i, -2147483648
  %call2.i224.i = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i223.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i224.i)
  %cmp3.i225.i = icmp slt i32 %call2.i224.i, 0
  br i1 %cmp3.i225.i, label %do.end.i228.i, label %if.end.i226.i.reg_w.exit229.i_crit_edge

if.end.i226.i.reg_w.exit229.i_crit_edge:          ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit229.i

do.end.i228.i:                                    ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i227.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i224.i) #10
  %69 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call2.i224.i, ptr %usb_err.i.i19, align 8
  br label %reg_w.exit229.i

reg_w.exit229.i:                                  ; preds = %do.end.i228.i, %if.end.i226.i.reg_w.exit229.i_crit_edge, %reg_w.exit218.i.reg_w.exit229.i_crit_edge
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  %call68.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 10) #7
  %shl.i = shl i16 %call68.i, 8
  %call71.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 11) #7
  %or142.i = or i16 %shl.i, %call71.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %70 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp75.i = icmp sgt i32 %70, 0
  br i1 %cmp75.i, label %do.end.i31, label %reg_w.exit229.do.end83_crit_edge.i

reg_w.exit229.do.end83_crit_edge.i:               ; preds = %reg_w.exit229.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = zext i16 %or142.i to i32
  br label %do.end83.i

do.end.i31:                                       ; preds = %reg_w.exit229.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv79.i = zext i16 %or142.i to i32
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i30, i32 noundef %conv79.i) #10
  br label %do.end83.i

do.end83.i:                                       ; preds = %do.end.i31, %reg_w.exit229.do.end83_crit_edge.i
  %conv84.pre-phi.i = phi i32 [ %.pre.i, %reg_w.exit229.do.end83_crit_edge.i ], [ %conv79.i, %do.end.i31 ]
  %71 = zext i16 %or142.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.125)
  switch i16 %or142.i, label %if.end9 [
    i16 30257, label %sw.bb.i
    i16 30240, label %do.end83.i.cleanup_crit_edge
    i16 30280, label %do.end83.i.cleanup_crit_edge63
  ]

do.end83.i.cleanup_crit_edge63:                   ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end83.i.cleanup_crit_edge:                     ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end83.i
  %72 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i231.i = icmp slt i32 %73, 0
  br i1 %cmp.i231.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i237.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i237.i:                                    ; preds = %sw.bb.i
  %dev.i232.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %74 = ptrtoint ptr %dev.i232.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i232.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i233.i = shl i32 %77, 8
  %or.i234.i = or i32 %shl.i.i233.i, -2147483648
  %call2.i235.i = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i234.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i235.i)
  %cmp3.i236.i = icmp slt i32 %call2.i235.i, 0
  br i1 %cmp3.i236.i, label %do.end.i239.i, label %if.end.i237.i.cleanup_crit_edge

if.end.i237.i.cleanup_crit_edge:                  ; preds = %if.end.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i239.i:                                    ; preds = %if.end.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i238.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i235.i) #10
  %78 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call2.i235.i, ptr %usb_err.i.i19, align 8
  br label %cleanup

if.end9:                                          ; preds = %do.end83.i
  %79 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i34 = icmp slt i32 %80, 0
  br i1 %cmp.i.i34, label %if.end9.reg_w.exit359.i_crit_edge, label %if.end.i.i40

if.end9.reg_w.exit359.i_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i.i40:                                     ; preds = %if.end9
  %dev.i.i35 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %81 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i35, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i.i36 = shl i32 %84, 8
  %or.i.i37 = or i32 %shl.i.i.i36, -2147483648
  %call2.i.i38 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i.i37, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i38)
  %cmp3.i.i39 = icmp slt i32 %call2.i.i38, 0
  br i1 %cmp3.i.i39, label %do.end.i.i42, label %reg_w.exit.i44

do.end.i.i42:                                     ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i38) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit.i44:                                   ; preds = %if.end.i.i40
  %85 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr.i43 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i43)
  %cmp.i277.i = icmp slt i32 %.pr.i43, 0
  br i1 %cmp.i277.i, label %reg_w.exit.i44.reg_w.exit359.i_crit_edge, label %if.end.i280.i

reg_w.exit.i44.reg_w.exit359.i_crit_edge:         ; preds = %reg_w.exit.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i280.i:                                    ; preds = %reg_w.exit.i44
  %86 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i.i35, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i.i279.i = shl i32 %89, 8
  %or2.i.i45 = or i32 %shl.i.i279.i, -2147483520
  %usb_buf.i.i46 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %90 = ptrtoint ptr %usb_buf.i.i46 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb_buf.i.i46, align 4
  %call3.i.i47 = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or2.i.i45, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef %91, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i47)
  %cmp4.i.i48 = icmp slt i32 %call3.i.i47, 0
  br i1 %cmp4.i.i48, label %do.end.i282.i, label %reg_r.exit.i49

do.end.i282.i:                                    ; preds = %if.end.i280.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i281.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i.i47) #10
  br label %reg_w.exit359.sink.split.i

reg_r.exit.i49:                                   ; preds = %if.end.i280.i
  %92 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr414.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr414.pr.i)
  %cmp.i284.i = icmp slt i32 %.pr414.pr.i, 0
  br i1 %cmp.i284.i, label %reg_r.exit.i49.reg_w.exit359.i_crit_edge, label %if.end.i290.i

reg_r.exit.i49.reg_w.exit359.i_crit_edge:         ; preds = %reg_r.exit.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i290.i:                                    ; preds = %reg_r.exit.i49
  %93 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i35, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i286.i = shl i32 %96, 8
  %or.i287.i = or i32 %shl.i.i286.i, -2147483648
  %call2.i288.i = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i287.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i288.i)
  %cmp3.i289.i = icmp slt i32 %call2.i288.i, 0
  br i1 %cmp3.i289.i, label %do.end.i292.i, label %reg_w.exit293.i

do.end.i292.i:                                    ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i291.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i288.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit293.i:                                  ; preds = %if.end.i290.i
  %97 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr416.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr416.pr.i)
  %cmp.i295.i = icmp slt i32 %.pr416.pr.i, 0
  br i1 %cmp.i295.i, label %reg_w.exit293.i.reg_w.exit359.i_crit_edge, label %if.end.i301.i

reg_w.exit293.i.reg_w.exit359.i_crit_edge:        ; preds = %reg_w.exit293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i301.i:                                    ; preds = %reg_w.exit293.i
  %98 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i35, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i.i297.i = shl i32 %101, 8
  %or.i298.i = or i32 %shl.i.i297.i, -2147483648
  %call2.i299.i = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or.i298.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i299.i)
  %cmp3.i300.i = icmp slt i32 %call2.i299.i, 0
  br i1 %cmp3.i300.i, label %do.end.i303.i, label %reg_w.exit304.i

do.end.i303.i:                                    ; preds = %if.end.i301.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i302.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i299.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit304.i:                                  ; preds = %if.end.i301.i
  %102 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr418.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr418.pr.pr.i)
  %cmp.i306.i = icmp slt i32 %.pr418.pr.pr.i, 0
  br i1 %cmp.i306.i, label %reg_w.exit304.i.reg_w.exit359.i_crit_edge, label %if.end.i312.i

reg_w.exit304.i.reg_w.exit359.i_crit_edge:        ; preds = %reg_w.exit304.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i312.i:                                    ; preds = %reg_w.exit304.i
  %103 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i35, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %shl.i.i308.i = shl i32 %106, 8
  %or.i309.i = or i32 %shl.i.i308.i, -2147483648
  %call2.i310.i = tail call i32 @usb_control_msg(ptr noundef %104, i32 noundef %or.i309.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i310.i)
  %cmp3.i311.i = icmp slt i32 %call2.i310.i, 0
  br i1 %cmp3.i311.i, label %do.end.i314.i, label %reg_w.exit315.i

do.end.i314.i:                                    ; preds = %if.end.i312.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i313.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i310.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit315.i:                                  ; preds = %if.end.i312.i
  %107 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr420.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr420.pr.pr.i)
  %cmp.i317.i = icmp slt i32 %.pr420.pr.pr.i, 0
  br i1 %cmp.i317.i, label %reg_w.exit315.i.reg_w.exit359.i_crit_edge, label %if.end.i323.i

reg_w.exit315.i.reg_w.exit359.i_crit_edge:        ; preds = %reg_w.exit315.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i323.i:                                    ; preds = %reg_w.exit315.i
  %108 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i35, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i.i319.i = shl i32 %111, 8
  %or.i320.i = or i32 %shl.i.i319.i, -2147483648
  %call2.i321.i = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %or.i320.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 145, i16 noundef zeroext 139, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i321.i)
  %cmp3.i322.i = icmp slt i32 %call2.i321.i, 0
  br i1 %cmp3.i322.i, label %do.end.i325.i, label %reg_w.exit326.i

do.end.i325.i:                                    ; preds = %if.end.i323.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i324.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i321.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit326.i:                                  ; preds = %if.end.i323.i
  %112 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pr422.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr422.pr.pr.i)
  %cmp.i328.i = icmp slt i32 %.pr422.pr.pr.i, 0
  br i1 %cmp.i328.i, label %reg_w.exit326.i.reg_w.exit359.i_crit_edge, label %if.end.i334.i

reg_w.exit326.i.reg_w.exit359.i_crit_edge:        ; preds = %reg_w.exit326.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i334.i:                                    ; preds = %reg_w.exit326.i
  %113 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i35, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 8
  %shl.i.i330.i = shl i32 %116, 8
  %or.i331.i = or i32 %shl.i.i330.i, -2147483648
  %call2.i332.i = tail call i32 @usb_control_msg(ptr noundef %114, i32 noundef %or.i331.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i332.i)
  %cmp3.i333.i = icmp slt i32 %call2.i332.i, 0
  br i1 %cmp3.i333.i, label %do.end.i336.i, label %reg_w.exit337.i

do.end.i336.i:                                    ; preds = %if.end.i334.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i335.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i332.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit337.i:                                  ; preds = %if.end.i334.i
  %117 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr424.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr424.pr.pr.i)
  %cmp.i339.i = icmp slt i32 %.pr424.pr.pr.i, 0
  br i1 %cmp.i339.i, label %reg_w.exit337.i.reg_w.exit359.i_crit_edge, label %if.end.i345.i

reg_w.exit337.i.reg_w.exit359.i_crit_edge:        ; preds = %reg_w.exit337.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i345.i:                                    ; preds = %reg_w.exit337.i
  %118 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i.i35, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i341.i = shl i32 %121, 8
  %or.i342.i = or i32 %shl.i.i341.i, -2147483648
  %call2.i343.i = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or.i342.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i343.i)
  %cmp3.i344.i = icmp slt i32 %call2.i343.i, 0
  br i1 %cmp3.i344.i, label %do.end.i347.i, label %reg_w.exit348.i

do.end.i347.i:                                    ; preds = %if.end.i345.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i346.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i343.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit348.i:                                  ; preds = %if.end.i345.i
  %122 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr426.pr.pr.pr.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr426.pr.pr.pr.i)
  %cmp.i350.i = icmp slt i32 %.pr426.pr.pr.pr.i, 0
  br i1 %cmp.i350.i, label %reg_w.exit348.i.reg_w.exit359.i_crit_edge, label %if.end.i356.i

reg_w.exit348.i.reg_w.exit359.i_crit_edge:        ; preds = %reg_w.exit348.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

if.end.i356.i:                                    ; preds = %reg_w.exit348.i
  %123 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i35, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i352.i = shl i32 %126, 8
  %or.i353.i = or i32 %shl.i.i352.i, -2147483648
  %call2.i354.i = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i353.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i354.i)
  %cmp3.i355.i = icmp slt i32 %call2.i354.i, 0
  br i1 %cmp3.i355.i, label %do.end.i358.i, label %if.end.i356.i.reg_w.exit359.i_crit_edge

if.end.i356.i.reg_w.exit359.i_crit_edge:          ; preds = %if.end.i356.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit359.i

do.end.i358.i:                                    ; preds = %if.end.i356.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i357.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i354.i) #10
  br label %reg_w.exit359.sink.split.i

reg_w.exit359.sink.split.i:                       ; preds = %do.end.i358.i, %do.end.i347.i, %do.end.i336.i, %do.end.i325.i, %do.end.i314.i, %do.end.i303.i, %do.end.i292.i, %do.end.i282.i, %do.end.i.i42
  %call2.i.sink.i = phi i32 [ %call2.i.i38, %do.end.i.i42 ], [ %call2.i310.i, %do.end.i314.i ], [ %call2.i299.i, %do.end.i303.i ], [ %call2.i288.i, %do.end.i292.i ], [ %call3.i.i47, %do.end.i282.i ], [ %call2.i332.i, %do.end.i336.i ], [ %call2.i321.i, %do.end.i325.i ], [ %call2.i343.i, %do.end.i347.i ], [ %call2.i354.i, %do.end.i358.i ]
  %127 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call2.i.sink.i, ptr %usb_err.i.i19, align 8
  br label %reg_w.exit359.i

reg_w.exit359.i:                                  ; preds = %reg_w.exit359.sink.split.i, %if.end.i356.i.reg_w.exit359.i_crit_edge, %reg_w.exit348.i.reg_w.exit359.i_crit_edge, %reg_w.exit337.i.reg_w.exit359.i_crit_edge, %reg_w.exit326.i.reg_w.exit359.i_crit_edge, %reg_w.exit315.i.reg_w.exit359.i_crit_edge, %reg_w.exit304.i.reg_w.exit359.i_crit_edge, %reg_w.exit293.i.reg_w.exit359.i_crit_edge, %reg_r.exit.i49.reg_w.exit359.i_crit_edge, %reg_w.exit.i44.reg_w.exit359.i_crit_edge, %if.end9.reg_w.exit359.i_crit_edge
  %call1.i50 = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i50)
  %cmp.not.i51 = icmp eq i16 %call1.i50, 0
  br i1 %cmp.not.i51, label %if.end.i52, label %reg_w.exit359.i.cleanup_crit_edge

reg_w.exit359.i.cleanup_crit_edge:                ; preds = %reg_w.exit359.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i52:                                       ; preds = %reg_w.exit359.i
  %call3.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3.i)
  %cmp5.not.i = icmp eq i16 %call3.i, 0
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i52.cleanup_crit_edge

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i52
  %call9.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call9.i)
  %cmp11.not.i = icmp eq i16 %call9.i, 0
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end8.i
  %128 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i361.i = icmp slt i32 %129, 0
  br i1 %cmp.i361.i, label %if.end14.i.reg_r.exit398.i_crit_edge, label %if.end.i367.i

if.end14.i.reg_r.exit398.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit398.i

if.end.i367.i:                                    ; preds = %if.end14.i
  %dev.i362.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %130 = ptrtoint ptr %dev.i362.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i362.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i363.i = shl i32 %133, 8
  %or.i364.i = or i32 %shl.i.i363.i, -2147483648
  %call2.i365.i = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or.i364.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i365.i)
  %cmp3.i366.i = icmp slt i32 %call2.i365.i, 0
  br i1 %cmp3.i366.i, label %do.end.i369.i, label %reg_w.exit370.i

do.end.i369.i:                                    ; preds = %if.end.i367.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i368.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i365.i) #10
  %134 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call2.i365.i, ptr %usb_err.i.i19, align 8
  br label %reg_r.exit398.i

reg_w.exit370.i:                                  ; preds = %if.end.i367.i
  %135 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pr428.i = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr428.i)
  %cmp.i372.i = icmp slt i32 %.pr428.i, 0
  br i1 %cmp.i372.i, label %reg_w.exit370.i.reg_r.exit398.i_crit_edge, label %if.end.i379.i

reg_w.exit370.i.reg_r.exit398.i_crit_edge:        ; preds = %reg_w.exit370.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit398.i

if.end.i379.i:                                    ; preds = %reg_w.exit370.i
  %136 = ptrtoint ptr %dev.i362.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i362.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 8
  %shl.i.i374.i = shl i32 %139, 8
  %or2.i375.i = or i32 %shl.i.i374.i, -2147483520
  %usb_buf.i376.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %140 = ptrtoint ptr %usb_buf.i376.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %usb_buf.i376.i, align 4
  %call3.i377.i = tail call i32 @usb_control_msg(ptr noundef %137, i32 noundef %or2.i375.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef %141, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i377.i)
  %cmp4.i378.i = icmp slt i32 %call3.i377.i, 0
  br i1 %cmp4.i378.i, label %do.end.i381.i, label %reg_r.exit384.i

do.end.i381.i:                                    ; preds = %if.end.i379.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i380.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i377.i) #10
  %142 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call3.i377.i, ptr %usb_err.i.i19, align 8
  br label %reg_r.exit398.i

reg_r.exit384.i:                                  ; preds = %if.end.i379.i
  %143 = ptrtoint ptr %usb_buf.i376.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %usb_buf.i376.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  %147 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr430.pr.i = load i32, ptr %usb_err.i.i19, align 8
  %conv16.i = zext i8 %146 to i16
  %shl.i53 = shl nuw i16 %conv16.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr430.pr.i)
  %cmp.i386.i = icmp slt i32 %.pr430.pr.i, 0
  br i1 %cmp.i386.i, label %reg_r.exit384.i.reg_r.exit398.i_crit_edge, label %if.end.i393.i

reg_r.exit384.i.reg_r.exit398.i_crit_edge:        ; preds = %reg_r.exit384.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit398.i

if.end.i393.i:                                    ; preds = %reg_r.exit384.i
  %148 = ptrtoint ptr %dev.i362.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i362.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 8
  %shl.i.i388.i = shl i32 %151, 8
  %or2.i389.i = or i32 %shl.i.i388.i, -2147483520
  %call3.i391.i = tail call i32 @usb_control_msg(ptr noundef %149, i32 noundef %or2.i389.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 10, ptr noundef %144, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i391.i)
  %cmp4.i392.i = icmp slt i32 %call3.i391.i, 0
  br i1 %cmp4.i392.i, label %do.end.i395.i, label %if.end8.i396.i

do.end.i395.i:                                    ; preds = %if.end.i393.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i394.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i391.i) #10
  %152 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call3.i391.i, ptr %usb_err.i.i19, align 8
  br label %reg_r.exit398.i

if.end8.i396.i:                                   ; preds = %if.end.i393.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %usb_buf.i376.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %usb_buf.i376.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %154, align 1
  br label %reg_r.exit398.i

reg_r.exit398.i:                                  ; preds = %if.end8.i396.i, %do.end.i395.i, %reg_r.exit384.i.reg_r.exit398.i_crit_edge, %do.end.i381.i, %reg_w.exit370.i.reg_r.exit398.i_crit_edge, %do.end.i369.i, %if.end14.i.reg_r.exit398.i_crit_edge
  %shl436.i = phi i16 [ %shl.i53, %do.end.i395.i ], [ %shl.i53, %if.end8.i396.i ], [ %shl.i53, %reg_r.exit384.i.reg_r.exit398.i_crit_edge ], [ 0, %reg_w.exit370.i.reg_r.exit398.i_crit_edge ], [ 0, %do.end.i381.i ], [ 0, %do.end.i369.i ], [ 0, %if.end14.i.reg_r.exit398.i_crit_edge ]
  %retval.0.i383435.i = phi i8 [ %146, %do.end.i395.i ], [ %146, %if.end8.i396.i ], [ %146, %reg_r.exit384.i.reg_r.exit398.i_crit_edge ], [ 0, %reg_w.exit370.i.reg_r.exit398.i_crit_edge ], [ 0, %do.end.i381.i ], [ 0, %do.end.i369.i ], [ 0, %if.end14.i.reg_r.exit398.i_crit_edge ]
  %retval.0.i397.i = phi i8 [ 0, %do.end.i395.i ], [ %156, %if.end8.i396.i ], [ 0, %reg_r.exit384.i.reg_r.exit398.i_crit_edge ], [ 0, %reg_w.exit370.i.reg_r.exit398.i_crit_edge ], [ 0, %do.end.i381.i ], [ 0, %do.end.i369.i ], [ 0, %if.end14.i.reg_r.exit398.i_crit_edge ]
  %conv19.i = zext i8 %retval.0.i397.i to i16
  %or.i = or i16 %shl436.i, %conv19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %157 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp22.i = icmp sgt i32 %157, 0
  br i1 %cmp22.i, label %do.end.i55, label %reg_r.exit398.i.do.end30.i_crit_edge

reg_r.exit398.i.do.end30.i_crit_edge:             ; preds = %reg_r.exit398.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

do.end.i55:                                       ; preds = %reg_r.exit398.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv26.i = zext i16 %or.i to i32
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name.i54, i32 noundef %conv26.i) #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end.i55, %reg_r.exit398.i.do.end30.i_crit_edge
  %158 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %usb_err.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i400.i = icmp slt i32 %159, 0
  br i1 %cmp.i400.i, label %do.end30.i.reg_r.exit412.i_crit_edge, label %if.end.i407.i

do.end30.i.reg_r.exit412.i_crit_edge:             ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit412.i

if.end.i407.i:                                    ; preds = %do.end30.i
  %dev.i401.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %160 = ptrtoint ptr %dev.i401.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev.i401.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 8
  %shl.i.i402.i = shl i32 %163, 8
  %or2.i403.i = or i32 %shl.i.i402.i, -2147483520
  %usb_buf.i404.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %164 = ptrtoint ptr %usb_buf.i404.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %usb_buf.i404.i, align 4
  %call3.i405.i = tail call i32 @usb_control_msg(ptr noundef %161, i32 noundef %or2.i403.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef %165, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i405.i)
  %cmp4.i406.i = icmp slt i32 %call3.i405.i, 0
  br i1 %cmp4.i406.i, label %do.end.i409.i, label %if.end.i407.i.reg_r.exit412.i_crit_edge

if.end.i407.i.reg_r.exit412.i_crit_edge:          ; preds = %if.end.i407.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit412.i

do.end.i409.i:                                    ; preds = %if.end.i407.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i408.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i405.i) #10
  %166 = ptrtoint ptr %usb_err.i.i19 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call3.i405.i, ptr %usb_err.i.i19, align 8
  br label %reg_r.exit412.i

reg_r.exit412.i:                                  ; preds = %do.end.i409.i, %if.end.i407.i.reg_r.exit412.i_crit_edge, %do.end30.i.reg_r.exit412.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %retval.0.i383435.i)
  %cmp33.i = icmp eq i8 %retval.0.i383435.i, 100
  br i1 %cmp33.i, label %reg_r.exit412.i.cleanup_crit_edge, label %for.body.preheader.i

reg_r.exit412.i.cleanup_crit_edge:                ; preds = %reg_r.exit412.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %reg_r.exit412.i
  %167 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %or.i, label %for.inc.6.i [
    i16 -16384, label %for.body.preheader.i.if.then43.i_crit_edge
    i16 -16383, label %if.then43.fold.split.i
    i16 -8191, label %if.then43.fold.split511.i
    i16 -32767, label %if.then43.fold.split512.i
    i16 -32768, label %if.then43.fold.split513.i
    i16 -31744, label %if.then43.fold.split514.i
    i16 -7168, label %if.then43.fold.split515.i
  ]

for.body.preheader.i.if.then43.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.fold.split.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.fold.split511.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.fold.split512.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.fold.split513.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.fold.split514.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.fold.split515.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then43.fold.split515.i, %if.then43.fold.split514.i, %if.then43.fold.split513.i, %if.then43.fold.split512.i, %if.then43.fold.split511.i, %if.then43.fold.split.i, %for.body.preheader.i.if.then43.i_crit_edge
  %i.0509.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.then43.i_crit_edge ], [ 1, %if.then43.fold.split.i ], [ 2, %if.then43.fold.split511.i ], [ 3, %if.then43.fold.split512.i ], [ 4, %if.then43.fold.split513.i ], [ 5, %if.then43.fold.split514.i ], [ 6, %if.then43.fold.split515.i ]
  %chip_revision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %168 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %or.i, ptr %chip_revision.i, align 8
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef 16) #7
  %internal_sensor_id.i = getelementptr [7 x %struct.sensor_by_chipset_revision], ptr @chipset_revision_sensor, i32 0, i32 %i.0509.lcssa.i, i32 1
  %169 = ptrtoint ptr %internal_sensor_id.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %internal_sensor_id.i, align 2
  %conv45.i = zext i8 %170 to i32
  br label %cleanup

for.inc.6.i:                                      ; preds = %for.body.preheader.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext -35, i16 noundef zeroext 139) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 10, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 3, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 18) #7
  %call47.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call47.i)
  %cmp49.not.i = icmp eq i16 %call47.i, 0
  br i1 %cmp49.not.i, label %if.end67.i, label %do.body52.i

do.body52.i:                                      ; preds = %for.inc.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %171 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp53.i = icmp sgt i32 %171, 0
  br i1 %cmp53.i, label %do.end58.i, label %do.body52.i.cleanup_crit_edge

do.body52.i.cleanup_crit_edge:                    ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end58.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  %name61.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name61.i) #10
  br label %cleanup

if.end67.i:                                       ; preds = %for.inc.6.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext -104, i16 noundef zeroext 139) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 3, i16 noundef zeroext 18) #7
  tail call void @msleep(i32 noundef 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 18) #7
  %call68.i56 = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 0) #7
  %conv69.i = zext i16 %call68.i56 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call68.i56)
  %cmp70.not.i = icmp eq i16 %call68.i56, 0
  br i1 %cmp70.not.i, label %if.end100.i, label %do.body73.i

do.body73.i:                                      ; preds = %if.end67.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %172 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp74.i = icmp sgt i32 %172, 0
  br i1 %cmp74.i, label %do.end79.i, label %do.body73.i.do.end88.i_crit_edge

do.body73.i.do.end88.i_crit_edge:                 ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88.i

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #9
  %name82.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name82.i, i32 noundef %conv69.i) #10
  br label %do.end88.i

do.end88.i:                                       ; preds = %do.end79.i, %do.body73.i.do.end88.i_crit_edge
  %173 = zext i16 %call68.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %call68.i56, label %do.end88.i.if.end98.i_crit_edge [
    i16 17, label %do.end88.i.cleanup_crit_edge
    i16 41, label %if.then97.i
  ]

do.end88.i.cleanup_crit_edge:                     ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end88.i.if.end98.i_crit_edge:                  ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

if.then97.i:                                      ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef 4) #7
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then97.i, %do.end88.i.if.end98.i_crit_edge
  br label %cleanup

if.end100.i:                                      ; preds = %if.end67.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext -95, i16 noundef zeroext 139) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 8, i16 noundef zeroext 141) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 6, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 5, i16 noundef zeroext 18) #7
  %call101.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 28) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %call101.i)
  %cmp103.i = icmp eq i16 %call101.i, 127
  br i1 %cmp103.i, label %land.lhs.true.i, label %if.end100.i.if.end110.i_crit_edge

if.end100.i.if.end110.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

land.lhs.true.i:                                  ; preds = %if.end100.i
  %call105.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 162, i16 %call105.i)
  %cmp107.i = icmp eq i16 %call105.i, 162
  br i1 %cmp107.i, label %if.then109.i, label %land.lhs.true.i.if.end110.i_crit_edge

land.lhs.true.i.if.end110.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.then109.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef 12) #7
  br label %cleanup

if.end110.i:                                      ; preds = %land.lhs.true.i.if.end110.i_crit_edge, %if.end100.i.if.end110.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 0, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext -18, i16 noundef zeroext 139) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 3, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 5, i16 noundef zeroext 18) #7
  %call111.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 0) #7
  %shl113.i = shl i16 %call111.i, 8
  %call115.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  %or118275.i = or i16 %shl113.i, %call115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %174 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp121.i = icmp sgt i32 %174, 0
  br i1 %cmp121.i, label %do.end126.i, label %if.end110.i.do.end135.i_crit_edge

if.end110.i.do.end135.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i

do.end126.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  %name129.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv131.i = zext i16 %or118275.i to i32
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name129.i, i32 noundef %conv131.i) #10
  br label %do.end135.i

do.end135.i:                                      ; preds = %do.end126.i, %if.end110.i.do.end135.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8240, i16 %or118275.i)
  %cmp137.i = icmp eq i16 %or118275.i, 8240
  br i1 %cmp137.i, label %if.then139.i, label %if.end159.i

if.then139.i:                                     ; preds = %do.end135.i
  %call140.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %175 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp143.i = icmp sgt i32 %175, 0
  br i1 %cmp143.i, label %do.end148.i, label %if.then139.i.do.end157.i_crit_edge

if.then139.i.do.end157.i_crit_edge:               ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end157.i

do.end148.i:                                      ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #9
  %name151.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %176 = and i16 %call140.i, 255
  %conv153.i = zext i16 %176 to i32
  %call154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name151.i, i32 noundef %conv153.i) #10
  br label %do.end157.i

do.end157.i:                                      ; preds = %do.end148.i, %if.then139.i.do.end157.i_crit_edge
  tail call fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef 17) #7
  br label %cleanup

if.end159.i:                                      ; preds = %do.end135.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 10, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext -45, i16 noundef zeroext 139) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 3, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 5, i16 noundef zeroext 18) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext -45, i16 noundef zeroext 139) #7
  %call160.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %gspca_dev, i8 noundef zeroext 1) #7
  %conv161.i = zext i16 %call160.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call160.i)
  %cmp162.not.i = icmp eq i16 %call160.i, 0
  br i1 %cmp162.not.i, label %if.end159.i.cleanup_crit_edge, label %do.body165.i

if.end159.i.cleanup_crit_edge:                    ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body165.i:                                     ; preds = %if.end159.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %177 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp166.i = icmp sgt i32 %177, 0
  br i1 %cmp166.i, label %do.end171.i, label %do.body165.i.cleanup_crit_edge

do.body165.i.cleanup_crit_edge:                   ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end171.i:                                      ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #9
  %name174.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name174.i, i32 noundef %conv161.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end171.i, %do.body165.i.cleanup_crit_edge, %if.end159.i.cleanup_crit_edge, %do.end157.i, %if.then109.i, %if.end98.i, %do.end88.i.cleanup_crit_edge, %do.end58.i, %do.body52.i.cleanup_crit_edge, %if.then43.i, %reg_r.exit412.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i52.cleanup_crit_edge, %reg_w.exit359.i.cleanup_crit_edge, %do.end.i239.i, %if.end.i237.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %do.end83.i.cleanup_crit_edge, %do.end83.i.cleanup_crit_edge63, %if.end57.i.cleanup_crit_edge, %if.then56.i, %if.end43.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sif_probe.exit.thread, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge62
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge62 ], [ 15, %sif_probe.exit.thread ], [ %conv45.i, %if.then43.i ], [ %conv69.i, %if.end98.i ], [ 6, %if.then109.i ], [ 8240, %do.end157.i ], [ 17, %reg_w.exit359.i.cleanup_crit_edge ], [ 17, %if.end.i52.cleanup_crit_edge ], [ 17, %if.end8.i.cleanup_crit_edge ], [ 2, %reg_r.exit412.i.cleanup_crit_edge ], [ 10, %do.end58.i ], [ 10, %do.body52.i.cleanup_crit_edge ], [ 771, %do.end88.i.cleanup_crit_edge ], [ 22, %do.end171.i ], [ 22, %do.body165.i.cleanup_crit_edge ], [ -1, %if.end159.i.cleanup_crit_edge ], [ 2, %if.end57.i.cleanup_crit_edge ], [ 12, %if.end43.i.cleanup_crit_edge ], [ 10, %if.end37.i.cleanup_crit_edge ], [ 10, %if.end31.i.cleanup_crit_edge ], [ 10, %if.end24.i.cleanup_crit_edge ], [ 8, %if.end16.i.cleanup_crit_edge ], [ 4, %if.end.i.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 14, %if.then56.i ], [ %conv84.pre-phi.i, %do.end.i239.i ], [ %conv84.pre-phi.i, %if.end.i237.i.cleanup_crit_edge ], [ %conv84.pre-phi.i, %sw.bb.i.cleanup_crit_edge ], [ %conv84.pre-phi.i, %do.end83.i.cleanup_crit_edge ], [ %conv84.pre-phi.i, %do.end83.i.cleanup_crit_edge63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @i2c_read(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %reg to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 146, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.reg_w.exit32.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit32.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit32.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i23 = icmp slt i32 %.pr, 0
  br i1 %cmp.i23, label %reg_w.exit.reg_w.exit32_crit_edge, label %if.end.i29

reg_w.exit.reg_w.exit32_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit32

if.end.i29:                                       ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i25 = shl i32 %10, 8
  %or.i26 = or i32 %shl.i.i25, -2147483648
  %call2.i27 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i26, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 144, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i27)
  %cmp3.i28 = icmp slt i32 %call2.i27, 0
  br i1 %cmp3.i28, label %if.end.i29.reg_w.exit32.sink.split_crit_edge, label %if.end.i29.reg_w.exit32_crit_edge

if.end.i29.reg_w.exit32_crit_edge:                ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit32

if.end.i29.reg_w.exit32.sink.split_crit_edge:     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit32.sink.split

reg_w.exit32.sink.split:                          ; preds = %if.end.i29.reg_w.exit32.sink.split_crit_edge, %if.end.i.reg_w.exit32.sink.split_crit_edge
  %call2.i.sink77 = phi i32 [ %call2.i, %if.end.i.reg_w.exit32.sink.split_crit_edge ], [ %call2.i27, %if.end.i29.reg_w.exit32.sink.split_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.sink77) #10
  %11 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2.i.sink77, ptr %usb_err, align 8
  br label %reg_w.exit32

reg_w.exit32:                                     ; preds = %reg_w.exit32.sink.split, %if.end.i29.reg_w.exit32_crit_edge, %reg_w.exit.reg_w.exit32_crit_edge
  tail call void @msleep(i32 noundef 20) #7
  %12 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i34 = icmp slt i32 %13, 0
  br i1 %cmp.i34, label %reg_w.exit32.reg_r.exit67_crit_edge, label %if.end.i37

reg_w.exit32.reg_r.exit67_crit_edge:              ; preds = %reg_w.exit32
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit67

if.end.i37:                                       ; preds = %reg_w.exit32
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i36 = shl i32 %17, 8
  %or2.i = or i32 %shl.i.i36, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 145, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i39, label %reg_r.exit

do.end.i39:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  %20 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call3.i, ptr %usb_err, align 8
  br label %reg_r.exit67

reg_r.exit:                                       ; preds = %if.end.i37
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp2.not = icmp eq i8 %24, 0
  br i1 %cmp2.not, label %reg_r.exit.if.end7_crit_edge, label %do.end

reg_r.exit.if.end7_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %24 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %reg_r.exit.if.end7_crit_edge
  %25 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr75 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr75)
  %cmp.i41 = icmp slt i32 %.pr75, 0
  br i1 %cmp.i41, label %if.end7.reg_r.exit67_crit_edge, label %if.end.i48

if.end7.reg_r.exit67_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit67

if.end.i48:                                       ; preds = %if.end7
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i43 = shl i32 %29, 8
  %or2.i44 = or i32 %shl.i.i43, -2147483520
  %30 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call3.i46 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or2.i44, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 149, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i46)
  %cmp4.i47 = icmp slt i32 %call3.i46, 0
  br i1 %cmp4.i47, label %do.end.i50, label %reg_r.exit53

do.end.i50:                                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i46) #10
  %32 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call3.i46, ptr %usb_err, align 8
  br label %reg_r.exit67

reg_r.exit53:                                     ; preds = %if.end.i48
  %33 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %37 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr71 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr71)
  %cmp.i55 = icmp slt i32 %.pr71, 0
  br i1 %cmp.i55, label %reg_r.exit53.reg_r.exit67_crit_edge, label %if.end.i62

reg_r.exit53.reg_r.exit67_crit_edge:              ; preds = %reg_r.exit53
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit67

if.end.i62:                                       ; preds = %reg_r.exit53
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i57 = shl i32 %41, 8
  %or2.i58 = or i32 %shl.i.i57, -2147483520
  %42 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i, align 4
  %call3.i60 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or2.i58, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 150, ptr noundef %43, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i60)
  %cmp4.i61 = icmp slt i32 %call3.i60, 0
  br i1 %cmp4.i61, label %do.end.i64, label %if.end8.i65

do.end.i64:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i60) #10
  %44 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call3.i60, ptr %usb_err, align 8
  br label %reg_r.exit67

if.end8.i65:                                      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  br label %reg_r.exit67

reg_r.exit67:                                     ; preds = %if.end8.i65, %do.end.i64, %reg_r.exit53.reg_r.exit67_crit_edge, %do.end.i50, %if.end7.reg_r.exit67_crit_edge, %do.end.i39, %reg_w.exit32.reg_r.exit67_crit_edge
  %retval.0.i5274 = phi i8 [ %36, %do.end.i64 ], [ %36, %if.end8.i65 ], [ %36, %reg_r.exit53.reg_r.exit67_crit_edge ], [ 0, %if.end7.reg_r.exit67_crit_edge ], [ 0, %do.end.i50 ], [ 0, %reg_w.exit32.reg_r.exit67_crit_edge ], [ 0, %do.end.i39 ]
  %retval.0.i66 = phi i8 [ 0, %do.end.i64 ], [ %48, %if.end8.i65 ], [ 0, %reg_r.exit53.reg_r.exit67_crit_edge ], [ 0, %if.end7.reg_r.exit67_crit_edge ], [ 0, %do.end.i50 ], [ 0, %reg_w.exit32.reg_r.exit67_crit_edge ], [ 0, %do.end.i39 ]
  %conv11 = zext i8 %retval.0.i66 to i16
  %shl = shl nuw i16 %conv11, 8
  %conv12 = zext i8 %retval.0.i5274 to i16
  %or = or i16 %shl, %conv12
  br label %cleanup

cleanup:                                          ; preds = %reg_r.exit67, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %or, %reg_r.exit67 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_2wr_probe(ptr nocapture noundef %gspca_dev, i32 noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit48_crit_edge, label %if.end.i

entry.reg_w.exit48_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.reg_w.exit48.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit48.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i6 = icmp slt i32 %.pr, 0
  br i1 %cmp.i6, label %reg_w.exit.reg_w.exit48_crit_edge, label %if.end.i12

reg_w.exit.reg_w.exit48_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48

if.end.i12:                                       ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i8 = shl i32 %10, 8
  %or.i9 = or i32 %shl.i.i8, -2147483648
  %11 = trunc i32 %sensor to i16
  %conv.i = and i16 %11, 255
  %call2.i10 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i9, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i10)
  %cmp3.i11 = icmp slt i32 %call2.i10, 0
  br i1 %cmp3.i11, label %if.end.i12.reg_w.exit48.sink.split_crit_edge, label %reg_w.exit15

if.end.i12.reg_w.exit48.sink.split_crit_edge:     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48.sink.split

reg_w.exit15:                                     ; preds = %if.end.i12
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr51.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr51.pr)
  %cmp.i17 = icmp slt i32 %.pr51.pr, 0
  br i1 %cmp.i17, label %reg_w.exit15.reg_w.exit48_crit_edge, label %if.end.i23

reg_w.exit15.reg_w.exit48_crit_edge:              ; preds = %reg_w.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48

if.end.i23:                                       ; preds = %reg_w.exit15
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i19 = shl i32 %16, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %call2.i21 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i20, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21)
  %cmp3.i22 = icmp slt i32 %call2.i21, 0
  br i1 %cmp3.i22, label %if.end.i23.reg_w.exit48.sink.split_crit_edge, label %reg_w.exit26

if.end.i23.reg_w.exit48.sink.split_crit_edge:     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48.sink.split

reg_w.exit26:                                     ; preds = %if.end.i23
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr53.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr53.pr)
  %cmp.i28 = icmp slt i32 %.pr53.pr, 0
  br i1 %cmp.i28, label %reg_w.exit26.reg_w.exit48_crit_edge, label %if.end.i34

reg_w.exit26.reg_w.exit48_crit_edge:              ; preds = %reg_w.exit26
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48

if.end.i34:                                       ; preds = %reg_w.exit26
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i30 = shl i32 %21, 8
  %or.i31 = or i32 %shl.i.i30, -2147483648
  %call2.i32 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i31, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i32)
  %cmp3.i33 = icmp slt i32 %call2.i32, 0
  br i1 %cmp3.i33, label %if.end.i34.reg_w.exit48.sink.split_crit_edge, label %reg_w.exit37

if.end.i34.reg_w.exit48.sink.split_crit_edge:     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48.sink.split

reg_w.exit37:                                     ; preds = %if.end.i34
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr55.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr55.pr.pr)
  %cmp.i39 = icmp slt i32 %.pr55.pr.pr, 0
  br i1 %cmp.i39, label %reg_w.exit37.reg_w.exit48_crit_edge, label %if.end.i45

reg_w.exit37.reg_w.exit48_crit_edge:              ; preds = %reg_w.exit37
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48

if.end.i45:                                       ; preds = %reg_w.exit37
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i41 = shl i32 %26, 8
  %or.i42 = or i32 %shl.i.i41, -2147483648
  %call2.i43 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i42, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i43)
  %cmp3.i44 = icmp slt i32 %call2.i43, 0
  br i1 %cmp3.i44, label %if.end.i45.reg_w.exit48.sink.split_crit_edge, label %if.end.i45.reg_w.exit48_crit_edge

if.end.i45.reg_w.exit48_crit_edge:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48

if.end.i45.reg_w.exit48.sink.split_crit_edge:     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48.sink.split

reg_w.exit48.sink.split:                          ; preds = %if.end.i45.reg_w.exit48.sink.split_crit_edge, %if.end.i34.reg_w.exit48.sink.split_crit_edge, %if.end.i23.reg_w.exit48.sink.split_crit_edge, %if.end.i12.reg_w.exit48.sink.split_crit_edge, %if.end.i.reg_w.exit48.sink.split_crit_edge
  %call2.i.sink77 = phi i32 [ %call2.i, %if.end.i.reg_w.exit48.sink.split_crit_edge ], [ %call2.i10, %if.end.i12.reg_w.exit48.sink.split_crit_edge ], [ %call2.i21, %if.end.i23.reg_w.exit48.sink.split_crit_edge ], [ %call2.i32, %if.end.i34.reg_w.exit48.sink.split_crit_edge ], [ %call2.i43, %if.end.i45.reg_w.exit48.sink.split_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.sink77) #10
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call2.i.sink77, ptr %usb_err.i, align 8
  br label %reg_w.exit48

reg_w.exit48:                                     ; preds = %reg_w.exit48.sink.split, %if.end.i45.reg_w.exit48_crit_edge, %reg_w.exit37.reg_w.exit48_crit_edge, %reg_w.exit26.reg_w.exit48_crit_edge, %reg_w.exit15.reg_w.exit48_crit_edge, %reg_w.exit.reg_w.exit48_crit_edge, %entry.reg_w.exit48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_unknown(ptr noundef %gspca_dev, i32 noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  %7 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %sensor, label %reg_w.exit.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 0, label %reg_w.exit.sw.bb1_crit_edge
    i32 4, label %reg_w.exit.sw.bb1_crit_edge152
    i32 12, label %reg_w.exit.sw.bb1_crit_edge153
    i32 10, label %reg_w.exit.sw.bb1_crit_edge154
    i32 11, label %reg_w.exit.sw.bb1_crit_edge155
    i32 16, label %reg_w.exit.sw.bb1_crit_edge156
    i32 17, label %reg_w.exit.sw.bb1_crit_edge157
    i32 7, label %reg_w.exit.sw.bb2_crit_edge
    i32 15, label %reg_w.exit.sw.bb2_crit_edge158
  ]

reg_w.exit.sw.bb2_crit_edge158:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

reg_w.exit.sw.bb2_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

reg_w.exit.sw.bb1_crit_edge157:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.bb1_crit_edge156:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.bb1_crit_edge155:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.bb1_crit_edge154:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.bb1_crit_edge153:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.bb1_crit_edge152:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.bb1_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

reg_w.exit.sw.epilog_crit_edge:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %reg_w.exit
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i15 = icmp slt i32 %9, 0
  br i1 %cmp.i15, label %sw.bb.sw.epilog_crit_edge, label %if.end.i21

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i21:                                       ; preds = %sw.bb
  %dev.i16 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i16, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i17 = shl i32 %13, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %call2.i19 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i18, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 58, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i19)
  %cmp3.i20 = icmp slt i32 %call2.i19, 0
  br i1 %cmp3.i20, label %if.end.i21.sw.epilog.sink.split_crit_edge, label %reg_w.exit24

if.end.i21.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

reg_w.exit24:                                     ; preds = %if.end.i21
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i26 = icmp slt i32 %.pr, 0
  br i1 %cmp.i26, label %reg_w.exit24.sw.epilog_crit_edge, label %if.end.i32

reg_w.exit24.sw.epilog_crit_edge:                 ; preds = %reg_w.exit24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i32:                                       ; preds = %reg_w.exit24
  %15 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i16, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i28 = shl i32 %18, 8
  %or.i29 = or i32 %shl.i.i28, -2147483648
  %call2.i30 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i29, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 59, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30)
  %cmp3.i31 = icmp slt i32 %call2.i30, 0
  br i1 %cmp3.i31, label %if.end.i32.sw.epilog.sink.split_crit_edge, label %reg_w.exit35

if.end.i32.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

reg_w.exit35:                                     ; preds = %if.end.i32
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr125.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr125.pr)
  %cmp.i37 = icmp slt i32 %.pr125.pr, 0
  br i1 %cmp.i37, label %reg_w.exit35.sw.epilog_crit_edge, label %if.end.i43

reg_w.exit35.sw.epilog_crit_edge:                 ; preds = %reg_w.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i43:                                       ; preds = %reg_w.exit35
  %20 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i16, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i39 = shl i32 %23, 8
  %or.i40 = or i32 %shl.i.i39, -2147483648
  %call2.i41 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i40, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 56, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41)
  %cmp3.i42 = icmp slt i32 %call2.i41, 0
  br i1 %cmp3.i42, label %if.end.i43.sw.epilog.sink.split_crit_edge, label %if.end.i43.sw.epilog_crit_edge

if.end.i43.sw.epilog_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i43.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %reg_w.exit.sw.bb1_crit_edge, %reg_w.exit.sw.bb1_crit_edge152, %reg_w.exit.sw.bb1_crit_edge153, %reg_w.exit.sw.bb1_crit_edge154, %reg_w.exit.sw.bb1_crit_edge155, %reg_w.exit.sw.bb1_crit_edge156, %reg_w.exit.sw.bb1_crit_edge157
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i48 = icmp slt i32 %25, 0
  br i1 %cmp.i48, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i54

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i54:                                       ; preds = %sw.bb1
  %dev.i49 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i49, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i50 = shl i32 %29, 8
  %or.i51 = or i32 %shl.i.i50, -2147483648
  %call2.i52 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i51, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 13, i16 noundef zeroext 58, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i52)
  %cmp3.i53 = icmp slt i32 %call2.i52, 0
  br i1 %cmp3.i53, label %if.end.i54.sw.epilog.sink.split_crit_edge, label %reg_w.exit57

if.end.i54.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

reg_w.exit57:                                     ; preds = %if.end.i54
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr127 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr127)
  %cmp.i59 = icmp slt i32 %.pr127, 0
  br i1 %cmp.i59, label %reg_w.exit57.sw.epilog_crit_edge, label %if.end.i65

reg_w.exit57.sw.epilog_crit_edge:                 ; preds = %reg_w.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i65:                                       ; preds = %reg_w.exit57
  %31 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i49, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i61 = shl i32 %34, 8
  %or.i62 = or i32 %shl.i.i61, -2147483648
  %call2.i63 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i62, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 59, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %cmp3.i64 = icmp slt i32 %call2.i63, 0
  br i1 %cmp3.i64, label %if.end.i65.sw.epilog.sink.split_crit_edge, label %reg_w.exit68

if.end.i65.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

reg_w.exit68:                                     ; preds = %if.end.i65
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr129.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr129.pr)
  %cmp.i70 = icmp slt i32 %.pr129.pr, 0
  br i1 %cmp.i70, label %reg_w.exit68.sw.epilog_crit_edge, label %if.end.i76

reg_w.exit68.sw.epilog_crit_edge:                 ; preds = %reg_w.exit68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i76:                                       ; preds = %reg_w.exit68
  %36 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i49, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i72 = shl i32 %39, 8
  %or.i73 = or i32 %shl.i.i72, -2147483648
  %call2.i74 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i73, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74)
  %cmp3.i75 = icmp slt i32 %call2.i74, 0
  br i1 %cmp3.i75, label %if.end.i76.sw.epilog.sink.split_crit_edge, label %if.end.i76.sw.epilog_crit_edge

if.end.i76.sw.epilog_crit_edge:                   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i76.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %reg_w.exit.sw.bb2_crit_edge, %reg_w.exit.sw.bb2_crit_edge158
  %40 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i81 = icmp slt i32 %41, 0
  br i1 %cmp.i81, label %sw.bb2.reg_w.exit112_crit_edge, label %if.end.i87

sw.bb2.reg_w.exit112_crit_edge:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112

if.end.i87:                                       ; preds = %sw.bb2
  %dev.i82 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %42 = ptrtoint ptr %dev.i82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i82, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i83 = shl i32 %45, 8
  %or.i84 = or i32 %shl.i.i83, -2147483648
  %call2.i85 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i84, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 59, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i85)
  %cmp3.i86 = icmp slt i32 %call2.i85, 0
  br i1 %cmp3.i86, label %if.end.i87.reg_w.exit112.sink.split_crit_edge, label %reg_w.exit90

if.end.i87.reg_w.exit112.sink.split_crit_edge:    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112.sink.split

reg_w.exit90:                                     ; preds = %if.end.i87
  %46 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr131 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr131)
  %cmp.i92 = icmp slt i32 %.pr131, 0
  br i1 %cmp.i92, label %reg_w.exit90.reg_w.exit112_crit_edge, label %if.end.i98

reg_w.exit90.reg_w.exit112_crit_edge:             ; preds = %reg_w.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112

if.end.i98:                                       ; preds = %reg_w.exit90
  %47 = ptrtoint ptr %dev.i82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i82, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i.i94 = shl i32 %50, 8
  %or.i95 = or i32 %shl.i.i94, -2147483648
  %call2.i96 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i95, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 58, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i96)
  %cmp3.i97 = icmp slt i32 %call2.i96, 0
  br i1 %cmp3.i97, label %if.end.i98.reg_w.exit112.sink.split_crit_edge, label %reg_w.exit101

if.end.i98.reg_w.exit112.sink.split_crit_edge:    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112.sink.split

reg_w.exit101:                                    ; preds = %if.end.i98
  %51 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr133.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr133.pr)
  %cmp.i103 = icmp slt i32 %.pr133.pr, 0
  br i1 %cmp.i103, label %reg_w.exit101.reg_w.exit112_crit_edge, label %if.end.i109

reg_w.exit101.reg_w.exit112_crit_edge:            ; preds = %reg_w.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112

if.end.i109:                                      ; preds = %reg_w.exit101
  %52 = ptrtoint ptr %dev.i82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i82, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i105 = shl i32 %55, 8
  %or.i106 = or i32 %shl.i.i105, -2147483648
  %call2.i107 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i106, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 57, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i107)
  %cmp3.i108 = icmp slt i32 %call2.i107, 0
  br i1 %cmp3.i108, label %if.end.i109.reg_w.exit112.sink.split_crit_edge, label %if.end.i109.reg_w.exit112_crit_edge

if.end.i109.reg_w.exit112_crit_edge:              ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112

if.end.i109.reg_w.exit112.sink.split_crit_edge:   ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit112.sink.split

reg_w.exit112.sink.split:                         ; preds = %if.end.i109.reg_w.exit112.sink.split_crit_edge, %if.end.i98.reg_w.exit112.sink.split_crit_edge, %if.end.i87.reg_w.exit112.sink.split_crit_edge
  %call2.i85.sink150 = phi i32 [ %call2.i85, %if.end.i87.reg_w.exit112.sink.split_crit_edge ], [ %call2.i96, %if.end.i98.reg_w.exit112.sink.split_crit_edge ], [ %call2.i107, %if.end.i109.reg_w.exit112.sink.split_crit_edge ]
  %call6.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i85.sink150) #10
  %56 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call2.i85.sink150, ptr %usb_err.i, align 8
  br label %reg_w.exit112

reg_w.exit112:                                    ; preds = %reg_w.exit112.sink.split, %if.end.i109.reg_w.exit112_crit_edge, %reg_w.exit101.reg_w.exit112_crit_edge, %reg_w.exit90.reg_w.exit112_crit_edge, %sw.bb2.reg_w.exit112_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sensor)
  %cmp = icmp eq i32 %sensor, 15
  br i1 %cmp, label %if.then, label %reg_w.exit112.sw.epilog_crit_edge

reg_w.exit112.sw.epilog_crit_edge:                ; preds = %reg_w.exit112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %reg_w.exit112
  %57 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i114 = icmp slt i32 %58, 0
  br i1 %cmp.i114, label %if.then.sw.epilog_crit_edge, label %if.end.i120

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i120:                                      ; preds = %if.then
  %dev.i115 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %59 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i115, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i116 = shl i32 %62, 8
  %or.i117 = or i32 %shl.i.i116, -2147483648
  %call2.i118 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i117, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 56, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i118)
  %cmp3.i119 = icmp slt i32 %call2.i118, 0
  br i1 %cmp3.i119, label %if.end.i120.sw.epilog.sink.split_crit_edge, label %if.end.i120.sw.epilog_crit_edge

if.end.i120.sw.epilog_crit_edge:                  ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i120.sw.epilog.sink.split_crit_edge:       ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end.i120.sw.epilog.sink.split_crit_edge, %if.end.i76.sw.epilog.sink.split_crit_edge, %if.end.i65.sw.epilog.sink.split_crit_edge, %if.end.i54.sw.epilog.sink.split_crit_edge, %if.end.i43.sw.epilog.sink.split_crit_edge, %if.end.i32.sw.epilog.sink.split_crit_edge, %if.end.i21.sw.epilog.sink.split_crit_edge
  %call2.i52.sink151 = phi i32 [ %call2.i19, %if.end.i21.sw.epilog.sink.split_crit_edge ], [ %call2.i30, %if.end.i32.sw.epilog.sink.split_crit_edge ], [ %call2.i41, %if.end.i43.sw.epilog.sink.split_crit_edge ], [ %call2.i52, %if.end.i54.sw.epilog.sink.split_crit_edge ], [ %call2.i63, %if.end.i65.sw.epilog.sink.split_crit_edge ], [ %call2.i74, %if.end.i76.sw.epilog.sink.split_crit_edge ], [ %call2.i118, %if.end.i120.sw.epilog.sink.split_crit_edge ]
  %call6.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i52.sink151) #10
  %63 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call2.i52.sink151, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i120.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %reg_w.exit112.sw.epilog_crit_edge, %if.end.i76.sw.epilog_crit_edge, %reg_w.exit68.sw.epilog_crit_edge, %reg_w.exit57.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.i43.sw.epilog_crit_edge, %reg_w.exit35.sw.epilog_crit_edge, %reg_w.exit24.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %reg_w.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %reg, i8 noundef zeroext %valL, i8 noundef zeroext %valH) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %reg to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 146, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.reg_w.exit35.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit35.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i2 = icmp slt i32 %.pr, 0
  br i1 %cmp.i2, label %reg_w.exit.reg_w.exit35_crit_edge, label %if.end.i9

reg_w.exit.reg_w.exit35_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35

if.end.i9:                                        ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i4 = shl i32 %10, 8
  %or.i5 = or i32 %shl.i.i4, -2147483648
  %conv.i6 = zext i8 %valL to i16
  %call2.i7 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i5, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i6, i16 noundef zeroext 147, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7)
  %cmp3.i8 = icmp slt i32 %call2.i7, 0
  br i1 %cmp3.i8, label %if.end.i9.reg_w.exit35.sink.split_crit_edge, label %reg_w.exit12

if.end.i9.reg_w.exit35.sink.split_crit_edge:      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35.sink.split

reg_w.exit12:                                     ; preds = %if.end.i9
  %11 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr44 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr44)
  %cmp.i14 = icmp slt i32 %.pr44, 0
  br i1 %cmp.i14, label %reg_w.exit12.reg_w.exit35_crit_edge, label %if.end.i21

reg_w.exit12.reg_w.exit35_crit_edge:              ; preds = %reg_w.exit12
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35

if.end.i21:                                       ; preds = %reg_w.exit12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i16 = shl i32 %15, 8
  %or.i17 = or i32 %shl.i.i16, -2147483648
  %conv.i18 = zext i8 %valH to i16
  %call2.i19 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i18, i16 noundef zeroext 148, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i19)
  %cmp3.i20 = icmp slt i32 %call2.i19, 0
  br i1 %cmp3.i20, label %if.end.i21.reg_w.exit35.sink.split_crit_edge, label %reg_w.exit24

if.end.i21.reg_w.exit35.sink.split_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35.sink.split

reg_w.exit24:                                     ; preds = %if.end.i21
  %16 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr46.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr46.pr)
  %cmp.i26 = icmp slt i32 %.pr46.pr, 0
  br i1 %cmp.i26, label %reg_w.exit24.reg_w.exit35_crit_edge, label %if.end.i32

reg_w.exit24.reg_w.exit35_crit_edge:              ; preds = %reg_w.exit24
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35

if.end.i32:                                       ; preds = %reg_w.exit24
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i28 = shl i32 %20, 8
  %or.i29 = or i32 %shl.i.i28, -2147483648
  %call2.i30 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i29, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 144, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30)
  %cmp3.i31 = icmp slt i32 %call2.i30, 0
  br i1 %cmp3.i31, label %if.end.i32.reg_w.exit35.sink.split_crit_edge, label %if.end.i32.reg_w.exit35_crit_edge

if.end.i32.reg_w.exit35_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35

if.end.i32.reg_w.exit35.sink.split_crit_edge:     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit35.sink.split

reg_w.exit35.sink.split:                          ; preds = %if.end.i32.reg_w.exit35.sink.split_crit_edge, %if.end.i21.reg_w.exit35.sink.split_crit_edge, %if.end.i9.reg_w.exit35.sink.split_crit_edge, %if.end.i.reg_w.exit35.sink.split_crit_edge
  %call2.i.sink55 = phi i32 [ %call2.i, %if.end.i.reg_w.exit35.sink.split_crit_edge ], [ %call2.i7, %if.end.i9.reg_w.exit35.sink.split_crit_edge ], [ %call2.i19, %if.end.i21.reg_w.exit35.sink.split_crit_edge ], [ %call2.i30, %if.end.i32.reg_w.exit35.sink.split_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.sink55) #10
  %21 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2.i.sink55, ptr %usb_err, align 8
  br label %reg_w.exit35

reg_w.exit35:                                     ; preds = %reg_w.exit35.sink.split, %if.end.i32.reg_w.exit35_crit_edge, %reg_w.exit24.reg_w.exit35_crit_edge, %reg_w.exit12.reg_w.exit35_crit_edge, %reg_w.exit.reg_w.exit35_crit_edge
  tail call void @msleep(i32 noundef 1) #7
  %22 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i37 = icmp slt i32 %23, 0
  br i1 %cmp.i37, label %reg_w.exit35.cleanup_crit_edge, label %if.end.i40

reg_w.exit35.cleanup_crit_edge:                   ; preds = %reg_w.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i40:                                       ; preds = %reg_w.exit35
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i39 = shl i32 %27, 8
  %or2.i = or i32 %shl.i.i39, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 145, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i42, label %reg_r.exit

do.end.i42:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  %30 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call3.i, ptr %usb_err, align 8
  br label %cleanup

reg_r.exit:                                       ; preds = %if.end.i40
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp1.not = icmp eq i8 %34, 0
  br i1 %cmp1.not, label %reg_r.exit.cleanup_crit_edge, label %do.end

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %34 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %reg_r.exit.cleanup_crit_edge, %do.end.i42, %reg_w.exit35.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zcxx_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %3)
  %cond = icmp eq i32 %3, 9963794
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %4 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %usb_err, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %land.lhs.true

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %exposure = getelementptr i8, ptr %1, i32 1040
  %7 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exposure, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %streaming = getelementptr i8, ptr %1, i32 238
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %streaming, align 2, !range !500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %sensor.i = getelementptr i8, ptr %1, i32 1102
  %11 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sensor.i, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %12, label %if.then.getexposure.exit_crit_edge [
    i8 7, label %sw.bb.i
    i8 12, label %sw.bb8.i
  ]

if.then.getexposure.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %getexposure.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %add.ptr, i8 noundef zeroext 37) #7
  %conv1.i = zext i16 %call.i to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 9
  %call2.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %add.ptr, i8 noundef zeroext 38) #7
  %conv3.i = zext i16 %call2.i to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 1
  %or.i = or i32 %shl4.i, %shl.i
  %call5.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %add.ptr, i8 noundef zeroext 39) #7
  %14 = lshr i16 %call5.i, 7
  %15 = zext i16 %14 to i32
  %or7.i = or i32 %or.i, %15
  br label %getexposure.exit

sw.bb8.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call fastcc zeroext i16 @i2c_read(ptr noundef %add.ptr, i8 noundef zeroext 16) #7
  %conv10.i = zext i16 %call9.i to i32
  br label %getexposure.exit

getexposure.exit:                                 ; preds = %sw.bb8.i, %sw.bb.i, %if.then.getexposure.exit_crit_edge
  %retval.0.i = phi i32 [ %conv10.i, %sw.bb8.i ], [ %or7.i, %sw.bb.i ], [ -1, %if.then.getexposure.exit_crit_edge ]
  %16 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exposure, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %val5, align 4
  br label %if.end

if.end:                                           ; preds = %getexposure.exit, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %19 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zcxx_s_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10291459, i32 %4)
  %cmp = icmp eq i32 %4, 10291459
  br i1 %cmp, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then:                                          ; preds = %entry
  %reg08 = getelementptr i8, ptr %1, i32 1100
  %5 = ptrtoint ptr %reg08 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg08, align 4
  %7 = lshr i8 %6, 1
  %8 = zext i8 %7 to i32
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %10)
  %cmp4.not = icmp sgt i32 %10, 50
  br i1 %cmp4.not, label %for.inc, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.inc:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %10)
  %cmp4.not.1 = icmp ugt i32 %10, 75
  br i1 %cmp4.not.1, label %for.inc.1, label %for.inc.lor.lhs.false_crit_edge

for.inc.lor.lhs.false_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %10)
  %cmp4.not.2 = icmp ugt i32 %10, 87
  br i1 %cmp4.not.2, label %for.inc.1.if.then19_crit_edge, label %for.inc.1.lor.lhs.false_crit_edge

for.inc.1.lor.lhs.false_crit_edge:                ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc.1.if.then19_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false:                                    ; preds = %for.inc.1.lor.lhs.false_crit_edge, %for.inc.lor.lhs.false_crit_edge
  %i.0106.lcssa = phi i32 [ 1, %for.inc.lor.lhs.false_crit_edge ], [ 2, %for.inc.1.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106.lcssa, i32 %8)
  %cmp11 = icmp eq i32 %i.0106.lcssa, %8
  br i1 %cmp11, label %land.lhs.true13, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %arrayidx15 = getelementptr [3 x i8], ptr @jpeg_qual, i32 0, i32 %8
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv16)
  %cmp17 = icmp slt i32 %12, %conv16
  br i1 %cmp17, label %land.lhs.true13.if.then19_crit_edge, label %land.lhs.true13.if.end20_crit_edge

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true13.if.then19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true13.if.then19_crit_edge, %for.inc.1.if.then19_crit_edge
  %i.0105 = phi i32 [ %8, %land.lhs.true13.if.then19_crit_edge ], [ 3, %for.inc.1.if.then19_crit_edge ]
  %dec = add nsw i32 %i.0105, -1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true13.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge
  %i.1 = phi i32 [ %dec, %if.then19 ], [ %8, %land.lhs.true13.if.end20_crit_edge ], [ %i.0106.lcssa, %lor.lhs.false.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1)
  %cmp21 = icmp sgt i32 %i.1, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true23:                                  ; preds = %if.end20
  %streaming = getelementptr i8, ptr %1, i32 238
  %15 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %streaming, align 2, !range !500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %land.lhs.true23.if.end28_crit_edge, label %land.lhs.true25

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %needs_full_bandwidth = getelementptr i8, ptr %1, i32 -7
  %17 = ptrtoint ptr %needs_full_bandwidth to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_full_bandwidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool26.not = icmp eq i8 %18, 0
  br i1 %tobool26.not, label %land.lhs.true25.cleanup_crit_edge, label %land.lhs.true25.if.end28_crit_edge

land.lhs.true25.if.end28_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true25.if.end28_crit_edge, %land.lhs.true23.if.end28_crit_edge, %if.end20.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %i.1114 = phi i32 [ %i.1, %land.lhs.true25.if.end28_crit_edge ], [ %i.1, %land.lhs.true23.if.end28_crit_edge ], [ %i.1, %if.end20.if.end28_crit_edge ], [ 0, %if.then.if.end28_crit_edge ]
  %i.1.tr = trunc i32 %i.1114 to i8
  %19 = shl i8 %i.1.tr, 1
  %conv29 = or i8 %19, 1
  %20 = ptrtoint ptr %reg08 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv29, ptr %reg08, align 4
  %arrayidx31 = getelementptr [3 x i8], ptr @jpeg_qual, i32 0, i32 %i.1114
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %22 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv32, ptr %val, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %entry.if.end34_crit_edge
  %streaming35 = getelementptr i8, ptr %1, i32 238
  %24 = ptrtoint ptr %streaming35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %streaming35, align 2, !range !500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %27, label %if.end38.sw.epilog_crit_edge [
    i32 9963792, label %sw.bb
    i32 9963794, label %sw.bb43
    i32 9963800, label %sw.bb56
    i32 9963803, label %sw.bb58
    i32 10291459, label %sw.bb60
  ]

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %29 = getelementptr i8, ptr %1, i32 1024
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val40, align 4
  %brightness = getelementptr i8, ptr %1, i32 1028
  %34 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %brightness, align 4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val41, align 4
  %contrast = getelementptr i8, ptr %1, i32 1032
  %38 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %contrast, align 8
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val42, align 4
  tail call fastcc void @setcontrast(ptr noundef %add.ptr, i32 noundef %33, i32 noundef %37, i32 noundef %41)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end38
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val44, align 4
  %sensor.i = getelementptr i8, ptr %1, i32 1102
  %44 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sensor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %45)
  %cmp.i = icmp eq i8 %45, 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  %conv2.i = select i1 %tobool.not.i, i8 -128, i8 -93
  tail call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %conv2.i, i8 noundef zeroext 0) #7
  br label %setautogain.exit

if.else.i:                                        ; preds = %sw.bb43
  %46 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i = icmp slt i32 %47, 0
  br i1 %cmp.i.i, label %if.else.i.sw.epilog_crit_edge, label %if.end.i.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool3.not.i = icmp eq i32 %43, 0
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i.i = shl i32 %51, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv.i.i = select i1 %tobool3.not.i, i16 2, i16 66
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 384, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.setautogain.exit_crit_edge

if.end.i.i.setautogain.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setautogain.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.i) #10
  %52 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call2.i.i, ptr %usb_err, align 8
  br label %sw.epilog

setautogain.exit:                                 ; preds = %if.end.i.i.setautogain.exit_crit_edge, %if.then.i
  %53 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool46.not = icmp eq i32 %.pr, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %setautogain.exit.sw.epilog_crit_edge

setautogain.exit.sw.epilog_crit_edge:             ; preds = %setautogain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true47:                                  ; preds = %setautogain.exit
  %54 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool49.not = icmp eq i32 %55, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %land.lhs.true47.sw.epilog_crit_edge

land.lhs.true47.sw.epilog_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %exposure = getelementptr i8, ptr %1, i32 1040
  %56 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %exposure, align 4
  %tobool51.not = icmp eq ptr %57, null
  br i1 %tobool51.not, label %land.lhs.true50.sw.epilog_crit_edge, label %if.then52

land.lhs.true50.sw.epilog_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  %val54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %57, i32 0, i32 22
  %58 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val54, align 4
  tail call fastcc void @setexposure(ptr noundef %add.ptr, i32 noundef %59)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %val57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val57, align 4
  tail call fastcc void @setlightfreq(ptr noundef %add.ptr, i32 noundef %61)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %val59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %62 = ptrtoint ptr %val59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val59, align 4
  tail call fastcc void @setsharpness(ptr noundef %add.ptr, i32 noundef %63)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @setquality(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb60, %sw.bb58, %sw.bb56, %if.then52, %land.lhs.true50.sw.epilog_crit_edge, %land.lhs.true47.sw.epilog_crit_edge, %setautogain.exit.sw.epilog_crit_edge, %do.end.i.i, %if.else.i.sw.epilog_crit_edge, %sw.bb, %if.end38.sw.epilog_crit_edge
  %64 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end34.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge
  %retval.0 = phi i32 [ %65, %sw.epilog ], [ -16, %land.lhs.true25.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setcontrast(ptr nocapture noundef %gspca_dev, i32 noundef %gamma, i32 noundef %brightness, i32 noundef %contrast) unnamed_addr #2 align 64 {
entry:
  %gr = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gr) #7
  %0 = getelementptr inbounds [16 x i8], ptr %gr, i32 0, i32 15
  %sub = add i32 %gamma, -1
  %arrayidx = getelementptr [6 x [16 x i8]], ptr @setcontrast.gamma_tb, i32 0, i32 %sub
  %sub1 = add i32 %contrast, -128
  %sub2 = add i32 %brightness, -128
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp22 = icmp sgt i32 %sub1, 0
  %sub1.lobit = lshr i32 %sub1, 31
  %adj.1.v = select i1 %cmp22, i32 -1, i32 %sub1.lobit
  %1 = call ptr @memset(ptr %gr, i32 255, i32 16)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.peel = zext i8 %3 to i32
  %mul.peel = mul i32 %sub2, 80
  %div.peel = sdiv i32 %mul.peel, 256
  %mul8.peel = mul i32 %sub1, 44
  %div9.neg.peel = sdiv i32 %mul8.peel, -256
  %sub10.peel = add nsw i32 %div.peel, %conv.peel
  %sub12.peel = add nsw i32 %sub10.peel, %div9.neg.peel
  %4 = tail call i32 @llvm.smax.i32(i32 %sub12.peel, i32 0)
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 255)
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.peel = icmp slt i32 %7, 0
  br i1 %cmp.i.peel, label %entry.for.body.peel_crit_edge, label %if.end.i.peel

entry.for.body.peel_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.peel

if.end.i.peel:                                    ; preds = %entry
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.peel = shl i32 %11, 8
  %or.i.peel = or i32 %shl.i.i.peel, -2147483648
  %12 = trunc i32 %5 to i16
  %call2.i.peel = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.peel, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %12, i16 noundef zeroext 288, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.peel)
  %cmp3.i.peel = icmp slt i32 %call2.i.peel, 0
  br i1 %cmp3.i.peel, label %do.end.i.peel, label %if.end.i.peel.for.body.peel_crit_edge

if.end.i.peel.for.body.peel_crit_edge:            ; preds = %if.end.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.peel

do.end.i.peel:                                    ; preds = %if.end.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.peel) #10
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.peel, ptr %usb_err.i, align 8
  br label %for.body.peel

for.body.peel:                                    ; preds = %do.end.i.peel, %if.end.i.peel.for.body.peel_crit_edge, %entry.for.body.peel_crit_edge
  %arrayidx3.peel = getelementptr i8, ptr %arrayidx, i32 1
  %14 = ptrtoint ptr %arrayidx3.peel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.peel, align 1
  %conv.peel118 = zext i8 %15 to i32
  %mul.peel119 = mul i32 %sub2, 56
  %div.peel120 = sdiv i32 %mul.peel119, 256
  %mul8.peel121 = mul i32 %sub1, 26
  %div9.neg.peel122 = sdiv i32 %mul8.peel121, -256
  %sub10.peel123 = add nsw i32 %div.peel120, %conv.peel118
  %sub12.peel124 = add nsw i32 %sub10.peel123, %div9.neg.peel122
  %16 = tail call i32 @llvm.smax.i32(i32 %sub12.peel124, i32 0)
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 255)
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.peel125 = icmp slt i32 %19, 0
  br i1 %cmp.i.peel125, label %for.body.peel.reg_w.exit.peel_crit_edge, label %if.end.i.peel126

for.body.peel.reg_w.exit.peel_crit_edge:          ; preds = %for.body.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.peel

if.end.i.peel126:                                 ; preds = %for.body.peel
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.peel127 = shl i32 %23, 8
  %or.i.peel128 = or i32 %shl.i.i.peel127, -2147483648
  %24 = trunc i32 %17 to i16
  %call2.i.peel129 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i.peel128, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %24, i16 noundef zeroext 289, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.peel129)
  %cmp3.i.peel130 = icmp slt i32 %call2.i.peel129, 0
  br i1 %cmp3.i.peel130, label %do.end.i.peel131, label %if.end.i.peel126.reg_w.exit.peel_crit_edge

if.end.i.peel126.reg_w.exit.peel_crit_edge:       ; preds = %if.end.i.peel126
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit.peel

do.end.i.peel131:                                 ; preds = %if.end.i.peel126
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.peel132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i.peel129) #10
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2.i.peel129, ptr %usb_err.i, align 8
  br label %reg_w.exit.peel

reg_w.exit.peel:                                  ; preds = %do.end.i.peel131, %if.end.i.peel126.reg_w.exit.peel_crit_edge, %for.body.peel.reg_w.exit.peel_crit_edge
  %adj.1.peel = shl nsw i32 %adj.1.v, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp43.peel = icmp eq i32 %5, 0
  %sub45.peel = sub nsw i32 %17, %5
  %26 = trunc i32 %sub45.peel to i8
  %conv46.peel = select i1 %cmp43.peel, i8 0, i8 %26
  %27 = ptrtoint ptr %gr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv46.peel, ptr %gr, align 1
  br label %for.body

for.body:                                         ; preds = %reg_w.exit.for.body_crit_edge, %reg_w.exit.peel
  %gp2.0113 = phi i32 [ %gp1.0112, %reg_w.exit.for.body_crit_edge ], [ %5, %reg_w.exit.peel ]
  %gp1.0112 = phi i32 [ %35, %reg_w.exit.for.body_crit_edge ], [ %17, %reg_w.exit.peel ]
  %adj.0111 = phi i32 [ %adj.1, %reg_w.exit.for.body_crit_edge ], [ %adj.1.peel, %reg_w.exit.peel ]
  %i.0109 = phi i32 [ %inc50, %reg_w.exit.for.body_crit_edge ], [ 2, %reg_w.exit.peel ]
  %arrayidx3 = getelementptr i8, ptr %arrayidx, i32 %i.0109
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %29 to i32
  %arrayidx4 = getelementptr [16 x i8], ptr @setcontrast.delta_b, i32 0, i32 %i.0109
  %30 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %31 to i32
  %mul = mul i32 %sub2, %conv5
  %div = sdiv i32 %mul, 256
  %arrayidx6 = getelementptr [16 x i8], ptr @setcontrast.delta_c, i32 0, i32 %i.0109
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %33 to i32
  %mul8 = mul i32 %sub1, %conv7
  %div9.neg = sdiv i32 %mul8, -256
  %div11.neg = sdiv i32 %adj.0111, -2
  %add = add nsw i32 %div11.neg, %conv
  %sub10 = add nsw i32 %add, %div
  %sub12 = add nsw i32 %sub10, %div9.neg
  %34 = tail call i32 @llvm.smax.i32(i32 %sub12, i32 0)
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 255)
  %36 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp slt i32 %37, 0
  br i1 %cmp.i, label %for.body.reg_w.exit_crit_edge, label %if.end.i

for.body.reg_w.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %for.body
  %38 = trunc i32 %i.0109 to i16
  %conv21 = add nuw nsw i16 %38, 288
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i = shl i32 %42, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %43 = trunc i32 %35 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %43, i16 noundef zeroext %conv21, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %for.body.reg_w.exit_crit_edge
  %adj.1 = add nsw i32 %adj.0111, %adj.1.v
  %sub34 = sub nsw i32 %35, %gp2.0113
  %div35.lhs.trunc = trunc i32 %sub34 to i16
  %div35105 = sdiv i16 %div35.lhs.trunc, 2
  %conv36 = trunc i16 %div35105 to i8
  %sub37 = add nsw i32 %i.0109, -1
  %arrayidx38 = getelementptr [16 x i8], ptr %gr, i32 0, i32 %sub37
  %45 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv36, ptr %arrayidx38, align 1
  %inc50 = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc50, 16
  br i1 %exitcond.not, label %for.end, label %reg_w.exit.for.body_crit_edge, !llvm.loop !501

reg_w.exit.for.body_crit_edge:                    ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %reg_w.exit
  %46 = trunc i32 %gp1.0112 to i8
  %div52106.lhs.trunc = xor i8 %46, -1
  %div52106107108 = lshr i8 %div52106.lhs.trunc, 1
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %div52106107108, ptr %0, align 1
  br label %for.body58

for.body58:                                       ; preds = %reg_w.exit104.for.body58_crit_edge, %for.end
  %i.1114 = phi i32 [ 0, %for.end ], [ %inc63, %reg_w.exit104.for.body58_crit_edge ]
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i94 = icmp slt i32 %49, 0
  br i1 %cmp.i94, label %for.body58.reg_w.exit104_crit_edge, label %if.end.i101

for.body58.reg_w.exit104_crit_edge:               ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit104

if.end.i101:                                      ; preds = %for.body58
  %50 = trunc i32 %i.1114 to i16
  %conv61 = add i16 %50, 304
  %arrayidx59 = getelementptr [16 x i8], ptr %gr, i32 0, i32 %i.1114
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx59, align 1
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i96 = shl i32 %56, 8
  %or.i97 = or i32 %shl.i.i96, -2147483648
  %conv.i98 = zext i8 %52 to i16
  %call2.i99 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i97, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i98, i16 noundef zeroext %conv61, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i99)
  %cmp3.i100 = icmp slt i32 %call2.i99, 0
  br i1 %cmp3.i100, label %do.end.i103, label %if.end.i101.reg_w.exit104_crit_edge

if.end.i101.reg_w.exit104_crit_edge:              ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit104

do.end.i103:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i99) #10
  %57 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call2.i99, ptr %usb_err.i, align 8
  br label %reg_w.exit104

reg_w.exit104:                                    ; preds = %do.end.i103, %if.end.i101.reg_w.exit104_crit_edge, %for.body58.reg_w.exit104_crit_edge
  %inc63 = add nuw nsw i32 %i.1114, 1
  %exitcond117.not = icmp eq i32 %inc63, 16
  br i1 %exitcond117.not, label %for.end64, label %reg_w.exit104.for.body58_crit_edge

reg_w.exit104.for.body58_crit_edge:               ; preds = %reg_w.exit104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

for.end64:                                        ; preds = %reg_w.exit104
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 7, label %sw.bb
    i8 12, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = lshr i32 %val, 9
  %conv1 = trunc i32 %3 to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 37, i8 noundef zeroext %conv1, i8 noundef zeroext 0)
  %4 = lshr i32 %val, 1
  %conv3 = trunc i32 %4 to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 38, i8 noundef zeroext %conv3, i8 noundef zeroext 0)
  %val.tr = trunc i32 %val to i8
  %conv5 = shl i8 %val.tr, 7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext %conv5, i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = trunc i32 %val to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %conv8, i8 noundef zeroext 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setlightfreq(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %val, 1
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %inc = zext i1 %not.tobool.not to i32
  %spec.select = or i32 %mul, %inc
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sensor, align 2
  %idxprom1 = zext i8 %7 to i32
  %arrayidx3 = getelementptr [19 x [6 x ptr]], ptr @setlightfreq.freq_tb, i32 0, i32 %idxprom1, i32 %spec.select
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull %9)
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %11, label %if.end5.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 12, label %sw.bb12
    i8 15, label %sw.bb20
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp8 = icmp ne i32 %val, 1
  %13 = or i1 %cmp8, %tobool.not
  br i1 %13, label %sw.bb.cleanup_crit_edge, label %if.then10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %sw.bb
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %if.then10.cleanup_crit_edge, label %if.end.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %19, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 133, i16 noundef zeroext 397, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %cleanup

sw.bb12:                                          ; preds = %if.end5
  br i1 %tobool.not, label %if.then14, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp15.not = icmp eq i32 %val, 0
  %usb_err.i49 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %21 = ptrtoint ptr %usb_err.i49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb_err.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i50 = icmp slt i32 %22, 0
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then14
  br i1 %cmp.i50, label %if.then17.cleanup_crit_edge, label %if.end.i45

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i45:                                       ; preds = %if.then17
  %dev.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %23 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i40, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i41 = shl i32 %26, 8
  %or.i42 = or i32 %shl.i.i41, -2147483648
  %call2.i43 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i42, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i43)
  %cmp3.i44 = icmp slt i32 %call2.i43, 0
  br i1 %cmp3.i44, label %do.end.i47, label %if.end.i45.cleanup_crit_edge

if.end.i45.cleanup_crit_edge:                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i47:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i43) #10
  %27 = ptrtoint ptr %usb_err.i49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call2.i43, ptr %usb_err.i49, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then14
  br i1 %cmp.i50, label %if.else.cleanup_crit_edge, label %if.end.i56

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i56:                                       ; preds = %if.else
  %dev.i51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %28 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i51, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i52 = shl i32 %31, 8
  %or.i53 = or i32 %shl.i.i52, -2147483648
  %call2.i54 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i53, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 68, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i54)
  %cmp3.i55 = icmp slt i32 %call2.i54, 0
  br i1 %cmp3.i55, label %do.end.i58, label %if.end.i56.cleanup_crit_edge

if.end.i56.cleanup_crit_edge:                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i58:                                       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i54) #10
  %32 = ptrtoint ptr %usb_err.i49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call2.i54, ptr %usb_err.i49, align 8
  br label %cleanup

sw.bb20:                                          ; preds = %if.end5
  %usb_err.i60 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %33 = ptrtoint ptr %usb_err.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usb_err.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i61 = icmp slt i32 %34, 0
  br i1 %cmp.i61, label %sw.bb20.cleanup_crit_edge, label %if.end.i67

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i67:                                       ; preds = %sw.bb20
  %dev.i62 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %35 = ptrtoint ptr %dev.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i62, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i63 = shl i32 %38, 8
  %or.i64 = or i32 %shl.i.i63, -2147483648
  %call2.i65 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i64, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 423, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i65)
  %cmp3.i66 = icmp slt i32 %call2.i65, 0
  br i1 %cmp3.i66, label %do.end.i69, label %if.end.i67.cleanup_crit_edge

if.end.i67.cleanup_crit_edge:                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i69:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i65) #10
  %39 = ptrtoint ptr %usb_err.i60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call2.i65, ptr %usb_err.i60, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i69, %if.end.i67.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %do.end.i58, %if.end.i56.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.i47, %if.end.i45.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %do.end.i, %if.end.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setsharpness(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit57_crit_edge, label %if.end.i

entry.reg_w.exit57_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit57

if.end.i:                                         ; preds = %entry
  %arrayidx = getelementptr [4 x [2 x i8]], ptr @setsharpness.sharpness_tb, i32 0, i32 %val
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %3 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 454, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  br label %reg_w.exit57.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i12 = icmp slt i32 %.pr, 0
  br i1 %cmp.i12, label %reg_w.exit.reg_w.exit57_crit_edge, label %if.end.i15

reg_w.exit.reg_w.exit57_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit57

if.end.i15:                                       ; preds = %reg_w.exit
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i14 = shl i32 %12, 8
  %or2.i = or i32 %shl.i.i14, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 456, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i17, label %reg_r.exit

do.end.i17:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  br label %reg_w.exit57.sink.split

reg_r.exit:                                       ; preds = %if.end.i15
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr59.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr59.pr)
  %cmp.i19 = icmp slt i32 %.pr59.pr, 0
  br i1 %cmp.i19, label %reg_r.exit.reg_w.exit57_crit_edge, label %if.end.i26

reg_r.exit.reg_w.exit57_crit_edge:                ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit57

if.end.i26:                                       ; preds = %reg_r.exit
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i21 = shl i32 %19, 8
  %or2.i22 = or i32 %shl.i.i21, -2147483520
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %call3.i24 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i22, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 457, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i24)
  %cmp4.i25 = icmp slt i32 %call3.i24, 0
  br i1 %cmp4.i25, label %do.end.i28, label %reg_r.exit31

do.end.i28:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i24) #10
  br label %reg_w.exit57.sink.split

reg_r.exit31:                                     ; preds = %if.end.i26
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr61.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr61.pr)
  %cmp.i33 = icmp slt i32 %.pr61.pr, 0
  br i1 %cmp.i33, label %reg_r.exit31.reg_w.exit57_crit_edge, label %if.end.i40

reg_r.exit31.reg_w.exit57_crit_edge:              ; preds = %reg_r.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit57

if.end.i40:                                       ; preds = %reg_r.exit31
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i35 = shl i32 %26, 8
  %or2.i36 = or i32 %shl.i.i35, -2147483520
  %27 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i, align 4
  %call3.i38 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or2.i36, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 458, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i38)
  %cmp4.i39 = icmp slt i32 %call3.i38, 0
  br i1 %cmp4.i39, label %do.end.i42, label %reg_r.exit45

do.end.i42:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i38) #10
  br label %reg_w.exit57.sink.split

reg_r.exit45:                                     ; preds = %if.end.i40
  %29 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr63.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr63.pr.pr)
  %cmp.i47 = icmp slt i32 %.pr63.pr.pr, 0
  br i1 %cmp.i47, label %reg_r.exit45.reg_w.exit57_crit_edge, label %if.end.i54

reg_r.exit45.reg_w.exit57_crit_edge:              ; preds = %reg_r.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit57

if.end.i54:                                       ; preds = %reg_r.exit45
  %arrayidx5 = getelementptr [4 x [2 x i8]], ptr @setsharpness.sharpness_tb, i32 0, i32 %val, i32 1
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5, align 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i49 = shl i32 %35, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %conv.i51 = zext i8 %31 to i16
  %call2.i52 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i50, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i51, i16 noundef zeroext 459, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i52)
  %cmp3.i53 = icmp slt i32 %call2.i52, 0
  br i1 %cmp3.i53, label %do.end.i56, label %if.end.i54.reg_w.exit57_crit_edge

if.end.i54.reg_w.exit57_crit_edge:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit57

do.end.i56:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i52) #10
  br label %reg_w.exit57.sink.split

reg_w.exit57.sink.split:                          ; preds = %do.end.i56, %do.end.i42, %do.end.i28, %do.end.i17, %do.end.i
  %call2.i.sink = phi i32 [ %call2.i, %do.end.i ], [ %call3.i24, %do.end.i28 ], [ %call3.i, %do.end.i17 ], [ %call3.i38, %do.end.i42 ], [ %call2.i52, %do.end.i56 ]
  %36 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call2.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit57

reg_w.exit57:                                     ; preds = %reg_w.exit57.sink.split, %if.end.i54.reg_w.exit57_crit_edge, %reg_r.exit45.reg_w.exit57_crit_edge, %reg_r.exit31.reg_w.exit57_crit_edge, %reg_r.exit.reg_w.exit57_crit_edge, %reg_w.exit.reg_w.exit57_crit_edge, %entry.reg_w.exit57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setquality(ptr nocapture noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %reg08 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %reg08 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg08, align 4
  %2 = lshr i8 %1, 1
  %3 = zext i8 %2 to i32
  %arrayidx = getelementptr [3 x i8], ptr @jpeg_qual, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %5 to i32
  %mul.neg.i = mul nsw i32 %conv1, -2
  %sub.i = add nsw i32 %mul.neg.i, 200
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.033.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %mul6.i = mul nsw i32 %sub.i, %conv.i
  %add7.i = add nsw i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %10 to i32
  %mul15.i = mul nsw i32 %sub.i, %conv14.i
  %add16.i = add nsw i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %11 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i6 = icmp slt i32 %13, 0
  br i1 %cmp.i6, label %jpeg_set_qual.exit.reg_w.exit_crit_edge, label %if.end.i

jpeg_set_qual.exit.reg_w.exit_crit_edge:          ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %jpeg_set_qual.exit
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i7 = zext i8 %1 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i7, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %jpeg_set_qual.exit.reg_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_exchange(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %action) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i43 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %action.addr.0 = phi ptr [ %action, %entry ], [ %incdec.ptr, %sw.epilog ]
  %0 = ptrtoint ptr %action.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %action.addr.0, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %1, label %sw.default [
    i8 0, label %while.end
    i8 -96, label %sw.bb
    i8 -95, label %sw.bb2
    i8 -86, label %sw.bb4
    i8 -69, label %sw.bb13
  ]

sw.bb:                                            ; preds = %while.cond
  %3 = ptrtoint ptr %usb_err.i41 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %idx = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 2
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idx, align 2
  %val = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 1
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %9 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i43, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %8 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext %6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2.i) #10
  %13 = ptrtoint ptr %usb_err.i41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i, ptr %usb_err.i41, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.cond
  %14 = ptrtoint ptr %usb_err.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i42 = icmp slt i32 %15, 0
  br i1 %cmp.i42, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i45

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i45:                                       ; preds = %sw.bb2
  %idx3 = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 2
  %16 = ptrtoint ptr %idx3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idx3, align 2
  %18 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i43, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i44 = shl i32 %21, 8
  %or2.i = or i32 %shl.i.i44, -2147483520
  %22 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext %17, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i47, label %if.end.i45.sw.epilog_crit_edge

if.end.i45.sw.epilog_crit_edge:                   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i47:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #10
  %24 = ptrtoint ptr %usb_err.i41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i, ptr %usb_err.i41, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %val5 = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 1
  %25 = ptrtoint ptr %val5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val5, align 1
  %idx6 = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 2
  %27 = ptrtoint ptr %idx6 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %idx6, align 2
  %conv8 = trunc i16 %28 to i8
  %29 = lshr i16 %28, 8
  %conv11 = trunc i16 %29 to i8
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext %26, i8 noundef zeroext %conv8, i8 noundef zeroext %conv11)
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %idx14 = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 2
  %30 = ptrtoint ptr %idx14 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idx14, align 2
  %32 = lshr i16 %31, 8
  %conv17 = trunc i16 %32 to i8
  %conv21 = trunc i16 %31 to i8
  %val22 = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 1
  %33 = ptrtoint ptr %val22 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val22, align 1
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext %conv17, i8 noundef zeroext %conv21, i8 noundef zeroext %34)
  br label %sw.epilog

sw.default:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %idx24 = getelementptr inbounds %struct.usb_action, ptr %action.addr.0, i32 0, i32 2
  %35 = ptrtoint ptr %idx24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %idx24, align 2
  %conv25 = zext i16 %36 to i32
  tail call void @msleep(i32 noundef %conv25) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb4, %do.end.i47, %if.end.i45.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %do.end.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %incdec.ptr = getelementptr %struct.usb_action, ptr %action.addr.0, i32 1
  tail call void @msleep(i32 noundef 1) #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 242)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 242)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !187, !188, !189, !190, !192, !194, !196, !198, !200, !201, !203, !204, !205, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !489}
!llvm.module.flags = !{!491, !492, !493, !494, !495, !496, !497, !498}
!llvm.ident = !{!499}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_zc3xx__307_7025_sd_driver_init6, !8, !"__initcall__kmod_gspca_zc3xx__307_7025_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 7025, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @__param_force_sensor, !11, !"__param_force_sensor", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 7027, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_sensortype308, !11, !"__UNIQUE_ID_force_sensortype308", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_force_sensor309, !14, !"__UNIQUE_ID_force_sensor309", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 7028, i32 1}
!15 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sd_driver, !17, !"sd_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 7013, i32 26}
!18 = !{ptr @sd_desc, !19, !"sd_desc", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6929, i32 29}
!20 = !{ptr @sd_config.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6333, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5544, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @reg_r._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @reg_r._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5566, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @reg_w._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @reg_w._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"mode_tb", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6485, i32 18}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6509, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sd_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sd_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6512, i32 3}
!43 = !{ptr @sd_init._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sd_init._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6519, i32 5}
!47 = !{ptr @sd_init._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sd_init._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6522, i32 5}
!51 = !{ptr @sd_init._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sd_init._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6525, i32 5}
!55 = !{ptr @sd_init._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sd_init._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6532, i32 4}
!59 = !{ptr @sd_init._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sd_init._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6537, i32 5}
!63 = !{ptr @sd_init._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sd_init._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6542, i32 5}
!67 = !{ptr @sd_init._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sd_init._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6548, i32 4}
!71 = !{ptr @sd_init._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sd_init._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6552, i32 4}
!75 = !{ptr @sd_init._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_init._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6556, i32 4}
!79 = !{ptr @sd_init._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sd_init._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6560, i32 4}
!83 = !{ptr @sd_init._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sd_init._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6566, i32 4}
!87 = !{ptr @sd_init._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sd_init._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6570, i32 4}
!91 = !{ptr @sd_init._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sd_init._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6574, i32 4}
!95 = !{ptr @sd_init._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sd_init._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6579, i32 4}
!99 = !{ptr @sd_init._entry.51, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sd_init._entry_ptr.53, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @sd_init._entry.54, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6583, i32 4}
!103 = !{ptr @sd_init._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6588, i32 4}
!106 = !{ptr @sd_init._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sd_init._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6596, i32 4}
!110 = !{ptr @sd_init._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @sd_init._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6602, i32 4}
!114 = !{ptr @sd_init._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sd_init._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6606, i32 4}
!118 = !{ptr @sd_init._entry.65, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @sd_init._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @sd_init._entry.68, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6610, i32 4}
!122 = !{ptr @sd_init._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6614, i32 4}
!125 = !{ptr @sd_init._entry.70, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sd_init._entry_ptr.72, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6618, i32 4}
!129 = !{ptr @sd_init._entry.73, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sd_init._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.77, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6622, i32 4}
!133 = !{ptr @sd_init._entry.76, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sd_init._entry_ptr.78, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6626, i32 4}
!137 = !{ptr @sd_init._entry.79, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @sd_init._entry_ptr.81, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6630, i32 4}
!141 = !{ptr @sd_init._entry.82, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @sd_init._entry_ptr.84, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.85, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6054, i32 2}
!145 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @sif_probe._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @sif_probe._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6142, i32 2}
!150 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @vga_2wr_probe._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @vga_2wr_probe._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.89, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5606, i32 3}
!155 = !{ptr @.str.90, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @i2c_write._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @i2c_write._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6199, i32 2}
!160 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @vga_3wr_probe._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @vga_3wr_probe._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.94, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6219, i32 3}
!165 = !{ptr @vga_3wr_probe._entry.93, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @vga_3wr_probe._entry_ptr.95, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6233, i32 3}
!169 = !{ptr @vga_3wr_probe._entry.96, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @vga_3wr_probe._entry_ptr.98, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.100, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6265, i32 2}
!173 = !{ptr @vga_3wr_probe._entry.99, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @vga_3wr_probe._entry_ptr.101, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.103, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6270, i32 3}
!177 = !{ptr @vga_3wr_probe._entry.102, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @vga_3wr_probe._entry_ptr.104, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.106, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6287, i32 3}
!181 = !{ptr @vga_3wr_probe._entry.105, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @vga_3wr_probe._entry_ptr.107, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @chipset_revision_sensor, !184, !"chipset_revision_sensor", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6160, i32 48}
!185 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5584, i32 3}
!187 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @i2c_read._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @i2c_read._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @sif_mode, !191, !"sif_mode", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 104, i32 37}
!192 = !{ptr @vga_mode, !193, !"vga_mode", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 78, i32 37}
!194 = !{ptr @broken_vga_mode, !195, !"broken_vga_mode", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 91, i32 37}
!196 = !{ptr @sd_init_controls.gamma, !197, !"gamma", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6419, i32 18}
!198 = !{ptr @sd_init_controls._key, !199, !"_key", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6442, i32 2}
!200 = !{ptr @.str.110, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6470, i32 3}
!203 = !{ptr @.str.112, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @sd_init_controls._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @sd_init_controls._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @zcxx_ctrl_ops, !207, !"zcxx_ctrl_ops", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6410, i32 35}
!208 = !{ptr @setcontrast.delta_b, !209, !"delta_b", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5715, i32 18}
!210 = !{ptr @setcontrast.delta_c, !211, !"delta_c", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5718, i32 18}
!212 = !{ptr @setcontrast.gamma_tb, !213, !"gamma_tb", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5721, i32 18}
!214 = !{ptr @setlightfreq.freq_tb, !215, !"freq_tb", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5816, i32 34}
!216 = !{ptr @adcm2700_NoFlicker, !217, !"adcm2700_NoFlicker", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 326, i32 32}
!218 = !{ptr @adcm2700_50HZ, !219, !"adcm2700_50HZ", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 300, i32 32}
!220 = !{ptr @adcm2700_60HZ, !221, !"adcm2700_60HZ", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 313, i32 32}
!222 = !{ptr @cs2102_NoFlicker, !223, !"cs2102_NoFlicker", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 550, i32 32}
!224 = !{ptr @cs2102_NoFlickerScale, !225, !"cs2102_NoFlickerScale", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 528, i32 32}
!226 = !{ptr @cs2102_50HZ, !227, !"cs2102_50HZ", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 462, i32 32}
!228 = !{ptr @cs2102_50HZScale, !229, !"cs2102_50HZScale", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 440, i32 32}
!230 = !{ptr @cs2102_60HZ, !231, !"cs2102_60HZ", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 506, i32 32}
!232 = !{ptr @cs2102_60HZScale, !233, !"cs2102_60HZScale", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 484, i32 32}
!234 = !{ptr @gc0303_NoFlicker, !235, !"gc0303_NoFlicker", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5485, i32 32}
!236 = !{ptr @gc0303_NoFlickerScale, !237, !"gc0303_NoFlickerScale", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5507, i32 32}
!238 = !{ptr @gc0303_50HZ, !239, !"gc0303_50HZ", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5389, i32 32}
!240 = !{ptr @gc0303_50HZScale, !241, !"gc0303_50HZScale", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5413, i32 32}
!242 = !{ptr @gc0303_60HZ, !243, !"gc0303_60HZ", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5437, i32 32}
!244 = !{ptr @gc0303_60HZScale, !245, !"gc0303_60HZScale", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5461, i32 32}
!246 = !{ptr @gc0305_NoFlicker, !247, !"gc0305_NoFlicker", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1388, i32 32}
!248 = !{ptr @gc0305_50HZ, !249, !"gc0305_50HZ", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1338, i32 32}
!250 = !{ptr @gc0305_60HZ, !251, !"gc0305_60HZ", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1364, i32 32}
!252 = !{ptr @hdcs2020_NoFlicker, !253, !"hdcs2020_NoFlicker", i1 false, i1 false}
!253 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1713, i32 32}
!254 = !{ptr @hdcs2020_50HZ, !255, !"hdcs2020_50HZ", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1671, i32 32}
!256 = !{ptr @hdcs2020_60HZ, !257, !"hdcs2020_60HZ", i1 false, i1 false}
!257 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1692, i32 32}
!258 = !{ptr @hv7131b_NoFlicker, !259, !"hv7131b_NoFlicker", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1928, i32 32}
!260 = !{ptr @hv7131b_NoFlickerScale, !261, !"hv7131b_NoFlickerScale", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1953, i32 32}
!262 = !{ptr @hv7131b_50HZ, !263, !"hv7131b_50HZ", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1828, i32 32}
!264 = !{ptr @hv7131b_50HZScale, !265, !"hv7131b_50HZScale", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1853, i32 32}
!266 = !{ptr @hv7131b_60HZ, !267, !"hv7131b_60HZ", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1878, i32 32}
!268 = !{ptr @hv7131b_60HZScale, !269, !"hv7131b_60HZScale", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1903, i32 32}
!270 = !{ptr @hv7131r_NoFlicker, !271, !"hv7131r_NoFlicker", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2144, i32 32}
!272 = !{ptr @hv7131r_NoFlickerScale, !273, !"hv7131r_NoFlickerScale", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2162, i32 32}
!274 = !{ptr @hv7131r_50HZ, !275, !"hv7131r_50HZ", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2072, i32 32}
!276 = !{ptr @hv7131r_50HZScale, !277, !"hv7131r_50HZScale", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2090, i32 32}
!278 = !{ptr @hv7131r_60HZ, !279, !"hv7131r_60HZ", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2108, i32 32}
!280 = !{ptr @hv7131r_60HZScale, !281, !"hv7131r_60HZScale", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2126, i32 32}
!282 = !{ptr @icm105a_NoFlicker, !283, !"icm105a_NoFlicker", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2696, i32 32}
!284 = !{ptr @icm105a_NoFlickerScale, !285, !"icm105a_NoFlickerScale", i1 false, i1 false}
!285 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2665, i32 32}
!286 = !{ptr @icm105a_50HZ, !287, !"icm105a_50HZ", i1 false, i1 false}
!287 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2568, i32 32}
!288 = !{ptr @icm105a_50HZScale, !289, !"icm105a_50HZScale", i1 false, i1 false}
!289 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2537, i32 32}
!290 = !{ptr @icm105a_60HZ, !291, !"icm105a_60HZ", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2632, i32 32}
!292 = !{ptr @icm105a_60HZScale, !293, !"icm105a_60HZScale", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2601, i32 32}
!294 = !{ptr @mc501cb_NoFlicker, !295, !"mc501cb_NoFlicker", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3012, i32 32}
!296 = !{ptr @mc501cb_NoFlickerScale, !297, !"mc501cb_NoFlickerScale", i1 false, i1 false}
!297 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3024, i32 32}
!298 = !{ptr @mc501cb_50HZ, !299, !"mc501cb_50HZ", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2964, i32 32}
!300 = !{ptr @mc501cb_50HZScale, !301, !"mc501cb_50HZScale", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2976, i32 32}
!302 = !{ptr @mc501cb_60HZ, !303, !"mc501cb_60HZ", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2988, i32 32}
!304 = !{ptr @mc501cb_60HZScale, !305, !"mc501cb_60HZScale", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3000, i32 32}
!306 = !{ptr @mt9v111_1_AENoFlicker, !307, !"mt9v111_1_AENoFlicker", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4312, i32 32}
!308 = !{ptr @mt9v111_1_AENoFlickerScale, !309, !"mt9v111_1_AENoFlickerScale", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4335, i32 32}
!310 = !{ptr @mt9v111_1_AE50HZ, !311, !"mt9v111_1_AE50HZ", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4222, i32 32}
!312 = !{ptr @mt9v111_1_AE50HZScale, !313, !"mt9v111_1_AE50HZScale", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4245, i32 32}
!314 = !{ptr @mt9v111_1_AE60HZ, !315, !"mt9v111_1_AE60HZ", i1 false, i1 false}
!315 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4267, i32 32}
!316 = !{ptr @mt9v111_1_AE60HZScale, !317, !"mt9v111_1_AE60HZScale", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4290, i32 32}
!318 = !{ptr @mt9v111_3_AENoFlicker, !319, !"mt9v111_3_AENoFlicker", i1 false, i1 false}
!319 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4557, i32 32}
!320 = !{ptr @mt9v111_3_AENoFlickerScale, !321, !"mt9v111_3_AENoFlickerScale", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4580, i32 32}
!322 = !{ptr @mt9v111_3_AE50HZ, !323, !"mt9v111_3_AE50HZ", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4469, i32 32}
!324 = !{ptr @mt9v111_3_AE50HZScale, !325, !"mt9v111_3_AE50HZScale", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4491, i32 32}
!326 = !{ptr @mt9v111_3_AE60HZ, !327, !"mt9v111_3_AE60HZ", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4513, i32 32}
!328 = !{ptr @mt9v111_3_AE60HZScale, !329, !"mt9v111_3_AE60HZScale", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4535, i32 32}
!330 = !{ptr @ov7620_NoFlicker, !331, !"ov7620_NoFlicker", i1 false, i1 false}
!331 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3214, i32 32}
!332 = !{ptr @ov7620_50HZ, !333, !"ov7620_50HZ", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3177, i32 32}
!334 = !{ptr @ov7620_60HZ, !335, !"ov7620_60HZ", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3194, i32 32}
!336 = !{ptr @pas106b_NoFlicker, !337, !"pas106b_NoFlicker", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3830, i32 32}
!338 = !{ptr @pas106b_50HZ, !339, !"pas106b_50HZ", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3798, i32 32}
!340 = !{ptr @pas106b_60HZ, !341, !"pas106b_60HZ", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3814, i32 32}
!342 = !{ptr @pas202b_NoFlicker, !343, !"pas202b_NoFlicker", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4054, i32 32}
!344 = !{ptr @pas202b_NoFlickerScale, !345, !"pas202b_NoFlickerScale", i1 false, i1 false}
!345 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4083, i32 32}
!346 = !{ptr @pas202b_50HZ, !347, !"pas202b_50HZ", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3938, i32 32}
!348 = !{ptr @pas202b_50HZScale, !349, !"pas202b_50HZScale", i1 false, i1 false}
!349 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3967, i32 32}
!350 = !{ptr @pas202b_60HZ, !351, !"pas202b_60HZ", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3996, i32 32}
!352 = !{ptr @pas202b_60HZScale, !353, !"pas202b_60HZScale", i1 false, i1 false}
!353 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4025, i32 32}
!354 = !{ptr @pb0330_NoFlicker, !355, !"pb0330_NoFlicker", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4790, i32 32}
!356 = !{ptr @pb0330_NoFlickerScale, !357, !"pb0330_NoFlickerScale", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4812, i32 32}
!358 = !{ptr @pb0330_50HZ, !359, !"pb0330_50HZ", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4702, i32 32}
!360 = !{ptr @pb0330_50HZScale, !361, !"pb0330_50HZScale", i1 false, i1 false}
!361 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4724, i32 32}
!362 = !{ptr @pb0330_60HZ, !363, !"pb0330_60HZ", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4746, i32 32}
!364 = !{ptr @pb0330_60HZScale, !365, !"pb0330_60HZScale", i1 false, i1 false}
!365 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4768, i32 32}
!366 = !{ptr @po2030_NoFlicker, !367, !"po2030_NoFlicker", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5034, i32 32}
!368 = !{ptr @po2030_50HZ, !369, !"po2030_50HZ", i1 false, i1 false}
!369 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4989, i32 32}
!370 = !{ptr @po2030_60HZ, !371, !"po2030_60HZ", i1 false, i1 false}
!371 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5011, i32 32}
!372 = !{ptr @tas5130c_NoFlicker, !373, !"tas5130c_NoFlicker", i1 false, i1 false}
!373 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5218, i32 32}
!374 = !{ptr @tas5130c_NoFlickerScale, !375, !"tas5130c_NoFlickerScale", i1 false, i1 false}
!375 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5244, i32 32}
!376 = !{ptr @tas5130c_50HZ, !377, !"tas5130c_50HZ", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5118, i32 32}
!378 = !{ptr @tas5130c_50HZScale, !379, !"tas5130c_50HZScale", i1 false, i1 false}
!379 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5143, i32 32}
!380 = !{ptr @tas5130c_60HZ, !381, !"tas5130c_60HZ", i1 false, i1 false}
!381 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5168, i32 32}
!382 = !{ptr @tas5130c_60HZScale, !383, !"tas5130c_60HZScale", i1 false, i1 false}
!383 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5193, i32 32}
!384 = !{ptr @setsharpness.sharpness_tb, !385, !"sharpness_tb", i1 false, i1 false}
!385 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5695, i32 18}
!386 = !{ptr @jpeg_head, !387, !"jpeg_head", i1 false, i1 false}
!387 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!388 = !{ptr @jpeg_qual, !389, !"jpeg_qual", i1 false, i1 false}
!389 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 121, i32 11}
!390 = !{ptr @sd_start.init_tb, !391, !"init_tb", i1 false, i1 false}
!391 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6673, i32 34}
!392 = !{ptr @adcm2700_Initial, !393, !"adcm2700_Initial", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 130, i32 32}
!394 = !{ptr @adcm2700_InitialScale, !395, !"adcm2700_InitialScale", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 219, i32 32}
!396 = !{ptr @cs2102_Initial, !397, !"cs2102_Initial", i1 false, i1 false}
!397 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 389, i32 32}
!398 = !{ptr @cs2102_InitialScale, !399, !"cs2102_InitialScale", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 337, i32 32}
!400 = !{ptr @cs2102K_Initial, !401, !"cs2102K_Initial", i1 false, i1 false}
!401 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 833, i32 32}
!402 = !{ptr @cs2102K_InitialScale, !403, !"cs2102K_InitialScale", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 574, i32 32}
!404 = !{ptr @gc0303_Initial, !405, !"gc0303_Initial", i1 false, i1 false}
!405 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5271, i32 32}
!406 = !{ptr @gc0303_InitialScale, !407, !"gc0303_InitialScale", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5331, i32 32}
!408 = !{ptr @gc0305_Initial, !409, !"gc0305_Initial", i1 false, i1 false}
!409 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1211, i32 32}
!410 = !{ptr @gc0305_InitialScale, !411, !"gc0305_InitialScale", i1 false, i1 false}
!411 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1275, i32 32}
!412 = !{ptr @hdcs2020_Initial, !413, !"hdcs2020_Initial", i1 false, i1 false}
!413 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1543, i32 32}
!414 = !{ptr @hdcs2020_InitialScale, !415, !"hdcs2020_InitialScale", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1411, i32 32}
!416 = !{ptr @hv7131b_Initial, !417, !"hv7131b_Initial", i1 false, i1 false}
!417 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1782, i32 32}
!418 = !{ptr @hv7131b_InitialScale, !419, !"hv7131b_InitialScale", i1 false, i1 false}
!419 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1735, i32 32}
!420 = !{ptr @hv7131r_Initial, !421, !"hv7131r_Initial", i1 false, i1 false}
!421 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2026, i32 32}
!422 = !{ptr @hv7131r_InitialScale, !423, !"hv7131r_InitialScale", i1 false, i1 false}
!423 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 1980, i32 32}
!424 = !{ptr @icm105a_Initial, !425, !"icm105a_Initial", i1 false, i1 false}
!425 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2358, i32 32}
!426 = !{ptr @icm105a_InitialScale, !427, !"icm105a_InitialScale", i1 false, i1 false}
!427 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2181, i32 32}
!428 = !{ptr @mc501cb_Initial, !429, !"mc501cb_Initial", i1 false, i1 false}
!429 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2730, i32 32}
!430 = !{ptr @mc501cb_InitialScale, !431, !"mc501cb_InitialScale", i1 false, i1 false}
!431 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 2850, i32 32}
!432 = !{ptr @mt9v111_1_Initial, !433, !"mt9v111_1_Initial", i1 false, i1 false}
!433 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4114, i32 32}
!434 = !{ptr @mt9v111_1_InitialScale, !435, !"mt9v111_1_InitialScale", i1 false, i1 false}
!435 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4168, i32 32}
!436 = !{ptr @mt9v111_3_Initial, !437, !"mt9v111_3_Initial", i1 false, i1 false}
!437 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4359, i32 32}
!438 = !{ptr @mt9v111_3_InitialScale, !439, !"mt9v111_3_InitialScale", i1 false, i1 false}
!439 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4415, i32 32}
!440 = !{ptr @ov7620_Initial, !441, !"ov7620_Initial", i1 false, i1 false}
!441 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3037, i32 32}
!442 = !{ptr @ov7620_InitialScale, !443, !"ov7620_InitialScale", i1 false, i1 false}
!443 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3106, i32 32}
!444 = !{ptr @ov7630c_Initial, !445, !"ov7630c_Initial", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3390, i32 32}
!446 = !{ptr @ov7630c_InitialScale, !447, !"ov7630c_InitialScale", i1 false, i1 false}
!447 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3234, i32 32}
!448 = !{ptr @pas106b_Initial, !449, !"pas106b_Initial", i1 false, i1 false}
!449 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3677, i32 32}
!450 = !{ptr @pas106b_InitialScale, !451, !"pas106b_InitialScale", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3561, i32 32}
!452 = !{ptr @pas202b_Initial, !453, !"pas202b_Initial", i1 false, i1 false}
!453 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3848, i32 32}
!454 = !{ptr @pas202b_InitialScale, !455, !"pas202b_InitialScale", i1 false, i1 false}
!455 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3892, i32 32}
!456 = !{ptr @pb0330_Initial, !457, !"pb0330_Initial", i1 false, i1 false}
!457 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4604, i32 32}
!458 = !{ptr @pb0330_InitialScale, !459, !"pb0330_InitialScale", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4653, i32 32}
!460 = !{ptr @po2030_Initial, !461, !"po2030_Initial", i1 false, i1 false}
!461 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4836, i32 32}
!462 = !{ptr @po2030_InitialScale, !463, !"po2030_InitialScale", i1 false, i1 false}
!463 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 4913, i32 32}
!464 = !{ptr @tas5130c_Initial, !465, !"tas5130c_Initial", i1 false, i1 false}
!465 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5082, i32 32}
!466 = !{ptr @tas5130c_InitialScale, !467, !"tas5130c_InitialScale", i1 false, i1 false}
!467 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5045, i32 32}
!468 = !{ptr @pas106b_Initial_com, !469, !"pas106b_Initial_com", i1 false, i1 false}
!469 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 3547, i32 32}
!470 = !{ptr @setmatrix.adcm2700_matrix, !471, !"adcm2700_matrix", i1 false, i1 false}
!471 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5648, i32 18}
!472 = !{ptr @setmatrix.gc0305_matrix, !473, !"gc0305_matrix", i1 false, i1 false}
!473 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5652, i32 18}
!474 = !{ptr @setmatrix.ov7620_matrix, !475, !"ov7620_matrix", i1 false, i1 false}
!475 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5654, i32 18}
!476 = !{ptr @setmatrix.pas202b_matrix, !477, !"pas202b_matrix", i1 false, i1 false}
!477 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5656, i32 18}
!478 = !{ptr @setmatrix.po2030_matrix, !479, !"po2030_matrix", i1 false, i1 false}
!479 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5658, i32 18}
!480 = !{ptr @setmatrix.tas5130c_matrix, !481, !"tas5130c_matrix", i1 false, i1 false}
!481 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5660, i32 18}
!482 = !{ptr @setmatrix.gc0303_matrix, !483, !"gc0303_matrix", i1 false, i1 false}
!483 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5662, i32 18}
!484 = !{ptr @setmatrix.matrix_tb, !485, !"matrix_tb", i1 false, i1 false}
!485 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 5664, i32 19}
!486 = !{ptr @device_table, !487, !"device_table", i1 false, i1 false}
!487 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 6945, i32 35}
!488 = !{ptr @__param_str_force_sensor, !11, !"__param_str_force_sensor", i1 false, i1 false}
!489 = !{ptr @force_sensor, !490, !"force_sensor", i1 false, i1 false}
!490 = !{!"../drivers/media/usb/gspca/zc3xx.c", i32 19, i32 12}
!491 = !{i32 1, !"wchar_size", i32 2}
!492 = !{i32 1, !"min_enum_size", i32 4}
!493 = !{i32 8, !"branch-target-enforcement", i32 0}
!494 = !{i32 8, !"sign-return-address", i32 0}
!495 = !{i32 8, !"sign-return-address-all", i32 0}
!496 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!497 = !{i32 7, !"uwtable", i32 1}
!498 = !{i32 7, !"frame-pointer", i32 2}
!499 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!500 = !{i8 0, i8 2}
!501 = distinct !{!501, !502}
!502 = !{!"llvm.loop.peeled.count", i32 2}
