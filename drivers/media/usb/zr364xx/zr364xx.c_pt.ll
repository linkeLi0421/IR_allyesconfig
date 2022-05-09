; ModuleID = '/llk/IR_all_yes/drivers/media/usb/zr364xx/zr364xx.c_pt.bc'
source_filename = "../drivers/media/usb/zr364xx/zr364xx.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.message = type { i32, i32, ptr }
%struct.zr364xx_fmt = type { i32, i32 }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.zr364xx_camera = type { ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, ptr, i32, %struct.zr364xx_bufferi, i32, i32, i32, i32, %struct.mutex, %struct.spinlock, %struct.zr364xx_dmaqueue, i32, i32, i32, i32, [1 x %struct.zr364xx_pipeinfo], i8, ptr, %struct.videobuf_queue, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.zr364xx_bufferi = type { i32, [1 x %struct.zr364xx_framei] }
%struct.zr364xx_framei = type { i32, ptr, i32 }
%struct.zr364xx_dmaqueue = type { %struct.list_head, ptr }
%struct.zr364xx_pipeinfo = type { i32, ptr, i32, ptr, ptr, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.zr364xx_buffer = type { %struct.videobuf_buffer, ptr }

@__param_str_debug = internal constant [14 x i8] c"zr364xx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype297 = internal constant [27 x i8] c"zr364xx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug298 = internal constant [31 x i8] c"zr364xx.parm=debug:Debug level\00", section ".modinfo", align 1
@__param_str_mode = internal constant [13 x i8] c"zr364xx.mode\00", align 1
@mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mode } }, section "__param", align 4
@__UNIQUE_ID_modetype299 = internal constant [26 x i8] c"zr364xx.parmtype=mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mode300 = internal constant [56 x i8] c"zr364xx.parm=mode:0 = 320x240, 1 = 160x120, 2 = 640x480\00", section ".modinfo", align 1
@__initcall__kmod_zr364xx__301_1630_zr364xx_driver_init6 = internal global ptr @zr364xx_driver_init, section ".initcall6.init", align 4
@zr364xx_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @zr364xx_probe, ptr @zr364xx_disconnect, ptr null, ptr @zr364xx_suspend, ptr @zr364xx_resume, ptr @zr364xx_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_zr364xx_driver_exit = internal global ptr @zr364xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [58 x i8] c"zr364xx.author=Antoine Jacquet, http://royale.zerezo.com/\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [32 x i8] c"zr364xx.description=Zoran 364xx\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [47 x i8] c"zr364xx.file=drivers/media/usb/zr364xx/zr364xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [20 x i8] c"zr364xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version306 = internal constant [22 x i8] c"zr364xx.version=0.7.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr364xx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.7.4\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@device_table = internal constant { [22 x %struct.usb_device_id], [144 x i8] } { [22 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2250, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16420, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3428, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1350, i16 12679, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3428, i16 12552, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1429, i16 17219, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2992, i16 20493, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4075, i16 8196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1375, i16 -19200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 8290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1323, i16 6680, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1224, i16 1833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1266, i16 -24056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1924, i16 64, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1750, i16 52, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2583, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1750, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2583, i16 78, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1054, i16 16477, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2250, i16 8450, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1750, i16 61, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [144 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016zr364xx probing...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr364xx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/zr364xx/zr364xx.c\00", [60 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr = internal global ptr @zr364xx_probe._entry, section ".printk_index", align 4
@zr364xx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1413, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Zoran 364xx compatible webcam plugged\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.10 = internal global ptr @zr364xx_probe._entry.6, section ".printk_index", align 4
@zr364xx_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1416, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"model %04x:%04x detected\0A\00", [38 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.13 = internal global ptr @zr364xx_probe._entry.11, section ".printk_index", align 4
@zr364xx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1424, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.17 = internal global ptr @zr364xx_probe._entry.14, section ".printk_index", align 4
@zr364xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zr364xx:1428:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@zr364xx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @zr364xx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1433, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.21 = internal global ptr @zr364xx_probe._entry.19, section ".printk_index", align 4
@zr364xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cam->lock\00", [21 x i8] zeroinitializer }, align 32
@zr364xx_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @zr364xx_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Zoran 364xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @zr364xx_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 1449, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"160x120 mode selected\0A\00", [41 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.25 = internal global ptr @zr364xx_probe._entry.23, section ".printk_index", align 4
@zr364xx_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 1454, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"640x480 mode selected\0A\00", [41 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.28 = internal global ptr @zr364xx_probe._entry.26, section ".printk_index", align 4
@zr364xx_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 1459, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"320x240 mode selected\0A\00", [41 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.31 = internal global ptr @zr364xx_probe._entry.29, section ".printk_index", align 4
@m0d1 = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@m1 = internal global { [14 x %struct.message], [56 x i8] } { [14 x %struct.message] [%struct.message { i32 7984, i32 0, ptr null }, %struct.message { i32 53248, i32 0, ptr null }, %struct.message { i32 61440, i32 0, ptr null }, %struct.message { i32 8192, i32 0, ptr null }, %struct.message { i32 12047, i32 0, ptr null }, %struct.message { i32 9808, i32 0, ptr null }, %struct.message { i32 57607, i32 0, ptr null }, %struct.message { i32 9474, i32 2, ptr @m1d1 }, %struct.message { i32 8048, i32 0, ptr null }, %struct.message { i32 53248, i32 0, ptr null }, %struct.message { i32 53248, i32 0, ptr null }, %struct.message { i32 53248, i32 0, ptr null }, %struct.message { i32 39425, i32 2, ptr @m1d2 }, %struct.message { i32 -1, i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@m2 = internal global { [9 x %struct.message], [52 x i8] } { [9 x %struct.message] [%struct.message { i32 7984, i32 0, ptr null }, %struct.message { i32 61440, i32 0, ptr null }, %struct.message { i32 8192, i32 0, ptr null }, %struct.message { i32 12047, i32 0, ptr null }, %struct.message { i32 9808, i32 0, ptr null }, %struct.message { i32 57607, i32 0, ptr null }, %struct.message { i32 9474, i32 2, ptr @m2d1 }, %struct.message { i32 8048, i32 0, ptr null }, %struct.message { i32 -1, i32 -1, ptr null }], [52 x i8] zeroinitializer }, align 32
@header2 = internal global { [465 x i8], [111 x i8] } { [465 x i8] c"\FF\C4\00\1F\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\FF\C4\00\B5\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C4\00\1F\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\FF\C4\00\B5\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\00\F0\01@\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [111 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016zr364xx dev: %p, udev %p interface %p\0A\00", [55 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.34 = internal global ptr @zr364xx_probe._entry.32, section ".printk_index", align 4
@zr364xx_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016zr364xx num endpoints %d\0A\00", [36 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.37 = internal global ptr @zr364xx_probe._entry.35, section ".printk_index", align 4
@zr364xx_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.5, i32 1506, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not find bulk-in endpoint\0A\00", [63 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.40 = internal global ptr @zr364xx_probe._entry.38, section ".printk_index", align 4
@zr364xx_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cam->slock\00", [20 x i8] zeroinitializer }, align 32
@formats = internal constant { [1 x %struct.zr364xx_fmt], [24 x i8] } { [1 x %struct.zr364xx_fmt] [%struct.zr364xx_fmt { i32 1195724874, i32 24 }], [24 x i8] zeroinitializer }, align 32
@zr364xx_video_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @buffer_setup, ptr @buffer_prepare, ptr @buffer_queue, ptr @buffer_release }, [16 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.5, i32 1536, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"video_register_device failed\0A\00", [34 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.45 = internal global ptr @zr364xx_probe._entry.43, section ".printk_index", align 4
@zr364xx_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.4, ptr @.str.5, i32 1542, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Zoran 364xx controlling device %s\0A\00", [61 x i8] zeroinitializer }, align 32
@zr364xx_probe._entry_ptr.48 = internal global ptr @zr364xx_probe._entry.46, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zr364xx_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @zr364xx_read, ptr null, ptr @zr364xx_poll, ptr @video_ioctl2, ptr null, ptr @zr364xx_mmap, ptr @zr364xx_open, ptr @zr364xx_close }, [60 x i8] zeroinitializer }, align 32
@zr364xx_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @zr364xx_vidioc_querycap, ptr @zr364xx_vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zr364xx_vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zr364xx_vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zr364xx_vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zr364xx_vidioc_reqbufs, ptr @zr364xx_vidioc_querybuf, ptr @zr364xx_vidioc_qbuf, ptr null, ptr @zr364xx_vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zr364xx_vidioc_streamon, ptr @zr364xx_vidioc_streamoff, ptr null, ptr null, ptr null, ptr @zr364xx_vidioc_enum_input, ptr @zr364xx_vidioc_g_input, ptr @zr364xx_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@zr364xx_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016zr364xx %s: reading %d bytes at pos %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr364xx_read\00", [19 x i8] zeroinitializer }, align 32
@zr364xx_read._entry_ptr = internal global ptr @zr364xx_read._entry, section ".printk_index", align 4
@zr364xx_vidioc_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016zr364xx %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zr364xx_vidioc_streamon\00", [40 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_streamon._entry_ptr = internal global ptr @zr364xx_vidioc_streamon._entry, section ".printk_index", align 4
@init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @m0, ptr @m1, ptr @m2, ptr @m2], [16 x i8] zeroinitializer }, align 32
@zr364xx_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 1101, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error during open sequence: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr364xx_prepare\00", [16 x i8] zeroinitializer }, align 32
@zr364xx_prepare._entry_ptr = internal global ptr @zr364xx_prepare._entry, section ".printk_index", align 4
@m0 = internal global { [12 x %struct.message], [48 x i8] } { [12 x %struct.message] [%struct.message { i32 7984, i32 0, ptr null }, %struct.message { i32 53248, i32 0, ptr null }, %struct.message { i32 13168, i32 10, ptr @m0d1 }, %struct.message { i32 8192, i32 0, ptr null }, %struct.message { i32 12047, i32 0, ptr null }, %struct.message { i32 9744, i32 6, ptr @m0d2 }, %struct.message { i32 57607, i32 0, ptr null }, %struct.message { i32 9474, i32 0, ptr null }, %struct.message { i32 8048, i32 0, ptr null }, %struct.message { i32 53248, i32 0, ptr null }, %struct.message { i32 39425, i32 2, ptr @m0d3 }, %struct.message { i32 -1, i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@m0d2 = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@m0d3 = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@zr364xx_start_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016zr364xx start acquire\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zr364xx_start_acquire\00", [42 x i8] zeroinitializer }, align 32
@zr364xx_start_acquire._entry_ptr = internal global ptr @zr364xx_start_acquire._entry, section ".printk_index", align 4
@zr364xx_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016zr364xx %s: cam == NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr364xx_mmap\00", [19 x i8] zeroinitializer }, align 32
@zr364xx_mmap._entry_ptr = internal global ptr @zr364xx_mmap._entry, section ".printk_index", align 4
@zr364xx_mmap._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016zr364xx mmap called, vma=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@zr364xx_mmap._entry_ptr.61 = internal global ptr @zr364xx_mmap._entry.59, section ".printk_index", align 4
@zr364xx_mmap._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.5, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016zr364xx vma start=0x%08lx, size=%ld, ret=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@zr364xx_mmap._entry_ptr.64 = internal global ptr @zr364xx_mmap._entry.62, section ".printk_index", align 4
@zr364xx_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.65, ptr @.str.5, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr364xx_open\00", [19 x i8] zeroinitializer }, align 32
@zr364xx_open._entry_ptr = internal global ptr @zr364xx_open._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zr364xx_open._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016zr364xx %s: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@zr364xx_open._entry_ptr.68 = internal global ptr @zr364xx_open._entry.66, section ".printk_index", align 4
@zr364xx_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.69, ptr @.str.5, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr364xx_close\00", [18 x i8] zeroinitializer }, align 32
@zr364xx_close._entry_ptr = internal global ptr @zr364xx_close._entry, section ".printk_index", align 4
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Zoran 364xx\00", [20 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016zr364xx %s queue busy\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"zr364xx_vidioc_s_fmt_vid_cap\00", [35 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @zr364xx_vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@zr364xx_vidioc_s_fmt_vid_cap._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.5, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016zr364xx %s can't change format after started\0A\00", [48 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.75 = internal global ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.73, section ".printk_index", align 4
@zr364xx_vidioc_s_fmt_vid_cap._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.5, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016zr364xx %s: %dx%d mode selected\0A\00", [61 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.78 = internal global ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.76, section ".printk_index", align 4
@zr364xx_vidioc_s_fmt_vid_cap._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.5, i32 881, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error during resolution change sequence: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.81 = internal global ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.79, section ".printk_index", align 4
@zr364xx_vidioc_s_fmt_vid_cap._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.5, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016zr364xx %s: V4L2_PIX_FMT_%s (%d) ok!\0A\00", [56 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.84 = internal global ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.82, section ".printk_index", align 4
@zr364xx_vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016zr364xx %s: unsupported pixelformat V4L2_PIX_FMT_%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zr364xx_vidioc_try_fmt_vid_cap\00", [33 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @zr364xx_vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@zr364xx_vidioc_try_fmt_vid_cap._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.86, ptr @.str.5, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_try_fmt_vid_cap._entry_ptr.88 = internal global ptr @zr364xx_vidioc_try_fmt_vid_cap._entry.87, section ".printk_index", align 4
@zr364xx_vidioc_streamoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.89, ptr @.str.5, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zr364xx_vidioc_streamoff\00", [39 x i8] zeroinitializer }, align 32
@zr364xx_vidioc_streamoff._entry_ptr = internal global ptr @zr364xx_vidioc_streamoff._entry, section ".printk_index", align 4
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Zoran 364xx Camera\00", [45 x i8] zeroinitializer }, align 32
@m1d1 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\FF", [30 x i8] zeroinitializer }, align 32
@m1d2 = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@m2d1 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\FF", [30 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016zr364xx board init: %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr364xx_board_init\00", [45 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry_ptr = internal global ptr @zr364xx_board_init._entry, section ".printk_index", align 4
@zr364xx_board_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016zr364xx out of memory!\0A\00", [38 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry_ptr.95 = internal global ptr @zr364xx_board_init._entry.93, section ".printk_index", align 4
@zr364xx_board_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.5, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016zr364xx valloc %p, idx %lu, pdata %p\0A\00", [56 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry_ptr.98 = internal global ptr @zr364xx_board_init._entry.96, section ".printk_index", align 4
@zr364xx_board_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.5, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016zr364xx: out of memory. Using less frames\0A\00", [51 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry_ptr.101 = internal global ptr @zr364xx_board_init._entry.99, section ".printk_index", align 4
@zr364xx_board_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.92, ptr @.str.5, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016zr364xx: out of memory. Aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry_ptr.104 = internal global ptr @zr364xx_board_init._entry.102, section ".printk_index", align 4
@zr364xx_board_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.92, ptr @.str.5, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016zr364xx : board initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@zr364xx_board_init._entry_ptr.107 = internal global ptr @zr364xx_board_init._entry.105, section ".printk_index", align 4
@zr364xx_start_readpipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016zr364xx %s: start pipe IN x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zr364xx_start_readpipe\00", [41 x i8] zeroinitializer }, align 32
@zr364xx_start_readpipe._entry_ptr = internal global ptr @zr364xx_start_readpipe._entry, section ".printk_index", align 4
@zr364xx_start_readpipe._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.5, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016zr364xx submitting URB %p\0A\00", [35 x i8] zeroinitializer }, align 32
@zr364xx_start_readpipe._entry_ptr.112 = internal global ptr @zr364xx_start_readpipe._entry.110, section ".printk_index", align 4
@zr364xx_start_readpipe._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.5, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013zr364xx: start read pipe failed\0A\00", [61 x i8] zeroinitializer }, align 32
@zr364xx_start_readpipe._entry_ptr.115 = internal global ptr @zr364xx_start_readpipe._entry.113, section ".printk_index", align 4
@read_pipe_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013zr364xx: no context!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_pipe_completion\00", [43 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr = internal global ptr @read_pipe_completion._entry, section ".printk_index", align 4
@read_pipe_completion._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.119 = internal global ptr @read_pipe_completion._entry.118, section ".printk_index", align 4
@read_pipe_completion._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.117, ptr @.str.5, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016zr364xx %s, err shutdown\0A\00", [36 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.122 = internal global ptr @read_pipe_completion._entry.120, section ".printk_index", align 4
@read_pipe_completion._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.117, ptr @.str.5, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016zr364xx exiting USB pipe\0A\00", [36 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.125 = internal global ptr @read_pipe_completion._entry.123, section ".printk_index", align 4
@read_pipe_completion._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.117, ptr @.str.5, i32 980, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wrong number of bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.128 = internal global ptr @read_pipe_completion._entry.126, section ".printk_index", align 4
@read_pipe_completion._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.117, ptr @.str.5, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016zr364xx %s: failed URB %d\0A\00", [35 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.131 = internal global ptr @read_pipe_completion._entry.129, section ".printk_index", align 4
@read_pipe_completion._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.117, ptr @.str.5, i32 1007, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error submitting urb (error=%i)\0A\00", [63 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.134 = internal global ptr @read_pipe_completion._entry.132, section ".printk_index", align 4
@read_pipe_completion._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.117, ptr @.str.5, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016zr364xx read pipe complete state 0\0A\00", [58 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.137 = internal global ptr @read_pipe_completion._entry.135, section ".printk_index", align 4
@zr364xx_read_video_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 585, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: buffer (%d bytes) too small to hold jpeg header. Discarding.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zr364xx_read_video_callback\00", [36 x i8] zeroinitializer }, align 32
@zr364xx_read_video_callback._entry_ptr = internal global ptr @zr364xx_read_video_callback._entry, section ".printk_index", align 4
@header1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\D8\FF\DB\00\84", [26 x i8] zeroinitializer }, align 32
@zr364xx_read_video_callback._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 619, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: buffer (%d bytes) too small to hold frame data. Discarding frame data.\0A\00", [52 x i8] zeroinitializer }, align 32
@zr364xx_read_video_callback._entry_ptr.142 = internal global ptr @zr364xx_read_video_callback._entry.140, section ".printk_index", align 4
@zr364xx_read_video_callback._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.5, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016zr364xx No EOI marker\0A\00", [39 x i8] zeroinitializer }, align 32
@zr364xx_read_video_callback._entry_ptr.145 = internal global ptr @zr364xx_read_video_callback._entry.143, section ".printk_index", align 4
@zr364xx_read_video_callback._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.5, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016zr364xx Bogus frame ? %d\0A\00", [36 x i8] zeroinitializer }, align 32
@zr364xx_read_video_callback._entry_ptr.148 = internal global ptr @zr364xx_read_video_callback._entry.146, section ".printk_index", align 4
@zr364xx_got_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016zr364xx wakeup: %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zr364xx_got_frame\00", [46 x i8] zeroinitializer }, align 32
@zr364xx_got_frame._entry_ptr = internal global ptr @zr364xx_got_frame._entry, section ".printk_index", align 4
@zr364xx_got_frame._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.5, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016zr364xx No active queue to serve\0A\00", [60 x i8] zeroinitializer }, align 32
@zr364xx_got_frame._entry_ptr.153 = internal global ptr @zr364xx_got_frame._entry.151, section ".printk_index", align 4
@zr364xx_got_frame._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.5, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016zr364xx [%p/%d] wakeup\0A\00", [38 x i8] zeroinitializer }, align 32
@zr364xx_got_frame._entry_ptr.156 = internal global ptr @zr364xx_got_frame._entry.154, section ".printk_index", align 4
@zr364xx_got_frame._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.150, ptr @.str.5, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016zr364xx wakeup [buf/i] [%p/%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@zr364xx_got_frame._entry_ptr.159 = internal global ptr @zr364xx_got_frame._entry.157, section ".printk_index", align 4
@zr364xx_fillbuff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.5, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017zr364xx: unknown format?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zr364xx_fillbuff\00", [47 x i8] zeroinitializer }, align 32
@zr364xx_fillbuff._entry_ptr = internal global ptr @zr364xx_fillbuff._entry, section ".printk_index", align 4
@zr364xx_fillbuff._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.5, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013zr364xx: =======no frame\0A\00", [36 x i8] zeroinitializer }, align 32
@zr364xx_fillbuff._entry_ptr.164 = internal global ptr @zr364xx_fillbuff._entry.162, section ".printk_index", align 4
@zr364xx_fillbuff._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.161, ptr @.str.5, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016zr364xx %s: Buffer %p size= %d\0A\00", [62 x i8] zeroinitializer }, align 32
@zr364xx_fillbuff._entry_ptr.167 = internal global ptr @zr364xx_fillbuff._entry.165, section ".printk_index", align 4
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.5, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016zr364xx %s, field=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@buffer_prepare._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.5, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016zr364xx invalid buffer prepare\0A\00", [62 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.172 = internal global ptr @buffer_prepare._entry.170, section ".printk_index", align 4
@zr364xx_board_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.5, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016zr364xx vfree %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zr364xx_board_uninit\00", [43 x i8] zeroinitializer }, align 32
@zr364xx_board_uninit._entry_ptr = internal global ptr @zr364xx_board_uninit._entry, section ".printk_index", align 4
@zr364xx_stop_readpipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.5, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013zr364xx: invalid device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zr364xx_stop_readpipe\00", [42 x i8] zeroinitializer }, align 32
@zr364xx_stop_readpipe._entry_ptr = internal global ptr @zr364xx_stop_readpipe._entry, section ".printk_index", align 4
@zr364xx_stop_readpipe._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.5, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016zr364xx stop read pipe\0A\00", [38 x i8] zeroinitializer }, align 32
@zr364xx_stop_readpipe._entry_ptr.179 = internal global ptr @zr364xx_stop_readpipe._entry.177, section ".printk_index", align 4
@zr364xx_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.5, i32 1562, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Zoran 364xx webcam unplugged\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr364xx_disconnect\00", [45 x i8] zeroinitializer }, align 32
@zr364xx_disconnect._entry_ptr = internal global ptr @zr364xx_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 640]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 640]
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 73, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 74, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"zr364xx_driver\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1618, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1635, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 86, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1411, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1413, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1414, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1424, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1428, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"zr364xx_ctrl_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1283, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1433, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1438, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"zr364xx_template\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1317, i32 34 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1449, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1454, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1459, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [5 x i8] c"m0d1\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 224, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 245, i32 16 }
@___asan_gen_.292 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 264, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant [8 x i8] c"header2\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 289, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1491, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1495, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1506, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1524, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 148, i32 33 }
@___asan_gen_.325 = private unnamed_addr constant [19 x i8] c"zr364xx_video_qops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 423, i32 40 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1536, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1541, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [13 x i8] c"zr364xx_fops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1287, i32 42 }
@___asan_gen_.343 = private unnamed_addr constant [18 x i8] c"zr364xx_ioctl_ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1297, i32 36 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 456, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1124, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 277, i32 17 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1100, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant [3 x i8] c"m0\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 227, i32 16 }
@___asan_gen_.379 = private unnamed_addr constant [5 x i8] c"m0d2\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 225, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant [5 x i8] c"m0d3\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 226, i32 22 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1072, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1258, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1261, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1265, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1164, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1181, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1223, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 686, i32 23 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 823, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 829, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 836, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 880, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 896, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 768, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 783, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1148, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 699, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant [5 x i8] c"m1d1\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 243, i32 22 }
@___asan_gen_.493 = private unnamed_addr constant [5 x i8] c"m1d2\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 244, i32 22 }
@___asan_gen_.496 = private unnamed_addr constant [5 x i8] c"m2d1\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 263, i32 22 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1337, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1345, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1357, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1361, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1367, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1388, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1018, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1032, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1036, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 957, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 963, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 969, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 975, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 980, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 988, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1005, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1009, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 583, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant [8 x i8] c"header1\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 281, i32 22 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 617, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 648, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 659, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 518, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 522, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 536, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 539, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 496, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 500, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 503, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 372, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 379, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1194, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1048, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1051, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.730 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.731 = private constant [39 x i8] c"../drivers/media/usb/zr364xx/zr364xx.c\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.731, i32 1562, i32 2 }
@llvm.compiler.used = appending global [263 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_debug298, ptr @__UNIQUE_ID_debugtype297, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_mode300, ptr @__UNIQUE_ID_modetype299, ptr @__UNIQUE_ID_version306, ptr @__exitcall_zr364xx_driver_exit, ptr @__initcall__kmod_zr364xx__301_1630_zr364xx_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_mode, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry.170, ptr @buffer_prepare._entry_ptr, ptr @buffer_prepare._entry_ptr.172, ptr @read_pipe_completion._entry, ptr @read_pipe_completion._entry.118, ptr @read_pipe_completion._entry.120, ptr @read_pipe_completion._entry.123, ptr @read_pipe_completion._entry.126, ptr @read_pipe_completion._entry.129, ptr @read_pipe_completion._entry.132, ptr @read_pipe_completion._entry.135, ptr @read_pipe_completion._entry_ptr, ptr @read_pipe_completion._entry_ptr.119, ptr @read_pipe_completion._entry_ptr.122, ptr @read_pipe_completion._entry_ptr.125, ptr @read_pipe_completion._entry_ptr.128, ptr @read_pipe_completion._entry_ptr.131, ptr @read_pipe_completion._entry_ptr.134, ptr @read_pipe_completion._entry_ptr.137, ptr @zr364xx_board_init._entry, ptr @zr364xx_board_init._entry.102, ptr @zr364xx_board_init._entry.105, ptr @zr364xx_board_init._entry.93, ptr @zr364xx_board_init._entry.96, ptr @zr364xx_board_init._entry.99, ptr @zr364xx_board_init._entry_ptr, ptr @zr364xx_board_init._entry_ptr.101, ptr @zr364xx_board_init._entry_ptr.104, ptr @zr364xx_board_init._entry_ptr.107, ptr @zr364xx_board_init._entry_ptr.95, ptr @zr364xx_board_init._entry_ptr.98, ptr @zr364xx_board_uninit._entry, ptr @zr364xx_board_uninit._entry_ptr, ptr @zr364xx_close._entry, ptr @zr364xx_close._entry_ptr, ptr @zr364xx_disconnect._entry, ptr @zr364xx_disconnect._entry_ptr, ptr @zr364xx_driver_exit, ptr @zr364xx_fillbuff._entry, ptr @zr364xx_fillbuff._entry.162, ptr @zr364xx_fillbuff._entry.165, ptr @zr364xx_fillbuff._entry_ptr, ptr @zr364xx_fillbuff._entry_ptr.164, ptr @zr364xx_fillbuff._entry_ptr.167, ptr @zr364xx_got_frame._entry, ptr @zr364xx_got_frame._entry.151, ptr @zr364xx_got_frame._entry.154, ptr @zr364xx_got_frame._entry.157, ptr @zr364xx_got_frame._entry_ptr, ptr @zr364xx_got_frame._entry_ptr.153, ptr @zr364xx_got_frame._entry_ptr.156, ptr @zr364xx_got_frame._entry_ptr.159, ptr @zr364xx_mmap._entry, ptr @zr364xx_mmap._entry.59, ptr @zr364xx_mmap._entry.62, ptr @zr364xx_mmap._entry_ptr, ptr @zr364xx_mmap._entry_ptr.61, ptr @zr364xx_mmap._entry_ptr.64, ptr @zr364xx_open._entry, ptr @zr364xx_open._entry.66, ptr @zr364xx_open._entry_ptr, ptr @zr364xx_open._entry_ptr.68, ptr @zr364xx_prepare._entry, ptr @zr364xx_prepare._entry_ptr, ptr @zr364xx_probe._entry, ptr @zr364xx_probe._entry.11, ptr @zr364xx_probe._entry.14, ptr @zr364xx_probe._entry.19, ptr @zr364xx_probe._entry.23, ptr @zr364xx_probe._entry.26, ptr @zr364xx_probe._entry.29, ptr @zr364xx_probe._entry.32, ptr @zr364xx_probe._entry.35, ptr @zr364xx_probe._entry.38, ptr @zr364xx_probe._entry.43, ptr @zr364xx_probe._entry.46, ptr @zr364xx_probe._entry.6, ptr @zr364xx_probe._entry_ptr, ptr @zr364xx_probe._entry_ptr.10, ptr @zr364xx_probe._entry_ptr.13, ptr @zr364xx_probe._entry_ptr.17, ptr @zr364xx_probe._entry_ptr.21, ptr @zr364xx_probe._entry_ptr.25, ptr @zr364xx_probe._entry_ptr.28, ptr @zr364xx_probe._entry_ptr.31, ptr @zr364xx_probe._entry_ptr.34, ptr @zr364xx_probe._entry_ptr.37, ptr @zr364xx_probe._entry_ptr.40, ptr @zr364xx_probe._entry_ptr.45, ptr @zr364xx_probe._entry_ptr.48, ptr @zr364xx_read._entry, ptr @zr364xx_read._entry_ptr, ptr @zr364xx_read_video_callback._entry, ptr @zr364xx_read_video_callback._entry.140, ptr @zr364xx_read_video_callback._entry.143, ptr @zr364xx_read_video_callback._entry.146, ptr @zr364xx_read_video_callback._entry_ptr, ptr @zr364xx_read_video_callback._entry_ptr.142, ptr @zr364xx_read_video_callback._entry_ptr.145, ptr @zr364xx_read_video_callback._entry_ptr.148, ptr @zr364xx_start_acquire._entry, ptr @zr364xx_start_acquire._entry_ptr, ptr @zr364xx_start_readpipe._entry, ptr @zr364xx_start_readpipe._entry.110, ptr @zr364xx_start_readpipe._entry.113, ptr @zr364xx_start_readpipe._entry_ptr, ptr @zr364xx_start_readpipe._entry_ptr.112, ptr @zr364xx_start_readpipe._entry_ptr.115, ptr @zr364xx_stop_readpipe._entry, ptr @zr364xx_stop_readpipe._entry.177, ptr @zr364xx_stop_readpipe._entry_ptr, ptr @zr364xx_stop_readpipe._entry_ptr.179, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.73, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.76, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.79, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.82, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.75, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.78, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.81, ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.84, ptr @zr364xx_vidioc_streamoff._entry, ptr @zr364xx_vidioc_streamoff._entry_ptr, ptr @zr364xx_vidioc_streamon._entry, ptr @zr364xx_vidioc_streamon._entry_ptr, ptr @zr364xx_vidioc_try_fmt_vid_cap._entry, ptr @zr364xx_vidioc_try_fmt_vid_cap._entry.87, ptr @zr364xx_vidioc_try_fmt_vid_cap._entry_ptr, ptr @zr364xx_vidioc_try_fmt_vid_cap._entry_ptr.88, ptr @debug, ptr @mode, ptr @zr364xx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @device_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @zr364xx_probe._key, ptr @.str.18, ptr @zr364xx_ctrl_ops, ptr @.str.20, ptr @zr364xx_probe.__key, ptr @.str.22, ptr @zr364xx_template, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @m0d1, ptr @m1, ptr @m2, ptr @header2, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @zr364xx_probe.__key.41, ptr @.str.42, ptr @formats, ptr @zr364xx_video_qops, ptr @.str.44, ptr @.str.47, ptr @zr364xx_fops, ptr @zr364xx_ioctl_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @init, ptr @.str.53, ptr @.str.54, ptr @m0, ptr @m0d2, ptr @m0d3, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @m1d1, ptr @m1d2, ptr @m2d1, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @header1, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181], section "llvm.metadata"
@0 = internal global [183 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m0d1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m1 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @header2 to i32), i32 465, i32 576, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_video_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m0d2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m0d3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_start_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_mmap._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_mmap._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_open._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_try_fmt_vid_cap._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_vidioc_streamoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m1d1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m1d2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2d1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_start_readpipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_start_readpipe._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_start_readpipe._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_read_video_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @header1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_read_video_callback._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_read_video_callback._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_read_video_callback._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_got_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_got_frame._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_got_frame._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_got_frame._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_fillbuff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_fillbuff._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_fillbuff._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_board_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_stop_readpipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_stop_readpipe._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr364xx_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @zr364xx_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zr364xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @zr364xx_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #15
  %idVendor = getelementptr i8, ptr %1, i32 936
  %3 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idVendor, align 8
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %6 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv13 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv13) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 2248) #16
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %do.end7.cleanup_crit_edge, label %if.end17

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %do.end7
  %v4l2_dev = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 2
  %call19 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #15
  br label %free_cam

if.end26:                                         ; preds = %if.end17
  %ctrl_handler = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 3
  %call28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 1, ptr noundef nonnull @zr364xx_probe._key, ptr noundef nonnull @.str.18) #12
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @zr364xx_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #12
  %error = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 3, i32 9
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #15
  br label %free_hdlr_and_unreg_dev

if.end37:                                         ; preds = %if.end26
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %12 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_info, align 4
  %method = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %method to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %method, align 4
  %lock = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @zr364xx_probe.__key) #12
  %vdev = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %vdev, ptr @zr364xx_template, i32 1352)
  %lock43 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 26
  %16 = ptrtoint ptr %lock43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lock, ptr %lock43, align 8
  %v4l2_dev46 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 7
  %17 = ptrtoint ptr %v4l2_dev46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %v4l2_dev, ptr %v4l2_dev46, align 4
  %ctrl_handler49 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 9
  %18 = ptrtoint ptr %ctrl_handler49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ctrl_handler, ptr %ctrl_handler49, align 4
  %driver_data.i.i = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %21 = load i32, ptr @mode, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end65 [
    i32 1, label %if.end37.sw.epilog_crit_edge
    i32 2, label %do.end59
  ]

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end59:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end65:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end65, %do.end59, %if.end37.sw.epilog_crit_edge
  %.str.30.sink = phi ptr [ @.str.30, %do.end65 ], [ @.str.27, %do.end59 ], [ @.str.24, %if.end37.sw.epilog_crit_edge ]
  %.sink259 = phi i32 [ 320, %do.end65 ], [ 640, %do.end59 ], [ 160, %if.end37.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 240, %do.end65 ], [ 480, %do.end59 ], [ 120, %if.end37.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull %.str.30.sink) #15
  %width67 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %width67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink259, ptr %width67, align 4
  %height68 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %height68 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %height68, align 8
  %25 = load i32, ptr @mode, align 4
  %conv69 = trunc i32 %25 to i8
  store i8 %conv69, ptr @m0d1, align 1
  %add = add i32 %25, 61440
  store i32 %add, ptr getelementptr inbounds ([14 x %struct.message], ptr @m1, i32 0, i32 2), align 4
  store i32 %add, ptr getelementptr inbounds ([9 x %struct.message], ptr @m2, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp72 = icmp eq i32 %27, 3
  br i1 %cmp72, label %if.then74, label %sw.epilog.if.end79_crit_edge

sw.epilog.if.end79_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then74:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch.selectcmp = icmp eq i32 %25, 2
  %switch.select = select i1 %switch.selectcmp, i32 61440, i32 61441
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %switch.selectcmp261 = icmp eq i32 %25, 1
  %switch.select262 = select i1 %switch.selectcmp261, i32 61444, i32 %switch.select
  store i32 %switch.select262, ptr getelementptr inbounds ([9 x %struct.message], ptr @m2, i32 0, i32 1), align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %sw.epilog.if.end79_crit_edge
  %height80 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %height80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height80, align 8
  %div = sdiv i32 %29, 256
  %conv81 = trunc i32 %div to i8
  store i8 %conv81, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 437), align 1
  %conv83 = trunc i32 %29 to i8
  store i8 %conv83, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 438), align 1
  %width84 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %width84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width84, align 4
  %div85 = sdiv i32 %31, 256
  %conv86 = trunc i32 %div85 to i8
  store i8 %conv86, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 439), align 1
  %conv89 = trunc i32 %31 to i8
  store i8 %conv89, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 440), align 1
  %nb = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %nb, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool91.not = icmp eq i32 %33, 0
  br i1 %tobool91.not, label %do.end101.thread, label %do.end101

