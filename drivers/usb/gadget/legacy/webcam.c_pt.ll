; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/webcam.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/webcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uvc_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i32, i8, [1 x i8] }>
%struct.uvc_camera_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i8, [3 x i8] }
%struct.uvc_processing_unit_descriptor = type <{ i8, i8, i8, i8, i8, i16, i8, [2 x i8], i8, i8 }>
%struct.uvc_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uvc_input_header_descriptor_n_2 = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [2 x [1 x i8]] }>
%struct.uvc_format_uncompressed = type { i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8 }
%struct.uvc_frame_uncompressed_3 = type <{ i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8, [3 x i32] }>
%struct.uvc_frame_uncompressed_1 = type <{ i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8, [1 x i32] }>
%struct.uvc_format_mjpeg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uvc_frame_mjpeg_3 = type <{ i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8, [3 x i32] }>
%struct.uvc_frame_mjpeg_1 = type <{ i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8, [1 x i32] }>
%struct.uvc_color_matching_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.f_uvc_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.uvc_camera_terminal_descriptor, %struct.uvc_processing_unit_descriptor, %struct.uvc_output_terminal_descriptor, %struct.uvc_color_matching_descriptor, [5 x ptr], [5 x ptr], ptr, ptr, ptr, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@__param_str_idVendor = internal constant [18 x i8] c"g_webcam.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [34 x i8] c"g_webcam.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [37 x i8] c"g_webcam.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [19 x i8] c"g_webcam.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [35 x i8] c"g_webcam.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [39 x i8] c"g_webcam.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [19 x i8] c"g_webcam.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [35 x i8] c"g_webcam.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [49 x i8] c"g_webcam.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [23 x i8] c"g_webcam.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [38 x i8] c"g_webcam.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [48 x i8] c"g_webcam.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [23 x i8] c"g_webcam.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [38 x i8] c"g_webcam.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [52 x i8] c"g_webcam.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [18 x i8] c"g_webcam.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [33 x i8] c"g_webcam.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [42 x i8] c"g_webcam.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_streaming_interval = internal constant [28 x i8] c"g_webcam.streaming_interval\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@streaming_interval = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_streaming_interval = internal constant %struct.kernel_param { ptr @__param_str_streaming_interval, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @streaming_interval } }, section "__param", align 4
@__UNIQUE_ID_streaming_intervaltype240 = internal constant [42 x i8] c"g_webcam.parmtype=streaming_interval:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_streaming_interval241 = internal constant [40 x i8] c"g_webcam.parm=streaming_interval:1 - 16\00", section ".modinfo", align 1
@__param_str_streaming_maxpacket = internal constant [29 x i8] c"g_webcam.streaming_maxpacket\00", align 1
@streaming_maxpacket = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_streaming_maxpacket = internal constant %struct.kernel_param { ptr @__param_str_streaming_maxpacket, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @streaming_maxpacket } }, section "__param", align 4
@__UNIQUE_ID_streaming_maxpackettype242 = internal constant [43 x i8] c"g_webcam.parmtype=streaming_maxpacket:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_streaming_maxpacket243 = internal constant [66 x i8] c"g_webcam.parm=streaming_maxpacket:1 - 1023 (FS), 1 - 3072 (hs/ss)\00", section ".modinfo", align 1
@__param_str_streaming_maxburst = internal constant [28 x i8] c"g_webcam.streaming_maxburst\00", align 1
@streaming_maxburst = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_streaming_maxburst = internal constant %struct.kernel_param { ptr @__param_str_streaming_maxburst, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @streaming_maxburst } }, section "__param", align 4
@__UNIQUE_ID_streaming_maxbursttype244 = internal constant [42 x i8] c"g_webcam.parmtype=streaming_maxburst:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_streaming_maxburst245 = internal constant [50 x i8] c"g_webcam.parm=streaming_maxburst:0 - 15 (ss only)\00", section ".modinfo", align 1
@__initcall__kmod_g_webcam__246_427_webcam_driver_init6 = internal global ptr @webcam_driver_init, section ".initcall6.init", align 4
@webcam_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @webcam_device_descriptor, ptr @webcam_device_strings, i32 5, i8 0, ptr @webcam_bind, ptr @webcam_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_webcam_driver_exit = internal global ptr @webcam_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [33 x i8] c"g_webcam.author=Laurent Pinchart\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [41 x i8] c"g_webcam.description=Webcam Video Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [49 x i8] c"g_webcam.file=drivers/usb/gadget/legacy/g_webcam\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [21 x i8] c"g_webcam.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g_webcam\00", [23 x i8] zeroinitializer }, align 32
@webcam_device_descriptor = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 -17, i8 2, i8 1, i8 0, i16 27421, i16 513, i16 4096, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@webcam_device_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @webcam_stringtab, ptr null], [24 x i8] zeroinitializer }, align 32
@webcam_stringtab = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @webcam_strings }, [24 x i8] zeroinitializer }, align 32
@webcam_strings = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @webcam_vendor_label }, %struct.usb_string { i8 0, ptr @webcam_product_label }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @webcam_config_label }, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@webcam_vendor_label = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"Linux Foundation\00", [47 x i8] zeroinitializer }, align 32
@webcam_product_label = internal global { [14 x i8], [18 x i8] } { [14 x i8] c"Webcam gadget\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@webcam_config_label = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"Video\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uvc\00", [28 x i8] zeroinitializer }, align 32
@fi_uvc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@uvc_fs_control_cls = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @uvc_control_header, ptr @uvc_camera_terminal, ptr @uvc_processing, ptr @uvc_output_terminal, ptr null], [44 x i8] zeroinitializer }, align 32
@uvc_ss_control_cls = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @uvc_control_header, ptr @uvc_camera_terminal, ptr @uvc_processing, ptr @uvc_output_terminal, ptr null], [44 x i8] zeroinitializer }, align 32
@uvc_fs_streaming_cls = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @uvc_input_header, ptr @uvc_format_yuv, ptr @uvc_frame_yuv_360p, ptr @uvc_frame_yuv_720p, ptr @uvc_format_mjpg, ptr @uvc_frame_mjpg_360p, ptr @uvc_frame_mjpg_720p, ptr @uvc_color_matching, ptr null], [60 x i8] zeroinitializer }, align 32
@uvc_hs_streaming_cls = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @uvc_input_header, ptr @uvc_format_yuv, ptr @uvc_frame_yuv_360p, ptr @uvc_frame_yuv_720p, ptr @uvc_format_mjpg, ptr @uvc_frame_mjpg_360p, ptr @uvc_frame_mjpg_720p, ptr @uvc_color_matching, ptr null], [60 x i8] zeroinitializer }, align 32
@uvc_ss_streaming_cls = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @uvc_input_header, ptr @uvc_format_yuv, ptr @uvc_frame_yuv_360p, ptr @uvc_frame_yuv_720p, ptr @uvc_format_mjpg, ptr @uvc_frame_mjpg_360p, ptr @uvc_frame_mjpg_720p, ptr @uvc_color_matching, ptr null], [60 x i8] zeroinitializer }, align 32
@webcam_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @webcam_config_label, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 2, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@webcam_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 406, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Webcam Video Gadget\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"webcam_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/gadget/legacy/webcam.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@webcam_bind._entry_ptr = internal global ptr @webcam_bind._entry, section ".printk_index", align 4
@uvc_control_header = internal constant { %struct.uvc_header_descriptor_1, [19 x i8] } { %struct.uvc_header_descriptor_1 <{ i8 13, i8 36, i8 1, i16 4097, i16 0, i32 7134210, i8 0, [1 x i8] zeroinitializer }>, [19 x i8] zeroinitializer }, align 32
@uvc_camera_terminal = internal constant { %struct.uvc_camera_terminal_descriptor, [46 x i8] } { %struct.uvc_camera_terminal_descriptor { i8 18, i8 36, i8 2, i8 1, i16 258, i8 0, i8 0, i16 0, i16 0, i16 0, i8 3, [3 x i8] c"\02\00\00" }, [46 x i8] zeroinitializer }, align 32
@uvc_processing = internal constant { %struct.uvc_processing_unit_descriptor, [20 x i8] } { %struct.uvc_processing_unit_descriptor <{ i8 12, i8 36, i8 5, i8 2, i8 1, i16 64, i8 2, [2 x i8] c"\01\00", i8 0, i8 0 }>, [20 x i8] zeroinitializer }, align 32
@uvc_output_terminal = internal constant { %struct.uvc_output_terminal_descriptor, [23 x i8] } { %struct.uvc_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 3, i16 257, i8 0, i8 2, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uvc_input_header = internal constant { %struct.uvc_input_header_descriptor_n_2, [17 x i8] } { %struct.uvc_input_header_descriptor_n_2 <{ i8 15, i8 36, i8 1, i8 2, i16 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 1, [2 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\04"] }>, [17 x i8] zeroinitializer }, align 32
@uvc_format_yuv = internal constant { %struct.uvc_format_uncompressed, [37 x i8] } { %struct.uvc_format_uncompressed { i8 27, i8 36, i8 4, i8 1, i8 2, [16 x i8] c"YUY2\00\00\10\00\80\00\00\AA\008\9Bq", i8 16, i8 1, i8 0, i8 0, i8 0, i8 0 }, [37 x i8] zeroinitializer }, align 32
@uvc_frame_yuv_360p = internal constant { %struct.uvc_frame_uncompressed_3, [58 x i8] } { %struct.uvc_frame_uncompressed_3 <{ i8 38, i8 36, i8 5, i8 1, i8 0, i16 -32766, i16 26625, i32 4200705, i32 12602115, i32 526080, i32 707529216, i8 3, [3 x i32] [i32 707529216, i32 1078071040, i32 1078676480] }>, [58 x i8] zeroinitializer }, align 32
@uvc_frame_yuv_720p = internal constant { %struct.uvc_frame_uncompressed_1, [34 x i8] } { %struct.uvc_frame_uncompressed_1 <{ i8 30, i8 36, i8 5, i8 2, i8 0, i16 5, i16 -12286, i32 49665, i32 49665, i32 2104320, i32 1078676480, i8 1, [1 x i32] [i32 1078676480] }>, [34 x i8] zeroinitializer }, align 32
@uvc_format_mjpg = internal constant { %struct.uvc_format_mjpeg, [21 x i8] } { %struct.uvc_format_mjpeg { i8 11, i8 36, i8 6, i8 2, i8 2, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, [21 x i8] zeroinitializer }, align 32
@uvc_frame_mjpg_360p = internal constant { %struct.uvc_frame_mjpeg_3, [58 x i8] } { %struct.uvc_frame_mjpeg_3 <{ i8 38, i8 36, i8 7, i8 1, i8 0, i16 -32766, i16 26625, i32 4200705, i32 12602115, i32 526080, i32 707529216, i8 3, [3 x i32] [i32 707529216, i32 1078071040, i32 1078676480] }>, [58 x i8] zeroinitializer }, align 32
@uvc_frame_mjpg_720p = internal constant { %struct.uvc_frame_mjpeg_1, [34 x i8] } { %struct.uvc_frame_mjpeg_1 <{ i8 30, i8 36, i8 7, i8 2, i8 0, i16 5, i16 -12286, i32 49665, i32 49665, i32 2104320, i32 1078676480, i8 1, [1 x i32] [i32 1078676480] }>, [34 x i8] zeroinitializer }, align 32
@uvc_color_matching = internal constant { %struct.uvc_color_matching_descriptor, [26 x i8] } { %struct.uvc_color_matching_descriptor { i8 6, i8 36, i8 13, i8 1, i8 1, i8 4 }, [26 x i8] zeroinitializer }, align 32
@f_uvc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 16, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"streaming_interval\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 21, i32 21 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"streaming_maxpacket\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 25, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"streaming_maxburst\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 29, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"webcam_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 418, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 419, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"webcam_device_descriptor\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 70, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"webcam_device_strings\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 62, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"webcam_stringtab\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 57, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"webcam_strings\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 49, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"webcam_vendor_label\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 41, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"webcam_product_label\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 42, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 52, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"webcam_config_label\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 43, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 371, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"fi_uvc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 67, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"uvc_fs_control_cls\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 275, i32 51 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"uvc_ss_control_cls\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 283, i32 51 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"uvc_fs_streaming_cls\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 291, i32 51 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"uvc_hs_streaming_cls\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 303, i32 51 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"uvc_ss_streaming_cls\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 315, i32 51 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"webcam_config_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 347, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 406, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"uvc_control_header\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 89, i32 46 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"uvc_camera_terminal\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 100, i32 52 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"uvc_processing\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 117, i32 52 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"uvc_output_terminal\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 131, i32 52 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"uvc_input_header\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 144, i32 55 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"uvc_format_yuv\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 161, i32 45 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"uvc_frame_yuv_360p\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 181, i32 47 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"uvc_frame_yuv_720p\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 199, i32 47 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"uvc_format_mjpg\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 215, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"uvc_frame_mjpg_360p\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 232, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"uvc_frame_mjpg_720p\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 250, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"uvc_color_matching\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 266, i32 51 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"f_uvc\00", align 1
@___asan_gen_.129 = private constant [38 x i8] c"../drivers/usb/gadget/legacy/webcam.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 68, i32 29 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_license250, ptr @__UNIQUE_ID_streaming_interval241, ptr @__UNIQUE_ID_streaming_intervaltype240, ptr @__UNIQUE_ID_streaming_maxburst245, ptr @__UNIQUE_ID_streaming_maxbursttype244, ptr @__UNIQUE_ID_streaming_maxpacket243, ptr @__UNIQUE_ID_streaming_maxpackettype242, ptr @__exitcall_webcam_driver_exit, ptr @__initcall__kmod_g_webcam__246_427_webcam_driver_init6, ptr @__param_bcdDevice, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_streaming_interval, ptr @__param_streaming_maxburst, ptr @__param_streaming_maxpacket, ptr @webcam_bind._entry, ptr @webcam_bind._entry_ptr, ptr @webcam_driver_exit, ptr @coverwrite, ptr @streaming_interval, ptr @streaming_maxpacket, ptr @streaming_maxburst, ptr @webcam_driver, ptr @.str, ptr @webcam_device_descriptor, ptr @webcam_device_strings, ptr @webcam_stringtab, ptr @webcam_strings, ptr @webcam_vendor_label, ptr @webcam_product_label, ptr @.str.1, ptr @webcam_config_label, ptr @.str.2, ptr @fi_uvc, ptr @uvc_fs_control_cls, ptr @uvc_ss_control_cls, ptr @uvc_fs_streaming_cls, ptr @uvc_hs_streaming_cls, ptr @uvc_ss_streaming_cls, ptr @webcam_config_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @uvc_control_header, ptr @uvc_camera_terminal, ptr @uvc_processing, ptr @uvc_output_terminal, ptr @uvc_input_header, ptr @uvc_format_yuv, ptr @uvc_frame_yuv_360p, ptr @uvc_frame_yuv_720p, ptr @uvc_format_mjpg, ptr @uvc_frame_mjpg_360p, ptr @uvc_frame_mjpg_720p, ptr @uvc_color_matching, ptr @f_uvc], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streaming_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streaming_maxpacket to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streaming_maxburst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_device_descriptor to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_device_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_stringtab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_strings to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_vendor_label to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_product_label to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_config_label to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_uvc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fs_control_cls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ss_control_cls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fs_streaming_cls to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_hs_streaming_cls to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ss_streaming_cls to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_control_header to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_camera_terminal to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_processing to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_output_terminal to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_input_header to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_format_yuv to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_frame_yuv_360p to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_frame_yuv_720p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_format_mjpg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_frame_mjpg_360p to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_frame_mjpg_720p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_color_matching to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uvc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @webcam_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @webcam_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @webcam_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @webcam_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @webcam_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.2) #4
  store ptr %call, ptr @fi_uvc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @streaming_interval, align 4
  %streaming_interval = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %streaming_interval, align 4
  %3 = load i32, ptr @streaming_maxpacket, align 4
  %streaming_maxpacket = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %streaming_maxpacket, align 4
  %5 = load i32, ptr @streaming_maxburst, align 4
  %streaming_maxburst = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %streaming_maxburst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %streaming_maxburst, align 4
  %fs_control = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %fs_control to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @uvc_fs_control_cls, ptr %fs_control, align 4
  %ss_control = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %ss_control to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @uvc_ss_control_cls, ptr %ss_control, align 4
  %fs_streaming = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %fs_streaming to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uvc_fs_streaming_cls, ptr %fs_streaming, align 4
  %hs_streaming = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 9
  %10 = ptrtoint ptr %hs_streaming to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uvc_hs_streaming_cls, ptr %hs_streaming, align 4
  %ss_streaming = getelementptr inbounds %struct.f_uvc_opts, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %ss_streaming to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @uvc_ss_streaming_cls, ptr %ss_streaming, align 4
  %call3 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @webcam_strings) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end5:                                          ; preds = %if.end
  %12 = load i8, ptr @webcam_strings, align 4
  store i8 %12, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @webcam_device_descriptor, i32 0, i32 10), align 1
  %13 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @webcam_strings, i32 0, i32 1), align 4
  store i8 %13, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @webcam_device_descriptor, i32 0, i32 11), align 1
  %14 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @webcam_strings, i32 0, i32 3), align 4
  store i8 %14, ptr getelementptr inbounds (%struct.usb_configuration, ptr @webcam_config_driver, i32 0, i32 6), align 1
  %call6 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @webcam_config_driver, ptr noundef nonnull @webcam_config_bind) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.error_crit_edge, label %if.end9

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %15 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

