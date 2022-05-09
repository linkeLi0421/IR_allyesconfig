; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/zero.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/zero.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.usb_zero_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.f_ss_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.f_lb_opts = type { %struct.usb_function_instance, i32, i32, %struct.mutex, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }

@__param_str_idVendor = internal constant [16 x i8] c"g_zero.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [32 x i8] c"g_zero.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [35 x i8] c"g_zero.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [17 x i8] c"g_zero.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [33 x i8] c"g_zero.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [37 x i8] c"g_zero.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [17 x i8] c"g_zero.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [33 x i8] c"g_zero.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [47 x i8] c"g_zero.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [21 x i8] c"g_zero.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [36 x i8] c"g_zero.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [46 x i8] c"g_zero.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [21 x i8] c"g_zero.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [36 x i8] c"g_zero.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [50 x i8] c"g_zero.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [16 x i8] c"g_zero.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [31 x i8] c"g_zero.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [40 x i8] c"g_zero.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_loopdefault = internal constant [19 x i8] c"g_zero.loopdefault\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@loopdefault = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_loopdefault = internal constant %struct.kernel_param { ptr @__param_str_loopdefault, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @loopdefault } }, section "__param", align 4
@__UNIQUE_ID_loopdefaulttype240 = internal constant [33 x i8] c"g_zero.parmtype=loopdefault:bool\00", section ".modinfo", align 1
@__param_str_autoresume = internal constant [18 x i8] c"g_zero.autoresume\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@autoresume = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_autoresume = internal constant %struct.kernel_param { ptr @__param_str_autoresume, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @autoresume } }, section "__param", align 4
@__UNIQUE_ID_autoresumetype241 = internal constant [32 x i8] c"g_zero.parmtype=autoresume:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_autoresume242 = internal constant [61 x i8] c"g_zero.parm=autoresume:zero, or seconds before remote wakeup\00", section ".modinfo", align 1
@__param_str_max_autoresume = internal constant [22 x i8] c"g_zero.max_autoresume\00", align 1
@max_autoresume = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_autoresume = internal constant %struct.kernel_param { ptr @__param_str_max_autoresume, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @max_autoresume } }, section "__param", align 4
@__UNIQUE_ID_max_autoresumetype243 = internal constant [36 x i8] c"g_zero.parmtype=max_autoresume:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_autoresume244 = internal constant [64 x i8] c"g_zero.parm=max_autoresume:maximum seconds before remote wakeup\00", section ".modinfo", align 1
@__param_str_autoresume_interval_ms = internal constant [30 x i8] c"g_zero.autoresume_interval_ms\00", align 1
@autoresume_interval_ms = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_autoresume_interval_ms = internal constant %struct.kernel_param { ptr @__param_str_autoresume_interval_ms, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @autoresume_interval_ms } }, section "__param", align 4
@__UNIQUE_ID_autoresume_interval_mstype245 = internal constant [44 x i8] c"g_zero.parmtype=autoresume_interval_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_autoresume_interval_ms246 = internal constant [85 x i8] c"g_zero.parm=autoresume_interval_ms:milliseconds to increase successive wakeup delays\00", section ".modinfo", align 1
@__param_str_buflen = internal constant [14 x i8] c"g_zero.buflen\00", align 1
@gzero_options = internal global { %struct.usb_zero_options, [60 x i8] } { %struct.usb_zero_options { i32 0, i32 4, i32 1024, i32 0, i32 0, i32 4096, i32 32, i32 1, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__param_buflen = internal constant %struct.kernel_param { ptr @__param_str_buflen, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 20) } }, section "__param", align 4
@__UNIQUE_ID_buflentype250 = internal constant [28 x i8] c"g_zero.parmtype=buflen:uint\00", section ".modinfo", align 1
@__param_str_pattern = internal constant [15 x i8] c"g_zero.pattern\00", align 1
@__param_pattern = internal constant %struct.kernel_param { ptr @__param_str_pattern, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @gzero_options } }, section "__param", align 4
@__UNIQUE_ID_patterntype251 = internal constant [29 x i8] c"g_zero.parmtype=pattern:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pattern252 = internal constant [56 x i8] c"g_zero.parm=pattern:0 = all zeroes, 1 = mod63, 2 = none\00", section ".modinfo", align 1
@__param_str_isoc_interval = internal constant [21 x i8] c"g_zero.isoc_interval\00", align 1
@__param_isoc_interval = internal constant %struct.kernel_param { ptr @__param_str_isoc_interval, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_isoc_intervaltype253 = internal constant [35 x i8] c"g_zero.parmtype=isoc_interval:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_interval254 = internal constant [33 x i8] c"g_zero.parm=isoc_interval:1 - 16\00", section ".modinfo", align 1
@__param_str_isoc_maxpacket = internal constant [22 x i8] c"g_zero.isoc_maxpacket\00", align 1
@__param_isoc_maxpacket = internal constant %struct.kernel_param { ptr @__param_str_isoc_maxpacket, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_isoc_maxpackettype255 = internal constant [36 x i8] c"g_zero.parmtype=isoc_maxpacket:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_maxpacket256 = internal constant [59 x i8] c"g_zero.parm=isoc_maxpacket:0 - 1023 (fs), 0 - 1024 (hs/ss)\00", section ".modinfo", align 1
@__param_str_isoc_mult = internal constant [17 x i8] c"g_zero.isoc_mult\00", align 1
@__param_isoc_mult = internal constant %struct.kernel_param { ptr @__param_str_isoc_mult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_isoc_multtype257 = internal constant [31 x i8] c"g_zero.parmtype=isoc_mult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_mult258 = internal constant [41 x i8] c"g_zero.parm=isoc_mult:0 - 2 (hs/ss only)\00", section ".modinfo", align 1
@__param_str_isoc_maxburst = internal constant [21 x i8] c"g_zero.isoc_maxburst\00", align 1
@__param_isoc_maxburst = internal constant %struct.kernel_param { ptr @__param_str_isoc_maxburst, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_isoc_maxbursttype259 = internal constant [35 x i8] c"g_zero.parmtype=isoc_maxburst:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_maxburst260 = internal constant [43 x i8] c"g_zero.parm=isoc_maxburst:0 - 15 (ss only)\00", section ".modinfo", align 1
@__param_str_qlen = internal constant [12 x i8] c"g_zero.qlen\00", align 1
@__param_qlen = internal constant %struct.kernel_param { ptr @__param_str_qlen, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_qlentype261 = internal constant [26 x i8] c"g_zero.parmtype=qlen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qlen262 = internal constant [41 x i8] c"g_zero.parm=qlen:depth of loopback queue\00", section ".modinfo", align 1
@__param_str_ss_bulk_qlen = internal constant [20 x i8] c"g_zero.ss_bulk_qlen\00", align 1
@__param_ss_bulk_qlen = internal constant %struct.kernel_param { ptr @__param_str_ss_bulk_qlen, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 28) } }, section "__param", align 4
@__UNIQUE_ID_ss_bulk_qlentype263 = internal constant [34 x i8] c"g_zero.parmtype=ss_bulk_qlen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bulk_qlen264 = internal constant [66 x i8] c"g_zero.parm=bulk_qlen:depth of sourcesink queue for bulk transfer\00", section ".modinfo", align 1
@__param_str_ss_iso_qlen = internal constant [19 x i8] c"g_zero.ss_iso_qlen\00", align 1
@__param_ss_iso_qlen = internal constant %struct.kernel_param { ptr @__param_str_ss_iso_qlen, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @gzero_options, i64 32) } }, section "__param", align 4
@__UNIQUE_ID_ss_iso_qlentype265 = internal constant [33 x i8] c"g_zero.parmtype=ss_iso_qlen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_iso_qlen266 = internal constant [64 x i8] c"g_zero.parm=iso_qlen:depth of sourcesink queue for iso transfer\00", section ".modinfo", align 1
@__initcall__kmod_g_zero__267_425_zero_driver_init6 = internal global ptr @zero_driver_init, section ".initcall6.init", align 4
@zero_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @zero_bind, ptr @zero_unbind, ptr null, ptr @zero_suspend, ptr @zero_resume, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zero_driver_exit = internal global ptr @zero_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author268 = internal constant [29 x i8] c"g_zero.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [45 x i8] c"g_zero.file=drivers/usb/gadget/legacy/g_zero\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [19 x i8] c"g_zero.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 -1, i8 0, i8 0, i8 0, i16 2586, i16 -8774, i16 0, i8 0, i8 0, i8 0, i8 2 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [6 x %struct.usb_string], [48 x i8] } { [6 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @longname }, %struct.usb_string { i8 0, ptr @serial }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@longname = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Gadget Zero\00", [20 x i8] zeroinitializer }, align 32
@serial = internal global { [33 x i8], [63 x i8] } { [33 x i8] c"0123456789.0123456789.0123456789\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"source and sink data\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loop input to output\00", [43 x i8] zeroinitializer }, align 32
@autoresume_cdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zero_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@autoresume_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&autoresume_timer)\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SourceSink\00", [21 x i8] zeroinitializer }, align 32
@func_inst_ss = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@func_ss = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loopback\00", [23 x i8] zeroinitializer }, align 32
@func_inst_lb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@func_lb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sourcesink_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.14, ptr null, ptr null, ptr null, ptr @ss_config_setup, i8 3, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@loopback_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@autoresume_step_ms = internal global { i32, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@zero_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 377, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, version: Cinco de Mayo 2008\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zero_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/gadget/legacy/zero.c\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zero_bind._entry_ptr = internal global ptr @zero_bind._entry, section ".printk_index", align 4
@zero_autoresume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 170, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s --> %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zero_autoresume\00", [16 x i8] zeroinitializer }, align 32
@zero_autoresume._entry_ptr = internal global ptr @zero_autoresume._entry, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"source/sink\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zero_suspend.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.9, ptr @.str.18, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"g_zero\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zero_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspend, wakeup in %d milliseconds\0A\00", [60 x i8] zeroinitializer }, align 32
@zero_suspend.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.9, ptr @.str.19, i8 0, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@zero_resume.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.9, ptr @.str.19, i8 0, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zero_resume\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 47, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"loopdefault\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 59, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"autoresume\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 92, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"max_autoresume\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 97, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"autoresume_interval_ms\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 102, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"gzero_options\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 62, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"zero_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 414, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 415, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 110, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 145, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 140, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 131, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 132, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 51, i32 19 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 126, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 135, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 136, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"autoresume_cdev\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 153, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"autoresume_timer\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 152, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 283, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 285, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"func_inst_ss\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 210, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"func_ss\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 209, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 305, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"func_inst_lb\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 252, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"func_lb\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 251, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"sourcesink_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 224, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"loopback_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 202, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"autoresume_step_ms\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 107, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 122, i32 44 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 377, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 170, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 225, i32 28 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 203, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 186, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 191, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [36 x i8] c"../drivers/usb/gadget/legacy/zero.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 196, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_autoresume242, ptr @__UNIQUE_ID_autoresume_interval_ms246, ptr @__UNIQUE_ID_autoresume_interval_mstype245, ptr @__UNIQUE_ID_autoresumetype241, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_buflentype250, ptr @__UNIQUE_ID_bulk_qlen264, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_iso_qlen266, ptr @__UNIQUE_ID_isoc_interval254, ptr @__UNIQUE_ID_isoc_intervaltype253, ptr @__UNIQUE_ID_isoc_maxburst260, ptr @__UNIQUE_ID_isoc_maxbursttype259, ptr @__UNIQUE_ID_isoc_maxpacket256, ptr @__UNIQUE_ID_isoc_maxpackettype255, ptr @__UNIQUE_ID_isoc_mult258, ptr @__UNIQUE_ID_isoc_multtype257, ptr @__UNIQUE_ID_license270, ptr @__UNIQUE_ID_loopdefaulttype240, ptr @__UNIQUE_ID_max_autoresume244, ptr @__UNIQUE_ID_max_autoresumetype243, ptr @__UNIQUE_ID_pattern252, ptr @__UNIQUE_ID_patterntype251, ptr @__UNIQUE_ID_qlen262, ptr @__UNIQUE_ID_qlentype261, ptr @__UNIQUE_ID_ss_bulk_qlentype263, ptr @__UNIQUE_ID_ss_iso_qlentype265, ptr @__exitcall_zero_driver_exit, ptr @__initcall__kmod_g_zero__267_425_zero_driver_init6, ptr @__param_autoresume, ptr @__param_autoresume_interval_ms, ptr @__param_bcdDevice, ptr @__param_buflen, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_isoc_interval, ptr @__param_isoc_maxburst, ptr @__param_isoc_maxpacket, ptr @__param_isoc_mult, ptr @__param_loopdefault, ptr @__param_max_autoresume, ptr @__param_pattern, ptr @__param_qlen, ptr @__param_ss_bulk_qlen, ptr @__param_ss_iso_qlen, ptr @zero_autoresume._entry, ptr @zero_autoresume._entry_ptr, ptr @zero_bind._entry, ptr @zero_bind._entry_ptr, ptr @zero_driver_exit, ptr @coverwrite, ptr @loopdefault, ptr @autoresume, ptr @max_autoresume, ptr @autoresume_interval_ms, ptr @gzero_options, ptr @zero_driver, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.1, ptr @longname, ptr @serial, ptr @.str.2, ptr @.str.3, ptr @autoresume_cdev, ptr @zero_bind.__key, ptr @autoresume_timer, ptr @.str.4, ptr @.str.5, ptr @func_inst_ss, ptr @func_ss, ptr @.str.6, ptr @func_inst_lb, ptr @func_lb, ptr @sourcesink_driver, ptr @loopback_driver, ptr @autoresume_step_ms, ptr @otg_desc, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopdefault to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoresume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_autoresume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoresume_interval_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gzero_options to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @longname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoresume_cdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoresume_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_inst_ss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_ss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_inst_lb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_lb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sourcesink_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoresume_step_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_autoresume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zero_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @zero_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zero_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @zero_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zero_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup77

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @strings_dev, align 4
  store i8 %0, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %1 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %1, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %2 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 2), align 4
  store i8 %2, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 12), align 1
  store ptr %cdev, ptr @autoresume_cdev, align 4
  tail call void @init_timer_key(ptr noundef nonnull @autoresume_timer, ptr noundef nonnull @zero_autoresume, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @zero_bind.__key) #4
  %call1 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.5) #4
  store ptr %call1, ptr @func_inst_ss, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup77

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr @gzero_options, align 4
  %pattern = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pattern, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 1), align 4
  %isoc_interval = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %isoc_interval, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 2), align 4
  %isoc_maxpacket = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %isoc_maxpacket, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 3), align 4
  %isoc_mult = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 4
  %11 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %isoc_mult, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 4), align 4
  %isoc_maxburst = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 5
  %13 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %isoc_maxburst, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 5), align 4
  %bulk_buflen = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 6
  %15 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bulk_buflen, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 7), align 4
  %bulk_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 7
  %17 = ptrtoint ptr %bulk_qlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bulk_qlen, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 8), align 4
  %iso_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %call1, i32 0, i32 8
  %19 = ptrtoint ptr %iso_qlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %iso_qlen, align 4
  %call6 = tail call ptr @usb_get_function(ptr noundef %call1) #4
  store ptr %call6, ptr @func_ss, align 4
  %cmp.i106 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %call6 to i32
  br label %err_put_func_inst_ss

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.6) #4
  store ptr %call11, ptr @func_inst_lb, align 4
  %cmp.i107 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %call11 to i32
  br label %err_put_func_ss