do.end101.thread:                                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %cur_altsetting253 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %34 = ptrtoint ptr %cur_altsetting253 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_altsetting253, align 4
  br label %do.end113

do.end101:                                        ; preds = %if.end79
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %call7.i.i, ptr noundef %37, ptr noundef %intf) #15
  %.pr = load i32, ptr @debug, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %38 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_altsetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool103.not = icmp eq i32 %.pr, 0
  br i1 %tobool103.not, label %do.end101.do.end113_crit_edge, label %do.end107

do.end101.do.end113_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

do.end107:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #14
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bNumEndpoints, align 4
  %conv109 = zext i8 %41 to i32
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv109) #15
  br label %do.end113

do.end113:                                        ; preds = %do.end107, %do.end101.do.end113_crit_edge, %do.end101.thread
  %42 = phi ptr [ %35, %do.end101.thread ], [ %39, %do.end107 ], [ %39, %do.end101.do.end113_crit_edge ]
  %bNumEndpoints115 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %bNumEndpoints115 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bNumEndpoints115, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp117257.not = icmp eq i8 %44, 0
  br i1 %cmp117257.not, label %do.end113.for.end_crit_edge, label %for.body.lr.ph

do.end113.for.end_crit_edge:                      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end113
  %endpoint119 = getelementptr inbounds %struct.usb_host_interface, ptr %42, i32 0, i32 3
  %read_endpoint = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %45 = ptrtoint ptr %endpoint119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %endpoint119, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %46, i32 %i.0258
  %47 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %read_endpoint, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool121.not = icmp eq i8 %48, 0
  br i1 %tobool121.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %49 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bmAttributes.i.i, align 1
  %51 = and i8 %50, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i.not.i = icmp eq i8 %51, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %52 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %tobool123.not = icmp sgt i8 %53, -1
  br i1 %tobool123.not, label %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, label %if.then124

