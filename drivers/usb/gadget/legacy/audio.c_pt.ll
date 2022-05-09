; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/audio.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/audio.c"
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
%struct.f_uac1_legacy_opts = type { %struct.usb_function_instance, i32, i32, i32, ptr, ptr, ptr, i8, %struct.mutex, i32 }
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

@__param_str_idVendor = internal constant [17 x i8] c"g_audio.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [33 x i8] c"g_audio.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [36 x i8] c"g_audio.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [18 x i8] c"g_audio.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [34 x i8] c"g_audio.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [38 x i8] c"g_audio.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [18 x i8] c"g_audio.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [34 x i8] c"g_audio.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [48 x i8] c"g_audio.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [22 x i8] c"g_audio.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [37 x i8] c"g_audio.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [47 x i8] c"g_audio.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [22 x i8] c"g_audio.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [37 x i8] c"g_audio.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [51 x i8] c"g_audio.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [17 x i8] c"g_audio.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [32 x i8] c"g_audio.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [41 x i8] c"g_audio.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_fn_play = internal constant [16 x i8] c"g_audio.fn_play\00", align 1
@fn_play = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_fn_play = internal constant %struct.kernel_param { ptr @__param_str_fn_play, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fn_play } }, section "__param", align 4
@__UNIQUE_ID_fn_playtype242 = internal constant [31 x i8] c"g_audio.parmtype=fn_play:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fn_play243 = internal constant [51 x i8] c"g_audio.parm=fn_play:Playback PCM device file name\00", section ".modinfo", align 1
@__param_str_fn_cap = internal constant [15 x i8] c"g_audio.fn_cap\00", align 1
@fn_cap = internal global { ptr, [28 x i8] } { ptr @.str.1, [28 x i8] zeroinitializer }, align 32
@__param_fn_cap = internal constant %struct.kernel_param { ptr @__param_str_fn_cap, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fn_cap } }, section "__param", align 4
@__UNIQUE_ID_fn_captype244 = internal constant [30 x i8] c"g_audio.parmtype=fn_cap:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fn_cap245 = internal constant [49 x i8] c"g_audio.parm=fn_cap:Capture PCM device file name\00", section ".modinfo", align 1
@__param_str_fn_cntl = internal constant [16 x i8] c"g_audio.fn_cntl\00", align 1
@fn_cntl = internal global { ptr, [28 x i8] } { ptr @.str.2, [28 x i8] zeroinitializer }, align 32
@__param_fn_cntl = internal constant %struct.kernel_param { ptr @__param_str_fn_cntl, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fn_cntl } }, section "__param", align 4
@__UNIQUE_ID_fn_cntltype246 = internal constant [31 x i8] c"g_audio.parmtype=fn_cntl:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fn_cntl247 = internal constant [46 x i8] c"g_audio.parm=fn_cntl:Control device file name\00", section ".modinfo", align 1
@__param_str_req_buf_size = internal constant [21 x i8] c"g_audio.req_buf_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@req_buf_size = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_req_buf_size = internal constant %struct.kernel_param { ptr @__param_str_req_buf_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @req_buf_size } }, section "__param", align 4
@__UNIQUE_ID_req_buf_sizetype248 = internal constant [34 x i8] c"g_audio.parmtype=req_buf_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_req_buf_size249 = internal constant [63 x i8] c"g_audio.parm=req_buf_size:ISO OUT endpoint request buffer size\00", section ".modinfo", align 1
@__param_str_req_count = internal constant [18 x i8] c"g_audio.req_count\00", align 1
@req_count = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_req_count = internal constant %struct.kernel_param { ptr @__param_str_req_count, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @req_count } }, section "__param", align 4
@__UNIQUE_ID_req_counttype250 = internal constant [31 x i8] c"g_audio.parmtype=req_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_req_count251 = internal constant [54 x i8] c"g_audio.parm=req_count:ISO OUT endpoint request count\00", section ".modinfo", align 1
@__param_str_audio_buf_size = internal constant [23 x i8] c"g_audio.audio_buf_size\00", align 1
@audio_buf_size = internal global { i32, [28 x i8] } { i32 48000, [28 x i8] zeroinitializer }, align 32
@__param_audio_buf_size = internal constant %struct.kernel_param { ptr @__param_str_audio_buf_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @audio_buf_size } }, section "__param", align 4
@__UNIQUE_ID_audio_buf_sizetype252 = internal constant [36 x i8] c"g_audio.parmtype=audio_buf_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_buf_size253 = internal constant [46 x i8] c"g_audio.parm=audio_buf_size:Audio buffer size\00", section ".modinfo", align 1
@__initcall__kmod_g_audio__254_360_audio_driver_init6 = internal global ptr @audio_driver_init, section ".initcall6.init", align 4
@audio_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str.3, ptr @device_desc, ptr @audio_strings, i32 3, i8 0, ptr @audio_bind, ptr @audio_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_audio_driver_exit = internal global ptr @audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [43 x i8] c"g_audio.description=Linux USB Audio Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [46 x i8] c"g_audio.author=Bryan Wu <cooloney@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [47 x i8] c"g_audio.file=drivers/usb/gadget/legacy/g_audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [20 x i8] c"g_audio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/dev/snd/pcmC0D0p\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/dev/snd/pcmC0D0c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"/dev/snd/controlC0\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g_audio\00", [24 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 27421, i16 257, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@audio_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.4 }, %struct.usb_string { i8 0, ptr @.str.5 }, %struct.usb_string { i8 0, ptr @.str.4 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Linux USB Audio Gadget\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uac1_legacy\00", [20 x i8] zeroinitializer }, align 32
@fi_uac1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@audio_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@audio_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 317, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s, version: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_bind\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/audio.c\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@audio_bind._entry_ptr = internal global ptr @audio_bind._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Feb 2, 2012\00", [20 x i8] zeroinitializer }, align 32
@f_uac1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 18, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"fn_play\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 88, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"fn_cap\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 92, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"fn_cntl\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 96, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"req_buf_size\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 100, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"req_count\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 104, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"audio_buf_size\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 108, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"audio_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 351, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 88, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 92, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 96, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 352, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 153, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"audio_strings\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 128, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 123, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 116, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 117, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 118, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 257, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [8 x i8] c"fi_uac1\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 137, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 183, i32 44 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"audio_config_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 227, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 317, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"f_uac1\00", align 1
@___asan_gen_.101 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/audio.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 138, i32 29 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_audio_buf_size253, ptr @__UNIQUE_ID_audio_buf_sizetype252, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_fn_cap245, ptr @__UNIQUE_ID_fn_captype244, ptr @__UNIQUE_ID_fn_cntl247, ptr @__UNIQUE_ID_fn_cntltype246, ptr @__UNIQUE_ID_fn_play243, ptr @__UNIQUE_ID_fn_playtype242, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_license258, ptr @__UNIQUE_ID_req_buf_size249, ptr @__UNIQUE_ID_req_buf_sizetype248, ptr @__UNIQUE_ID_req_count251, ptr @__UNIQUE_ID_req_counttype250, ptr @__exitcall_audio_driver_exit, ptr @__initcall__kmod_g_audio__254_360_audio_driver_init6, ptr @__param_audio_buf_size, ptr @__param_bcdDevice, ptr @__param_fn_cap, ptr @__param_fn_cntl, ptr @__param_fn_play, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_req_buf_size, ptr @__param_req_count, ptr @audio_bind._entry, ptr @audio_bind._entry_ptr, ptr @audio_driver_exit, ptr @coverwrite, ptr @fn_play, ptr @fn_cap, ptr @fn_cntl, ptr @req_buf_size, ptr @req_count, ptr @audio_buf_size, ptr @audio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @device_desc, ptr @audio_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fi_uac1, ptr @otg_desc, ptr @audio_config_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @f_uac1], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fn_play to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fn_cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fn_cntl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_buf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_buf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_uac1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @audio_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @audio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @audio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.6) #4
  store ptr %call, ptr @fi_uac1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup22

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @fn_play, align 4
  %fn_play = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %fn_play to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fn_play, align 4
  %3 = load ptr, ptr @fn_cap, align 4
  %fn_cap = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %fn_cap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fn_cap, align 4
  %5 = load ptr, ptr @fn_cntl, align 4
  %fn_cntl = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %fn_cntl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %fn_cntl, align 4
  %7 = load i32, ptr @req_buf_size, align 4
  %req_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %req_buf_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %req_buf_size, align 4
  %9 = load i32, ptr @req_count, align 4
  %req_count = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %req_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %req_count, align 4
  %11 = load i32, ptr @audio_buf_size, align 4
  %audio_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %audio_buf_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %audio_buf_size, align 4
  %call3 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end5

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end5:                                          ; preds = %if.end
  %13 = load i8, ptr @strings_dev, align 4
  store i8 %13, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %14 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %14, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %15 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdev, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %18 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end5.if.end16_crit_edge, label %land.lhs.true

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end5
  %19 = load ptr, ptr @otg_desc, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then8:                                         ; preds = %land.lhs.true
  %call10 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %16) #4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then8.fail_crit_edge, label %cleanup.thread