if.end15:                                         ; preds = %if.end10
  %22 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 5), align 4
  %bulk_buflen19 = getelementptr inbounds %struct.f_lb_opts, ptr %call11, i32 0, i32 1
  %23 = ptrtoint ptr %bulk_buflen19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bulk_buflen19, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.usb_zero_options, ptr @gzero_options, i32 0, i32 6), align 4
  %qlen = getelementptr inbounds %struct.f_lb_opts, ptr %call11, i32 0, i32 2
  %25 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %qlen, align 4
  %call20 = tail call ptr @usb_get_function(ptr noundef %call11) #4
  store ptr %call20, ptr @func_lb, align 4
  %cmp.i108 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %call20 to i32
  br label %err_put_func_inst_lb

if.end24:                                         ; preds = %if.end15
  %27 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3), align 4
  store i8 %27, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 6), align 1
  %28 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 4), align 4
  store i8 %28, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 6), align 1
  %29 = load i8, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 7), align 2
  %30 = and i8 %29, -33
  store i8 %30, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 7), align 2
  %31 = load i8, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 7), align 2
  %32 = and i8 %31, -33
  store i8 %32, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 7), align 2
  store ptr null, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 2), align 4
  %33 = load i32, ptr @autoresume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.end24.if.end35_crit_edge, label %if.then29

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %34 = or i8 %29, 32
  store i8 %34, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 7), align 2
  %35 = or i8 %31, 32
  store i8 %35, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 7), align 2
  %mul = mul i32 %33, 1000
  store i32 %mul, ptr @autoresume_step_ms, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end24.if.end35_crit_edge
  %36 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdev, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %39 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool37.not = icmp eq i32 %39, 0
  br i1 %tobool37.not, label %if.end35.if.end55_crit_edge, label %if.then38

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then38:                                        ; preds = %if.end35
  %40 = load ptr, ptr @otg_desc, align 4
  %tobool39.not = icmp eq ptr %40, null
  br i1 %tobool39.not, label %if.then40, label %if.then38.if.end48_crit_edge