usb_endpoint_is_bulk_in.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then124:                                       ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bEndpointAddress.i.i, align 1
  %56 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %read_endpoint, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then124, %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0258, 1
  %57 = ptrtoint ptr %bNumEndpoints115 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bNumEndpoints115, align 4
  %conv116 = zext i8 %58 to i32
  %cmp117 = icmp ult i32 %inc, %conv116
  br i1 %cmp117, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end113.for.end_crit_edge
  %read_endpoint127 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 20
  %59 = ptrtoint ptr %read_endpoint127 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %read_endpoint127, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool128.not = icmp eq i8 %60, 0
  br i1 %tobool128.not, label %if.then129, label %if.end134

if.then129:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #15
  br label %free_hdlr_and_unreg_dev

if.end134:                                        ; preds = %for.end
  %vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 14
  %61 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %vidq, ptr %vidq, align 8
  %prev.i = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %vidq, ptr %prev.i, align 4
  %cam136 = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 14, i32 1
  %63 = ptrtoint ptr %cam136 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %cam136, align 8
  %driver_data.i.i252 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %64 = ptrtoint ptr %driver_data.i.i252 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %driver_data.i.i252, align 4
  %call137 = tail call fastcc i32 @zr364xx_board_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end134.free_hdlr_and_unreg_dev_crit_edge

if.end134.free_hdlr_and_unreg_dev_crit_edge:      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_hdlr_and_unreg_dev

if.end140:                                        ; preds = %if.end134
  %call141 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.body145, label %if.end140.board_uninit_crit_edge

if.end140.board_uninit_crit_edge:                 ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %board_uninit

do.body145:                                       ; preds = %if.end140
  %slock = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.42, ptr noundef nonnull @zr364xx_probe.__key.41, i16 noundef signext 3) #12
  %fmt = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 21
  %65 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @formats, ptr %fmt, align 4
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 22
  tail call void @videobuf_queue_vmalloc_init(ptr noundef %vb_vidq, ptr noundef nonnull @zr364xx_video_qops, ptr noundef null, ptr noundef %slock, i32 noundef 1, i32 noundef 1, i32 noundef 152, ptr noundef nonnull %call7.i.i, ptr noundef %lock) #12
  %fops.i = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 3
  %66 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fops.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool153.not = icmp eq i32 %call.i, 0
  br i1 %tobool153.not, label %if.end159, label %do.end157

do.end157:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44) #15
  br label %board_uninit

if.end159:                                        ; preds = %do.body145
  %release = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 2, i32 9
  %70 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @zr364xx_release, ptr %release, align 4
  %init_name.i.i = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 3
  %71 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end159.video_device_node_name.exit_crit_edge

if.end159.video_device_node_name.exit_crit_edge:  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.zr364xx_camera, ptr %call7.i.i, i32 0, i32 4, i32 5
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.end159.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %74, %if.end.i.i ], [ %72, %if.end159.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i.i) #15
  br label %cleanup

board_uninit:                                     ; preds = %do.end157, %if.end140.board_uninit_crit_edge
  %err.0 = phi i32 [ %call141, %if.end140.board_uninit_crit_edge ], [ %call.i, %do.end157 ]
  tail call fastcc void @zr364xx_board_uninit(ptr noundef nonnull %call7.i.i)
  br label %free_hdlr_and_unreg_dev