if.then8.fail_crit_edge:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cdev, align 4
  %call15 = tail call i32 @usb_otg_descriptor_init(ptr noundef %21, ptr noundef nonnull %call10) #4
  store ptr %call10, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end16

if.end16:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %call17 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @audio_config_driver, ptr noundef nonnull @audio_do_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %fail_otg_desc, label %if.end20

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %22 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12) #7
  br label %cleanup22

fail_otg_desc:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %24 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %24) #4
  store ptr null, ptr @otg_desc, align 4
  br label %fail

fail:                                             ; preds = %fail_otg_desc, %if.then8.fail_crit_edge, %if.end.fail_crit_edge
  %status.1 = phi i32 [ %call3, %if.end.fail_crit_edge ], [ %call17, %fail_otg_desc ], [ -12, %if.then8.fail_crit_edge ]
  %25 = load ptr, ptr @fi_uac1, align 4
  tail call void @usb_put_function_instance(ptr noundef %25) #4
  br label %cleanup22

cleanup22:                                        ; preds = %fail, %if.end20, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %status.1, %fail ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_uac1, align 4
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
  %1 = load ptr, ptr @fi_uac1, align 4
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
  %2 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %2) #4
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_do_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %5 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %descriptors = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @otg_desc, ptr %descriptors, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 7
  %7 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmAttributes, align 2
  %9 = or i8 %8, 32
  store i8 %9, ptr %bmAttributes, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = load ptr, ptr @fi_uac1, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #4
  store ptr %call2, ptr @f_uac1, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %12 = load ptr, ptr @f_uac1, align 4
  tail call void @usb_put_function(ptr noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %call7, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !114, !115, !116, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 18, i32 1}
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
!19 = !{ptr @__param_fn_play, !20, !"__param_fn_play", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 89, i32 1}
!21 = !{ptr @__UNIQUE_ID_fn_playtype242, !20, !"__UNIQUE_ID_fn_playtype242", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_fn_play243, !23, !"__UNIQUE_ID_fn_play243", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 90, i32 1}
!24 = !{ptr @__param_fn_cap, !25, !"__param_fn_cap", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 93, i32 1}
!26 = !{ptr @__UNIQUE_ID_fn_captype244, !25, !"__UNIQUE_ID_fn_captype244", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_fn_cap245, !28, !"__UNIQUE_ID_fn_cap245", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 94, i32 1}
!29 = !{ptr @__param_fn_cntl, !30, !"__param_fn_cntl", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 97, i32 1}
!31 = !{ptr @__UNIQUE_ID_fn_cntltype246, !30, !"__UNIQUE_ID_fn_cntltype246", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_fn_cntl247, !33, !"__UNIQUE_ID_fn_cntl247", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 98, i32 1}
!34 = !{ptr @__param_req_buf_size, !35, !"__param_req_buf_size", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 101, i32 1}
!36 = !{ptr @__UNIQUE_ID_req_buf_sizetype248, !35, !"__UNIQUE_ID_req_buf_sizetype248", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_req_buf_size249, !38, !"__UNIQUE_ID_req_buf_size249", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 102, i32 1}
!39 = !{ptr @__param_req_count, !40, !"__param_req_count", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 105, i32 1}
!41 = !{ptr @__UNIQUE_ID_req_counttype250, !40, !"__UNIQUE_ID_req_counttype250", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_req_count251, !43, !"__UNIQUE_ID_req_count251", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 106, i32 1}
!44 = !{ptr @__param_audio_buf_size, !45, !"__param_audio_buf_size", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 109, i32 1}
!46 = !{ptr @__UNIQUE_ID_audio_buf_sizetype252, !45, !"__UNIQUE_ID_audio_buf_sizetype252", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_audio_buf_size253, !48, !"__UNIQUE_ID_audio_buf_size253", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 110, i32 1}
!49 = !{ptr @__initcall__kmod_g_audio__254_360_audio_driver_init6, !50, !"__initcall__kmod_g_audio__254_360_audio_driver_init6", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 360, i32 1}
!51 = !{ptr @__exitcall_audio_driver_exit, !50, !"__exitcall_audio_driver_exit", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_description255, !53, !"__UNIQUE_ID_description255", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 362, i32 1}
!54 = !{ptr @__UNIQUE_ID_author256, !55, !"__UNIQUE_ID_author256", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 363, i32 1}
!56 = !{ptr @__UNIQUE_ID_file257, !57, !"__UNIQUE_ID_file257", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 364, i32 1}
!58 = !{ptr @__UNIQUE_ID_license258, !57, !"__UNIQUE_ID_license258", i1 false, i1 false}
!59 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!60 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!61 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!62 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!63 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!64 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!65 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!66 = !{ptr @__param_str_fn_play, !20, !"__param_str_fn_play", i1 false, i1 false}
!67 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 88, i32 24}
!69 = !{ptr @fn_play, !70, !"fn_play", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 88, i32 14}
!71 = !{ptr @__param_str_fn_cap, !25, !"__param_str_fn_cap", i1 false, i1 false}
!72 = !{ptr @.str.1, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 92, i32 23}
!74 = !{ptr @fn_cap, !75, !"fn_cap", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 92, i32 14}
!76 = !{ptr @__param_str_fn_cntl, !30, !"__param_str_fn_cntl", i1 false, i1 false}
!77 = !{ptr @.str.2, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 96, i32 24}
!79 = !{ptr @fn_cntl, !80, !"fn_cntl", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 96, i32 14}
!81 = !{ptr @__param_str_req_buf_size, !35, !"__param_str_req_buf_size", i1 false, i1 false}
!82 = !{ptr @req_buf_size, !83, !"req_buf_size", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 100, i32 12}
!84 = !{ptr @__param_str_req_count, !40, !"__param_str_req_count", i1 false, i1 false}
!85 = !{ptr @req_count, !86, !"req_count", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 104, i32 12}
!87 = !{ptr @__param_str_audio_buf_size, !45, !"__param_str_audio_buf_size", i1 false, i1 false}
!88 = !{ptr @audio_buf_size, !89, !"audio_buf_size", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 108, i32 12}
!90 = !{ptr @.str.3, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 352, i32 11}
!92 = !{ptr @audio_driver, !93, !"audio_driver", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 351, i32 36}
!94 = !{ptr @device_desc, !95, !"device_desc", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 153, i32 37}
!96 = !{ptr @audio_strings, !97, !"audio_strings", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 128, i32 35}
!98 = !{ptr @stringtab_dev, !99, !"stringtab_dev", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 123, i32 34}
!100 = !{ptr @.str.4, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 117, i32 36}
!102 = !{ptr @.str.5, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 118, i32 31}
!104 = !{ptr @strings_dev, !105, !"strings_dev", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 116, i32 26}
!106 = !{ptr @.str.6, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 257, i32 38}
!108 = !{ptr @.str.7, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 317, i32 2}
!110 = !{ptr @.str.8, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.9, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.10, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.11, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @audio_bind._entry, !109, !"_entry", i1 false, i1 false}
!115 = !{ptr @audio_bind._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.12, !109, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @fi_uac1, !118, !"fi_uac1", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 137, i32 38}
!119 = !{ptr @otg_desc, !120, !"otg_desc", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 183, i32 44}
!121 = !{ptr @audio_config_driver, !122, !"audio_config_driver", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 227, i32 33}
!123 = !{ptr @f_uac1, !124, !"f_uac1", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/legacy/audio.c", i32 138, i32 29}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