if.then38.if.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then40:                                        ; preds = %if.then38
  %call42 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %37) #4
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then40.err_conf_flb_crit_edge, label %cleanup.thread

if.then40.err_conf_flb_crit_edge:                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_conf_flb

cleanup.thread:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cdev, align 4
  %call47 = tail call i32 @usb_otg_descriptor_init(ptr noundef %42, ptr noundef nonnull %call42) #4
  store ptr %call42, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %if.then38.if.end48_crit_edge
  store ptr @otg_desc, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 2), align 4
  %43 = load i8, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 7), align 2
  %44 = or i8 %43, 32
  store i8 %44, ptr getelementptr inbounds (%struct.usb_configuration, ptr @sourcesink_driver, i32 0, i32 7), align 2
  store ptr @otg_desc, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 2), align 4
  %45 = load i8, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 7), align 2
  %46 = or i8 %45, 32
  store i8 %46, ptr getelementptr inbounds (%struct.usb_configuration, ptr @loopback_driver, i32 0, i32 7), align 2
  br label %if.end55

if.end55:                                         ; preds = %if.end48, %if.end35.if.end55_crit_edge
  %47 = load i8, ptr @loopdefault, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool56.not = icmp eq i8 %47, 0
  %sourcesink_driver.loopback_driver = select i1 %tobool56.not, ptr @sourcesink_driver, ptr @loopback_driver
  %loopback_driver.sourcesink_driver = select i1 %tobool56.not, ptr @loopback_driver, ptr @sourcesink_driver
  %call60 = tail call i32 @usb_add_config_only(ptr noundef %cdev, ptr noundef nonnull %sourcesink_driver.loopback_driver) #4
  %call61 = tail call i32 @usb_add_config_only(ptr noundef %cdev, ptr noundef nonnull %loopback_driver.sourcesink_driver) #4
  %48 = load ptr, ptr @func_ss, align 4
  %call63 = tail call i32 @usb_add_function(ptr noundef nonnull @sourcesink_driver, ptr noundef %48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end55.err_free_otg_desc_crit_edge

if.end55.err_free_otg_desc_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_otg_desc

if.end66:                                         ; preds = %if.end55
  %49 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cdev, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %50) #4
  %51 = load ptr, ptr @func_lb, align 4
  %call68 = tail call i32 @usb_add_function(ptr noundef nonnull @loopback_driver, ptr noundef %51) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.err_free_otg_desc_crit_edge