free_hdlr_and_unreg_dev:                          ; preds = %board_uninit, %if.end134.free_hdlr_and_unreg_dev_crit_edge, %if.then129, %if.then31
  %err.1 = phi i32 [ %11, %if.then31 ], [ %call137, %if.end134.free_hdlr_and_unreg_dev_crit_edge ], [ %err.0, %board_uninit ], [ -12, %if.then129 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  br label %free_cam

free_cam:                                         ; preds = %free_hdlr_and_unreg_dev, %do.end24
  %err.2 = phi i32 [ %call19, %do.end24 ], [ %err.1, %free_hdlr_and_unreg_dev ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_cam, %video_device_node_name.exit, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %free_cam ], [ 0, %video_device_node_name.exit ], [ -12, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zr364xx_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.180) #15
  %vdev = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 4
  tail call void @video_unregister_device(ptr noundef %vdev) #12
  %v4l2_dev = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #12
  %b_acquire = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %b_acquire to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_acquire, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %b_acquire to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b_acquire, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %zr364xx_stop_readpipe.exit

do.body1.i:                                       ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %do.body1.i.do.end11.i_crit_edge, label %do.end6.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

do.end6.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #15
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %do.body1.i.do.end11.i_crit_edge
  %state.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 19, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %do.end11.i.if.end16.i_crit_edge, label %if.then14.i

do.end11.i.if.end16.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end11.i.if.end16.i_crit_edge
  %stream_urb.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 19, i32 0, i32 3
  %10 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream_urb.i, align 4
  %tobool17.not.i = icmp eq ptr %11, null
  br i1 %tobool17.not.i, label %if.end16.i.zr364xx_stop_readpipe.exit_crit_edge, label %if.then18.i

if.end16.i.zr364xx_stop_readpipe.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_stop_readpipe.exit

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #12
  %12 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #12
  %14 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %stream_urb.i, align 4
  br label %zr364xx_stop_readpipe.exit

zr364xx_stop_readpipe.exit:                       ; preds = %if.then18.i, %if.end16.i.zr364xx_stop_readpipe.exit_crit_edge, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %call4 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %b_acquire = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %b_acquire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_acquire, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %was_streaming = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 23
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %was_streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %was_streaming, align 4
  br i1 %tobool, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %b_acquire to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b_acquire, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %do.body1.i.do.end11.i_crit_edge, label %do.end6.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

do.end6.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #15
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %do.body1.i.do.end11.i_crit_edge
  %state.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 19, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %do.end11.i.if.end16.i_crit_edge, label %if.then14.i

do.end11.i.if.end16.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end11.i.if.end16.i_crit_edge
  %stream_urb.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 19, i32 0, i32 3
  %10 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream_urb.i, align 4
  %tobool17.not.i = icmp eq ptr %11, null
  br i1 %tobool17.not.i, label %if.end16.i.cleanup_crit_edge, label %if.then18.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #12
  %12 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #12
  %14 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %stream_urb.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18.i, %if.end16.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %was_streaming = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %was_streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %was_streaming, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @zr364xx_start_readpipe(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @zr364xx_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_prepare

if.end8:                                          ; preds = %if.end4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end8.zr364xx_start_acquire.exit_crit_edge, label %do.end.i

if.end8.zr364xx_start_acquire.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_start_acquire.exit

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #15
  br label %zr364xx_start_acquire.exit

zr364xx_start_acquire.exit:                       ; preds = %do.end.i, %if.end8.zr364xx_start_acquire.exit_crit_edge
  %last_frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %last_frame.i, align 4
  %cur_frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cur_frame.i, align 8
  %frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %frame.i, align 4
  %cur_size.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %cur_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cur_size.i, align 4
  %b_acquire.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %b_acquire.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %b_acquire.i, align 8
  br label %cleanup

err_prepare:                                      ; preds = %if.end4
  %tobool.not.i18 = icmp eq ptr %1, null
  br i1 %tobool.not.i18, label %do.end.i20, label %do.body1.i

do.end.i20:                                       ; preds = %err_prepare
  call void @__sanitizer_cov_trace_pc() #14
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %cleanup

do.body1.i:                                       ; preds = %err_prepare
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %do.body1.i.do.end11.i_crit_edge, label %do.end6.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

do.end6.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #15
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %do.body1.i.do.end11.i_crit_edge
  %state.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 19, i32 0, i32 2
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %do.end11.i.if.end16.i_crit_edge, label %if.then14.i

do.end11.i.if.end16.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end11.i.if.end16.i_crit_edge
  %stream_urb.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 19, i32 0, i32 3
  %14 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream_urb.i, align 4
  %tobool17.not.i = icmp eq ptr %15, null
  br i1 %tobool17.not.i, label %if.end16.i.cleanup_crit_edge, label %if.then18.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %15) #12
  %16 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #12
  %18 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %stream_urb.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18.i, %if.end16.i.cleanup_crit_edge, %do.end.i20, %zr364xx_start_acquire.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %zr364xx_start_acquire.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %do.end.i20 ], [ %call5, %if.end16.i.cleanup_crit_edge ], [ %call5, %if.then18.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zr364xx_board_init(ptr noundef %cam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %cam) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %cam5 = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 4
  %3 = ptrtoint ptr %cam5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cam, ptr %cam5, align 4
  %4 = ptrtoint ptr %pipe1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %pipe1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4096) #16
  %transfer_buffer = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 1
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %transfer_buffer, align 4
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.body11, label %if.end22

do.body11:                                        ; preds = %do.end4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %do.body11.cleanup_crit_edge, label %do.end16

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #15
  br label %cleanup

if.end22:                                         ; preds = %do.end4
  %b_acquire = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 18
  %8 = ptrtoint ptr %b_acquire to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %b_acquire, align 8
  %frame_count = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 17
  %9 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %frame_count, align 4
  %call23 = tail call noalias ptr @vmalloc(i32 noundef 200000) #17
  %lpvbits = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %lpvbits to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %lpvbits, align 4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not = icmp eq i32 %11, 0
  br i1 %tobool25.not, label %if.end22.do.end41_crit_edge, label %do.end29

if.end22.do.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %frame = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %frame, i32 noundef 0, ptr noundef %call23) #15
  %12 = ptrtoint ptr %lpvbits to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %lpvbits, align 4
  br label %do.end41

do.end41:                                         ; preds = %do.end29, %if.end22.do.end41_crit_edge
  %13 = phi ptr [ %.pr, %do.end29 ], [ %call23, %if.end22.do.end41_crit_edge ]
  %tobool46.not = icmp eq ptr %13, null
  br i1 %tobool46.not, label %do.end50, label %if.else

do.end50:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #15
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #15
  br label %err_free

if.else:                                          ; preds = %do.end41
  %buffer61 = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7
  %14 = ptrtoint ptr %buffer61 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %buffer61, align 8
  %frame67 = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %frame67 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %frame67, align 4
  %cur_size = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %cur_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cur_size, align 4
  %cur_frame = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 16
  %17 = ptrtoint ptr %cur_frame to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cur_frame, align 8
  %last_frame = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 15
  %18 = ptrtoint ptr %last_frame to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %last_frame, align 4
  %call75 = tail call fastcc i32 @zr364xx_start_readpipe(ptr noundef %cam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body79, label %for.body92

do.body79:                                        ; preds = %if.else
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool80.not = icmp eq i32 %19, 0
  br i1 %tobool80.not, label %do.body79.cleanup_crit_edge, label %do.end84

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end84:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #15
  br label %cleanup

for.body92:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %lpvbits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lpvbits, align 4
  tail call void @vfree(ptr noundef %21) #12
  br label %err_free

err_free:                                         ; preds = %for.body92, %do.end50
  %err.0 = phi i32 [ -12, %do.end50 ], [ %call75, %for.body92 ]
  %22 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %23) #12
  %24 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %transfer_buffer, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.end84, %do.body79.cleanup_crit_edge, %do.end16, %do.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_free ], [ -12, %do.end16 ], [ -12, %do.body11.cleanup_crit_edge ], [ 0, %do.end84 ], [ 0, %do.body79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_vmalloc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zr364xx_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -8
  %vb_vidq = getelementptr i8, ptr %v4l2_dev, i32 1904
  %call = tail call i32 @videobuf_mmap_free(ptr noundef %vb_vidq) #12
  %ctrl_handler = getelementptr i8, ptr %v4l2_dev, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call fastcc void @zr364xx_board_uninit(ptr noundef %add.ptr)
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr364xx_board_uninit(ptr noundef %cam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %cam, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %zr364xx_stop_readpipe.exit

do.body1.i:                                       ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not.i = icmp eq i32 %0, 0
  br i1 %tobool2.not.i, label %do.body1.i.do.end11.i_crit_edge, label %do.end6.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

do.end6.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #15
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %do.body1.i.do.end11.i_crit_edge
  %state.i = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 2
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %do.end11.i.if.end16.i_crit_edge, label %if.then14.i

do.end11.i.if.end16.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end11.i.if.end16.i_crit_edge
  %stream_urb.i = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 3
  %4 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_urb.i, align 4
  %tobool17.not.i = icmp eq ptr %5, null
  br i1 %tobool17.not.i, label %if.end16.i.zr364xx_stop_readpipe.exit_crit_edge, label %if.then18.i

if.end16.i.zr364xx_stop_readpipe.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_stop_readpipe.exit

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #12
  %6 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %7) #12
  %8 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %stream_urb.i, align 4
  br label %zr364xx_stop_readpipe.exit

zr364xx_stop_readpipe.exit:                       ; preds = %if.then18.i, %if.end16.i.zr364xx_stop_readpipe.exit_crit_edge, %do.end.i
  %lpvbits = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %lpvbits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lpvbits, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %zr364xx_stop_readpipe.exit.if.end14_crit_edge, label %do.body

zr364xx_stop_readpipe.exit.if.end14_crit_edge:    ; preds = %zr364xx_stop_readpipe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.body:                                          ; preds = %zr364xx_stop_readpipe.exit
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull %10) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %12 = ptrtoint ptr %lpvbits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lpvbits, align 4
  tail call void @vfree(ptr noundef %13) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end9, %zr364xx_stop_readpipe.exit.if.end14_crit_edge
  %14 = ptrtoint ptr %lpvbits to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lpvbits, align 4
  %transfer_buffer = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 1
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %16) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cond = icmp eq i32 %1, 9963776
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call ptr @kmemdup(ptr noundef null, i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.send_control_msg.exit_crit_edge, label %if.end.i

sw.bb.send_control_msg.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_control_msg.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 8193, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 0, i32 noundef 500) #12
  tail call void @kfree(ptr noundef nonnull %call.i) #12
  br label %send_control_msg.exit