error:                                            ; preds = %if.end5.error_crit_edge, %if.end.error_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.error_crit_edge ], [ %call6, %if.end5.error_crit_edge ]
  %17 = load ptr, ptr @fi_uvc, align 4
  tail call void @usb_put_function_instance(ptr noundef %17) #4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %error ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @webcam_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_uvc, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function(ptr noundef nonnull %0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @fi_uvc, align 4
  %tobool.not.i4 = icmp eq ptr %1, null
  %cmp.i5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i6 = or i1 %tobool.not.i4, %cmp.i5
  br i1 %spec.select.i6, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function_instance(ptr noundef nonnull %1) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @webcam_config_bind(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fi_uvc, align 4
  %call = tail call ptr @usb_get_function(ptr noundef %0) #4
  store ptr %call, ptr @f_uvc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load ptr, ptr @f_uvc, align 4
  tail call void @usb_put_function(ptr noundef %2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call3, %if.then4 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_idVendortype228, !1, !"__UNIQUE_ID_idVendortype228", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_idVendor229, !1, !"__UNIQUE_ID_idVendor229", i1 false, i1 false}
!4 = !{ptr @__param_idProduct, !1, !"__param_idProduct", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_idProducttype230, !1, !"__UNIQUE_ID_idProducttype230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_idProduct231, !1, !"__UNIQUE_ID_idProduct231", i1 false, i1 false}
!7 = !{ptr @__param_bcdDevice, !1, !"__param_bcdDevice", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bcdDevicetype232, !1, !"__UNIQUE_ID_bcdDevicetype232", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_bcdDevice233, !1, !"__UNIQUE_ID_bcdDevice233", i1 false, i1 false}
!10 = !{ptr @__param_iSerialNumber, !1, !"__param_iSerialNumber", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_iSerialNumbertype234, !1, !"__UNIQUE_ID_iSerialNumbertype234", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_iSerialNumber235, !1, !"__UNIQUE_ID_iSerialNumber235", i1 false, i1 false}
!13 = !{ptr @__param_iManufacturer, !1, !"__param_iManufacturer", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_iManufacturertype236, !1, !"__UNIQUE_ID_iManufacturertype236", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_iManufacturer237, !1, !"__UNIQUE_ID_iManufacturer237", i1 false, i1 false}
!16 = !{ptr @__param_iProduct, !1, !"__param_iProduct", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_iProducttype238, !1, !"__UNIQUE_ID_iProducttype238", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_iProduct239, !1, !"__UNIQUE_ID_iProduct239", i1 false, i1 false}
!19 = !{ptr @__param_streaming_interval, !20, !"__param_streaming_interval", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 22, i32 1}
!21 = !{ptr @__UNIQUE_ID_streaming_intervaltype240, !20, !"__UNIQUE_ID_streaming_intervaltype240", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_streaming_interval241, !23, !"__UNIQUE_ID_streaming_interval241", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 23, i32 1}
!24 = !{ptr @__param_streaming_maxpacket, !25, !"__param_streaming_maxpacket", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 26, i32 1}
!26 = !{ptr @__UNIQUE_ID_streaming_maxpackettype242, !25, !"__UNIQUE_ID_streaming_maxpackettype242", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_streaming_maxpacket243, !28, !"__UNIQUE_ID_streaming_maxpacket243", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 27, i32 1}
!29 = !{ptr @__param_streaming_maxburst, !30, !"__param_streaming_maxburst", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 30, i32 1}
!31 = !{ptr @__UNIQUE_ID_streaming_maxbursttype244, !30, !"__UNIQUE_ID_streaming_maxbursttype244", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_streaming_maxburst245, !33, !"__UNIQUE_ID_streaming_maxburst245", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 31, i32 1}
!34 = !{ptr @__initcall__kmod_g_webcam__246_427_webcam_driver_init6, !35, !"__initcall__kmod_g_webcam__246_427_webcam_driver_init6", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 427, i32 1}
!36 = !{ptr @__exitcall_webcam_driver_exit, !35, !"__exitcall_webcam_driver_exit", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_author247, !38, !"__UNIQUE_ID_author247", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 429, i32 1}
!39 = !{ptr @__UNIQUE_ID_description248, !40, !"__UNIQUE_ID_description248", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 430, i32 1}
!41 = !{ptr @__UNIQUE_ID_file249, !42, !"__UNIQUE_ID_file249", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 431, i32 1}
!43 = !{ptr @__UNIQUE_ID_license250, !42, !"__UNIQUE_ID_license250", i1 false, i1 false}
!44 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!45 = !{ptr @streaming_maxburst, !46, !"streaming_maxburst", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 29, i32 21}
!47 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!48 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!49 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!50 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!51 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!52 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!53 = !{ptr @__param_str_streaming_interval, !20, !"__param_str_streaming_interval", i1 false, i1 false}
!54 = !{ptr @streaming_interval, !55, !"streaming_interval", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 21, i32 21}
!56 = !{ptr @__param_str_streaming_maxpacket, !25, !"__param_str_streaming_maxpacket", i1 false, i1 false}
!57 = !{ptr @streaming_maxpacket, !58, !"streaming_maxpacket", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 25, i32 21}
!59 = !{ptr @__param_str_streaming_maxburst, !30, !"__param_str_streaming_maxburst", i1 false, i1 false}
!60 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 419, i32 11}
!62 = !{ptr @webcam_driver, !63, !"webcam_driver", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 418, i32 36}
!64 = !{ptr @webcam_device_descriptor, !65, !"webcam_device_descriptor", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 70, i32 37}
!66 = !{ptr @webcam_device_strings, !67, !"webcam_device_strings", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 62, i32 35}
!68 = !{ptr @webcam_stringtab, !69, !"webcam_stringtab", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 57, i32 34}
!70 = !{ptr @.str.1, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 52, i32 30}
!72 = !{ptr @webcam_strings, !73, !"webcam_strings", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 49, i32 26}
!74 = !{ptr @webcam_vendor_label, !75, !"webcam_vendor_label", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 41, i32 13}
!76 = !{ptr @webcam_product_label, !77, !"webcam_product_label", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 42, i32 13}
!78 = !{ptr @webcam_config_label, !79, !"webcam_config_label", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 43, i32 13}
!80 = !{ptr @.str.2, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 371, i32 37}
!82 = !{ptr @.str.3, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 406, i32 2}
!84 = !{ptr @.str.4, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.5, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.7, !83, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @webcam_bind._entry, !83, !"_entry", i1 false, i1 false}
!89 = !{ptr @webcam_bind._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @fi_uvc, !91, !"fi_uvc", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 67, i32 38}
!92 = !{ptr @uvc_fs_control_cls, !93, !"uvc_fs_control_cls", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 275, i32 51}
!94 = !{ptr @uvc_control_header, !95, !"uvc_control_header", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 89, i32 46}
!96 = !{ptr @uvc_camera_terminal, !97, !"uvc_camera_terminal", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 100, i32 52}
!98 = !{ptr @uvc_processing, !99, !"uvc_processing", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 117, i32 52}
!100 = !{ptr @uvc_output_terminal, !101, !"uvc_output_terminal", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 131, i32 52}
!102 = !{ptr @uvc_ss_control_cls, !103, !"uvc_ss_control_cls", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 283, i32 51}
!104 = !{ptr @uvc_fs_streaming_cls, !105, !"uvc_fs_streaming_cls", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 291, i32 51}
!106 = !{ptr @uvc_input_header, !107, !"uvc_input_header", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 144, i32 55}
!108 = !{ptr @uvc_format_yuv, !109, !"uvc_format_yuv", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 161, i32 45}
!110 = !{ptr @uvc_frame_yuv_360p, !111, !"uvc_frame_yuv_360p", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 181, i32 47}
!112 = !{ptr @uvc_frame_yuv_720p, !113, !"uvc_frame_yuv_720p", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 199, i32 47}
!114 = !{ptr @uvc_format_mjpg, !115, !"uvc_format_mjpg", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 215, i32 38}
!116 = !{ptr @uvc_frame_mjpg_360p, !117, !"uvc_frame_mjpg_360p", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 232, i32 40}
!118 = !{ptr @uvc_frame_mjpg_720p, !119, !"uvc_frame_mjpg_720p", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 250, i32 40}
!120 = !{ptr @uvc_color_matching, !121, !"uvc_color_matching", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 266, i32 51}
!122 = !{ptr @uvc_hs_streaming_cls, !123, !"uvc_hs_streaming_cls", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 303, i32 51}
!124 = !{ptr @uvc_ss_streaming_cls, !125, !"uvc_ss_streaming_cls", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 315, i32 51}
!126 = !{ptr @webcam_config_driver, !127, !"webcam_config_driver", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 347, i32 33}
!128 = !{ptr @f_uvc, !129, !"f_uvc", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/legacy/webcam.c", i32 68, i32 29}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