if.end66.err_free_otg_desc_crit_edge:             ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_otg_desc

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdev, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %53) #4
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %54 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %55, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @longname) #7
  br label %cleanup77

err_free_otg_desc:                                ; preds = %if.end66.err_free_otg_desc_crit_edge, %if.end55.err_free_otg_desc_crit_edge
  %status.1 = phi i32 [ %call63, %if.end55.err_free_otg_desc_crit_edge ], [ %call68, %if.end66.err_free_otg_desc_crit_edge ]
  %56 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %56) #4
  store ptr null, ptr @otg_desc, align 4
  br label %err_conf_flb

err_conf_flb:                                     ; preds = %err_free_otg_desc, %if.then40.err_conf_flb_crit_edge
  %status.2 = phi i32 [ %status.1, %err_free_otg_desc ], [ -12, %if.then40.err_conf_flb_crit_edge ]
  %57 = load ptr, ptr @func_lb, align 4
  tail call void @usb_put_function(ptr noundef %57) #4
  store ptr null, ptr @func_lb, align 4
  br label %err_put_func_inst_lb

err_put_func_inst_lb:                             ; preds = %err_conf_flb, %if.then22
  %status.3 = phi i32 [ %26, %if.then22 ], [ %status.2, %err_conf_flb ]
  %58 = load ptr, ptr @func_inst_lb, align 4
  tail call void @usb_put_function_instance(ptr noundef %58) #4
  store ptr null, ptr @func_inst_lb, align 4
  br label %err_put_func_ss