send_control_msg.exit:                            ; preds = %if.end.i, %sw.bb.send_control_msg.exit_crit_edge
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %call.i7 = tail call ptr @kmemdup(ptr noundef null, i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i8 = icmp eq ptr %call.i7, null
  br i1 %tobool.not.i8, label %send_control_msg.exit.cleanup_crit_edge, label %if.end.i12

send_control_msg.exit.cleanup_crit_edge:          ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i12:                                       ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = trunc i32 %9 to i16
  %conv = sub i16 24703, %12
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %11, align 8
  %shl.i.i9 = shl i32 %14, 8
  %or.i10 = or i32 %shl.i.i9, -2147483648
  %call2.i11 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i10, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call.i7, i16 noundef zeroext 0, i32 noundef 500) #12
  tail call void @kfree(ptr noundef nonnull %call.i7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i12, %send_control_msg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %send_control_msg.exit.cleanup_crit_edge ], [ 0, %if.end.i12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 12
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call8 = tail call i32 @zr364xx_vidioc_streamon(ptr noundef %file, ptr noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %do.body, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body:                                          ; preds = %if.end7
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %do.body.do.end16_crit_edge, label %do.end

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %6 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %count, i32 noundef %conv) #15
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  %call17 = tail call i32 @videobuf_read_one(ptr noundef %vb_vidq, ptr noundef nonnull %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef %and) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end7.if.end18_crit_edge
  %err.0 = phi i32 [ %call17, %do.end16 ], [ %call8, %if.end7.if.end18_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call1 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef %wait) #12
  %call2 = tail call i32 @videobuf_poll_stream(ptr noundef %file, ptr noundef %vb_vidq, ptr noundef %wait) #12
  %or = or i32 %call2, %call1
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_mmap(ptr noundef %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #15
  br label %cleanup

do.body8:                                         ; preds = %entry
  br i1 %tobool1.not, label %do.body8.do.end18_crit_edge, label %do.end13

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %vma) #15
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body8.do.end18_crit_edge
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call19 = tail call i32 @videobuf_mmap_mapper(ptr noundef %vb_vidq, ptr noundef %vma) #12
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool21.not = icmp eq i32 %3, 0
  br i1 %tobool21.not, label %do.end18.cleanup_crit_edge, label %do.end25

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %7, %5
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %5, i32 noundef %sub, i32 noundef %call19) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ], [ %call19, %do.end25 ], [ %call19, %do.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %call9 = tail call i32 @v4l2_fh_open(ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.while.body_crit_edge, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end8.while.body_crit_edge
  %__ms.031 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end8.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.031, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #12
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %while.body.out_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %while.body.out_crit_edge, %if.end8.out_crit_edge
  %err.0 = phi i32 [ %call9, %if.end8.out_crit_edge ], [ 0, %while.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool16.not = icmp eq i32 %4, 0
  br i1 %tobool16.not, label %out.cleanup_crit_edge, label %do.end20

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end20:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef %err.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %out.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.end4.cleanup_crit_edge ], [ %err.0, %do.end20 ], [ %err.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_close(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.69) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.zr364xx_camera, ptr %2, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 8
  %cmp = icmp eq ptr %6, %8
  br i1 %cmp, label %if.then6, label %do.end3.while.body.preheader_crit_edge

do.end3.while.body.preheader_crit_edge:           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

if.then6:                                         ; preds = %do.end3
  %b_acquire = getelementptr inbounds %struct.zr364xx_camera, ptr %2, i32 0, i32 18
  %9 = ptrtoint ptr %b_acquire to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_acquire, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then8

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %b_acquire to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %b_acquire, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6.if.end10_crit_edge
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %2, i32 0, i32 22
  %call11 = tail call i32 @videobuf_streamoff(ptr noundef %vb_vidq) #12
  %method = getelementptr inbounds %struct.zr364xx_camera, ptr %2, i32 0, i32 11
  %12 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %method, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @init, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %bytes = getelementptr %struct.message, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bytes, align 4
  %size = getelementptr %struct.message, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %conv.i = and i32 %21, 65535
  %call.i43 = tail call ptr @kmemdup(ptr noundef %19, i32 noundef %conv.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i, label %if.end10.send_control_msg.exit_crit_edge, label %if.end.i

if.end10.send_control_msg.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_control_msg.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv20 = trunc i32 %21 to i16
  %conv = trunc i32 %17 to i16
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call.i43, i16 noundef zeroext %conv20, i32 noundef 500) #12
  tail call void @kfree(ptr noundef nonnull %call.i43) #12
  br label %send_control_msg.exit

send_control_msg.exit:                            ; preds = %if.end.i, %if.end10.send_control_msg.exit_crit_edge
  %24 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %method, align 4
  %arrayidx.1 = getelementptr [4 x ptr], ptr @init, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx13.1 = getelementptr %struct.message, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx13.1, align 4
  %bytes.1 = getelementptr %struct.message, ptr %27, i32 1, i32 2
  %30 = ptrtoint ptr %bytes.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bytes.1, align 4
  %size.1 = getelementptr %struct.message, ptr %27, i32 1, i32 1
  %32 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.1, align 4
  %conv.i.1 = and i32 %33, 65535
  %call.i43.1 = tail call ptr @kmemdup(ptr noundef %31, i32 noundef %conv.i.1, i32 noundef 3264) #12
  %tobool.not.i.1 = icmp eq ptr %call.i43.1, null
  br i1 %tobool.not.i.1, label %send_control_msg.exit.send_control_msg.exit.1_crit_edge, label %if.end.i.1

send_control_msg.exit.send_control_msg.exit.1_crit_edge: ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_control_msg.exit.1

if.end.i.1:                                       ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv20.1 = trunc i32 %33 to i16
  %conv.1 = trunc i32 %29 to i16
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %4, align 8
  %shl.i.i.1 = shl i32 %35, 8
  %or.i.1 = or i32 %shl.i.i.1, -2147483648
  %call2.i.1 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.1, i16 noundef zeroext 0, ptr noundef nonnull %call.i43.1, i16 noundef zeroext %conv20.1, i32 noundef 500) #12
  tail call void @kfree(ptr noundef nonnull %call.i43.1) #12
  br label %send_control_msg.exit.1

send_control_msg.exit.1:                          ; preds = %if.end.i.1, %send_control_msg.exit.send_control_msg.exit.1_crit_edge
  %36 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %owner, align 8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %send_control_msg.exit.1, %do.end3.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.045 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %while.body.preheader ]
  %dec = add nsw i32 %__ms.045, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #12
  %tobool24.not = icmp eq i32 %dec, 0
  br i1 %tobool24.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %call26 = tail call i32 @v4l2_fh_release(ptr noundef %file) #12
  ret i32 %call26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_streamon(ptr noundef %file, ptr noundef readnone %priv, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end6, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 8
  %tobool7.not = icmp eq ptr %4, null
  %cmp9.not = icmp eq ptr %4, %priv
  %or.cond = or i1 %tobool7.not, %cmp9.not
  br i1 %or.cond, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call fastcc i32 @zr364xx_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call16 = tail call i32 @videobuf_streamon(ptr noundef %vb_vidq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then18.zr364xx_start_acquire.exit_crit_edge, label %do.end.i

if.then18.zr364xx_start_acquire.exit_crit_edge:   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_start_acquire.exit

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %call.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #15
  br label %zr364xx_start_acquire.exit

zr364xx_start_acquire.exit:                       ; preds = %do.end.i, %if.then18.zr364xx_start_acquire.exit_crit_edge
  %last_frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %last_frame.i, align 4
  %cur_frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cur_frame.i, align 8
  %frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %frame.i, align 4
  %cur_size.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %cur_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_size.i, align 4
  %b_acquire.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %b_acquire.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %b_acquire.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %owner, align 8
  br label %cleanup

cleanup:                                          ; preds = %zr364xx_start_acquire.exit, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %zr364xx_start_acquire.exit ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_read_one(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zr364xx_prepare(ptr noundef %cam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %method = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 11
  %0 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %method, align 4
  %arrayidx55 = getelementptr [4 x ptr], ptr @init, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx55, align 4
  %size56 = getelementptr %struct.message, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %size56 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not57 = icmp eq i32 %5, -1
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi i32 [ %23, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %7 = phi ptr [ %21, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.058 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.message, ptr %7, i32 %i.058
  %8 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cam, align 8
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  %bytes = getelementptr %struct.message, ptr %7, i32 %i.058, i32 2
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bytes, align 4
  %conv.i = and i32 %6, 65535
  %call.i = tail call ptr @kmemdup(ptr noundef %13, i32 noundef %conv.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.do.end_crit_edge, label %send_control_msg.exit

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

send_control_msg.exit:                            ; preds = %for.body
  %conv12 = trunc i32 %6 to i16
  %conv = trunc i32 %11 to i16
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %15, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext %conv12, i32 noundef 500) #12
  tail call void @kfree(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13 = icmp slt i32 %call2.i, 0
  br i1 %cmp13, label %send_control_msg.exit.do.end_crit_edge, label %for.inc

send_control_msg.exit.do.end_crit_edge:           ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %send_control_msg.exit.do.end_crit_edge, %for.body.do.end_crit_edge
  %retval.0.i53 = phi i32 [ %call2.i, %send_control_msg.exit.do.end_crit_edge ], [ -12, %for.body.do.end_crit_edge ]
  %16 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cam, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %i.058) #15
  br label %cleanup

for.inc:                                          ; preds = %send_control_msg.exit
  %inc = add i32 %i.058, 1
  %18 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %method, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @init, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr %struct.message, ptr %21, i32 %inc, i32 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %cmp.not = icmp eq i32 %23, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %skip = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 8
  %24 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %skip, align 8
  %last_frame = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 15
  %25 = ptrtoint ptr %last_frame to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %last_frame, align 4
  %cur_frame = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 16
  %26 = ptrtoint ptr %cur_frame to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cur_frame, align 8
  %frame_count = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 17
  %27 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %frame_count, align 4
  %frame = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %frame, align 4
  %cur_size = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 7, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %cur_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur_size, align 4
  %ctrl_handler = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 3
  %call27 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i53, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamon(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_poll_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_mapper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.70, i32 noundef 16) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %product = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %product, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull %5, i32 noundef 32) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call9 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zr364xx_vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724874, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @video_devdata(ptr noundef nonnull %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724874, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %field, align 4
  %width = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 8
  %height5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height5, align 4
  %mul = shl i32 %5, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %bytesperline, align 4
  %mul13 = mul i32 %8, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul13, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %pixelformat_name = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pixelformat_name) #12
  %2 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 4
  %call1 = tail call i32 @zr364xx_vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %1, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %vb_vidq, i32 noundef 0) #12
  %call3 = tail call i32 @videobuf_queue_is_busy(ptr noundef %vb_vidq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #15
  br label %out

if.end12:                                         ; preds = %if.end
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 8
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.end26, label %do.body15

do.body15:                                        ; preds = %if.end12
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %do.body15.out_crit_edge, label %do.end20

do.body15.out_crit_edge:                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72) #15
  br label %out

if.end26:                                         ; preds = %if.end12
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt, align 4
  %width27 = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %width27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %width27, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height29 = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %height29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height29, align 8
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  br i1 %tobool31.not, label %if.end26.do.end42_crit_edge, label %do.end35

if.end26.do.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, i32 noundef %11, i32 noundef %14) #15
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %if.end26.do.end42_crit_edge
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  %mul = shl i32 %18, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %bytesperline, align 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %mul50 = mul i32 %21, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul50, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field, align 4
  %field55 = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22, i32 7
  %26 = ptrtoint ptr %field55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %field55, align 4
  %27 = load i32, ptr %fmt, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %27, label %do.end42.if.else71_crit_edge [
    i32 160, label %land.lhs.true
    i32 640, label %land.lhs.true66
  ]

do.end42.if.else71_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

land.lhs.true:                                    ; preds = %do.end42
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %30)
  %cmp61 = icmp eq i32 %30, 120
  br i1 %cmp61, label %land.lhs.true.if.end73_crit_edge, label %land.lhs.true.if.else71_crit_edge

land.lhs.true.if.else71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

land.lhs.true66:                                  ; preds = %do.end42
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %32)
  %cmp69 = icmp eq i32 %32, 480
  br i1 %cmp69, label %land.lhs.true66.if.end73_crit_edge, label %land.lhs.true66.if.else71_crit_edge

land.lhs.true66.if.else71_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

land.lhs.true66.if.end73_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.else71:                                        ; preds = %land.lhs.true66.if.else71_crit_edge, %land.lhs.true.if.else71_crit_edge, %do.end42.if.else71_crit_edge
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %land.lhs.true66.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge
  %switch.selectcmp196 = phi i32 [ 61440, %land.lhs.true66.if.end73_crit_edge ], [ 61444, %land.lhs.true.if.end73_crit_edge ], [ 61441, %if.else71 ]
  %.sink = phi i32 [ 2, %land.lhs.true66.if.end73_crit_edge ], [ 1, %land.lhs.true.if.end73_crit_edge ], [ 0, %if.else71 ]
  store i32 %.sink, ptr @mode, align 4
  %conv = trunc i32 %.sink to i8
  store i8 %conv, ptr @m0d1, align 1
  %add = or i32 %.sink, 61440
  store i32 %add, ptr getelementptr inbounds ([14 x %struct.message], ptr @m1, i32 0, i32 2), align 4
  store i32 %add, ptr getelementptr inbounds ([9 x %struct.message], ptr @m2, i32 0, i32 1), align 4
  %method = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp75 = icmp eq i32 %34, 3
  br i1 %cmp75, label %if.then77, label %if.end73.if.end79_crit_edge

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  store i32 %switch.selectcmp196, ptr getelementptr inbounds ([9 x %struct.message], ptr @m2, i32 0, i32 1), align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end73.if.end79_crit_edge
  %35 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height29, align 8
  %div = sdiv i32 %36, 256
  %conv81 = trunc i32 %div to i8
  store i8 %conv81, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 437), align 1
  %conv83 = trunc i32 %36 to i8
  store i8 %conv83, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 438), align 1
  %37 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width27, align 4
  %div85 = sdiv i32 %38, 256
  %conv86 = trunc i32 %div85 to i8
  store i8 %conv86, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 439), align 1
  %conv89 = trunc i32 %38 to i8
  store i8 %conv89, ptr getelementptr inbounds ([465 x i8], ptr @header2, i32 0, i32 440), align 1
  %39 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %method, align 4
  %arrayidx188 = getelementptr [4 x ptr], ptr @init, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx188, align 4
  %size189 = getelementptr %struct.message, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %size189 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp92.not190 = icmp eq i32 %44, -1
  br i1 %cmp92.not190, label %if.end79.while.body.preheader_crit_edge, label %if.end79.for.body_crit_edge

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  br label %for.body

if.end79.while.body.preheader_crit_edge:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end79.for.body_crit_edge
  %45 = phi i32 [ %62, %for.inc.for.body_crit_edge ], [ %44, %if.end79.for.body_crit_edge ]
  %46 = phi ptr [ %60, %for.inc.for.body_crit_edge ], [ %42, %if.end79.for.body_crit_edge ]
  %i.0191 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end79.for.body_crit_edge ]
  %arrayidx91 = getelementptr %struct.message, ptr %46, i32 %i.0191
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx91, align 4
  %bytes = getelementptr %struct.message, ptr %46, i32 %i.0191, i32 2
  %51 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bytes, align 4
  %conv.i = and i32 %45, 65535
  %call.i181 = tail call ptr @kmemdup(ptr noundef %52, i32 noundef %conv.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i, label %for.body.do.end112_crit_edge, label %send_control_msg.exit

for.body.do.end112_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

send_control_msg.exit:                            ; preds = %for.body
  %conv105 = trunc i32 %45 to i16
  %conv97 = trunc i32 %50 to i16
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 8
  %shl.i.i = shl i32 %54, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv97, i16 noundef zeroext 0, ptr noundef nonnull %call.i181, i16 noundef zeroext %conv105, i32 noundef 500) #12
  tail call void @kfree(ptr noundef nonnull %call.i181) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp107 = icmp slt i32 %call2.i, 0
  br i1 %cmp107, label %send_control_msg.exit.do.end112_crit_edge, label %for.inc

send_control_msg.exit.do.end112_crit_edge:        ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

do.end112:                                        ; preds = %send_control_msg.exit.do.end112_crit_edge, %for.body.do.end112_crit_edge
  %retval.0.i186 = phi i32 [ %call2.i, %send_control_msg.exit.do.end112_crit_edge ], [ -12, %for.body.do.end112_crit_edge ]
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %i.0191) #15
  br label %out

for.inc:                                          ; preds = %send_control_msg.exit
  %inc = add i32 %i.0191, 1
  %57 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %method, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @init, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr %struct.message, ptr %60, i32 %inc, i32 1
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  %cmp92.not = icmp eq i32 %62, -1
  br i1 %cmp92.not, label %for.inc.while.body.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.inc.while.body.preheader_crit_edge, %if.end79.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.0192 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %while.body.preheader ]
  %dec = add nsw i32 %__ms.0192, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #12
  %tobool115.not = icmp eq i32 %dec, 0
  br i1 %tobool115.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %skip = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %skip, align 8
  br label %out

out:                                              ; preds = %while.end, %do.end112, %do.end20, %do.body15.out_crit_edge, %do.end, %do.body.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i186, %do.end112 ], [ 0, %while.end ], [ -16, %do.end ], [ -16, %do.body.out_crit_edge ], [ -16, %do.end20 ], [ -16, %do.body15.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vb_vidq) #12
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool118.not = icmp eq i32 %65, 0
  br i1 %tobool118.not, label %out.cleanup_crit_edge, label %do.end122

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end122:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pixelformat, align 4
  %conv.i182 = trunc i32 %67 to i8
  %68 = ptrtoint ptr %pixelformat_name to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i182, ptr %pixelformat_name, align 1
  %shr.i = lshr i32 %67, 8
  %conv2.i = trunc i32 %shr.i to i8
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv2.i, ptr %2, align 1
  %shr4.i = lshr i32 %67, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv6.i, ptr %3, align 1
  %shr8.i = lshr i32 %67, 24
  %conv10.i = trunc i32 %shr8.i to i8
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv10.i, ptr %4, align 1
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %5, align 1
  %field127 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %73 = ptrtoint ptr %field127 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %field127, align 4
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.72, ptr noundef nonnull %pixelformat_name, i32 noundef %74) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %do.end122 ], [ %ret.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pixelformat_name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %pixelformat_name = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pixelformat_name) #12
  %2 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %pixelformat_name, i32 0, i32 4
  %tobool.not = icmp eq ptr %1, null
  %6 = call ptr @memset(ptr %pixelformat_name, i32 255, i32 5)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %8)
  %cmp.not = icmp eq i32 %8, 1195724874
  br i1 %cmp.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = trunc i32 %8 to i8
  %10 = ptrtoint ptr %pixelformat_name to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %pixelformat_name, align 1
  %shr.i = lshr i32 %8, 8
  %conv2.i = trunc i32 %shr.i to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i, ptr %2, align 1
  %shr4.i = lshr i32 %8, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6.i, ptr %3, align 1
  %shr8.i = lshr i32 %8, 24
  %conv10.i = trunc i32 %shr8.i to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10.i, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %5, align 1
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull %pixelformat_name) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %16, label %if.end12.if.then25_crit_edge [
    i32 160, label %land.lhs.true
    i32 640, label %land.lhs.true21
  ]

if.end12.if.then25_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

land.lhs.true:                                    ; preds = %if.end12
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %19)
  %cmp16 = icmp eq i32 %19, 120
  br i1 %cmp16, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.if.then25_crit_edge

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true21:                                  ; preds = %if.end12
  %height23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %21)
  %cmp24 = icmp eq i32 %21, 480
  br i1 %cmp24, label %land.lhs.true21.if.end30_crit_edge, label %land.lhs.true21.if.then25_crit_edge

land.lhs.true21.if.then25_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true21.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge, %if.end12.if.then25_crit_edge
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 320, ptr %fmt, align 4
  %height29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 240, ptr %height29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true21.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  %mul = shl i32 %26, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %bytesperline, align 4
  %height36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %height36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height36, align 4
  %mul39 = mul i32 %29, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul39, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %colorspace, align 4
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool43.not = icmp eq i32 %32, 0
  br i1 %tobool43.not, label %if.end30.cleanup_crit_edge, label %do.end47

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end47:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %pixelformat_name to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 74, ptr %pixelformat_name, align 1
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 80, ptr %2, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 69, ptr %3, align 1
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 71, ptr %4, align 1
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %5, align 1
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.86, ptr noundef nonnull %pixelformat_name, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end30.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %do.end47 ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pixelformat_name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_reqbufs(ptr noundef %file, ptr noundef readnone %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmp.not = icmp eq ptr %3, %priv
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call2 = tail call i32 @videobuf_reqbufs(ptr noundef %vb_vidq, ptr noundef %p) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_querybuf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call1 = tail call i32 @videobuf_querybuf(ptr noundef %vb_vidq, ptr noundef %p) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_qbuf(ptr noundef %file, ptr noundef readnone %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmp.not = icmp eq ptr %3, %priv
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call2 = tail call i32 @videobuf_qbuf(ptr noundef %vb_vidq, ptr noundef %p) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_dqbuf(ptr noundef %file, ptr noundef readnone %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmp.not = icmp eq ptr %3, %priv
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  %call2 = tail call i32 @videobuf_dqbuf(ptr noundef %vb_vidq, ptr noundef %p, i32 noundef %and) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_streamoff(ptr noundef %file, ptr noundef readnone %priv, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.89) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end6, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %owner = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 8
  %tobool7.not = icmp eq ptr %4, null
  %cmp9.not = icmp eq ptr %4, %priv
  %or.cond = or i1 %tobool7.not, %cmp9.not
  br i1 %or.cond, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %b_acquire.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %b_acquire.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b_acquire.i, align 8
  %vb_vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 22
  %call13 = tail call i32 @videobuf_streamoff(ptr noundef %vb_vidq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -22, %do.end4.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr364xx_vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.90, i32 noundef 32) #12
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @zr364xx_vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zr364xx_vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_queue_is_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dqbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zr364xx_start_readpipe(ptr noundef %cam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe2 = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 8
  %read_endpoint = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 20
  %2 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_endpoint, align 8
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i = shl i32 %5, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or3 = or i32 %or.i, -1073741696
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef %conv) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %state = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state, align 4
  %err_count = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 5
  %8 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err_count, align 4
  %call10 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %stream_urb = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 3
  %9 = ptrtoint ptr %stream_urb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %stream_urb, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end9.cleanup_crit_edge, label %if.end14

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %do.end9
  %10 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cam, align 8
  %transfer_buffer = getelementptr inbounds %struct.zr364xx_camera, ptr %cam, i32 0, i32 19, i32 0, i32 1
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  %14 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe2, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call10, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call10, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or3, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call10, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call10, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call10, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @read_pipe_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call10, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pipe2, ptr %context4.i, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %if.end14.do.end28_crit_edge, label %do.end22

if.end14.do.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream_urb, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %24) #15
  br label %do.end28

do.end28:                                         ; preds = %do.end22, %if.end14.do.end28_crit_edge
  %25 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream_urb, align 4
  %call30 = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end28.cleanup_crit_edge, label %if.then32

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream_urb, align 4
  tail call void @usb_free_urb(ptr noundef %28) #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.end28.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then32 ], [ -12, %do.end9.cleanup_crit_edge ], [ 0, %do.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_pipe_completion(ptr nocapture noundef %purb) #2 align 64 {
entry:
  %dma_q.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cam1 = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cam1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %5)
  %cmp = icmp eq i32 %5, -108
  br i1 %cmp, label %do.body11, label %if.end22

do.body11:                                        ; preds = %if.end9
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %do.body11.do.end21_crit_edge, label %do.end16

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.117) #15
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body11.do.end21_crit_edge
  %err_count = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %err_count, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %state = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23 = icmp eq i32 %10, 0
  br i1 %cmp23, label %do.body25, label %if.end36

do.body25:                                        ; preds = %if.end22
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %do.body25.cleanup_crit_edge, label %do.end30

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #15
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  %actual_length = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp37 = icmp ugt i32 %13, %15
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.127) #15
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp44 = icmp eq i32 %5, 0
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end42
  %cur_frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_frame.i, align 8
  %buffer.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 7
  %arrayidx.i = getelementptr %struct.zr364xx_camera, ptr %3, i32 0, i32 7, i32 1, i32 %19
  %method.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %method.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.then.i, label %if.then45.if.end.i_crit_edge

if.then45.if.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then45
  %transfer_buffer.i = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13.not.i = icmp ult i32 %13, 2
  br i1 %cmp13.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i16, ptr %23, i32 %i.04.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #12
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %add.ptr.i, align 2
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %28 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual_length, align 4
  %div1.i = lshr i32 %29, 1
  %cmp1.i = icmp ult i32 %inc.i, %div1.i
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %if.then45.if.end.i_crit_edge
  %b_acquire.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 18
  %30 = ptrtoint ptr %b_acquire.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_acquire.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.i, align 4
  br label %if.end61

if.end3.i:                                        ; preds = %if.end.i
  %transfer_buffer4.i = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer4.i, align 4
  %lpvbits.i = getelementptr %struct.zr364xx_camera, ptr %3, i32 0, i32 7, i32 1, i32 %19, i32 1
  %35 = ptrtoint ptr %lpvbits.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lpvbits.i, align 4
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp6.i = icmp eq i32 %38, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end3.i
  %39 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %40)
  %cmp9.i = icmp ult i32 %40, 128
  br i1 %cmp9.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef %40) #15
  br label %if.end61

if.end12.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx.i, align 4
  %cur_size.i = getelementptr %struct.zr364xx_camera, ptr %3, i32 0, i32 7, i32 1, i32 %19, i32 2
  %44 = ptrtoint ptr %cur_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cur_size.i, align 4
  %45 = call ptr @memcpy(ptr %36, ptr @header1, i32 6)
  %add.ptr14.i = getelementptr i8, ptr %36, i32 6
  %46 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %add.ptr14.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %36, i32 7
  %47 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %34, i32 64)
  %add.ptr15.i = getelementptr i8, ptr %36, i32 71
  %48 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %add.ptr15.i, align 1
  %incdec.ptr16.i = getelementptr i8, ptr %36, i32 72
  %add.ptr17.i = getelementptr i8, ptr %34, i32 64
  %49 = call ptr @memcpy(ptr %incdec.ptr16.i, ptr %add.ptr17.i, i32 64)
  %add.ptr18.i = getelementptr i8, ptr %36, i32 136
  %50 = call ptr @memcpy(ptr %add.ptr18.i, ptr @header2, i32 465)
  %add.ptr19.i = getelementptr i8, ptr %36, i32 601
  %add.ptr20.i = getelementptr i8, ptr %34, i32 128
  %51 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %actual_length, align 4
  %sub.i = add i32 %52, -128
  %53 = call ptr @memcpy(ptr %add.ptr19.i, ptr %add.ptr20.i, i32 %sub.i)
  %54 = load i32, ptr %actual_length, align 4
  %sub23.i = add i32 %54, -128
  %add.ptr24.i = getelementptr i8, ptr %add.ptr19.i, i32 %sub23.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr24.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store i32 %sub.ptr.sub.i, ptr %cur_size.i, align 4
  br label %if.end43.i

if.else.i:                                        ; preds = %if.end3.i
  %cur_size26.i = getelementptr %struct.zr364xx_camera, ptr %3, i32 0, i32 7, i32 1, i32 %19, i32 2
  %55 = ptrtoint ptr %cur_size26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_size26.i, align 4
  %57 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %actual_length, align 4
  %add.i = add i32 %58, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %add.i)
  %cmp28.i = icmp ugt i32 %add.i, 200000
  br i1 %cmp28.i, label %do.end32.i, label %if.else35.i

do.end32.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 8
  %dev34.i = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139, i32 noundef 200000) #15
  br label %if.end43.i

if.else35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr37.i = getelementptr i8, ptr %36, i32 %56
  %61 = call ptr @memcpy(ptr %add.ptr37.i, ptr %34, i32 %58)
  %62 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %actual_length, align 4
  %64 = ptrtoint ptr %cur_size26.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur_size26.i, align 4
  %add41.i = add i32 %65, %63
  store i32 %add41.i, ptr %cur_size26.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else35.i, %do.end32.i, %if.end12.i
  %66 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual_length, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp45.i = icmp ult i32 %67, %69
  br i1 %cmp45.i, label %if.then46.i, label %if.end43.i.if.end61_crit_edge

if.end43.i.if.end61_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then46.i:                                      ; preds = %if.end43.i
  %70 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cur_frame.i, align 8
  %last_frame.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 15
  %72 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %last_frame.i, align 4
  %inc49.i = add i32 %71, 1
  %73 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffer.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc49.i, i32 %74)
  %cmp52.i = icmp eq i32 %inc49.i, %74
  %spec.store.select.i = select i1 %cmp52.i, i32 0, i32 %inc49.i
  %75 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.store.select.i, ptr %cur_frame.i, align 8
  %76 = ptrtoint ptr %lpvbits.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lpvbits.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %cur_size57.i = getelementptr %struct.zr364xx_camera, ptr %3, i32 0, i32 7, i32 1, i32 %19, i32 2
  %79 = ptrtoint ptr %cur_size57.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cur_size57.i, align 4
  %sub58.i = add i32 %80, -2
  %add.ptr59.i = getelementptr i8, ptr %77, i32 %sub58.i
  %cmp605.i = icmp ugt ptr %add.ptr59.i, %77
  br i1 %cmp605.i, label %if.then46.i.while.body.i_crit_edge, label %if.then46.i.while.end.i_crit_edge

if.then46.i.while.end.i_crit_edge:                ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then46.i.while.body.i_crit_edge:               ; preds = %if.then46.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end73.i.while.body.i_crit_edge, %if.then46.i.while.body.i_crit_edge
  %ptr.06.i = phi ptr [ %incdec.ptr74.i, %if.end73.i.while.body.i_crit_edge ], [ %add.ptr59.i, %if.then46.i.while.body.i_crit_edge ]
  %81 = ptrtoint ptr %ptr.06.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ptr.06.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %cmp61.i = icmp eq i8 %82, -1
  br i1 %cmp61.i, label %land.lhs.true.i, label %while.body.i.if.end73.i_crit_edge

while.body.i.if.end73.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %add.ptr63.i = getelementptr i8, ptr %ptr.06.i, i32 1
  %83 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %84)
  %cmp65.i = icmp eq i8 %84, -39
  br i1 %cmp65.i, label %land.lhs.true67.i, label %land.lhs.true.i.if.end73.i_crit_edge

land.lhs.true.i.if.end73.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

land.lhs.true67.i:                                ; preds = %land.lhs.true.i
  %add.ptr68.i = getelementptr i8, ptr %ptr.06.i, i32 2
  %85 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %cmp70.i = icmp eq i8 %86, -1
  br i1 %cmp70.i, label %land.lhs.true67.i.while.end.i_crit_edge, label %land.lhs.true67.i.if.end73.i_crit_edge

land.lhs.true67.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

land.lhs.true67.i.while.end.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end73.i:                                       ; preds = %land.lhs.true67.i.if.end73.i_crit_edge, %land.lhs.true.i.if.end73.i_crit_edge, %while.body.i.if.end73.i_crit_edge
  %incdec.ptr74.i = getelementptr i8, ptr %ptr.06.i, i32 -1
  %cmp60.i = icmp ugt ptr %incdec.ptr74.i, %77
  br i1 %cmp60.i, label %if.end73.i.while.body.i_crit_edge, label %if.end73.i.do.body78.i_crit_edge

if.end73.i.do.body78.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body78.i

if.end73.i.while.body.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %land.lhs.true67.i.while.end.i_crit_edge, %if.then46.i.while.end.i_crit_edge
  %ptr.0.lcssa.i = phi ptr [ %add.ptr59.i, %if.then46.i.while.end.i_crit_edge ], [ %ptr.06.i, %land.lhs.true67.i.while.end.i_crit_edge ]
  %ptr.0.lcssa14.i = ptrtoint ptr %ptr.0.lcssa.i to i32
  %cmp75.i = icmp eq ptr %ptr.0.lcssa.i, %77
  br i1 %cmp75.i, label %while.end.i.do.body78.i_crit_edge, label %if.end87.i

while.end.i.do.body78.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body78.i

do.body78.i:                                      ; preds = %while.end.i.do.body78.i_crit_edge, %if.end73.i.do.body78.i_crit_edge
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool79.not.i = icmp eq i32 %87, 0
  br i1 %tobool79.not.i, label %do.body78.i.if.else124.i_crit_edge, label %do.end83.i

do.body78.i.if.else124.i_crit_edge:               ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else124.i

do.end83.i:                                       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #15
  br label %if.else124.i

if.end87.i:                                       ; preds = %while.end.i
  %cmp899.i = icmp ugt ptr %ptr.0.lcssa.i, %77
  br i1 %cmp899.i, label %while.body91.preheader.i, label %if.end87.i.while.end108.i_crit_edge

if.end87.i.while.end108.i_crit_edge:              ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end108.i

while.body91.preheader.i:                         ; preds = %if.end87.i
  %88 = sub i32 %78, %ptr.0.lcssa14.i
  %uglygep.i = getelementptr i8, ptr %ptr.0.lcssa.i, i32 %88
  br label %while.body91.i