err_put_func_ss:                                  ; preds = %err_put_func_inst_lb, %if.then13
  %status.4 = phi i32 [ %21, %if.then13 ], [ %status.3, %err_put_func_inst_lb ]
  %59 = load ptr, ptr @func_ss, align 4
  tail call void @usb_put_function(ptr noundef %59) #4
  store ptr null, ptr @func_ss, align 4
  br label %err_put_func_inst_ss

err_put_func_inst_ss:                             ; preds = %err_put_func_ss, %if.then8
  %status.5 = phi i32 [ %20, %if.then8 ], [ %status.4, %err_put_func_ss ]
  %60 = load ptr, ptr @func_inst_ss, align 4
  tail call void @usb_put_function_instance(ptr noundef %60) #4
  store ptr null, ptr @func_inst_ss, align 4
  br label %cleanup77

cleanup77:                                        ; preds = %err_put_func_inst_ss, %if.end71, %if.then3, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %status.5, %err_put_func_inst_ss ], [ 0, %if.end71 ], [ %call, %entry.cleanup77_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zero_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @autoresume_timer) #4
  %0 = load ptr, ptr @func_ss, align 4
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
  %1 = load ptr, ptr @func_inst_ss, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #4
  %2 = load ptr, ptr @func_lb, align 4
  %tobool.not.i5 = icmp eq ptr %2, null
  %cmp.i6 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i7 = or i1 %tobool.not.i5, %cmp.i6
  br i1 %spec.select.i7, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function(ptr noundef nonnull %2) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %3 = load ptr, ptr @func_inst_lb, align 4
  tail call void @usb_put_function_instance(ptr noundef %3) #4
  %4 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %4) #4
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zero_suspend(ptr nocapture noundef readonly %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.if.end36_crit_edge, label %if.end

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @autoresume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body17, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr @max_autoresume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp ne i32 %5, 0
  %.pr = load i32, ptr @autoresume_step_ms, align 4
  %mul = mul i32 %5, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr, i32 %mul)
  %cmp3 = icmp ugt i32 %.pr, %mul
  %or.cond = select i1 %tobool2.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.then1.if.end6_crit_edge

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %mul5 = mul i32 %4, 1000
  store i32 %mul5, ptr @autoresume_step_ms, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then1.if.end6_crit_edge
  %6 = phi i32 [ %mul5, %if.then4 ], [ %.pr, %if.then1.if.end6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #4
  %add = add i32 %call2.i, %7
  %call7 = tail call i32 @mod_timer(ptr noundef nonnull @autoresume_timer, i32 noundef %add) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zero_suspend.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zero_suspend, %do.end)) #4
          to label %if.then13 [label %do.end], !srcloc !205

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %10 = load i32, ptr @autoresume_step_ms, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zero_suspend.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %10) #4
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end6
  %11 = load i32, ptr @autoresume_interval_ms, align 4
  %12 = load i32, ptr @autoresume_step_ms, align 4
  %add16 = add i32 %12, %11
  store i32 %add16, ptr @autoresume_step_ms, align 4
  br label %if.end36

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zero_suspend.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zero_suspend, %if.end36)) #4
          to label %if.then31 [label %if.end36], !srcloc !205

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdev, align 4
  %dev33 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zero_suspend.__UNIQUE_ID_ddebug248, ptr noundef %dev33, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body17, %do.end, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zero_resume(ptr nocapture noundef readonly %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zero_resume.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zero_resume, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !205

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zero_resume.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @del_timer(ptr noundef nonnull @autoresume_timer) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zero_autoresume(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @autoresume_cdev, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %config = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @usb_gadget_wakeup(ptr noundef %2) #4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config_only(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ss_config_setup(ptr nocapture noundef readnone %c, ptr noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bRequest, align 1
  %.off = add i8 %1, -91
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load ptr, ptr @func_ss, align 4
  %setup = getelementptr inbounds %struct.usb_function, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setup, align 4
  %call = tail call i32 %4(ptr noundef %2, ptr noundef %ctrl) #4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !96, !97, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !114, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !147, !149, !150, !151, !152, !153, !154, !155, !157, !159, !161, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 47, i32 1}
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
!19 = !{ptr @__param_loopdefault, !20, !"__param_loopdefault", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 60, i32 1}
!21 = !{ptr @__UNIQUE_ID_loopdefaulttype240, !20, !"__UNIQUE_ID_loopdefaulttype240", i1 false, i1 false}
!22 = !{ptr @__param_autoresume, !23, !"__param_autoresume", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 93, i32 1}
!24 = !{ptr @__UNIQUE_ID_autoresumetype241, !23, !"__UNIQUE_ID_autoresumetype241", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_autoresume242, !26, !"__UNIQUE_ID_autoresume242", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 94, i32 1}
!27 = !{ptr @__param_max_autoresume, !28, !"__param_max_autoresume", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 98, i32 1}
!29 = !{ptr @__UNIQUE_ID_max_autoresumetype243, !28, !"__UNIQUE_ID_max_autoresumetype243", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_max_autoresume244, !31, !"__UNIQUE_ID_max_autoresume244", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 99, i32 1}
!32 = !{ptr @__param_autoresume_interval_ms, !33, !"__param_autoresume_interval_ms", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 103, i32 1}
!34 = !{ptr @__UNIQUE_ID_autoresume_interval_mstype245, !33, !"__UNIQUE_ID_autoresume_interval_mstype245", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_autoresume_interval_ms246, !36, !"__UNIQUE_ID_autoresume_interval_ms246", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 104, i32 1}
!37 = !{ptr @__param_buflen, !38, !"__param_buflen", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 232, i32 1}
!39 = !{ptr @__UNIQUE_ID_buflentype250, !38, !"__UNIQUE_ID_buflentype250", i1 false, i1 false}
!40 = !{ptr @__param_pattern, !41, !"__param_pattern", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 233, i32 1}
!42 = !{ptr @__UNIQUE_ID_patterntype251, !41, !"__UNIQUE_ID_patterntype251", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_pattern252, !44, !"__UNIQUE_ID_pattern252", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 234, i32 1}
!45 = !{ptr @__param_isoc_interval, !46, !"__param_isoc_interval", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 236, i32 1}
!47 = !{ptr @__UNIQUE_ID_isoc_intervaltype253, !46, !"__UNIQUE_ID_isoc_intervaltype253", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_isoc_interval254, !49, !"__UNIQUE_ID_isoc_interval254", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 238, i32 1}
!50 = !{ptr @__param_isoc_maxpacket, !51, !"__param_isoc_maxpacket", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 240, i32 1}
!52 = !{ptr @__UNIQUE_ID_isoc_maxpackettype255, !51, !"__UNIQUE_ID_isoc_maxpackettype255", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_isoc_maxpacket256, !54, !"__UNIQUE_ID_isoc_maxpacket256", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 242, i32 1}
!55 = !{ptr @__param_isoc_mult, !56, !"__param_isoc_mult", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 244, i32 1}
!57 = !{ptr @__UNIQUE_ID_isoc_multtype257, !56, !"__UNIQUE_ID_isoc_multtype257", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_isoc_mult258, !59, !"__UNIQUE_ID_isoc_mult258", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 245, i32 1}
!60 = !{ptr @__param_isoc_maxburst, !61, !"__param_isoc_maxburst", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 247, i32 1}
!62 = !{ptr @__UNIQUE_ID_isoc_maxbursttype259, !61, !"__UNIQUE_ID_isoc_maxbursttype259", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_isoc_maxburst260, !64, !"__UNIQUE_ID_isoc_maxburst260", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 249, i32 1}
!65 = !{ptr @__param_qlen, !66, !"__param_qlen", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 254, i32 1}
!67 = !{ptr @__UNIQUE_ID_qlentype261, !66, !"__UNIQUE_ID_qlentype261", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_qlen262, !69, !"__UNIQUE_ID_qlen262", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 255, i32 1}
!70 = !{ptr @__param_ss_bulk_qlen, !71, !"__param_ss_bulk_qlen", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 257, i32 1}
!72 = !{ptr @__UNIQUE_ID_ss_bulk_qlentype263, !71, !"__UNIQUE_ID_ss_bulk_qlentype263", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_bulk_qlen264, !74, !"__UNIQUE_ID_bulk_qlen264", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 259, i32 1}
!75 = !{ptr @__param_ss_iso_qlen, !76, !"__param_ss_iso_qlen", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 261, i32 1}
!77 = !{ptr @__UNIQUE_ID_ss_iso_qlentype265, !76, !"__UNIQUE_ID_ss_iso_qlentype265", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_iso_qlen266, !79, !"__UNIQUE_ID_iso_qlen266", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 263, i32 1}
!80 = !{ptr @__initcall__kmod_g_zero__267_425_zero_driver_init6, !81, !"__initcall__kmod_g_zero__267_425_zero_driver_init6", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 425, i32 1}
!82 = !{ptr @__exitcall_zero_driver_exit, !81, !"__exitcall_zero_driver_exit", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_author268, !84, !"__UNIQUE_ID_author268", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 427, i32 1}
!85 = !{ptr @__UNIQUE_ID_file269, !86, !"__UNIQUE_ID_file269", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 428, i32 1}
!87 = !{ptr @__UNIQUE_ID_license270, !86, !"__UNIQUE_ID_license270", i1 false, i1 false}
!88 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!89 = !{ptr @max_autoresume, !90, !"max_autoresume", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 97, i32 17}
!91 = !{ptr @autoresume_interval_ms, !92, !"autoresume_interval_ms", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 102, i32 17}
!93 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!94 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!95 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!96 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!97 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!98 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!99 = !{ptr @__param_str_loopdefault, !20, !"__param_str_loopdefault", i1 false, i1 false}
!100 = !{ptr @loopdefault, !101, !"loopdefault", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 59, i32 13}
!102 = !{ptr @__param_str_autoresume, !23, !"__param_str_autoresume", i1 false, i1 false}
!103 = !{ptr @autoresume, !104, !"autoresume", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 92, i32 17}
!105 = !{ptr @__param_str_max_autoresume, !28, !"__param_str_max_autoresume", i1 false, i1 false}
!106 = !{ptr @__param_str_autoresume_interval_ms, !33, !"__param_str_autoresume_interval_ms", i1 false, i1 false}
!107 = !{ptr @__param_str_buflen, !38, !"__param_str_buflen", i1 false, i1 false}
!108 = !{ptr @gzero_options, !109, !"gzero_options", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 62, i32 32}
!110 = !{ptr @__param_str_pattern, !41, !"__param_str_pattern", i1 false, i1 false}
!111 = !{ptr @__param_str_isoc_interval, !46, !"__param_str_isoc_interval", i1 false, i1 false}
!112 = !{ptr @__param_str_isoc_maxpacket, !51, !"__param_str_isoc_maxpacket", i1 false, i1 false}
!113 = !{ptr @__param_str_isoc_mult, !56, !"__param_str_isoc_mult", i1 false, i1 false}
!114 = !{ptr @__param_str_isoc_maxburst, !61, !"__param_str_isoc_maxburst", i1 false, i1 false}
!115 = !{ptr @__param_str_qlen, !66, !"__param_str_qlen", i1 false, i1 false}
!116 = !{ptr @__param_str_ss_bulk_qlen, !71, !"__param_str_ss_bulk_qlen", i1 false, i1 false}
!117 = !{ptr @__param_str_ss_iso_qlen, !76, !"__param_str_ss_iso_qlen", i1 false, i1 false}
!118 = !{ptr @.str, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 415, i32 11}
!120 = !{ptr @zero_driver, !121, !"zero_driver", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 414, i32 36}
!122 = !{ptr @device_desc, !123, !"device_desc", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 110, i32 37}
!124 = !{ptr @dev_strings, !125, !"dev_strings", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 145, i32 35}
!126 = !{ptr @stringtab_dev, !127, !"stringtab_dev", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 140, i32 34}
!128 = !{ptr @.str.1, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 132, i32 36}
!130 = !{ptr @.str.2, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 135, i32 26}
!132 = !{ptr @.str.3, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 136, i32 26}
!134 = !{ptr @strings_dev, !135, !"strings_dev", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 131, i32 26}
!136 = !{ptr @longname, !137, !"longname", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 51, i32 19}
!138 = !{ptr @serial, !139, !"serial", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 126, i32 13}
!140 = !{ptr @zero_bind.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 283, i32 2}
!142 = !{ptr @.str.4, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.5, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 285, i32 43}
!145 = !{ptr @.str.6, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 305, i32 43}
!147 = !{ptr @.str.7, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 377, i32 2}
!149 = !{ptr @.str.8, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.9, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.10, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.11, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @zero_bind._entry, !148, !"_entry", i1 false, i1 false}
!154 = !{ptr @zero_bind._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @autoresume_cdev, !156, !"autoresume_cdev", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 153, i32 34}
!157 = !{ptr @autoresume_timer, !158, !"autoresume_timer", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 152, i32 26}
!159 = !{ptr @.str.12, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 170, i32 3}
!161 = !{ptr @.str.13, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @zero_autoresume._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @zero_autoresume._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @func_inst_ss, !165, !"func_inst_ss", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 210, i32 38}
!166 = !{ptr @func_ss, !167, !"func_ss", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 209, i32 29}
!168 = !{ptr @func_inst_lb, !169, !"func_inst_lb", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 252, i32 38}
!170 = !{ptr @func_lb, !171, !"func_lb", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 251, i32 29}
!172 = !{ptr @.str.14, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 225, i32 28}
!174 = !{ptr @sourcesink_driver, !175, !"sourcesink_driver", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 224, i32 33}
!176 = !{ptr @.str.15, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 203, i32 20}
!178 = !{ptr @loopback_driver, !179, !"loopback_driver", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 202, i32 33}
!180 = !{ptr @autoresume_step_ms, !181, !"autoresume_step_ms", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 107, i32 17}
!182 = !{ptr @otg_desc, !183, !"otg_desc", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 122, i32 44}
!184 = !{ptr @.str.16, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 186, i32 3}
!186 = !{ptr @.str.17, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.18, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @zero_suspend.__UNIQUE_ID_ddebug247, !185, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!189 = !{ptr @.str.19, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 191, i32 3}
!191 = !{ptr @zero_suspend.__UNIQUE_ID_ddebug248, !190, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!192 = !{ptr @.str.20, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/gadget/legacy/zero.c", i32 196, i32 2}
!194 = !{ptr @zero_resume.__UNIQUE_ID_ddebug249, !193, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i8 0, i8 2}
!205 = !{i64 2148702733, i64 2148702738, i64 2148702751, i64 2148702795, i64 2148702829, i64 2148702850}