while.body91.i:                                   ; preds = %if.end106.i.while.body91.i_crit_edge, %while.body91.preheader.i
  %ptr.110.i = phi ptr [ %incdec.ptr107.i, %if.end106.i.while.body91.i_crit_edge ], [ %ptr.0.lcssa.i, %while.body91.preheader.i ]
  %89 = ptrtoint ptr %ptr.110.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ptr.110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %cmp93.i = icmp eq i8 %90, -1
  br i1 %cmp93.i, label %land.lhs.true95.i, label %while.body91.i.if.end106.i_crit_edge

while.body91.i.if.end106.i_crit_edge:             ; preds = %while.body91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

land.lhs.true95.i:                                ; preds = %while.body91.i
  %add.ptr96.i = getelementptr i8, ptr %ptr.110.i, i32 1
  %91 = ptrtoint ptr %add.ptr96.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr96.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp98.i = icmp eq i8 %92, -1
  br i1 %cmp98.i, label %land.lhs.true100.i, label %land.lhs.true95.i.if.end106.i_crit_edge

land.lhs.true95.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

land.lhs.true100.i:                               ; preds = %land.lhs.true95.i
  %add.ptr101.i = getelementptr i8, ptr %ptr.110.i, i32 2
  %93 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr101.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %94)
  %cmp103.i = icmp eq i8 %94, -1
  br i1 %cmp103.i, label %land.lhs.true100.i.while.end108.i_crit_edge, label %land.lhs.true100.i.if.end106.i_crit_edge

land.lhs.true100.i.if.end106.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

land.lhs.true100.i.while.end108.i_crit_edge:      ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end108.i

if.end106.i:                                      ; preds = %land.lhs.true100.i.if.end106.i_crit_edge, %land.lhs.true95.i.if.end106.i_crit_edge, %while.body91.i.if.end106.i_crit_edge
  %incdec.ptr107.i = getelementptr i8, ptr %ptr.110.i, i32 -1
  %cmp89.i = icmp ugt ptr %incdec.ptr107.i, %77
  br i1 %cmp89.i, label %if.end106.i.while.body91.i_crit_edge, label %if.end106.i.while.end108.i_crit_edge

if.end106.i.while.end108.i_crit_edge:             ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end108.i

if.end106.i.while.body91.i_crit_edge:             ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body91.i

while.end108.i:                                   ; preds = %if.end106.i.while.end108.i_crit_edge, %land.lhs.true100.i.while.end108.i_crit_edge, %if.end87.i.while.end108.i_crit_edge
  %ptr.1.lcssa.i = phi ptr [ %ptr.0.lcssa.i, %if.end87.i.while.end108.i_crit_edge ], [ %uglygep.i, %if.end106.i.while.end108.i_crit_edge ], [ %ptr.110.i, %land.lhs.true100.i.while.end108.i_crit_edge ]
  %cmp109.not.i = icmp eq ptr %ptr.1.lcssa.i, %77
  br i1 %cmp109.not.i, label %while.end108.i.if.else124.i_crit_edge, label %do.body112.i

while.end108.i.if.else124.i_crit_edge:            ; preds = %while.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else124.i

do.body112.i:                                     ; preds = %while.end108.i
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool113.not.i = icmp eq i32 %95, 0
  br i1 %tobool113.not.i, label %do.body112.i.if.end136.i_crit_edge, label %do.end117.i

do.body112.i.if.end136.i_crit_edge:               ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136.i

do.end117.i:                                      ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #14
  %nb.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 6
  %96 = ptrtoint ptr %nb.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nb.i, align 4
  %inc119.i = add i32 %97, 1
  store i32 %inc119.i, ptr %nb.i, align 4
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %inc119.i) #15
  br label %if.end136.i

if.else124.i:                                     ; preds = %while.end108.i.if.else124.i_crit_edge, %do.end83.i, %do.body78.i.if.else124.i_crit_edge
  %98 = ptrtoint ptr %b_acquire.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %b_acquire.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool126.not.i = icmp eq i32 %99, 0
  br i1 %tobool126.not.i, label %if.else124.i.if.end136.i_crit_edge, label %if.then127.i

if.else124.i.if.end136.i_crit_edge:               ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136.i

if.then127.i:                                     ; preds = %if.else124.i
  %skip.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 8
  %100 = ptrtoint ptr %skip.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool128.not.i = icmp eq i32 %101, 0
  br i1 %tobool128.not.i, label %if.else131.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i = add i32 %101, -1
  %102 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %dec.i, ptr %skip.i, align 8
  br label %if.end136.i

if.else131.i:                                     ; preds = %if.then127.i
  %103 = ptrtoint ptr %cur_size57.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cur_size57.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_q.i.i) #12
  %vidq.i.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 14
  %105 = ptrtoint ptr %dma_q.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %vidq.i.i, ptr %dma_q.i.i, align 4
  %106 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i.i, label %if.else131.i.do.body5.i.i_crit_edge, label %do.end.i.i

if.else131.i.do.body5.i.i_crit_edge:              ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.end.i.i:                                       ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull %dma_q.i.i) #15
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %do.end.i.i, %if.else131.i.do.body5.i.i_crit_edge
  %slock.i.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 13
  %call8.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i.i) #12
  %107 = ptrtoint ptr %dma_q.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_q.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %108, align 4
  %cmp.i.not.i.i = icmp eq ptr %110, %108
  br i1 %cmp.i.not.i.i, label %do.body16.i.i, label %if.end27.i.i

do.body16.i.i:                                    ; preds = %do.body5.i.i
  %111 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool17.not.i.i = icmp eq i32 %111, 0
  br i1 %tobool17.not.i.i, label %do.body16.i.i.zr364xx_got_frame.exit.i_crit_edge, label %do.end21.i.i

do.body16.i.i.zr364xx_got_frame.exit.i_crit_edge: ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_got_frame.exit.i

do.end21.i.i:                                     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #15
  br label %zr364xx_got_frame.exit.i

if.end27.i.i:                                     ; preds = %do.body5.i.i
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 -40
  %done.i.i = getelementptr i8, ptr %110, i32 8
  %head.i.i.i = getelementptr i8, ptr %110, i32 52
  %112 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %113, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.end27.i.i.zr364xx_got_frame.exit.i_crit_edge, label %if.end33.i.i

if.end27.i.i.zr364xx_got_frame.exit.i_crit_edge:  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_got_frame.exit.i

if.end33.i.i:                                     ; preds = %if.end27.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %110) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end33.i.i.list_del.exit.i.i_crit_edge

if.end33.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i.i.i, align 4
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %110, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end33.i.i.list_del.exit.i.i_crit_edge
  %120 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 256 to ptr), ptr %110, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %call.i.i.i = call i64 @ktime_get() #12
  %ts.i.i = getelementptr i8, ptr %110, i32 64
  %122 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call.i.i.i, ptr %ts.i.i, align 8
  %123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool38.not.i.i = icmp eq i32 %123, 0
  br i1 %tobool38.not.i.i, label %list_del.exit.i.i.do.end48.i.i_crit_edge, label %do.end42.i.i

list_del.exit.i.i.do.end48.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48.i.i

do.end42.i.i:                                     ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i.i, align 8
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %add.ptr.i.i, i32 noundef %125) #15
  br label %do.end48.i.i

do.end48.i.i:                                     ; preds = %do.end42.i.i, %list_del.exit.i.i.do.end48.i.i_crit_edge
  %call.i1.i.i = call ptr @videobuf_to_vmalloc(ptr noundef %add.ptr.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end48.i.i.zr364xx_fillbuff.exit.i.i_crit_edge, label %if.end.i.i.i

do.end48.i.i.zr364xx_fillbuff.exit.i.i_crit_edge: ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_fillbuff.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end48.i.i
  %126 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %last_frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp.not.i.i.i = icmp eq i32 %127, -1
  br i1 %cmp.not.i.i.i, label %do.end10.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %fmt.i.i.i = getelementptr i8, ptr %110, i32 104
  %128 = ptrtoint ptr %fmt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fmt.i.i.i, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %131)
  %cond.i.i.i = icmp eq i32 %131, 1195724874
  br i1 %cond.i.i.i, label %sw.bb.i.i.i, label %do.end.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %lpvbits.i.i.i = getelementptr %struct.zr364xx_camera, ptr %3, i32 0, i32 7, i32 1, i32 %127, i32 1
  %132 = ptrtoint ptr %lpvbits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %lpvbits.i.i.i, align 4
  %size.i.i.i = getelementptr i8, ptr %110, i32 -20
  %134 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %104, ptr %size.i.i.i, align 4
  %135 = call ptr @memcpy(ptr %call.i1.i.i, ptr %133, i32 %104)
  br label %sw.epilog.i.i.i

do.end.i.i.i:                                     ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #15
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %do.end.i.i.i, %sw.bb.i.i.i
  %136 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %last_frame.i, align 4
  %137 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool15.not.i.i.i = icmp eq i32 %137, 0
  br i1 %tobool15.not.i.i.i, label %sw.epilog.i.i.i.do.end24.i.i.i_crit_edge, label %do.end19.i.i.i

sw.epilog.i.i.i.do.end24.i.i.i_crit_edge:         ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i.i.i

do.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #15
  br label %zr364xx_fillbuff.exit.i.i

do.end19.i.i.i:                                   ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.161, ptr noundef nonnull %call.i1.i.i, i32 noundef 0) #15
  br label %do.end24.i.i.i

do.end24.i.i.i:                                   ; preds = %do.end19.i.i.i, %sw.epilog.i.i.i.do.end24.i.i.i_crit_edge
  %frame_count.i.i.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 17
  %138 = ptrtoint ptr %frame_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %frame_count.i.i.i, align 4
  %mul.i.i.i = shl i32 %139, 1
  %field_count.i.i.i = getelementptr i8, ptr %110, i32 60
  %140 = ptrtoint ptr %field_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %mul.i.i.i, ptr %field_count.i.i.i, align 4
  %call.i.i2.i.i = call i64 @ktime_get() #12
  %141 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %call.i.i2.i.i, ptr %ts.i.i, align 8
  %state.i.i.i = getelementptr i8, ptr %110, i32 -12
  %142 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 4, ptr %state.i.i.i, align 4
  br label %zr364xx_fillbuff.exit.i.i

zr364xx_fillbuff.exit.i.i:                        ; preds = %do.end24.i.i.i, %do.end10.i.i.i, %do.end48.i.i.zr364xx_fillbuff.exit.i.i_crit_edge
  call void @__wake_up(ptr noundef %done.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %143 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool52.not.i.i = icmp eq i32 %143, 0
  br i1 %tobool52.not.i.i, label %zr364xx_fillbuff.exit.i.i.zr364xx_got_frame.exit.i_crit_edge, label %do.end56.i.i

zr364xx_fillbuff.exit.i.i.zr364xx_got_frame.exit.i_crit_edge: ; preds = %zr364xx_fillbuff.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zr364xx_got_frame.exit.i

do.end56.i.i:                                     ; preds = %zr364xx_fillbuff.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr.i.i, align 8
  %call60.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %add.ptr.i.i, i32 noundef %145) #15
  br label %zr364xx_got_frame.exit.i

zr364xx_got_frame.exit.i:                         ; preds = %do.end56.i.i, %zr364xx_fillbuff.exit.i.i.zr364xx_got_frame.exit.i_crit_edge, %if.end27.i.i.zr364xx_got_frame.exit.i_crit_edge, %do.end21.i.i, %do.body16.i.i.zr364xx_got_frame.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i.i, i32 noundef %call8.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_q.i.i) #12
  br label %if.end136.i

if.end136.i:                                      ; preds = %zr364xx_got_frame.exit.i, %if.then129.i, %if.else124.i.if.end136.i_crit_edge, %do.end117.i, %do.body112.i.if.end136.i_crit_edge
  %frame_count.i = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 17
  %146 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %frame_count.i, align 4
  %inc137.i = add i32 %147, 1
  store i32 %inc137.i, ptr %frame_count.i, align 4
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %arrayidx.i, align 4
  %149 = ptrtoint ptr %cur_size57.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %cur_size57.i, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end42
  %err_count47 = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 5
  %150 = ptrtoint ptr %err_count47 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %err_count47, align 4
  %inc48 = add i32 %151, 1
  store i32 %inc48, ptr %err_count47, align 4
  %152 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool50.not = icmp eq i32 %152, 0
  br i1 %tobool50.not, label %if.else.if.end61_crit_edge, label %do.end54

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

do.end54:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %status, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.117, i32 noundef %154) #15
  br label %if.end61

if.end61:                                         ; preds = %do.end54, %if.else.if.end61_crit_edge, %if.end136.i, %if.end43.i.if.end61_crit_edge, %do.end.i, %if.then2.i
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %3, align 8
  %read_endpoint = getelementptr inbounds %struct.zr364xx_camera, ptr %3, i32 0, i32 20
  %157 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %read_endpoint, align 8
  %conv = zext i8 %158 to i32
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %156, align 8
  %shl.i = shl i32 %160, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or64 = or i32 %or.i, -1073741696
  %stream_urb = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 3
  %161 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %stream_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.zr364xx_pipeinfo, ptr %1, i32 0, i32 1
  %163 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %transfer_buffer, align 4
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 8
  %167 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %156, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 10
  %168 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or64, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 14
  %169 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %164, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 19
  %170 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %166, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 28
  %171 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @read_pipe_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 27
  %172 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %1, ptr %context4.i, align 4
  %173 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp68.not = icmp eq i32 %174, 0
  br i1 %cmp68.not, label %do.body85, label %if.then70

if.then70:                                        ; preds = %if.end61
  %175 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %stream_urb, align 4
  %call72 = call i32 @usb_submit_urb(ptr noundef %176, i32 noundef 2592) #12
  %177 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call72, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool75.not = icmp eq i32 %call72, 0
  br i1 %tobool75.not, label %if.then70.cleanup_crit_edge, label %do.end79

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end79:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %178 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %3, align 8
  %dev81 = getelementptr inbounds %struct.usb_device, ptr %179, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.133, i32 noundef %call72) #15
  br label %cleanup

do.body85:                                        ; preds = %if.end61
  %180 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool86.not = icmp eq i32 %180, 0
  br i1 %tobool86.not, label %do.body85.cleanup_crit_edge, label %do.end90

do.body85.cleanup_crit_edge:                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end90:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %do.body85.cleanup_crit_edge, %do.end79, %if.then70.cleanup_crit_edge, %do.end41, %do.end30, %do.body25.cleanup_crit_edge, %do.end21, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_vmalloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @buffer_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %count, ptr nocapture noundef %size) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %width = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 8
  %mul = mul i32 %5, %3
  %fmt = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.zr364xx_fmt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %shr = ashr i32 %9, 3
  %mul1 = mul i32 %mul, %shr
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul1, ptr %size, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %mul2 = mul i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %mul2)
  %cmp3 = icmp ugt i32 %mul2, 4194304
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %div = udiv i32 4194304, %15
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %count, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vq, ptr noundef %vb, i32 noundef %field) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef %field) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fmt, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %width = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 8
  %mul = mul i32 %8, %6
  %depth = getelementptr inbounds %struct.zr364xx_fmt, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %depth, align 4
  %shr = ashr i32 %10, 3
  %mul9 = mul i32 %mul, %shr
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul9, ptr %size, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %12 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end7.if.end28_crit_edge, label %land.lhs.true

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end7
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %14 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul9)
  %cmp15 = icmp ult i32 %15, %mul9
  br i1 %cmp15, label %do.body17, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body17:                                        ; preds = %land.lhs.true
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %do.body17.cleanup_crit_edge, label %do.end22

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #15
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt, align 4
  %fmt30 = getelementptr inbounds %struct.zr364xx_buffer, ptr %vb, i32 0, i32 1
  %19 = ptrtoint ptr %fmt30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fmt30, align 8
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  %width33 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %22 = ptrtoint ptr %width33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width33, align 8
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 8
  %height36 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %25 = ptrtoint ptr %height36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height36, align 4
  %field38 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %26 = ptrtoint ptr %field38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %field, ptr %field38, align 8
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40 = icmp eq i32 %28, 0
  br i1 %cmp40, label %if.then41, label %if.end28.if.end47_crit_edge

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then41:                                        ; preds = %if.end28
  %call43 = tail call i32 @videobuf_iolock(ptr noundef %vq, ptr noundef %vb, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %fail, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %state, align 4
  br label %cleanup

fail:                                             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #12
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end47, %do.end22, %do.body17.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %fail ], [ 0, %if.end47 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %do.end22 ], [ -22, %do.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr nocapture noundef readonly %vq, ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %vidq = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.zr364xx_camera, ptr %1, i32 0, i32 14, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %4, ptr noundef %vidq) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue, ptr %prev.i, align 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vidq, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %queue, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_release(ptr nocapture noundef readnone %vq, ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #12
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_vmalloc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 183)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 183)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !303, !305, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !351, !353, !354, !355, !356, !358, !359, !360, !362, !363, !364, !365}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 78, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype297, !1, !"__UNIQUE_ID_debugtype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug298, !4, !"__UNIQUE_ID_debug298", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 79, i32 1}
!5 = !{ptr @__param_mode, !6, !"__param_mode", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 80, i32 1}
!7 = !{ptr @__UNIQUE_ID_modetype299, !6, !"__UNIQUE_ID_modetype299", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mode300, !9, !"__UNIQUE_ID_mode300", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 81, i32 1}
!10 = !{ptr @__initcall__kmod_zr364xx__301_1630_zr364xx_driver_init6, !11, !"__initcall__kmod_zr364xx__301_1630_zr364xx_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1630, i32 1}
!12 = !{ptr @__exitcall_zr364xx_driver_exit, !11, !"__exitcall_zr364xx_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author302, !14, !"__UNIQUE_ID_author302", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1632, i32 1}
!15 = !{ptr @__UNIQUE_ID_description303, !16, !"__UNIQUE_ID_description303", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1633, i32 1}
!17 = !{ptr @__UNIQUE_ID_file304, !18, !"__UNIQUE_ID_file304", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1634, i32 1}
!19 = !{ptr @__UNIQUE_ID_license305, !18, !"__UNIQUE_ID_license305", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_version306, !21, !"__UNIQUE_ID_version306", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1635, i32 1}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 73, i32 12}
!28 = !{ptr @mode, !29, !"mode", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 74, i32 12}
!30 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!31 = !{ptr @__param_str_mode, !6, !"__param_str_mode", i1 false, i1 false}
!32 = !{ptr @zr364xx_driver, !33, !"zr364xx_driver", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1618, i32 26}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1411, i32 2}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @zr364xx_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @zr364xx_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1413, i32 2}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @zr364xx_probe._entry.6, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @zr364xx_probe._entry_ptr.10, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1414, i32 2}
!48 = !{ptr @zr364xx_probe._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @zr364xx_probe._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1424, i32 3}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @zr364xx_probe._entry.14, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @zr364xx_probe._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @zr364xx_probe._key, !56, !"_key", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1428, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1433, i32 3}
!60 = !{ptr @zr364xx_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @zr364xx_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @zr364xx_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1438, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1449, i32 3}
!67 = !{ptr @zr364xx_probe._entry.23, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @zr364xx_probe._entry_ptr.25, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1454, i32 3}
!71 = !{ptr @zr364xx_probe._entry.26, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @zr364xx_probe._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1459, i32 3}
!75 = !{ptr @zr364xx_probe._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @zr364xx_probe._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1491, i32 2}
!79 = !{ptr @zr364xx_probe._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @zr364xx_probe._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1495, i32 2}
!83 = !{ptr @zr364xx_probe._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @zr364xx_probe._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1506, i32 3}
!87 = !{ptr @zr364xx_probe._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @zr364xx_probe._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @zr364xx_probe.__key.41, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1524, i32 2}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1536, i32 3}
!94 = !{ptr @zr364xx_probe._entry.43, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @zr364xx_probe._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1541, i32 2}
!98 = !{ptr @zr364xx_probe._entry.46, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @zr364xx_probe._entry_ptr.48, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @zr364xx_ctrl_ops, !101, !"zr364xx_ctrl_ops", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1283, i32 35}
!102 = !{ptr @zr364xx_template, !103, !"zr364xx_template", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1317, i32 34}
!104 = !{ptr @zr364xx_fops, !105, !"zr364xx_fops", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1287, i32 42}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 456, i32 3}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @zr364xx_read._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @zr364xx_read._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1124, i32 2}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @zr364xx_vidioc_streamon._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @zr364xx_vidioc_streamon._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1100, i32 4}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @zr364xx_prepare._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @zr364xx_prepare._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @init, !122, !"init", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 277, i32 17}
!123 = !{ptr @m0, !124, !"m0", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 227, i32 16}
!125 = !{ptr @m0d2, !126, !"m0d2", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 225, i32 22}
!127 = !{ptr @m0d3, !128, !"m0d3", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 226, i32 22}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1072, i32 2}
!131 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @zr364xx_start_acquire._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @zr364xx_start_acquire._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1258, i32 3}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @zr364xx_mmap._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @zr364xx_mmap._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1261, i32 2}
!141 = !{ptr @zr364xx_mmap._entry.59, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @zr364xx_mmap._entry_ptr.61, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1265, i32 2}
!145 = !{ptr @zr364xx_mmap._entry.62, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @zr364xx_mmap._entry_ptr.64, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1164, i32 2}
!149 = !{ptr @zr364xx_open._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @zr364xx_open._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1181, i32 2}
!153 = !{ptr @zr364xx_open._entry.66, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @zr364xx_open._entry_ptr.68, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1223, i32 2}
!157 = !{ptr @zr364xx_close._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @zr364xx_close._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @zr364xx_ioctl_ops, !160, !"zr364xx_ioctl_ops", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1297, i32 36}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 686, i32 23}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 823, i32 3}
!165 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 829, i32 3}
!170 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.73, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.75, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 836, i32 2}
!174 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.76, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.78, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 880, i32 4}
!178 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.79, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.81, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 896, i32 2}
!182 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry.82, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @zr364xx_vidioc_s_fmt_vid_cap._entry_ptr.84, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 768, i32 3}
!186 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @zr364xx_vidioc_try_fmt_vid_cap._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @zr364xx_vidioc_try_fmt_vid_cap._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @zr364xx_vidioc_try_fmt_vid_cap._entry.87, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 783, i32 2}
!191 = !{ptr @zr364xx_vidioc_try_fmt_vid_cap._entry_ptr.88, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1148, i32 2}
!194 = !{ptr @zr364xx_vidioc_streamoff._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @zr364xx_vidioc_streamoff._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 699, i32 19}
!198 = !{ptr @m0d1, !199, !"m0d1", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 224, i32 22}
!200 = !{ptr @m1, !201, !"m1", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 245, i32 16}
!202 = !{ptr @m1d1, !203, !"m1d1", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 243, i32 22}
!204 = !{ptr @m1d2, !205, !"m1d2", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 244, i32 22}
!206 = !{ptr @m2, !207, !"m2", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 264, i32 16}
!208 = !{ptr @m2d1, !209, !"m2d1", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 263, i32 22}
!210 = !{ptr @header2, !211, !"header2", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 289, i32 22}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1337, i32 2}
!214 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @zr364xx_board_init._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @zr364xx_board_init._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1345, i32 3}
!219 = !{ptr @zr364xx_board_init._entry.93, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @zr364xx_board_init._entry_ptr.95, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1357, i32 3}
!223 = !{ptr @zr364xx_board_init._entry.96, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @zr364xx_board_init._entry_ptr.98, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1361, i32 4}
!227 = !{ptr @zr364xx_board_init._entry.99, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @zr364xx_board_init._entry_ptr.101, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.103, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1367, i32 3}
!231 = !{ptr @zr364xx_board_init._entry.102, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @zr364xx_board_init._entry_ptr.104, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1388, i32 2}
!235 = !{ptr @zr364xx_board_init._entry.105, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @zr364xx_board_init._entry_ptr.107, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1018, i32 2}
!239 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @zr364xx_start_readpipe._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @zr364xx_start_readpipe._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.111, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1032, i32 2}
!244 = !{ptr @zr364xx_start_readpipe._entry.110, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @zr364xx_start_readpipe._entry_ptr.112, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1036, i32 3}
!248 = !{ptr @zr364xx_start_readpipe._entry.113, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @zr364xx_start_readpipe._entry_ptr.115, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 957, i32 3}
!252 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @read_pipe_completion._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @read_pipe_completion._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @read_pipe_completion._entry.118, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 963, i32 3}
!257 = !{ptr @read_pipe_completion._entry_ptr.119, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 969, i32 3}
!260 = !{ptr @read_pipe_completion._entry.120, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @read_pipe_completion._entry_ptr.122, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 975, i32 3}
!264 = !{ptr @read_pipe_completion._entry.123, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @read_pipe_completion._entry_ptr.125, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 980, i32 3}
!268 = !{ptr @read_pipe_completion._entry.126, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @read_pipe_completion._entry_ptr.128, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 988, i32 3}
!272 = !{ptr @read_pipe_completion._entry.129, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @read_pipe_completion._entry_ptr.131, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1005, i32 4}
!276 = !{ptr @read_pipe_completion._entry.132, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @read_pipe_completion._entry_ptr.134, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.136, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1009, i32 3}
!280 = !{ptr @read_pipe_completion._entry.135, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @read_pipe_completion._entry_ptr.137, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 583, i32 4}
!284 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @zr364xx_read_video_callback._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @zr364xx_read_video_callback._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 617, i32 4}
!289 = !{ptr @zr364xx_read_video_callback._entry.140, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @zr364xx_read_video_callback._entry_ptr.142, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 648, i32 4}
!293 = !{ptr @zr364xx_read_video_callback._entry.143, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @zr364xx_read_video_callback._entry_ptr.145, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 659, i32 4}
!297 = !{ptr @zr364xx_read_video_callback._entry.146, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @zr364xx_read_video_callback._entry_ptr.148, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @header1, !300, !"header1", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 281, i32 22}
!301 = distinct !{null, !302, !"header3", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 334, i32 22}
!303 = !{ptr @.str.149, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 518, i32 2}
!305 = !{ptr @.str.150, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @zr364xx_got_frame._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @zr364xx_got_frame._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.152, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 522, i32 3}
!310 = !{ptr @zr364xx_got_frame._entry.151, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @zr364xx_got_frame._entry_ptr.153, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 536, i32 2}
!314 = !{ptr @zr364xx_got_frame._entry.154, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @zr364xx_got_frame._entry_ptr.156, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 539, i32 2}
!318 = !{ptr @zr364xx_got_frame._entry.157, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @zr364xx_got_frame._entry_ptr.159, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.160, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 496, i32 4}
!322 = !{ptr @.str.161, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @zr364xx_fillbuff._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @zr364xx_fillbuff._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.163, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 500, i32 3}
!327 = !{ptr @zr364xx_fillbuff._entry.162, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @zr364xx_fillbuff._entry_ptr.164, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.166, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 503, i32 2}
!331 = !{ptr @zr364xx_fillbuff._entry.165, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @zr364xx_fillbuff._entry_ptr.167, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @formats, !334, !"formats", i1 false, i1 false}
!334 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 148, i32 33}
!335 = !{ptr @zr364xx_video_qops, !336, !"zr364xx_video_qops", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 423, i32 40}
!337 = !{ptr @.str.168, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 372, i32 2}
!339 = !{ptr @.str.169, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @buffer_prepare._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @buffer_prepare._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.171, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 379, i32 3}
!344 = !{ptr @buffer_prepare._entry.170, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @buffer_prepare._entry_ptr.172, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.173, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1194, i32 4}
!348 = !{ptr @.str.174, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @zr364xx_board_uninit._entry, !347, !"_entry", i1 false, i1 false}
!350 = !{ptr @zr364xx_board_uninit._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.175, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1048, i32 3}
!353 = !{ptr @.str.176, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @zr364xx_stop_readpipe._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @zr364xx_stop_readpipe._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1051, i32 2}
!358 = !{ptr @zr364xx_stop_readpipe._entry.177, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @zr364xx_stop_readpipe._entry_ptr.179, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.180, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 1562, i32 2}
!362 = !{ptr @.str.181, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @zr364xx_disconnect._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @zr364xx_disconnect._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @device_table, !366, !"device_table", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/zr364xx/zr364xx.c", i32 86, i32 35}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{i8 0, i8 2}
