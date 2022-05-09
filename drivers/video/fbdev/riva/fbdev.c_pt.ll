; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/riva/fbdev.c_pt.bc'
source_filename = "../drivers/video/fbdev/riva/fbdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i32, i32 }
%struct._riva_hw_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.105, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.105 = type { ptr }
%struct.riva_par = type { %struct._riva_hw_inst, [16 x i32], [16 x i32], ptr, i32, %struct.riva_regs, %struct.riva_regs, %struct.mutex, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, [3 x %struct.riva_i2c_chan] }
%struct._riva_hw_inst = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.riva_regs = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, %struct._riva_hw_state }
%struct.riva_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.87 = type { [4 x i32], i32, [187 x i32], i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.90 = type { [4 x i32], i32, [187 x i32], [63 x i32], i32, [64 x %struct.anon.91], [125 x i32], %struct.anon.92, i32, [64 x %struct.anon.93], [123 x i32], %struct.anon.94, i32, i32, i32, i32, [249 x i32], %struct.anon.95, i32, i32, i32, i32, i32, [248 x i32], %struct.anon.96, i32, i32, i32, i32, i32, i32 }
%struct.anon.91 = type { i32, i32 }
%struct.anon.92 = type { i32, i32 }
%struct.anon.93 = type { i32, i32 }
%struct.anon.94 = type { i32, i32 }
%struct.anon.95 = type { i32, i32 }
%struct.anon.96 = type { i32, i32 }
%struct.anon.89 = type { [4 x i32], i32, [187 x i32], i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.anon.86 = type { [4 x i32], i32, [189 x i32], i32, [1 x i32], i32, i32, [2 x i32] }
%struct.anon.85 = type { [4 x i32], i32, [187 x i32], i32 }

@__initcall__kmod_rivafb__305_2172_rivafb_init6 = internal global ptr @rivafb_init, section ".initcall6.init", align 4
@rivafb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rivafb_pci_tbl, ptr @rivafb_probe, ptr @rivafb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rivafb_exit = internal global ptr @rivafb_exit, section ".exitcall.exit", align 4
@__param_str_noaccel = internal constant [15 x i8] c"rivafb.noaccel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@noaccel = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype306 = internal constant [29 x i8] c"rivafb.parmtype=noaccel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel307 = internal constant [47 x i8] c"rivafb.parm=noaccel:bool: disable acceleration\00", section ".modinfo", align 1
@__param_str_flatpanel = internal constant [17 x i8] c"rivafb.flatpanel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@flatpanel = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_flatpanel = internal constant %struct.kernel_param { ptr @__param_str_flatpanel, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @flatpanel } }, section "__param", align 4
@__UNIQUE_ID_flatpaneltype308 = internal constant [30 x i8] c"rivafb.parmtype=flatpanel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flatpanel309 = internal constant [110 x i8] c"rivafb.parm=flatpanel:Enables experimental flat panel support for some chipsets. (0 or 1=enabled) (default=0)\00", section ".modinfo", align 1
@__param_str_forceCRTC = internal constant [17 x i8] c"rivafb.forceCRTC\00", align 1
@forceCRTC = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_forceCRTC = internal constant %struct.kernel_param { ptr @__param_str_forceCRTC, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @forceCRTC } }, section "__param", align 4
@__UNIQUE_ID_forceCRTCtype310 = internal constant [30 x i8] c"rivafb.parmtype=forceCRTC:int\00", section ".modinfo", align 1
@__UNIQUE_ID_forceCRTC311 = internal constant [115 x i8] c"rivafb.parm=forceCRTC:Forces usage of a particular CRTC in case autodetection fails. (0 or 1) (default=autodetect)\00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [14 x i8] c"rivafb.nomtrr\00", align 1
@nomtrr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nomtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype312 = internal constant [28 x i8] c"rivafb.parmtype=nomtrr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr313 = internal constant [71 x i8] c"rivafb.parm=nomtrr:Disables MTRR support (0 or 1=disabled) (default=0)\00", section ".modinfo", align 1
@__param_str_strictmode = internal constant [18 x i8] c"rivafb.strictmode\00", align 1
@strictmode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_strictmode = internal constant %struct.kernel_param { ptr @__param_str_strictmode, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @strictmode } }, section "__param", align 4
@__UNIQUE_ID_strictmodetype314 = internal constant [32 x i8] c"rivafb.parmtype=strictmode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_strictmode315 = internal constant [54 x i8] c"rivafb.parm=strictmode:Only use video modes from EDID\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [36 x i8] c"rivafb.author=Ani Joshi, maintainer\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [93 x i8] c"rivafb.description=Framebuffer driver for nVidia Riva 128, TNT, TNT2, and the GeForce series\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [44 x i8] c"rivafb.file=drivers/video/fbdev/riva/rivafb\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [19 x i8] c"rivafb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rivafb\00", [25 x i8] zeroinitializer }, align 32
@rivafb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s START\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rivafb_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/riva/fbdev.c\00", [63 x i8] zeroinitializer }, align 32
@rivafb_setup._entry_ptr = internal global ptr @rivafb_setup._entry, section ".printk_index", align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"forceCRTC\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flatpanel\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"backlight:\00", [21 x i8] zeroinitializer }, align 32
@backlight = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"strictmode\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rivafb_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s END\0A\00", [24 x i8] zeroinitializer }, align 32
@rivafb_setup._entry_ptr.13 = internal global ptr @rivafb_setup._entry.11, section ".printk_index", align 4
@rivafb_pci_tbl = internal constant { [43 x %struct.pci_device_id], [320 x i8] } { [43 x %struct.pci_device_id] [%struct.pci_device_id { i32 4818, i32 24, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 41, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 44, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 45, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 160, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 259, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 272, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 273, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 274, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 275, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 336, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 337, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 338, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 339, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 368, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 369, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 370, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 372, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 373, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 374, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 376, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 377, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 378, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 379, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 380, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 416, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 512, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 513, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 514, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 515, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 592, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 593, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 595, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 600, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 601, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 603, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 809, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [320 x i8] zeroinitializer }, align 32
@rivafb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.14, ptr @.str.3, i32 1898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rivafb_probe\00", [19 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr = internal global ptr @rivafb_probe._entry, section ".printk_index", align 4
@rivafb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Assertion failed! %s,%s,%s,line=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.17 = internal global ptr @rivafb_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pd != NULL\00", [21 x i8] zeroinitializer }, align 32
@rivafb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.3, i32 1917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rivafb: cannot enable PCI device\0A\00", [60 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.21 = internal global ptr @rivafb_probe._entry.19, section ".printk_index", align 4
@rivafb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.3, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013rivafb: cannot request PCI regions\0A\00", [58 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.24 = internal global ptr @rivafb_probe._entry.22, section ".printk_index", align 4
@rivafb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&default_par->open_lock\00", [40 x i8] zeroinitializer }, align 32
@rivafb_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.14, ptr @.str.3, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016rivafb: nVidia device/chipset %X\0A\00", [60 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.28 = internal global ptr @rivafb_probe._entry.26, section ".printk_index", align 4
@rivafb_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.14, ptr @.str.3, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rivafb: unknown NV_ARCH\0A\00", [37 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.31 = internal global ptr @rivafb_probe._entry.29, section ".printk_index", align 4
@rivafb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i16 1, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NV%x\00", [27 x i8] zeroinitializer }, align 32
@rivafb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.14, ptr @.str.3, i32 1948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016rivafb: flatpanel support enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.35 = internal global ptr @rivafb_probe._entry.33, section ".printk_index", align 4
@rivafb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.14, ptr @.str.3, i32 1969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rivafb: cannot ioremap MMIO base\0A\00", [60 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.38 = internal global ptr @rivafb_probe._entry.36, section ".printk_index", align 4
@rivafb_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.3, i32 1982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rivafb: cannot ioremap PRAMIN region\0A\00", [56 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.41 = internal global ptr @rivafb_probe._entry.39, section ".printk_index", align 4
@rivafb_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.14, ptr @.str.3, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rivafb: cannot ioremap FB base\0A\00", [62 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.44 = internal global ptr @rivafb_probe._entry.42, section ".printk_index", align 4
@riva_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @rivafb_open, ptr @rivafb_release, ptr null, ptr null, ptr @rivafb_check_var, ptr @rivafb_set_par, ptr @rivafb_setcolreg, ptr null, ptr @rivafb_blank, ptr @rivafb_pan_display, ptr @rivafb_fillrect, ptr @rivafb_copyarea, ptr @rivafb_imageblit, ptr @rivafb_cursor, ptr @rivafb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rivafb_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.14, ptr @.str.3, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rivafb: error setting initial video mode\0A\00", [52 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.47 = internal global ptr @rivafb_probe._entry.45, section ".printk_index", align 4
@rivafb_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.14, ptr @.str.3, i32 2041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rivafb: error registering riva framebuffer\0A\00", [50 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.50 = internal global ptr @rivafb_probe._entry.48, section ".printk_index", align 4
@rivafb_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.14, ptr @.str.3, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016rivafb: PCI nVidia %s framebuffer ver %s (%dMB @ 0x%lX)\0A\00", [37 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.53 = internal global ptr @rivafb_probe._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.9.5b\00", [25 x i8] zeroinitializer }, align 32
@rivafb_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.3, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_probe._entry_ptr.56 = internal global ptr @rivafb_probe._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rivafb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.57, ptr @.str.3, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rivafb_open\00", [20 x i8] zeroinitializer }, align 32
@rivafb_open._entry_ptr = internal global ptr @rivafb_open._entry, section ".printk_index", align 4
@rivafb_open._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.57, ptr @.str.3, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_open._entry_ptr.59 = internal global ptr @rivafb_open._entry.58, section ".printk_index", align 4
@riva_save_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.60, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riva_save_state\00", [16 x i8] zeroinitializer }, align 32
@riva_save_state._entry_ptr = internal global ptr @riva_save_state._entry, section ".printk_index", align 4
@riva_save_state._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.60, ptr @.str.3, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_save_state._entry_ptr.62 = internal global ptr @riva_save_state._entry.61, section ".printk_index", align 4
@rivafb_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.63, ptr @.str.3, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rivafb_release\00", [17 x i8] zeroinitializer }, align 32
@rivafb_release._entry_ptr = internal global ptr @rivafb_release._entry, section ".printk_index", align 4
@rivafb_release._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.63, ptr @.str.3, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_release._entry_ptr.65 = internal global ptr @rivafb_release._entry.64, section ".printk_index", align 4
@riva_load_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.66, ptr @.str.3, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riva_load_state\00", [16 x i8] zeroinitializer }, align 32
@riva_load_state._entry_ptr = internal global ptr @riva_load_state._entry, section ".printk_index", align 4
@riva_load_state._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.66, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_load_state._entry_ptr.68 = internal global ptr @riva_load_state._entry.67, section ".printk_index", align 4
@rivafb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.69, ptr @.str.3, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rivafb_check_var\00", [47 x i8] zeroinitializer }, align 32
@rivafb_check_var._entry_ptr = internal global ptr @rivafb_check_var._entry, section ".printk_index", align 4
@rivafb_check_var._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rivafb: mode %dx%dx%d rejected...color depth not supported.\0A\00", [33 x i8] zeroinitializer }, align 32
@rivafb_check_var._entry_ptr.72 = internal global ptr @rivafb_check_var._entry.70, section ".printk_index", align 4
@rivafb_check_var._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.3, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EXIT, returning -EINVAL\0A\00", [39 x i8] zeroinitializer }, align 32
@rivafb_check_var._entry_ptr.75 = internal global ptr @rivafb_check_var._entry.73, section ".printk_index", align 4
@rivafb_check_var._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.69, ptr @.str.3, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_check_var._entry_ptr.77 = internal global ptr @rivafb_check_var._entry.76, section ".printk_index", align 4
@riva_update_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.78, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riva_update_var\00", [16 x i8] zeroinitializer }, align 32
@riva_update_var._entry_ptr = internal global ptr @riva_update_var._entry, section ".printk_index", align 4
@riva_update_var._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.78, ptr @.str.3, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_update_var._entry_ptr.80 = internal global ptr @riva_update_var._entry.79, section ".printk_index", align 4
@rivafb_do_maximize.modes = internal constant { [6 x %struct.anon.106], [48 x i8] } { [6 x %struct.anon.106] [%struct.anon.106 { i32 1600, i32 1280 }, %struct.anon.106 { i32 1280, i32 1024 }, %struct.anon.106 { i32 1024, i32 768 }, %struct.anon.106 { i32 800, i32 600 }, %struct.anon.106 { i32 640, i32 480 }, %struct.anon.106 { i32 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.81, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rivafb_do_maximize\00", [45 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr = internal global ptr @rivafb_do_maximize._entry, section ".printk_index", align 4
@rivafb_do_maximize._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014rivafb: using maximum available virtual resolution\0A\00", [42 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.84 = internal global ptr @rivafb_do_maximize._entry.82, section ".printk_index", align 4
@rivafb_do_maximize._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.3, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013rivafb: could not find a virtual resolution that fits into video memory!!\0A\00", [51 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.87 = internal global ptr @rivafb_do_maximize._entry.85, section ".printk_index", align 4
@rivafb_do_maximize._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.3, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXIT - EINVAL error\0A\00", [43 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.90 = internal global ptr @rivafb_do_maximize._entry.88, section ".printk_index", align 4
@rivafb_do_maximize._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.3, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016rivafb: virtual resolution set to maximum of %dx%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.93 = internal global ptr @rivafb_do_maximize._entry.91, section ".printk_index", align 4
@rivafb_do_maximize._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.81, ptr @.str.3, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014rivafb: setting virtual X resolution to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.96 = internal global ptr @rivafb_do_maximize._entry.94, section ".printk_index", align 4
@rivafb_do_maximize._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.81, ptr @.str.3, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014rivafb: setting virtual Y resolution to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.99 = internal global ptr @rivafb_do_maximize._entry.97, section ".printk_index", align 4
@rivafb_do_maximize._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.81, ptr @.str.3, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013rivafb: mode %dx%dx%d rejected...resolution too high to fit into video memory!\0A\00", [46 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.102 = internal global ptr @rivafb_do_maximize._entry.100, section ".printk_index", align 4
@rivafb_do_maximize._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.3, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.104 = internal global ptr @rivafb_do_maximize._entry.103, section ".printk_index", align 4
@rivafb_do_maximize._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.81, ptr @.str.3, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014rivafb: virtual X resolution (%d) is too high, lowering to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.107 = internal global ptr @rivafb_do_maximize._entry.105, section ".printk_index", align 4
@rivafb_do_maximize._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.81, ptr @.str.3, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013rivafb: virtual X resolution (%d) is smaller than real\0A\00", [38 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.110 = internal global ptr @rivafb_do_maximize._entry.108, section ".printk_index", align 4
@rivafb_do_maximize._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.81, ptr @.str.3, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013rivafb: virtual Y resolution (%d) is smaller than real\0A\00", [38 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.113 = internal global ptr @rivafb_do_maximize._entry.111, section ".printk_index", align 4
@rivafb_do_maximize._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.81, ptr @.str.3, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_do_maximize._entry_ptr.115 = internal global ptr @rivafb_do_maximize._entry.114, section ".printk_index", align 4
@rivafb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.116, ptr @.str.3, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rivafb_set_par\00", [17 x i8] zeroinitializer }, align 32
@rivafb_set_par._entry_ptr = internal global ptr @rivafb_set_par._entry, section ".printk_index", align 4
@rivafb_set_par._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.116, ptr @.str.3, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_set_par._entry_ptr.118 = internal global ptr @rivafb_set_par._entry.117, section ".printk_index", align 4
@riva_load_video_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.119, ptr @.str.3, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"riva_load_video_mode\00", [43 x i8] zeroinitializer }, align 32
@riva_load_video_mode._entry_ptr = internal global ptr @riva_load_video_mode._entry, section ".printk_index", align 4
@riva_load_video_mode._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.119, ptr @.str.3, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_load_video_mode._entry_ptr.121 = internal global ptr @riva_load_video_mode._entry.120, section ".printk_index", align 4
@reg_template = internal constant { { [21 x i8], <{ [41 x i8], [24 x i8] }>, [9 x i8], [5 x i8], i8, %struct._riva_hw_state }, [48 x i8] } { { [21 x i8], <{ [41 x i8], [24 x i8] }>, [9 x i8], [5 x i8], i8, %struct._riva_hw_state } { [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\01\0F\00\00", <{ [41 x i8], [24 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\E3\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@", [24 x i8] zeroinitializer }>, [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [5 x i8] c"\03\01\0F\00\0E", i8 -21, %struct._riva_hw_state zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@rivafb_blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.123, ptr @.str.3, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rivafb_blank\00", [19 x i8] zeroinitializer }, align 32
@rivafb_blank._entry_ptr = internal global ptr @rivafb_blank._entry, section ".printk_index", align 4
@rivafb_blank._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.123, ptr @.str.3, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_blank._entry_ptr.125 = internal global ptr @rivafb_blank._entry.124, section ".printk_index", align 4
@rivafb_pan_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.126, ptr @.str.3, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rivafb_pan_display\00", [45 x i8] zeroinitializer }, align 32
@rivafb_pan_display._entry_ptr = internal global ptr @rivafb_pan_display._entry, section ".printk_index", align 4
@rivafb_pan_display._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.126, ptr @.str.3, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_pan_display._entry_ptr.128 = internal global ptr @rivafb_pan_display._entry.127, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@riva_get_EDID._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.129, ptr @.str.3, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"riva_get_EDID\00", [18 x i8] zeroinitializer }, align 32
@riva_get_EDID._entry_ptr = internal global ptr @riva_get_EDID._entry, section ".printk_index", align 4
@riva_get_EDID._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.129, ptr @.str.3, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_get_EDID._entry_ptr.131 = internal global ptr @riva_get_EDID._entry.130, section ".printk_index", align 4
@riva_get_EDID._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.129, ptr @.str.3, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rivafb: could not retrieve EDID from OF\0A\00", [55 x i8] zeroinitializer }, align 32
@riva_get_EDID._entry_ptr.134 = internal global ptr @riva_get_EDID._entry.132, section ".printk_index", align 4
@riva_get_EDID._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.129, ptr @.str.3, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rivafb: could not retrieve EDID from DDC/I2C\0A\00", [50 x i8] zeroinitializer }, align 32
@riva_get_EDID._entry_ptr.137 = internal global ptr @riva_get_EDID._entry.135, section ".printk_index", align 4
@riva_get_EDID._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.129, ptr @.str.3, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_get_EDID._entry_ptr.139 = internal global ptr @riva_get_EDID._entry.138, section ".printk_index", align 4
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DFP,EDID\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LCD,EDID\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EDID\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EDID1\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EDID,B\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EDID,A\00", [25 x i8] zeroinitializer }, align 32
@riva_get_EDID_OF._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.146, ptr @.str.3, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"riva_get_EDID_OF\00", [47 x i8] zeroinitializer }, align 32
@riva_get_EDID_OF._entry_ptr = internal global ptr @riva_get_EDID_OF._entry, section ".printk_index", align 4
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"display-type\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCD\00", [28 x i8] zeroinitializer }, align 32
@riva_get_EDID_OF._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.146, ptr @.str.3, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LCD found.\0A\00", [20 x i8] zeroinitializer }, align 32
@riva_get_EDID_OF._entry_ptr.151 = internal global ptr @riva_get_EDID_OF._entry.149, section ".printk_index", align 4
@riva_get_EDID_OF._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.146, ptr @.str.3, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_get_EDID_OF._entry_ptr.153 = internal global ptr @riva_get_EDID_OF._entry.152, section ".printk_index", align 4
@riva_get_EDID_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.154, ptr @.str.3, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"riva_get_EDID_i2c\00", [46 x i8] zeroinitializer }, align 32
@riva_get_EDID_i2c._entry_ptr = internal global ptr @riva_get_EDID_i2c._entry, section ".printk_index", align 4
@riva_get_EDID_i2c._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.3, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rivafb: Found EDID Block from BUS %i\0A\00", [58 x i8] zeroinitializer }, align 32
@riva_get_EDID_i2c._entry_ptr.157 = internal global ptr @riva_get_EDID_i2c._entry.155, section ".printk_index", align 4
@riva_get_EDID_i2c._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.154, ptr @.str.3, i32 1778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_get_EDID_i2c._entry_ptr.159 = internal global ptr @riva_get_EDID_i2c._entry.158, section ".printk_index", align 4
@rivafb_default_var = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@riva_update_default_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.160, ptr @.str.3, i32 1789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"riva_update_default_var\00", [40 x i8] zeroinitializer }, align 32
@riva_update_default_var._entry_ptr = internal global ptr @riva_update_default_var._entry, section ".printk_index", align 4
@riva_update_default_var._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.160, ptr @.str.3, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_update_default_var._entry_ptr.162 = internal global ptr @riva_update_default_var._entry.161, section ".printk_index", align 4
@riva_set_fbinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.163, ptr @.str.3, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riva_set_fbinfo\00", [16 x i8] zeroinitializer }, align 32
@riva_set_fbinfo._entry_ptr = internal global ptr @riva_set_fbinfo._entry, section ".printk_index", align 4
@riva_set_fbinfo._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.3, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017rivafb: disabling acceleration\0A\00", [62 x i8] zeroinitializer }, align 32
@riva_set_fbinfo._entry_ptr.166 = internal global ptr @riva_set_fbinfo._entry.164, section ".printk_index", align 4
@riva_set_fbinfo._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.163, ptr @.str.3, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@riva_set_fbinfo._entry_ptr.168 = internal global ptr @riva_set_fbinfo._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rivabl%d\00", [23 x i8] zeroinitializer }, align 32
@riva_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @riva_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@riva_bl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014riva: Backlight registration failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"riva_bl_init\00", [19 x i8] zeroinitializer }, align 32
@riva_bl_init._entry_ptr = internal global ptr @riva_bl_init._entry, section ".printk_index", align 4
@riva_bl_init._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"riva: Backlight initialized (%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@riva_bl_init._entry_ptr.174 = internal global ptr @riva_bl_init._entry.172, section ".printk_index", align 4
@rivafb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.175, ptr @.str.3, i32 2081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rivafb_remove\00", [18 x i8] zeroinitializer }, align 32
@rivafb_remove._entry_ptr = internal global ptr @rivafb_remove._entry, section ".printk_index", align 4
@rivafb_remove._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.175, ptr @.str.3, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rivafb_remove._entry_ptr.177 = internal global ptr @rivafb_remove._entry.176, section ".printk_index", align 4
@riva_bl_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"riva: Backlight unloaded\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"riva_bl_exit\00", [19 x i8] zeroinitializer }, align 32
@riva_bl_exit._entry_ptr = internal global ptr @riva_bl_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.180 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.181 = internal global [19 x i64] [i64 17, i64 32, i64 16, i64 32, i64 256, i64 272, i64 336, i64 368, i64 384, i64 416, i64 496, i64 512, i64 592, i64 640, i64 768, i64 784, i64 800, i64 816, i64 832]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.183 = internal global [34 x i64] [i64 32, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.188 = internal global [36 x i64] [i64 34, i64 32, i64 25, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64]
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"rivafb_driver\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2144, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 203, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"flatpanel\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 201, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant [10 x i8] c"forceCRTC\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 202, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 204, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"strictmode\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 208, i32 13 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2164, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2113, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2117, i32 38 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2118, i32 26 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2126, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2128, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 205, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2130, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2132, i32 33 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2134, i32 33 }
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 207, i32 14 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2139, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [15 x i8] c"rivafb_pci_tbl\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 104, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1898, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1899, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1917, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1923, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1927, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1931, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1934, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [11 x i8] c"rivafb_fix\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 210, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1941, i32 26 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1948, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1969, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1982, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2009, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [12 x i8] c"riva_fb_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1674, i32 28 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2026, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2040, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2045, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2052, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1031, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1050, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 588, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 606, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1058, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1075, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 628, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 655, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1086, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1135, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1138, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1183, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 825, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 840, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 866, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 876, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 879, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 887, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 889, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 895, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 901, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 907, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 912, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 915, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 921, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 928, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 934, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 942, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1192, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1213, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 677, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 817, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [13 x i8] c"reg_template\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 240, i32 31 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1250, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1273, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1235, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1238, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1818, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1820, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1824, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1827, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1829, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1734, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1734, i32 15 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1734, i32 27 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1734, i32 35 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1734, i32 44 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1734, i32 54 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1737, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1740, i32 34 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1743, i32 25 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1749, i32 5 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1754, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1765, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1773, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1778, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [19 x i8] c"rivafb_default_var\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 216, i32 33 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1789, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1812, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1695, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1705, i32 7 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1723, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 336, i32 31 }
@___asan_gen_.648 = private unnamed_addr constant [12 x i8] c"riva_bl_ops\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 316, i32 35 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 345, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 358, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2081, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 2099, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.682 = private constant [36 x i8] c"../drivers/video/fbdev/riva/fbdev.c\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 371, i32 2 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_flatpanel309, ptr @__UNIQUE_ID_flatpaneltype308, ptr @__UNIQUE_ID_forceCRTC311, ptr @__UNIQUE_ID_forceCRTCtype310, ptr @__UNIQUE_ID_license319, ptr @__UNIQUE_ID_noaccel307, ptr @__UNIQUE_ID_noacceltype306, ptr @__UNIQUE_ID_nomtrr313, ptr @__UNIQUE_ID_nomtrrtype312, ptr @__UNIQUE_ID_strictmode315, ptr @__UNIQUE_ID_strictmodetype314, ptr @__exitcall_rivafb_exit, ptr @__initcall__kmod_rivafb__305_2172_rivafb_init6, ptr @__param_flatpanel, ptr @__param_forceCRTC, ptr @__param_noaccel, ptr @__param_nomtrr, ptr @__param_strictmode, ptr @riva_bl_exit._entry, ptr @riva_bl_exit._entry_ptr, ptr @riva_bl_init._entry, ptr @riva_bl_init._entry.172, ptr @riva_bl_init._entry_ptr, ptr @riva_bl_init._entry_ptr.174, ptr @riva_get_EDID._entry, ptr @riva_get_EDID._entry.130, ptr @riva_get_EDID._entry.132, ptr @riva_get_EDID._entry.135, ptr @riva_get_EDID._entry.138, ptr @riva_get_EDID._entry_ptr, ptr @riva_get_EDID._entry_ptr.131, ptr @riva_get_EDID._entry_ptr.134, ptr @riva_get_EDID._entry_ptr.137, ptr @riva_get_EDID._entry_ptr.139, ptr @riva_get_EDID_OF._entry, ptr @riva_get_EDID_OF._entry.149, ptr @riva_get_EDID_OF._entry.152, ptr @riva_get_EDID_OF._entry_ptr, ptr @riva_get_EDID_OF._entry_ptr.151, ptr @riva_get_EDID_OF._entry_ptr.153, ptr @riva_get_EDID_i2c._entry, ptr @riva_get_EDID_i2c._entry.155, ptr @riva_get_EDID_i2c._entry.158, ptr @riva_get_EDID_i2c._entry_ptr, ptr @riva_get_EDID_i2c._entry_ptr.157, ptr @riva_get_EDID_i2c._entry_ptr.159, ptr @riva_load_state._entry, ptr @riva_load_state._entry.67, ptr @riva_load_state._entry_ptr, ptr @riva_load_state._entry_ptr.68, ptr @riva_load_video_mode._entry, ptr @riva_load_video_mode._entry.120, ptr @riva_load_video_mode._entry_ptr, ptr @riva_load_video_mode._entry_ptr.121, ptr @riva_save_state._entry, ptr @riva_save_state._entry.61, ptr @riva_save_state._entry_ptr, ptr @riva_save_state._entry_ptr.62, ptr @riva_set_fbinfo._entry, ptr @riva_set_fbinfo._entry.164, ptr @riva_set_fbinfo._entry.167, ptr @riva_set_fbinfo._entry_ptr, ptr @riva_set_fbinfo._entry_ptr.166, ptr @riva_set_fbinfo._entry_ptr.168, ptr @riva_update_default_var._entry, ptr @riva_update_default_var._entry.161, ptr @riva_update_default_var._entry_ptr, ptr @riva_update_default_var._entry_ptr.162, ptr @riva_update_var._entry, ptr @riva_update_var._entry.79, ptr @riva_update_var._entry_ptr, ptr @riva_update_var._entry_ptr.80, ptr @rivafb_blank._entry, ptr @rivafb_blank._entry.124, ptr @rivafb_blank._entry_ptr, ptr @rivafb_blank._entry_ptr.125, ptr @rivafb_check_var._entry, ptr @rivafb_check_var._entry.70, ptr @rivafb_check_var._entry.73, ptr @rivafb_check_var._entry.76, ptr @rivafb_check_var._entry_ptr, ptr @rivafb_check_var._entry_ptr.72, ptr @rivafb_check_var._entry_ptr.75, ptr @rivafb_check_var._entry_ptr.77, ptr @rivafb_do_maximize._entry, ptr @rivafb_do_maximize._entry.100, ptr @rivafb_do_maximize._entry.103, ptr @rivafb_do_maximize._entry.105, ptr @rivafb_do_maximize._entry.108, ptr @rivafb_do_maximize._entry.111, ptr @rivafb_do_maximize._entry.114, ptr @rivafb_do_maximize._entry.82, ptr @rivafb_do_maximize._entry.85, ptr @rivafb_do_maximize._entry.88, ptr @rivafb_do_maximize._entry.91, ptr @rivafb_do_maximize._entry.94, ptr @rivafb_do_maximize._entry.97, ptr @rivafb_do_maximize._entry_ptr, ptr @rivafb_do_maximize._entry_ptr.102, ptr @rivafb_do_maximize._entry_ptr.104, ptr @rivafb_do_maximize._entry_ptr.107, ptr @rivafb_do_maximize._entry_ptr.110, ptr @rivafb_do_maximize._entry_ptr.113, ptr @rivafb_do_maximize._entry_ptr.115, ptr @rivafb_do_maximize._entry_ptr.84, ptr @rivafb_do_maximize._entry_ptr.87, ptr @rivafb_do_maximize._entry_ptr.90, ptr @rivafb_do_maximize._entry_ptr.93, ptr @rivafb_do_maximize._entry_ptr.96, ptr @rivafb_do_maximize._entry_ptr.99, ptr @rivafb_exit, ptr @rivafb_open._entry, ptr @rivafb_open._entry.58, ptr @rivafb_open._entry_ptr, ptr @rivafb_open._entry_ptr.59, ptr @rivafb_pan_display._entry, ptr @rivafb_pan_display._entry.127, ptr @rivafb_pan_display._entry_ptr, ptr @rivafb_pan_display._entry_ptr.128, ptr @rivafb_probe._entry, ptr @rivafb_probe._entry.15, ptr @rivafb_probe._entry.19, ptr @rivafb_probe._entry.22, ptr @rivafb_probe._entry.26, ptr @rivafb_probe._entry.29, ptr @rivafb_probe._entry.33, ptr @rivafb_probe._entry.36, ptr @rivafb_probe._entry.39, ptr @rivafb_probe._entry.42, ptr @rivafb_probe._entry.45, ptr @rivafb_probe._entry.48, ptr @rivafb_probe._entry.51, ptr @rivafb_probe._entry.55, ptr @rivafb_probe._entry_ptr, ptr @rivafb_probe._entry_ptr.17, ptr @rivafb_probe._entry_ptr.21, ptr @rivafb_probe._entry_ptr.24, ptr @rivafb_probe._entry_ptr.28, ptr @rivafb_probe._entry_ptr.31, ptr @rivafb_probe._entry_ptr.35, ptr @rivafb_probe._entry_ptr.38, ptr @rivafb_probe._entry_ptr.41, ptr @rivafb_probe._entry_ptr.44, ptr @rivafb_probe._entry_ptr.47, ptr @rivafb_probe._entry_ptr.50, ptr @rivafb_probe._entry_ptr.53, ptr @rivafb_probe._entry_ptr.56, ptr @rivafb_release._entry, ptr @rivafb_release._entry.64, ptr @rivafb_release._entry_ptr, ptr @rivafb_release._entry_ptr.65, ptr @rivafb_remove._entry, ptr @rivafb_remove._entry.176, ptr @rivafb_remove._entry_ptr, ptr @rivafb_remove._entry_ptr.177, ptr @rivafb_set_par._entry, ptr @rivafb_set_par._entry.117, ptr @rivafb_set_par._entry_ptr, ptr @rivafb_set_par._entry_ptr.118, ptr @rivafb_setup._entry, ptr @rivafb_setup._entry.11, ptr @rivafb_setup._entry_ptr, ptr @rivafb_setup._entry_ptr.13, ptr @rivafb_driver, ptr @noaccel, ptr @flatpanel, ptr @forceCRTC, ptr @nomtrr, ptr @strictmode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @backlight, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mode_option, ptr @.str.12, ptr @rivafb_pci_tbl, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @rivafb_probe.__key, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @rivafb_fix, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @riva_fb_ops, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.78, ptr @rivafb_do_maximize.modes, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.116, ptr @.str.119, ptr @reg_template, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.133, ptr @.str.136, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.154, ptr @.str.156, ptr @rivafb_default_var, ptr @.str.160, ptr @.str.163, ptr @.str.165, ptr @.str.169, ptr @riva_bl_ops, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.179], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flatpanel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forceCRTC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strictmode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backlight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_pci_tbl to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_open._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_save_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_save_state._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_release._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_load_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_load_state._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_check_var._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_check_var._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_check_var._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_update_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_update_var._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize.modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_do_maximize._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_set_par._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_load_video_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_load_video_mode._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_template to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_blank._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_pan_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_pan_display._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID_OF._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID_OF._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID_OF._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID_i2c._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_get_EDID_i2c._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_default_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_update_default_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_update_default_var._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_set_fbinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_set_fbinfo._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_set_fbinfo._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_bl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_bl_init._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rivafb_remove._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_bl_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_init() #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #11
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.rivafb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end.rivafb_setup.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rivafb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.rivafb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.rivafb_setup.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rivafb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call23.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.4) #11
  %cmp.not4.i = icmp eq ptr %call23.i, null
  br i1 %cmp.not4.i, label %while.cond.preheader.i.do.end48.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.do.end48.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call25.i = phi ptr [ %call2.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call23.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call3.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(10) @.str.5, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %call25.i, i32 9
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  br i1 %tobool6.not.i, label %if.then5.i.while.cond.backedge.i_crit_edge, label %lor.lhs.false7.i

if.then5.i.while.cond.backedge.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

lor.lhs.false7.i:                                 ; preds = %if.then5.i
  %incdec.ptr.i = getelementptr i8, ptr %call25.i, i32 10
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %lor.lhs.false7.i.while.cond.backedge.i_crit_edge, label %cleanup.thread.i

lor.lhs.false7.i.while.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %9 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %10 = add i8 %9, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %10)
  %11 = icmp ult i8 %10, -2
  %spec.store.select.i = select i1 %11, i32 -1, i32 %sub.i
  store i32 %spec.store.select.i, ptr @forceCRTC, align 4
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %while.body.i
  %call18.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(10) @.str.6, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else21.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr @flatpanel, align 4
  br label %while.cond.backedge.i

if.else21.i:                                      ; preds = %if.else.i
  %call22.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(11) @.str.7, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else27.i

if.then24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr25.i = getelementptr i8, ptr %call25.i, i32 10
  %call26.i = call i32 @simple_strtoul(ptr noundef %add.ptr25.i, ptr noundef null, i32 noundef 0) #11
  store i32 %call26.i, ptr @backlight, align 4
  br label %while.cond.backedge.i

if.else27.i:                                      ; preds = %if.else21.i
  %call28.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(7) @.str.8, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else31.i

if.then30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @nomtrr, align 1
  br label %while.cond.backedge.i

if.else31.i:                                      ; preds = %if.else27.i
  %call32.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(11) @.str.9, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.else35.i

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @strictmode, align 1
  br label %while.cond.backedge.i

if.else35.i:                                      ; preds = %if.else31.i
  %call36.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(8) @.str.10, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.else39.i

if.then38.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @noaccel, align 1
  br label %while.cond.backedge.i

if.else39.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call25.i, ptr @mode_option, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else39.i, %if.then38.i, %if.then34.i, %if.then30.i, %if.then24.i, %if.then20.i, %cleanup.thread.i, %lor.lhs.false7.i.while.cond.backedge.i_crit_edge, %if.then5.i.while.cond.backedge.i_crit_edge
  %call2.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.4) #11
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.do.end48.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.backedge.i.do.end48.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48.i

do.end48.i:                                       ; preds = %while.cond.backedge.i.do.end48.i_crit_edge, %while.cond.preheader.i.do.end48.i_crit_edge
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #14
  br label %rivafb_setup.exit

rivafb_setup.exit:                                ; preds = %do.end48.i, %lor.lhs.false.i.rivafb_setup.exit_crit_edge, %if.end.rivafb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @rivafb_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %rivafb_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %rivafb_setup.exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #11
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rivafb_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @rivafb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_probe(ptr noundef %pd, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #14
  %cmp.not = icmp eq ptr %pd, null
  br i1 %cmp.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, i32 noundef 1899) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/riva/fbdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1899, 0\0A.popsection", ""() #11, !srcloc !395
  unreachable

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 44
  %call12 = tail call ptr @framebuffer_alloc(i32 noundef 5176, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %pdev = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pd, ptr %pdev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8192) #15
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 10
  %4 = ptrtoint ptr %pixmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %pixmap, align 4
  %cmp18 = icmp eq ptr %call7.i.i, null
  br i1 %cmp18, label %if.end14.err_framebuffer_release_crit_edge, label %if.end20

if.end14.err_framebuffer_release_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_framebuffer_release

if.end20:                                         ; preds = %if.end14
  %call21 = tail call i32 @pci_enable_device(ptr noundef nonnull %pd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %err_free_pixmap

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @pci_request_regions(ptr noundef nonnull %pd, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %do.body39

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %err_free_pixmap

do.body39:                                        ; preds = %if.end29
  %open_lock = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @rivafb_probe.__key) #11
  %call42 = tail call fastcc i32 @riva_get_arch(ptr noundef nonnull %pd)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call42, ptr %1, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 7
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor, align 8
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv43 = zext i16 %9 to i32
  %or = or i32 %shl, %conv43
  %Chipset = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %Chipset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %Chipset, align 8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %or) #14
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 28)
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.body39.if.end81_crit_edge [
    i32 0, label %do.end57
    i32 1, label %do.body39.if.then74_crit_edge
    i32 2, label %do.body39.if.then74_crit_edge320
    i32 3, label %do.body39.if.then74_crit_edge321
  ]

do.body39.if.then74_crit_edge321:                 ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then74

do.body39.if.then74_crit_edge320:                 ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then74

do.body39.if.then74_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then74

do.body39.if.end81_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.end57:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %err_release_region

if.then74:                                        ; preds = %do.body39.if.then74_crit_edge, %do.body39.if.then74_crit_edge320, %do.body39.if.then74_crit_edge321
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device, align 2
  %17 = lshr i16 %16, 4
  %18 = and i16 %17, 255
  %19 = zext i16 %18 to i32
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %do.body39.if.end81_crit_edge
  %.sink = phi i32 [ %19, %if.then74 ], [ %12, %do.body39.if.end81_crit_edge ]
  %call80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rivafb_fix, ptr noundef nonnull @.str.32, i32 noundef %.sink)
  %20 = load i32, ptr @flatpanel, align 4
  %FlatPanel = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %FlatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp82 = icmp eq i32 %20, 1
  br i1 %cmp82, label %do.end87, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %if.end81.if.end90_crit_edge
  %22 = load i32, ptr @forceCRTC, align 4
  %forceCRTC = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %forceCRTC to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %forceCRTC, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 47, i32 0, i32 1
  %24 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp91 = icmp eq i32 %25, 0
  br i1 %cmp91, label %if.end90.cond.end_crit_edge, label %cond.false

if.end90.cond.end_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resource, align 8
  %sub = add i32 %25, 1
  %add = sub i32 %sub, %27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end90.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end90.cond.end_crit_edge ]
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 11), align 4
  %arrayidx99 = getelementptr %struct.pci_dev, ptr %pd, i32 0, i32 47, i32 1
  %end100 = getelementptr %struct.pci_dev, ptr %pd, i32 0, i32 47, i32 1, i32 1
  %28 = ptrtoint ptr %end100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp101 = icmp eq i32 %29, 0
  br i1 %cmp101, label %cond.end.cond.end113_crit_edge, label %cond.false104

cond.end.cond.end113_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end113

cond.false104:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx99, align 8
  %sub111 = add i32 %29, 1
  %add112 = sub i32 %sub111, %31
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false104, %cond.end.cond.end113_crit_edge
  %cond114 = phi i32 [ %add112, %cond.false104 ], [ 0, %cond.end.cond.end113_crit_edge ]
  store i32 %cond114, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #11
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %cmd, align 2, !annotation !396
  %call115 = call i32 @pci_read_config_word(ptr noundef nonnull %pd, i32 noundef 4, ptr noundef nonnull %cmd) #11
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cmd, align 2
  %35 = or i16 %34, 3
  store i16 %35, ptr %cmd, align 2
  %call119 = call i32 @pci_write_config_word(ptr noundef nonnull %pd, i32 noundef 4, i16 noundef zeroext %35) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #11
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource, align 8
  store i32 %37, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 10), align 4
  %38 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx99, align 8
  store i32 %39, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 1), align 4
  %40 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 11), align 4
  %call126 = call ptr @ioremap(i32 noundef %37, i32 noundef %40) #11
  %ctrl_base = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call126, ptr %ctrl_base, align 4
  %tobool128.not = icmp eq ptr %call126, null
  br i1 %tobool128.not, label %do.end132, label %if.end135

do.end132:                                        ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #13
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %err_release_region

if.end135:                                        ; preds = %cond.end113
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 8
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %43, label %if.end135.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %if.end135.sw.bb151_crit_edge
    i32 16, label %if.end135.sw.bb151_crit_edge322
    i32 32, label %if.end135.sw.bb151_crit_edge323
    i32 48, label %if.end135.sw.bb151_crit_edge324
  ]

if.end135.sw.bb151_crit_edge324:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb151

if.end135.sw.bb151_crit_edge323:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb151

if.end135.sw.bb151_crit_edge322:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb151

if.end135.sw.bb151_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb151

if.end135.sw.epilog_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end135
  %45 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 1), align 4
  %add138 = add i32 %45, 12582912
  %call139 = call ptr @ioremap(i32 noundef %add138, i32 noundef 32768) #11
  %PRAMIN = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 24
  %46 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call139, ptr %PRAMIN, align 8
  %tobool143.not = icmp eq ptr %call139, null
  br i1 %tobool143.not, label %do.end147, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end147:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  br label %err_iounmap_ctrl_base

sw.bb151:                                         ; preds = %if.end135.sw.bb151_crit_edge, %if.end135.sw.bb151_crit_edge322, %if.end135.sw.bb151_crit_edge323, %if.end135.sw.bb151_crit_edge324
  %add.ptr = getelementptr i8, ptr %call126, i32 6291456
  %PCRTC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 15
  %47 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %PCRTC0, align 4
  %add.ptr155 = getelementptr i8, ptr %call126, i32 7405568
  %PRAMIN157 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 24
  %48 = ptrtoint ptr %PRAMIN157 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr155, ptr %PRAMIN157, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb151, %sw.bb.sw.epilog_crit_edge, %if.end135.sw.epilog_crit_edge
  call void @riva_common_setup(ptr noundef %1) #11
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp160 = icmp eq i32 %50, 3
  br i1 %cmp160, label %if.then162, label %sw.epilog.if.end167_crit_edge

sw.epilog.if.end167_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then162:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 20
  %51 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %PGRAPH, align 8
  %PCRTC0165 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %PCRTC0165 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %PCRTC0165, align 4
  %PCRTC = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %PCRTC to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %PCRTC, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %sw.epilog.if.end167_crit_edge
  %call168 = call i32 @riva_get_memlen(ptr noundef %1) #11
  %mul = shl i32 %call168, 10
  store i32 %mul, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 2), align 4
  %call169 = call i32 @riva_get_maxdclk(ptr noundef %1) #11
  %mul170 = mul i32 %call169, 1000
  %dclk_max = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %dclk_max to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul170, ptr %dclk_max, align 8
  %56 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 1), align 4
  %57 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @rivafb_fix, i32 0, i32 2), align 4
  %call171 = call ptr @ioremap_wc(i32 noundef %56, i32 noundef %57) #11
  %58 = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call171, ptr %58, align 4
  %tobool172.not = icmp eq ptr %call171, null
  br i1 %tobool172.not, label %do.end176, label %if.end179

do.end176:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #14
  br label %err_iounmap_pramin

if.end179:                                        ; preds = %if.end167
  %60 = load i8, ptr @nomtrr, align 1, !range !397
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool180.not = icmp eq i8 %60, 0
  br i1 %tobool180.not, label %if.then181, label %if.end179.if.end183_crit_edge

if.end179.if.end183_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end183

if.then181:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  %wc_cookie = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 16
  %61 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %wc_cookie, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then181, %if.end179.if.end183_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 20
  %62 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @riva_fb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7
  %63 = call ptr @memcpy(ptr %fix, ptr @rivafb_fix, i32 68)
  call fastcc void @riva_get_EDID(ptr noundef nonnull %call12, ptr noundef nonnull %pd)
  call fastcc void @riva_get_edidinfo(ptr noundef nonnull %call12)
  %call184 = call fastcc i32 @riva_set_fbinfo(ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %if.end183.err_iounmap_screen_base_crit_edge, label %if.end193

if.end183.err_iounmap_screen_base_crit_edge:      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_iounmap_screen_base

if.end193:                                        ; preds = %if.end183
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %modedb, align 4
  call void @fb_destroy_modedb(ptr noundef %65) #11
  %66 = ptrtoint ptr %modedb to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %modedb, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 44, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %68 = load i32, ptr @backlight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool196.not = icmp eq i32 %68, 0
  br i1 %tobool196.not, label %if.end193.if.end199_crit_edge, label %if.then197

if.end193.if.end199_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %par, align 4
  call fastcc void @riva_bl_init(ptr noundef %70)
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %if.end193.if.end199_crit_edge
  %call200 = call i32 @register_framebuffer(ptr noundef nonnull %call12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %if.end199.err_iounmap_screen_base_crit_edge, label %do.end212

if.end199.err_iounmap_screen_base_crit_edge:      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_iounmap_screen_base

do.end212:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 2
  %71 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %smem_len, align 4
  %div318 = lshr i32 %72, 20
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %smem_start, align 4
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %fix, ptr noundef nonnull @.str.54, i32 noundef %div318, i32 noundef %74) #14
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14) #14
  br label %cleanup

err_iounmap_screen_base:                          ; preds = %if.end199.err_iounmap_screen_base_crit_edge, %if.end183.err_iounmap_screen_base_crit_edge
  %.str.49.sink = phi ptr [ @.str.46, %if.end183.err_iounmap_screen_base_crit_edge ], [ @.str.49, %if.end199.err_iounmap_screen_base_crit_edge ]
  %ret.0 = phi i32 [ %call184, %if.end183.err_iounmap_screen_base_crit_edge ], [ %call200, %if.end199.err_iounmap_screen_base_crit_edge ]
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49.sink) #14
  %75 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %par, align 4
  call void @riva_delete_i2c_busses(ptr noundef %76) #11
  %77 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %58, align 4
  call void @iounmap(ptr noundef %78) #11
  br label %err_iounmap_pramin

err_iounmap_pramin:                               ; preds = %err_iounmap_screen_base, %do.end176
  %ret.1 = phi i32 [ %ret.0, %err_iounmap_screen_base ], [ -5, %do.end176 ]
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp226 = icmp eq i32 %80, 3
  br i1 %cmp226, label %if.then228, label %err_iounmap_pramin.err_iounmap_ctrl_base_crit_edge

err_iounmap_pramin.err_iounmap_ctrl_base_crit_edge: ; preds = %err_iounmap_pramin
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_iounmap_ctrl_base

if.then228:                                       ; preds = %err_iounmap_pramin
  call void @__sanitizer_cov_trace_pc() #13
  %PRAMIN230 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 24
  %81 = ptrtoint ptr %PRAMIN230 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %PRAMIN230, align 8
  call void @iounmap(ptr noundef %82) #11
  br label %err_iounmap_ctrl_base

err_iounmap_ctrl_base:                            ; preds = %if.then228, %err_iounmap_pramin.err_iounmap_ctrl_base_crit_edge, %do.end147
  %ret.2 = phi i32 [ %ret.1, %if.then228 ], [ %ret.1, %err_iounmap_pramin.err_iounmap_ctrl_base_crit_edge ], [ -5, %do.end147 ]
  %83 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctrl_base, align 4
  call void @iounmap(ptr noundef %84) #11
  br label %err_release_region

err_release_region:                               ; preds = %err_iounmap_ctrl_base, %do.end132, %do.end57
  %ret.3 = phi i32 [ -19, %do.end57 ], [ %ret.2, %err_iounmap_ctrl_base ], [ -5, %do.end132 ]
  call void @pci_release_regions(ptr noundef nonnull %pd) #11
  br label %err_free_pixmap

err_free_pixmap:                                  ; preds = %err_release_region, %do.end35, %do.end26
  %ret.4 = phi i32 [ %call21, %do.end26 ], [ %call30, %do.end35 ], [ %ret.3, %err_release_region ]
  %85 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pixmap, align 4
  call void @kfree(ptr noundef %86) #11
  br label %err_framebuffer_release

err_framebuffer_release:                          ; preds = %err_free_pixmap, %if.end14.err_framebuffer_release_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_free_pixmap ], [ -12, %if.end14.err_framebuffer_release_crit_edge ]
  call void @framebuffer_release(ptr noundef nonnull %call12) #11
  br label %cleanup

cleanup:                                          ; preds = %err_framebuffer_release, %do.end212, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end212 ], [ %ret.5, %err_framebuffer_release ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rivafb_remove(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.175) #14
  tail call void @riva_delete_i2c_busses(ptr noundef %3) #11
  %EDID = getelementptr inbounds %struct.riva_par, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %EDID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %EDID, align 4
  tail call void @kfree(ptr noundef %5) #11
  tail call void @unregister_framebuffer(ptr noundef %1) #11
  %bl_dev.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bl_dev.i, align 4
  tail call void @backlight_device_unregister(ptr noundef %7) #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #14
  %ctrl_base = getelementptr inbounds %struct.riva_par, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base, align 4
  tail call void @iounmap(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @iounmap(ptr noundef %12) #11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp = icmp eq i32 %14, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %PRAMIN = getelementptr inbounds %struct._riva_hw_inst, ptr %3, i32 0, i32 24
  %15 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %PRAMIN, align 8
  tail call void @iounmap(ptr noundef %16) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pd) #11
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %18) #11
  tail call void @framebuffer_release(ptr noundef %1) #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.175) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @riva_get_arch(ptr nocapture noundef readonly %pd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = and i16 %1, 4080
  %and = zext i16 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 256, label %entry.sw.bb_crit_edge
    i32 272, label %entry.sw.bb_crit_edge5
    i32 336, label %entry.sw.bb_crit_edge6
    i32 368, label %entry.sw.bb_crit_edge7
    i32 384, label %entry.sw.bb_crit_edge8
    i32 416, label %entry.sw.bb_crit_edge9
    i32 496, label %entry.sw.bb_crit_edge10
    i32 512, label %entry.sw.bb1_crit_edge
    i32 592, label %entry.sw.bb1_crit_edge11
    i32 640, label %entry.sw.bb1_crit_edge12
    i32 768, label %entry.sw.bb2_crit_edge
    i32 784, label %entry.sw.bb2_crit_edge13
    i32 800, label %entry.sw.bb2_crit_edge14
    i32 816, label %entry.sw.bb2_crit_edge15
    i32 832, label %entry.sw.bb2_crit_edge16
    i32 32, label %sw.bb3
    i32 16, label %sw.bb4
  ]

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge13, %entry.sw.bb2_crit_edge14, %entry.sw.bb2_crit_edge15, %entry.sw.bb2_crit_edge16
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %arch.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 3, %sw.bb4 ], [ 4, %sw.bb3 ], [ 48, %sw.bb2 ], [ 32, %sw.bb1 ], [ 16, %sw.bb ]
  ret i32 %arch.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @riva_common_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @riva_get_memlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @riva_get_maxdclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riva_get_EDID(ptr nocapture noundef readonly %info, ptr noundef readonly %pdev) unnamed_addr #0 align 64 {
entry:
  %var.i = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.129) #14
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.146) #14
  %tobool.not.i.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i.i, label %entry.do.end7_crit_edge, label %pci_device_to_OF_node.exit.i

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

pci_device_to_OF_node.exit.i:                     ; preds = %entry
  %of_node.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %2 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i.i, align 8
  %cmp.not41.i = icmp eq ptr %3, null
  br i1 %cmp.not41.i, label %pci_device_to_OF_node.exit.i.do.end7_crit_edge, label %pci_device_to_OF_node.exit.i.for.body.i_crit_edge

pci_device_to_OF_node.exit.i.for.body.i_crit_edge: ; preds = %pci_device_to_OF_node.exit.i
  br label %for.body.i

pci_device_to_OF_node.exit.i.do.end7_crit_edge:   ; preds = %pci_device_to_OF_node.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %pci_device_to_OF_node.exit.i.for.body.i_crit_edge
  %dp.042.i = phi ptr [ %5, %for.inc22.i.for.body.i_crit_edge ], [ %3, %pci_device_to_OF_node.exit.i.for.body.i_crit_edge ]
  %call3.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.147, ptr noundef null) #11
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %for.body.i.for.inc22.i_crit_edge, label %if.end.i

for.body.i.for.inc22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22.i

if.end.i:                                         ; preds = %for.body.i
  %call5.i = tail call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(4) @.str.148, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %for.body11.preheader.i, label %if.end.i.for.inc22.i_crit_edge

if.end.i.for.inc22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22.i

for.body11.preheader.i:                           ; preds = %if.end.i
  %call13.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.140, ptr noundef null) #11
  %cmp14.not.i = icmp eq ptr %call13.i, null
  br i1 %cmp14.not.i, label %for.cond9.i, label %for.body11.preheader.i.do.end3_crit_edge

for.body11.preheader.i.do.end3_crit_edge:         ; preds = %for.body11.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.cond9.i:                                      ; preds = %for.body11.preheader.i
  %call13.1.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.141, ptr noundef null) #11
  %cmp14.not.1.i = icmp eq ptr %call13.1.i, null
  br i1 %cmp14.not.1.i, label %for.cond9.1.i, label %for.cond9.i.do.end3_crit_edge

for.cond9.i.do.end3_crit_edge:                    ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.cond9.1.i:                                    ; preds = %for.cond9.i
  %call13.2.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.142, ptr noundef null) #11
  %cmp14.not.2.i = icmp eq ptr %call13.2.i, null
  br i1 %cmp14.not.2.i, label %for.cond9.2.i, label %for.cond9.1.i.do.end3_crit_edge

for.cond9.1.i.do.end3_crit_edge:                  ; preds = %for.cond9.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.cond9.2.i:                                    ; preds = %for.cond9.1.i
  %call13.3.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.143, ptr noundef null) #11
  %cmp14.not.3.i = icmp eq ptr %call13.3.i, null
  br i1 %cmp14.not.3.i, label %for.cond9.3.i, label %for.cond9.2.i.do.end3_crit_edge

for.cond9.2.i.do.end3_crit_edge:                  ; preds = %for.cond9.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.cond9.3.i:                                    ; preds = %for.cond9.2.i
  %call13.4.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.144, ptr noundef null) #11
  %cmp14.not.4.i = icmp eq ptr %call13.4.i, null
  br i1 %cmp14.not.4.i, label %for.cond9.4.i, label %for.cond9.3.i.do.end3_crit_edge

for.cond9.3.i.do.end3_crit_edge:                  ; preds = %for.cond9.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.cond9.4.i:                                    ; preds = %for.cond9.3.i
  %call13.5.i = tail call ptr @of_get_property(ptr noundef nonnull %dp.042.i, ptr noundef nonnull @.str.145, ptr noundef null) #11
  %cmp14.not.5.i = icmp eq ptr %call13.5.i, null
  br i1 %cmp14.not.5.i, label %for.cond9.4.i.for.inc22.i_crit_edge, label %for.cond9.4.i.do.end3_crit_edge

for.cond9.4.i.do.end3_crit_edge:                  ; preds = %for.cond9.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.cond9.4.i.for.inc22.i_crit_edge:              ; preds = %for.cond9.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %for.cond9.4.i.for.inc22.i_crit_edge, %if.end.i.for.inc22.i_crit_edge, %for.body.i.for.inc22.i_crit_edge
  %child.i = getelementptr inbounds %struct.device_node, ptr %dp.042.i, i32 0, i32 7
  %4 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %for.inc22.i.do.end7_crit_edge, label %for.inc22.i.for.body.i_crit_edge

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc22.i.do.end7_crit_edge:                    ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end3:                                          ; preds = %for.cond9.4.i.do.end3_crit_edge, %for.cond9.3.i.do.end3_crit_edge, %for.cond9.2.i.do.end3_crit_edge, %for.cond9.1.i.do.end3_crit_edge, %for.cond9.i.do.end3_crit_edge, %for.body11.preheader.i.do.end3_crit_edge
  %call13.lcssa.i = phi ptr [ %call13.i, %for.body11.preheader.i.do.end3_crit_edge ], [ %call13.1.i, %for.cond9.i.do.end3_crit_edge ], [ %call13.2.i, %for.cond9.1.i.do.end3_crit_edge ], [ %call13.3.i, %for.cond9.2.i.do.end3_crit_edge ], [ %call13.4.i, %for.cond9.3.i.do.end3_crit_edge ], [ %call13.5.i, %for.cond9.4.i.do.end3_crit_edge ]
  %EDID.i = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %EDID.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13.lcssa.i, ptr %EDID.i, align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.129) #14
  br label %return

do.end7:                                          ; preds = %for.inc22.i.do.end7_crit_edge, %pci_device_to_OF_node.exit.i.do.end7_crit_edge, %entry.do.end7_crit_edge
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.146) #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #14
  %7 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %par1.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var.i) #11
  %9 = call ptr @memset(ptr %var.i, i32 255, i32 160)
  %call.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.154) #14
  %LockUnlock.i = getelementptr inbounds %struct._riva_hw_inst, ptr %8, i32 0, i32 40
  %10 = ptrtoint ptr %LockUnlock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %LockUnlock.i, align 8
  tail call void %11(ptr noundef %8, i32 noundef 0) #11
  tail call void @riva_create_i2c_busses(ptr noundef %8) #11
  %EDID.i25 = getelementptr inbounds %struct.riva_par, ptr %8, i32 0, i32 9
  %arrayidx.i = getelementptr %struct.riva_par, ptr %8, i32 0, i32 17, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end7.for.inc.i_crit_edge, label %if.end.i26

do.end7.for.inc.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i26:                                       ; preds = %do.end7
  %call4.i = tail call i32 @riva_probe_i2c_connector(ptr noundef %8, i32 noundef 0, ptr noundef %EDID.i25) #11
  %14 = ptrtoint ptr %EDID.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %EDID.i25, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %if.end.i26.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i26.for.inc.i_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i26
  %call8.i = call i32 @fb_parse_edid(ptr noundef nonnull %15, ptr noundef nonnull %var.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

do.end13.i:                                       ; preds = %land.lhs.true.2.i.do.end13.i_crit_edge, %land.lhs.true.1.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge
  %i.037.lcssa.i = phi i32 [ 0, %land.lhs.true.i.do.end13.i_crit_edge ], [ 1, %land.lhs.true.1.i.do.end13.i_crit_edge ], [ 2, %land.lhs.true.2.i.do.end13.i_crit_edge ]
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %i.037.lcssa.i) #14
  br label %riva_get_EDID_i2c.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i26.for.inc.i_crit_edge, %do.end7.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.riva_par, ptr %8, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1.i, align 8
  %tobool.not.1.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call4.1.i = call i32 @riva_probe_i2c_connector(ptr noundef %8, i32 noundef 1, ptr noundef %EDID.i25) #11
  %18 = ptrtoint ptr %EDID.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %EDID.i25, align 4
  %tobool6.not.1.i = icmp eq ptr %19, null
  br i1 %tobool6.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %if.end.1.i
  %call8.1.i = call i32 @fb_parse_edid(ptr noundef nonnull %19, ptr noundef nonnull %var.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i)
  %tobool9.not.1.i = icmp eq i32 %call8.1.i, 0
  br i1 %tobool9.not.1.i, label %land.lhs.true.1.i.do.end13.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.lhs.true.1.i.do.end13.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.riva_par, ptr %8, i32 0, i32 17, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2.i, align 8
  %tobool.not.2.i = icmp eq ptr %21, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.riva_get_EDID_i2c.exit_crit_edge, label %if.end.2.i

for.inc.1.i.riva_get_EDID_i2c.exit_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_get_EDID_i2c.exit

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call4.2.i = call i32 @riva_probe_i2c_connector(ptr noundef %8, i32 noundef 2, ptr noundef %EDID.i25) #11
  %22 = ptrtoint ptr %EDID.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %EDID.i25, align 4
  %tobool6.not.2.i = icmp eq ptr %23, null
  br i1 %tobool6.not.2.i, label %if.end.2.i.riva_get_EDID_i2c.exit_crit_edge, label %land.lhs.true.2.i

if.end.2.i.riva_get_EDID_i2c.exit_crit_edge:      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_get_EDID_i2c.exit

land.lhs.true.2.i:                                ; preds = %if.end.2.i
  %call8.2.i = call i32 @fb_parse_edid(ptr noundef nonnull %23, ptr noundef nonnull %var.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i)
  %tobool9.not.2.i = icmp eq i32 %call8.2.i, 0
  br i1 %tobool9.not.2.i, label %land.lhs.true.2.i.do.end13.i_crit_edge, label %land.lhs.true.2.i.riva_get_EDID_i2c.exit_crit_edge

land.lhs.true.2.i.riva_get_EDID_i2c.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_get_EDID_i2c.exit

land.lhs.true.2.i.do.end13.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

riva_get_EDID_i2c.exit:                           ; preds = %land.lhs.true.2.i.riva_get_EDID_i2c.exit_crit_edge, %if.end.2.i.riva_get_EDID_i2c.exit_crit_edge, %for.inc.1.i.riva_get_EDID_i2c.exit_crit_edge, %do.end13.i
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.154) #14
  %24 = ptrtoint ptr %EDID.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %EDID.i25, align 4
  %tobool23.not.i.not = icmp eq ptr %25, null
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var.i) #11
  br i1 %tobool23.not.i.not, label %do.end14, label %riva_get_EDID_i2c.exit.do.end19_crit_edge

riva_get_EDID_i2c.exit.do.end19_crit_edge:        ; preds = %riva_get_EDID_i2c.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end14:                                         ; preds = %riva_get_EDID_i2c.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %riva_get_EDID_i2c.exit.do.end19_crit_edge
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.129) #14
  br label %return

return:                                           ; preds = %do.end19, %do.end3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riva_get_edidinfo(ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %EDID = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %EDID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %EDID, align 4
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8
  tail call void @fb_edid_to_monspecs(ptr noundef %3, ptr noundef %monspecs) #11
  %modedb = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modedb, align 4
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modedb_len, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef %5, i32 noundef %7, ptr noundef %modelist) #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.160) #14
  %8 = load ptr, ptr @mode_option, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %9 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %modedb, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %modedb_len, align 4
  %call2.i = tail call i32 @fb_find_mode(ptr noundef nonnull @rivafb_default_var, ptr noundef %info, ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, ptr noundef null, i32 noundef 8) #11
  br label %riva_update_default_var.exit

if.else.i:                                        ; preds = %entry
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %if.else.i.riva_update_default_var.exit_crit_edge, label %if.then4.i

if.else.i.riva_update_default_var.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_update_default_var.exit

if.then4.i:                                       ; preds = %if.else.i
  %modedb.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 8
  %13 = ptrtoint ptr %modedb.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %modedb.sroa.5.0.copyload.i = load i32, ptr %modedb.sroa.5.0..sroa_idx.i, align 4
  %modedb.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 12
  %14 = ptrtoint ptr %modedb.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %modedb.sroa.6.0.copyload.i = load i32, ptr %modedb.sroa.6.0..sroa_idx.i, align 4
  %modedb.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 16
  %15 = ptrtoint ptr %modedb.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %modedb.sroa.7.0.copyload.i = load i32, ptr %modedb.sroa.7.0..sroa_idx.i, align 4
  %modedb.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 20
  %16 = ptrtoint ptr %modedb.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %modedb.sroa.8.0.copyload.i = load i32, ptr %modedb.sroa.8.0..sroa_idx.i, align 4
  %modedb.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 24
  %17 = ptrtoint ptr %modedb.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %modedb.sroa.9.0.copyload.i = load i32, ptr %modedb.sroa.9.0..sroa_idx.i, align 4
  %modedb.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 28
  %18 = ptrtoint ptr %modedb.sroa.10.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %modedb.sroa.10.0.copyload.i = load i32, ptr %modedb.sroa.10.0..sroa_idx.i, align 4
  %modedb.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 32
  %19 = ptrtoint ptr %modedb.sroa.11.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %modedb.sroa.11.0.copyload.i = load i32, ptr %modedb.sroa.11.0..sroa_idx.i, align 4
  %modedb.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 36
  %20 = ptrtoint ptr %modedb.sroa.12.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %modedb.sroa.12.0.copyload.i = load i32, ptr %modedb.sroa.12.0..sroa_idx.i, align 4
  %modedb.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 40
  %21 = ptrtoint ptr %modedb.sroa.13.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %modedb.sroa.13.0.copyload.i = load i32, ptr %modedb.sroa.13.0..sroa_idx.i, align 4
  %modedb.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 44
  %22 = ptrtoint ptr %modedb.sroa.14.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %modedb.sroa.14.0.copyload.i = load i32, ptr %modedb.sroa.14.0..sroa_idx.i, align 4
  %modedb.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %10, i32 48
  %23 = ptrtoint ptr %modedb.sroa.15.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %modedb.sroa.15.0.copyload.i = load i32, ptr %modedb.sroa.15.0..sroa_idx.i, align 4
  %misc.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 22
  %24 = ptrtoint ptr %misc.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %misc.i, align 2
  %26 = and i16 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool7.not.i = icmp eq i16 %26, 0
  br i1 %tobool7.not.i, label %if.then4.i.if.end19.i_crit_edge, label %for.cond.preheader.i

if.then4.i.if.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

for.cond.preheader.i:                             ; preds = %if.then4.i
  %27 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1014.not.i = icmp eq i32 %28, 0
  br i1 %cmp1014.not.i, label %for.cond.preheader.i.if.end19.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end19.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %flag.i = getelementptr %struct.fb_videomode, ptr %10, i32 %i.015.i, i32 13
  %29 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flag.i, align 4
  %and14.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %for.inc.i, label %if.then16.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx13.i = getelementptr %struct.fb_videomode, ptr %10, i32 %i.015.i
  %modedb.sroa.5.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 8
  %31 = ptrtoint ptr %modedb.sroa.5.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %modedb.sroa.5.0.copyload1.i = load i32, ptr %modedb.sroa.5.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.6.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 12
  %32 = ptrtoint ptr %modedb.sroa.6.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %modedb.sroa.6.0.copyload2.i = load i32, ptr %modedb.sroa.6.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.7.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 16
  %33 = ptrtoint ptr %modedb.sroa.7.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %modedb.sroa.7.0.copyload3.i = load i32, ptr %modedb.sroa.7.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.8.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 20
  %34 = ptrtoint ptr %modedb.sroa.8.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %modedb.sroa.8.0.copyload4.i = load i32, ptr %modedb.sroa.8.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.9.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 24
  %35 = ptrtoint ptr %modedb.sroa.9.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %modedb.sroa.9.0.copyload5.i = load i32, ptr %modedb.sroa.9.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.10.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 28
  %36 = ptrtoint ptr %modedb.sroa.10.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %modedb.sroa.10.0.copyload6.i = load i32, ptr %modedb.sroa.10.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.11.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 32
  %37 = ptrtoint ptr %modedb.sroa.11.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %modedb.sroa.11.0.copyload7.i = load i32, ptr %modedb.sroa.11.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.12.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 36
  %38 = ptrtoint ptr %modedb.sroa.12.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %modedb.sroa.12.0.copyload8.i = load i32, ptr %modedb.sroa.12.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.13.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 40
  %39 = ptrtoint ptr %modedb.sroa.13.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %modedb.sroa.13.0.copyload9.i = load i32, ptr %modedb.sroa.13.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.14.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 44
  %40 = ptrtoint ptr %modedb.sroa.14.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %modedb.sroa.14.0.copyload10.i = load i32, ptr %modedb.sroa.14.0.arrayidx13.sroa_idx.i, align 4
  %modedb.sroa.15.0.arrayidx13.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx13.i, i32 48
  %41 = ptrtoint ptr %modedb.sroa.15.0.arrayidx13.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %modedb.sroa.15.0.copyload11.i = load i32, ptr %modedb.sroa.15.0.arrayidx13.sroa_idx.i, align 4
  br label %if.end19.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.inc.i.if.end19.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end19.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.inc.i.if.end19.i_crit_edge, %if.then16.i, %for.cond.preheader.i.if.end19.i_crit_edge, %if.then4.i.if.end19.i_crit_edge
  %modedb.sroa.5.0.i = phi i32 [ %modedb.sroa.5.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.5.0.copyload1.i, %if.then16.i ], [ %modedb.sroa.5.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.5.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.6.0.i = phi i32 [ %modedb.sroa.6.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.6.0.copyload2.i, %if.then16.i ], [ %modedb.sroa.6.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.6.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.7.0.i = phi i32 [ %modedb.sroa.7.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.7.0.copyload3.i, %if.then16.i ], [ %modedb.sroa.7.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.7.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.8.0.i = phi i32 [ %modedb.sroa.8.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.8.0.copyload4.i, %if.then16.i ], [ %modedb.sroa.8.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.8.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.9.0.i = phi i32 [ %modedb.sroa.9.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.9.0.copyload5.i, %if.then16.i ], [ %modedb.sroa.9.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.9.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.10.0.i = phi i32 [ %modedb.sroa.10.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.10.0.copyload6.i, %if.then16.i ], [ %modedb.sroa.10.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.10.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.11.0.i = phi i32 [ %modedb.sroa.11.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.11.0.copyload7.i, %if.then16.i ], [ %modedb.sroa.11.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.11.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.12.0.i = phi i32 [ %modedb.sroa.12.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.12.0.copyload8.i, %if.then16.i ], [ %modedb.sroa.12.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.12.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.13.0.i = phi i32 [ %modedb.sroa.13.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.13.0.copyload9.i, %if.then16.i ], [ %modedb.sroa.13.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.13.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.14.0.i = phi i32 [ %modedb.sroa.14.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.14.0.copyload10.i, %if.then16.i ], [ %modedb.sroa.14.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.14.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  %modedb.sroa.15.0.i = phi i32 [ %modedb.sroa.15.0.copyload.i, %if.then4.i.if.end19.i_crit_edge ], [ %modedb.sroa.15.0.copyload11.i, %if.then16.i ], [ %modedb.sroa.15.0.copyload.i, %for.cond.preheader.i.if.end19.i_crit_edge ], [ %modedb.sroa.15.0.copyload.i, %for.inc.i.if.end19.i_crit_edge ]
  store i32 8, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 6), align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.78) #14
  store i32 %modedb.sroa.5.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 2), align 4
  store i32 %modedb.sroa.5.0.i, ptr @rivafb_default_var, align 4
  store i32 %modedb.sroa.6.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 1), align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %modedb.sroa.6.0.i)
  %cmp.i.i = icmp ult i32 %42, %modedb.sroa.6.0.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end19.i.riva_update_var.exit.i_crit_edge

if.end19.i.riva_update_var.exit.i_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_update_var.exit.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %modedb.sroa.6.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 3), align 4
  br label %riva_update_var.exit.i

riva_update_var.exit.i:                           ; preds = %if.then.i.i, %if.end19.i.riva_update_var.exit.i_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 4), align 4
  store i32 %modedb.sroa.7.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 17), align 4
  store i32 %modedb.sroa.8.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 18), align 4
  store i32 %modedb.sroa.9.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 19), align 4
  store i32 %modedb.sroa.10.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 20), align 4
  store i32 %modedb.sroa.11.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 21), align 4
  store i32 %modedb.sroa.12.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 22), align 4
  store i32 %modedb.sroa.13.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 23), align 4
  store i32 %modedb.sroa.14.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 24), align 4
  store i32 %modedb.sroa.15.0.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @rivafb_default_var, i32 0, i32 25), align 4
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.78) #14
  br label %riva_update_default_var.exit

riva_update_default_var.exit:                     ; preds = %riva_update_var.exit.i, %if.else.i.riva_update_default_var.exit_crit_edge, %if.then.i
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.160) #14
  %input = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 15
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %input, align 4
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not = icmp eq i16 %45, 0
  br i1 %tobool.not, label %riva_update_default_var.exit.if.end_crit_edge, label %if.then

riva_update_default_var.exit.if.end_crit_edge:    ; preds = %riva_update_default_var.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %riva_update_default_var.exit
  call void @__sanitizer_cov_trace_pc() #13
  %FlatPanel = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 13
  %46 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %FlatPanel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %riva_update_default_var.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riva_set_fbinfo(ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.163) #14
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 14080, ptr %flags, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %4)
  %cmp = icmp eq i32 %4, 48
  br i1 %cmp, label %entry.do.end4_crit_edge, label %lor.lhs.false

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8, ptr @noaccel, align 1, !range !397
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end4_crit_edge

lor.lhs.false.do.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end4:                                          ; preds = %lor.lhs.false.do.end4_crit_edge, %entry.do.end4_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %do.end4, %lor.lhs.false.if.end_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %var, ptr @rivafb_default_var, i32 160)
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %9 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp9 = icmp eq i32 %10, 8
  %cond = select i1 %cmp9, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %visual, align 4
  %pseudo_palette = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 1
  %pseudo_palette10 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pseudo_palette, ptr %pseudo_palette10, align 4
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %switch.selectcmp.i = icmp eq i32 %14, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 32, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %switch.selectcmp3.i = icmp eq i32 %14, 6
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 64, i32 %switch.select.i
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call13 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef %switch.select4.i, i32 noundef 0) #11
  %size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %size, align 4
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %buf_align, align 4
  %access_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %access_align to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %access_align, align 4
  %flags17 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags17, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %yres_virtual, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.163) #14
  %call25 = tail call i32 @rivafb_check_var(ptr noundef %var, ptr noundef %info)
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riva_bl_init(ptr noundef %par) unnamed_addr #0 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %name = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #11
  %pdev = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 14
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #11
  %FlatPanel = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 13
  %4 = call ptr @memset(ptr %name, i32 255, i32 12)
  %5 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %FlatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %8 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %node = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.169, i32 noundef %10)
  %11 = call ptr @memset(ptr %props, i32 0, i32 28)
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %7, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 127, ptr %8, align 4
  %dev = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call3 = call ptr @backlight_device_register(ptr noundef nonnull %name, ptr noundef %15, ptr noundef %par, ptr noundef nonnull @riva_bl_ops, ptr noundef nonnull %props) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 15
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bl_dev, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %17 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3, ptr %bl_dev, align 4
  call void @fb_bl_default_curve(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 65, i8 noundef zeroext -1) #11
  %max_brightness10 = getelementptr inbounds %struct.backlight_properties, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %max_brightness10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_brightness10, align 4
  %20 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call3, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %power, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #11
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call3, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end7.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end7.backlight_update_status.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 %25(ptr noundef %call3) #11
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end7.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #11
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull %name) #14
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @riva_delete_i2c_busses(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #14
  %open_lock = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #11
  %ref_count = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  tail call void @arm_heavy_mb() #11
  %PCIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %7, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 -1) #11, !srcloc !399
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %LockUnlock, align 8
  tail call void %9(ptr noundef %1, i32 noundef 0) #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #14
  %10 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %LockUnlock, align 8
  tail call void %11(ptr noundef %1, i32 noundef 0) #11
  %UnloadStateExt.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 35
  %12 = ptrtoint ptr %UnloadStateExt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %UnloadStateExt.i, align 4
  %ext.i = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 5, i32 5
  tail call void %13(ptr noundef %1, ptr noundef %ext.i) #11
  %PVIO.i.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 29
  %14 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 972
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !402
  %misc_output.i = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %misc_output.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %misc_output.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.079.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.079.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i69.i = getelementptr i8, ptr %19, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i69.i, i8 %conv.i) #11, !srcloc !399
  %20 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PCIO.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 981
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  %arrayidx.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 1, i32 %i.079.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %for.body9.i.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body9.i.preheader:                            ; preds = %for.body.i
  %initial_state = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 5
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.i.preheader
  %i.180.i = phi i32 [ %inc14.i, %for.body9.i.for.body9.i_crit_edge ], [ 0, %for.body9.i.preheader ]
  %conv10.i = trunc i32 %i.180.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !405
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i71.i = getelementptr i8, ptr %25, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i71.i, i8 %conv10.i) #11, !srcloc !399
  %26 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %PCIO.i, align 8
  %add.ptr3.i72.i = getelementptr i8, ptr %27, i32 961
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i72.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !406
  %arrayidx12.i = getelementptr [21 x i8], ptr %initial_state, i32 0, i32 %i.180.i
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx12.i, align 1
  %inc14.i = add nuw nsw i32 %i.180.i, 1
  %exitcond83.not.i = icmp eq i32 %inc14.i, 21
  br i1 %exitcond83.not.i, label %riva_save_state.exit, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9.i

riva_save_state.exit:                             ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %31, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.i, i8 0) #11, !srcloc !399
  %32 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.i = getelementptr i8, ptr %33, i32 975
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx22.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.1.i = getelementptr i8, ptr %37, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.1.i, i8 1) #11, !srcloc !399
  %38 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.1.i = getelementptr i8, ptr %39, i32 975
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.1.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.1.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx22.1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.2.i = getelementptr i8, ptr %43, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.2.i, i8 2) #11, !srcloc !399
  %44 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.2.i = getelementptr i8, ptr %45, i32 975
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.2.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.2.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx22.2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.3.i = getelementptr i8, ptr %49, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.3.i, i8 3) #11, !srcloc !399
  %50 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.3.i = getelementptr i8, ptr %51, i32 975
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.3.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.3.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 3
  %53 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx22.3.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.4.i = getelementptr i8, ptr %55, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.4.i, i8 4) #11, !srcloc !399
  %56 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.4.i = getelementptr i8, ptr %57, i32 975
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.4.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.4.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 4
  %59 = ptrtoint ptr %arrayidx22.4.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx22.4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.5.i = getelementptr i8, ptr %61, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.5.i, i8 5) #11, !srcloc !399
  %62 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.5.i = getelementptr i8, ptr %63, i32 975
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.5.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.5.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 5
  %65 = ptrtoint ptr %arrayidx22.5.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx22.5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.6.i = getelementptr i8, ptr %67, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.6.i, i8 6) #11, !srcloc !399
  %68 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.6.i = getelementptr i8, ptr %69, i32 975
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.6.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.6.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 6
  %71 = ptrtoint ptr %arrayidx22.6.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx22.6.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %72 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.7.i = getelementptr i8, ptr %73, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.7.i, i8 7) #11, !srcloc !399
  %74 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.7.i = getelementptr i8, ptr %75, i32 975
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.7.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.7.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 7
  %77 = ptrtoint ptr %arrayidx22.7.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx22.7.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i74.8.i = getelementptr i8, ptr %79, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74.8.i, i8 8) #11, !srcloc !399
  %80 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i75.8.i = getelementptr i8, ptr %81, i32 975
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i75.8.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %arrayidx22.8.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 2, i32 8
  %83 = ptrtoint ptr %arrayidx22.8.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx22.8.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %84 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %85, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77.i, i8 0) #11, !srcloc !399
  %86 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i78.i = getelementptr i8, ptr %87, i32 965
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i78.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %arrayidx32.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 3
  %89 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx32.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i77.1.i = getelementptr i8, ptr %91, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77.1.i, i8 1) #11, !srcloc !399
  %92 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i78.1.i = getelementptr i8, ptr %93, i32 965
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i78.1.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %arrayidx32.1.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 3, i32 1
  %95 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx32.1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i77.2.i = getelementptr i8, ptr %97, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77.2.i, i8 2) #11, !srcloc !399
  %98 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i78.2.i = getelementptr i8, ptr %99, i32 965
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i78.2.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %arrayidx32.2.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 3, i32 2
  %101 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx32.2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %102 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i77.3.i = getelementptr i8, ptr %103, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77.3.i, i8 3) #11, !srcloc !399
  %104 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i78.3.i = getelementptr i8, ptr %105, i32 965
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i78.3.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %arrayidx32.3.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 3, i32 3
  %107 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx32.3.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %108 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr.i77.4.i = getelementptr i8, ptr %109, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77.4.i, i8 4) #11, !srcloc !399
  %110 = ptrtoint ptr %PVIO.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %PVIO.i.i, align 4
  %add.ptr3.i78.4.i = getelementptr i8, ptr %111, i32 965
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i78.4.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %arrayidx32.4.i = getelementptr %struct.riva_par, ptr %1, i32 0, i32 5, i32 3, i32 4
  %113 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx32.4.i, align 1
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.60) #14
  br label %if.end

if.end:                                           ; preds = %riva_save_state.exit, %entry.if.end_crit_edge
  %114 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ref_count, align 8
  %inc = add i32 %115, 1
  store i32 %inc, ptr %ref_count, align 8
  tail call void @mutex_unlock(ptr noundef %open_lock) #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.63) #14
  %open_lock = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #11
  %ref_count = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %3, label %entry.if.end12_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %open_lock) #11
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %LockUnlock, align 8
  tail call void %6(ptr noundef %1, i32 noundef 0) #11
  %LoadStateExt = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 34
  %7 = ptrtoint ptr %LoadStateExt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %LoadStateExt, align 8
  %initial_state = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 5
  %ext = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 5, i32 5
  tail call void %8(ptr noundef %1, ptr noundef %ext) #11
  tail call fastcc void @riva_load_state(ptr noundef %1, ptr noundef %initial_state)
  %9 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %LockUnlock, align 8
  tail call void %10(ptr noundef %1, i32 noundef 1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %entry.if.end12_crit_edge
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_count, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %ref_count, align 8
  tail call void @mutex_unlock(ptr noundef %open_lock) #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.63) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_check_var(ptr noundef %var, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69) #14
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %2 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %5, label %do.end64 [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge255
    i32 3, label %if.end.sw.bb_crit_edge256
    i32 4, label %if.end.sw.bb_crit_edge257
    i32 5, label %if.end.sw.bb_crit_edge258
    i32 6, label %if.end.sw.bb_crit_edge259
    i32 7, label %if.end.sw.bb_crit_edge260
    i32 8, label %if.end.sw.bb_crit_edge261
    i32 9, label %if.end.sw.bb10_crit_edge
    i32 10, label %if.end.sw.bb10_crit_edge262
    i32 11, label %if.end.sw.bb10_crit_edge263
    i32 12, label %if.end.sw.bb10_crit_edge264
    i32 13, label %if.end.sw.bb10_crit_edge265
    i32 14, label %if.end.sw.bb10_crit_edge266
    i32 15, label %if.end.sw.bb10_crit_edge267
    i32 16, label %if.end.sw.bb13_crit_edge
    i32 17, label %if.end.sw.bb48_crit_edge
    i32 18, label %if.end.sw.bb48_crit_edge268
    i32 19, label %if.end.sw.bb48_crit_edge269
    i32 20, label %if.end.sw.bb48_crit_edge270
    i32 21, label %if.end.sw.bb48_crit_edge271
    i32 22, label %if.end.sw.bb48_crit_edge272
    i32 23, label %if.end.sw.bb48_crit_edge273
    i32 24, label %if.end.sw.bb48_crit_edge274
    i32 25, label %if.end.sw.bb48_crit_edge275
    i32 26, label %if.end.sw.bb48_crit_edge276
    i32 27, label %if.end.sw.bb48_crit_edge277
    i32 28, label %if.end.sw.bb48_crit_edge278
    i32 29, label %if.end.sw.bb48_crit_edge279
    i32 30, label %if.end.sw.bb48_crit_edge280
    i32 31, label %if.end.sw.bb48_crit_edge281
    i32 32, label %if.end.sw.bb48_crit_edge282
  ]

if.end.sw.bb48_crit_edge282:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge281:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge280:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge279:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge278:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge277:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge276:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge275:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge274:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge273:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge272:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge271:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge270:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge269:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge268:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb48_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end.sw.bb10_crit_edge267:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge266:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge265:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge264:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge263:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge262:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb_crit_edge261:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge260:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge259:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge258:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge257:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge256:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge255:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge255, %if.end.sw.bb_crit_edge256, %if.end.sw.bb_crit_edge257, %if.end.sw.bb_crit_edge258, %if.end.sw.bb_crit_edge259, %if.end.sw.bb_crit_edge260, %if.end.sw.bb_crit_edge261
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %7 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %blue, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %8 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %green, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %9 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length, align 4
  %length6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %length6, align 4
  %length8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %length8, align 4
  %13 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %bits_per_pixel, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge262, %if.end.sw.bb10_crit_edge263, %if.end.sw.bb10_crit_edge264, %if.end.sw.bb10_crit_edge265, %if.end.sw.bb10_crit_edge266, %if.end.sw.bb10_crit_edge267
  %length12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %length12, align 4
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb10, %if.end.sw.bb13_crit_edge
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %bits_per_pixel, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp = icmp eq i32 %17, 3
  br i1 %cmp, label %if.then15, label %sw.bb13.if.end18_crit_edge

sw.bb13.if.end18_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %length17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %length17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %sw.bb13.if.end18_crit_edge
  %green19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp21 = icmp eq i32 %20, 5
  %red23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %red23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %red23, align 4
  %22 = ptrtoint ptr %green19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %green19, align 4
  %blue27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %23 = ptrtoint ptr %blue27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %blue27, align 4
  %length30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %length30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %length30, align 4
  %25 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %length20, align 4
  %length34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %length34, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %red23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 11, ptr %red23, align 4
  %28 = ptrtoint ptr %green19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %green19, align 4
  %blue39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %29 = ptrtoint ptr %blue39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %blue39, align 4
  %length42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %length42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %length42, align 4
  %31 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %length20, align 4
  %length46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %length46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %length46, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end.sw.bb48_crit_edge, %if.end.sw.bb48_crit_edge268, %if.end.sw.bb48_crit_edge269, %if.end.sw.bb48_crit_edge270, %if.end.sw.bb48_crit_edge271, %if.end.sw.bb48_crit_edge272, %if.end.sw.bb48_crit_edge273, %if.end.sw.bb48_crit_edge274, %if.end.sw.bb48_crit_edge275, %if.end.sw.bb48_crit_edge276, %if.end.sw.bb48_crit_edge277, %if.end.sw.bb48_crit_edge278, %if.end.sw.bb48_crit_edge279, %if.end.sw.bb48_crit_edge280, %if.end.sw.bb48_crit_edge281, %if.end.sw.bb48_crit_edge282
  %blue49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %length50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length50, align 4
  %green51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %length52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %length52, align 4
  %red53 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %length54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %length54, align 4
  %36 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32, ptr %bits_per_pixel, align 4
  %37 = ptrtoint ptr %red53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %red53, align 4
  %38 = ptrtoint ptr %green51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %green51, align 4
  %39 = ptrtoint ptr %blue49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %blue49, align 4
  br label %sw.epilog

do.end64:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %42 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %yres, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %41, i32 noundef %43, i32 noundef %5) #14
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb48, %if.else, %if.then22, %sw.bb
  %nom.0 = phi i32 [ 4, %sw.bb48 ], [ 1, %sw.bb ], [ 2, %if.else ], [ 2, %if.then22 ]
  %44 = load i8, ptr @strictmode, align 1, !range !397
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool73.not = icmp eq i8 %44, 0
  br i1 %tobool73.not, label %if.then74, label %sw.epilog.land.lhs.true_crit_edge

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then74:                                        ; preds = %sw.epilog
  %vfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 19
  %45 = ptrtoint ptr %vfmax to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool75.not = icmp eq i16 %46, 0
  br i1 %tobool75.not, label %if.then74.if.end108_crit_edge, label %lor.lhs.false

if.then74.if.end108_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

lor.lhs.false:                                    ; preds = %if.then74
  %hfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 12
  %47 = ptrtoint ptr %hfmax to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool77.not = icmp eq i32 %48, 0
  br i1 %tobool77.not, label %lor.lhs.false.if.end108_crit_edge, label %lor.lhs.false78

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

lor.lhs.false78:                                  ; preds = %lor.lhs.false
  %dclkmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 14
  %49 = ptrtoint ptr %dclkmax to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dclkmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool80.not = icmp eq i32 %50, 0
  br i1 %tobool80.not, label %lor.lhs.false78.if.end108_crit_edge, label %lor.lhs.false81

lor.lhs.false78.if.end108_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %call82 = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %lor.lhs.false81.if.end108_crit_edge, label %lor.lhs.false81.land.lhs.true_crit_edge

lor.lhs.false81.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false81.if.end108_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

land.lhs.true:                                    ; preds = %lor.lhs.false81.land.lhs.true_crit_edge, %sw.epilog.land.lhs.true_crit_edge
  %gtf = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 21
  %51 = ptrtoint ptr %gtf to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %gtf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool89.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool89.not, label %land.lhs.true.if.then97_crit_edge, label %if.then90

land.lhs.true.if.then97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

if.then90:                                        ; preds = %land.lhs.true
  %call91 = tail call i32 @fb_get_mode(i32 noundef 0, i32 noundef 0, ptr noundef %var, ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not.not, label %if.then90.if.end108_crit_edge, label %if.then90.if.then97_crit_edge

if.then90.if.then97_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

if.then90.if.end108_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then97:                                        ; preds = %if.then90.if.then97_crit_edge, %land.lhs.true.if.then97_crit_edge
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call98 = tail call ptr @fb_find_best_mode(ptr noundef %var, ptr noundef %modelist) #11
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %land.lhs.true104.critedge, label %if.then100

if.then100:                                       ; preds = %if.then97
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.78) #14
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 2
  %52 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xres.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %54 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %xres_virtual.i, align 4
  %55 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 3
  %56 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %yres.i, align 4
  %yres2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %58 = ptrtoint ptr %yres2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %yres2.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %59 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %yres_virtual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %57)
  %cmp.i = icmp ult i32 %60, %57
  br i1 %cmp.i, label %if.then.i, label %if.then100.riva_update_var.exit_crit_edge

if.then100.riva_update_var.exit_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_update_var.exit

if.then.i:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %yres_virtual.i, align 4
  br label %riva_update_var.exit

riva_update_var.exit:                             ; preds = %if.then.i, %if.then100.riva_update_var.exit_crit_edge
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %62 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %yoffset.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %63 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %xoffset.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 4
  %64 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pixclock.i, align 4
  %66 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %pixclock, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 5
  %67 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %left_margin.i, align 4
  %left_margin7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %69 = ptrtoint ptr %left_margin7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %left_margin7.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 6
  %70 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %right_margin.i, align 4
  %right_margin8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %72 = ptrtoint ptr %right_margin8.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %right_margin8.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 7
  %73 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %upper_margin.i, align 4
  %upper_margin9.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %75 = ptrtoint ptr %upper_margin9.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %upper_margin9.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 8
  %76 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lower_margin.i, align 4
  %lower_margin10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %78 = ptrtoint ptr %lower_margin10.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %lower_margin10.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 9
  %79 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hsync_len.i, align 4
  %hsync_len11.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %81 = ptrtoint ptr %hsync_len11.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %hsync_len11.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 10
  %82 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vsync_len.i, align 4
  %vsync_len12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %84 = ptrtoint ptr %vsync_len12.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %vsync_len12.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 11
  %85 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sync.i, align 4
  %sync13.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %87 = ptrtoint ptr %sync13.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %sync13.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_videomode, ptr %call98, i32 0, i32 12
  %88 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vmode.i, align 4
  %vmode14.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %90 = ptrtoint ptr %vmode14.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %vmode14.i, align 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.78) #14
  br label %if.end108

land.lhs.true104.critedge:                        ; preds = %if.then97
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  %91 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool106.not = icmp eq i32 %92, 0
  br i1 %tobool106.not, label %land.lhs.true104.critedge.if.end108_crit_edge, label %land.lhs.true104.critedge.cleanup_crit_edge

land.lhs.true104.critedge.cleanup_crit_edge:      ; preds = %land.lhs.true104.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true104.critedge.if.end108_crit_edge:    ; preds = %land.lhs.true104.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.end108:                                        ; preds = %land.lhs.true104.critedge.if.end108_crit_edge, %riva_update_var.exit, %if.then90.if.end108_crit_edge, %lor.lhs.false81.if.end108_crit_edge, %lor.lhs.false78.if.end108_crit_edge, %lor.lhs.false.if.end108_crit_edge, %if.then74.if.end108_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %93 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %xres_virtual, align 4
  %95 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp110 = icmp ult i32 %94, %96
  br i1 %cmp110, label %if.then112, label %if.end108.if.end115_crit_edge

if.end108.if.end115_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %xres_virtual, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end108.if.end115_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %98 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %yres_virtual, align 4
  %yres116 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %100 = ptrtoint ptr %yres116 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %yres116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp117.not = icmp ugt i32 %99, %101
  br i1 %cmp117.not, label %if.end115.if.end121_crit_edge, label %if.then119

if.end115.if.end121_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %yres_virtual, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end115.if.end121_crit_edge
  %call.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.81) #14
  %103 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp.i247 = icmp eq i32 %104, -1
  %105 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp1.i = icmp eq i32 %106, -1
  br i1 %cmp.i247, label %land.lhs.true.i, label %if.else58.i

land.lhs.true.i:                                  ; preds = %if.end121
  br i1 %cmp1.i, label %do.end4.i, label %if.then44.i

do.end4.i:                                        ; preds = %land.lhs.true.i
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %107 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %smem_len.i, align 4
  %mul11.i = mul nuw nsw i32 %nom.0, 2048000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.i, i32 %108)
  %cmp12.i = icmp ult i32 %mul11.i, %108
  br i1 %cmp12.i, label %do.end4.i.if.end28.i_crit_edge, label %for.inc.i

do.end4.i.if.end28.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.i:                                        ; preds = %do.end4.i
  %mul11.1.i = mul nuw nsw i32 %nom.0, 1310720
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.1.i, i32 %108)
  %cmp12.1.i = icmp ult i32 %mul11.1.i, %108
  br i1 %cmp12.1.i, label %for.inc.i.if.end28.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end28.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul11.2.i = mul nuw nsw i32 %nom.0, 786432
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.2.i, i32 %108)
  %cmp12.2.i = icmp ult i32 %mul11.2.i, %108
  br i1 %cmp12.2.i, label %for.inc.1.i.if.end28.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end28.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul11.3.i = mul nuw nsw i32 %nom.0, 480000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.3.i, i32 %108)
  %cmp12.3.i = icmp ult i32 %mul11.3.i, %108
  br i1 %cmp12.3.i, label %for.inc.2.i.if.end28.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end28.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %mul11.4.i = mul nuw nsw i32 %nom.0, 307200
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.4.i, i32 %108)
  %cmp12.4.i = icmp ult i32 %mul11.4.i, %108
  br i1 %cmp12.4.i, label %for.inc.3.i.if.end28.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end28.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #14
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #14
  br label %cleanup

if.end28.i:                                       ; preds = %for.inc.3.i.if.end28.i_crit_edge, %for.inc.2.i.if.end28.i_crit_edge, %for.inc.1.i.if.end28.i_crit_edge, %for.inc.i.if.end28.i_crit_edge, %do.end4.i.if.end28.i_crit_edge
  %.lcssa.i = phi i32 [ 1600, %do.end4.i.if.end28.i_crit_edge ], [ 1280, %for.inc.i.if.end28.i_crit_edge ], [ 1024, %for.inc.1.i.if.end28.i_crit_edge ], [ 800, %for.inc.2.i.if.end28.i_crit_edge ], [ 640, %for.inc.3.i.if.end28.i_crit_edge ]
  %i.03.lcssa.i = phi i32 [ 0, %do.end4.i.if.end28.i_crit_edge ], [ 1, %for.inc.i.if.end28.i_crit_edge ], [ 2, %for.inc.1.i.if.end28.i_crit_edge ], [ 3, %for.inc.2.i.if.end28.i_crit_edge ], [ 4, %for.inc.3.i.if.end28.i_crit_edge ]
  %109 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %.lcssa.i, ptr %xres_virtual, align 4
  %yres33.i = getelementptr [6 x %struct.anon.106], ptr @rivafb_do_maximize.modes, i32 0, i32 %i.03.lcssa.i, i32 1
  %110 = ptrtoint ptr %yres33.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %yres33.i, align 4
  %112 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %yres_virtual, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %.lcssa.i, i32 noundef %111) #14
  br label %if.end107.i

if.then44.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %smem_len46.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %113 = ptrtoint ptr %smem_len46.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %smem_len46.i, align 4
  %mul49.i = mul i32 %106, %nom.0
  %div50.i = udiv i32 %114, %mul49.i
  %and.i = and i32 %div50.i, -16
  %115 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i, ptr %xres_virtual, align 4
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %and.i) #14
  br label %if.end107.i

if.else58.i:                                      ; preds = %if.end121
  %add.i = add i32 %104, 15
  %and63.i = and i32 %add.i, -16
  %116 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %and63.i, ptr %xres_virtual, align 4
  br i1 %cmp1.i, label %if.then61.i, label %if.else78.i

if.then61.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #13
  %smem_len66.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %117 = ptrtoint ptr %smem_len66.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %smem_len66.i, align 4
  %mul69.i = mul i32 %and63.i, %nom.0
  %div70.i = udiv i32 %118, %mul69.i
  %119 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %div70.i, ptr %yres_virtual, align 4
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %div70.i) #14
  br label %if.end107.i

if.else78.i:                                      ; preds = %if.else58.i
  %mul84.i = mul i32 %106, %nom.0
  %mul87.i = mul i32 %mul84.i, %and63.i
  %smem_len89.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %120 = ptrtoint ptr %smem_len89.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %smem_len89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul87.i, i32 %121)
  %cmp90.i = icmp ugt i32 %mul87.i, %121
  br i1 %cmp90.i, label %do.end94.i, label %if.else78.i.if.end107.i_crit_edge

if.else78.i.if.end107.i_crit_edge:                ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.i

do.end94.i:                                       ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %var, align 4
  %124 = ptrtoint ptr %yres116 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %yres116, align 4
  %126 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bits_per_pixel, align 4
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %123, i32 noundef %125, i32 noundef %127) #14
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #14
  br label %cleanup

if.end107.i:                                      ; preds = %if.else78.i.if.end107.i_crit_edge, %if.then61.i, %if.then44.i, %if.end28.i
  %128 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %xres_virtual, align 4
  %mul109.i = mul i32 %129, %nom.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %mul109.i)
  %cmp111.i = icmp ugt i32 %mul109.i, 8191
  br i1 %cmp111.i, label %do.end115.i, label %if.end107.i.if.end125.i_crit_edge

if.end107.i.if.end125.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.i

do.end115.i:                                      ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  %div119.i251.rhs.trunc = trunc i32 %nom.0 to i16
  %div119.i251252 = udiv i16 8192, %div119.i251.rhs.trunc
  %div119.i251.zext = zext i16 %div119.i251252 to i32
  %sub.i = add nsw i32 %div119.i251.zext, -16
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %129, i32 noundef %sub.i) #14
  %130 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %sub.i, ptr %xres_virtual, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %do.end115.i, %if.end107.i.if.end125.i_crit_edge
  %131 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %xres_virtual, align 4
  %133 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp128.i = icmp ult i32 %132, %134
  br i1 %cmp128.i, label %do.end132.i, label %if.end136.i

do.end132.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  %call135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %132) #14
  br label %cleanup

if.end136.i:                                      ; preds = %if.end125.i
  %135 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %yres_virtual, align 4
  %137 = ptrtoint ptr %yres116 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %yres116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp139.i = icmp ult i32 %136, %138
  br i1 %cmp139.i, label %do.end143.i, label %if.end147.i

do.end143.i:                                      ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #13
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %136) #14
  br label %cleanup

if.end147.i:                                      ; preds = %if.end136.i
  %div149.i253.rhs.trunc = trunc i32 %nom.0 to i16
  %div149.i253254 = udiv i16 32767, %div149.i253.rhs.trunc
  %div149.i253.zext = zext i16 %div149.i253254 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %div149.i253.zext)
  %cmp150.i = icmp ugt i32 %136, %div149.i253.zext
  br i1 %cmp150.i, label %if.then151.i, label %if.end147.i.if.end154.i_crit_edge

if.end147.i.if.end154.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154.i

if.then151.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %div149.i253.zext, ptr %yres_virtual, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then151.i, %if.end147.i.if.end154.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %div149.i253.zext)
  %cmp157.i = icmp ugt i32 %132, %div149.i253.zext
  br i1 %cmp157.i, label %if.then158.i, label %if.end154.i.if.end126_crit_edge

if.end154.i.if.end126_crit_edge:                  ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then158.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %div149.i253.zext, ptr %xres_virtual, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then158.i, %if.end154.i.if.end126_crit_edge
  %call166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.81) #14
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %141 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %xoffset, align 4
  %143 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %xres_virtual, align 4
  %145 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %var, align 4
  %sub = sub i32 %144, %146
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %sub)
  %cmp129 = icmp ugt i32 %142, %sub
  br i1 %cmp129, label %if.then131, label %if.end126.if.end137_crit_edge

if.end126.if.end137_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %sub135 = add i32 %sub, -1
  %147 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub135, ptr %xoffset, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then131, %if.end126.if.end137_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %148 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %yoffset, align 4
  %150 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %yres_virtual, align 4
  %152 = ptrtoint ptr %yres116 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %yres116, align 4
  %sub140 = sub i32 %151, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %sub140)
  %cmp141 = icmp ugt i32 %149, %sub140
  br i1 %cmp141, label %if.then143, label %if.end137.if.end149_crit_edge

if.end137.if.end149_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

if.then143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  %sub147 = add i32 %sub140, -1
  %154 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %sub147, ptr %yoffset, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %if.end137.if.end149_crit_edge
  %msb_right155 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %msb_right157 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %155 = ptrtoint ptr %msb_right157 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %msb_right157, align 4
  %msb_right159 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %156 = ptrtoint ptr %msb_right159 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %msb_right159, align 4
  %157 = call ptr @memset(ptr %msb_right155, i32 0, i32 16)
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.69) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %do.end143.i, %do.end132.i, %do.end94.i, %for.inc.4.i, %land.lhs.true104.critedge.cleanup_crit_edge, %do.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end64 ], [ 0, %if.end149 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true104.critedge.cleanup_crit_edge ], [ -22, %for.inc.4.i ], [ -22, %do.end132.i ], [ -22, %do.end143.i ], [ -22, %do.end94.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_set_par(ptr noundef %info) #0 align 64 {
entry:
  %newmode.i = alloca %struct.riva_regs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.116) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  tail call void @arm_heavy_mb() #11
  %PCIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %5, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 -1) #11, !srcloc !399
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %LockUnlock, align 8
  tail call void %7(ptr noundef %1, i32 noundef 0) #11
  %8 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %newmode.i) #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.119) #14
  %call2.i = tail call i32 @rivafb_blank(i32 noundef 1, ptr noundef %info) #11
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp.i = icmp eq i32 %11, 16
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp4.i = icmp eq i32 %13, 5
  %spec.select.i = select i1 %cmp4.i, i32 15, i32 16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry.if.end.i_crit_edge
  %bpp.0.i = phi i32 [ %11, %entry.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xres_virtual.i, align 4
  %16 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var.i, align 4
  %div.i = sdiv i32 %17, 8
  %sub.i = add nsw i32 %div.i, -1
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %18 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %right_margin.i, align 4
  %add.i = add i32 %19, %17
  %div8454.i = lshr i32 %add.i, 3
  %sub9.i = add nsw i32 %div8454.i, -1
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %20 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hsync_len.i, align 4
  %add14.i = add i32 %add.i, %21
  %div15455.i = lshr i32 %add14.i, 3
  %sub16.i = add nsw i32 %div15455.i, -1
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %22 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %left_margin.i, align 4
  %add24.i = add i32 %add14.i, %23
  %div25456.i = lshr i32 %add24.i, 3
  %sub26.i = add nsw i32 %div25456.i, -5
  %add27.i = add nsw i32 %div25456.i, -1
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yres_virtual.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres.i, align 4
  %sub30.i = add i32 %27, -1
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %28 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_margin.i, align 4
  %add34.i = add i32 %29, %27
  %sub35.i = add i32 %add34.i, -1
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %30 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vsync_len.i, align 4
  %add42.i = add i32 %add34.i, %31
  %sub43.i = add i32 %add42.i, -1
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %32 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %upper_margin.i, align 4
  %add53.i = add i32 %add42.i, %33
  %add54.i = add i32 %add53.i, 2
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %34 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pixclock.i, align 4
  %div57.i = udiv i32 1000000000, %35
  %36 = call ptr @memcpy(ptr %newmode.i, ptr @reg_template, i32 240)
  %vmode.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %37 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vmode.i, align 4
  %and.i = and i32 %38, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp59.i = icmp eq i32 %and.i, 1
  %or.i = zext i1 %cmp59.i to i32
  %spec.select457.i = or i32 %add54.i, %or.i
  %FlatPanel.i = getelementptr inbounds %struct.riva_par, ptr %9, i32 0, i32 13
  %39 = ptrtoint ptr %FlatPanel.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %FlatPanel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.end.i.if.end68.i_crit_edge, label %if.then62.i

if.end.i.if.end68.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.i

if.then62.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub63.i = add i32 %spec.select457.i, -3
  %sub64.i = add i32 %spec.select457.i, -2
  %sub65.i = add nsw i32 %div25456.i, -8
  %sub66.i = add nsw i32 %div25456.i, -7
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then62.i, %if.end.i.if.end68.i_crit_edge
  %hStart.0.i = phi i32 [ %sub65.i, %if.then62.i ], [ %sub9.i, %if.end.i.if.end68.i_crit_edge ]
  %hEnd.0.i = phi i32 [ %sub66.i, %if.then62.i ], [ %sub16.i, %if.end.i.if.end68.i_crit_edge ]
  %vStart.0.i = phi i32 [ %sub63.i, %if.then62.i ], [ %sub35.i, %if.end.i.if.end68.i_crit_edge ]
  %vEnd.0.i = phi i32 [ %sub64.i, %if.then62.i ], [ %sub43.i, %if.end.i.if.end68.i_crit_edge ]
  %vBlankStart.0.i = phi i32 [ %sub63.i, %if.then62.i ], [ %sub30.i, %if.end.i.if.end68.i_crit_edge ]
  %conv.i = trunc i32 %sub26.i to i8
  %crtc.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1
  %41 = ptrtoint ptr %crtc.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i, ptr %crtc.i, align 1
  %conv71.i = trunc i32 %sub.i to i8
  %arrayidx73.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv71.i, ptr %arrayidx73.i, align 2
  %arrayidx77.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv71.i, ptr %arrayidx77.i, align 1
  %44 = trunc i32 %add27.i to i8
  %45 = and i8 %44, 31
  %conv80.i = or i8 %45, -128
  %arrayidx82.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv80.i, ptr %arrayidx82.i, align 4
  %conv84.i = trunc i32 %hStart.0.i to i8
  %arrayidx86.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv84.i, ptr %arrayidx86.i, align 1
  %48 = shl nsw i32 %add27.i, 2
  %shl89.i = and i32 %48, 128
  %and90.i = and i32 %hEnd.0.i, 31
  %or93.i = or i32 %and90.i, %shl89.i
  %conv94.i = trunc i32 %or93.i to i8
  %arrayidx96.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv94.i, ptr %arrayidx96.i, align 2
  %conv100.i = trunc i32 %spec.select457.i to i8
  %arrayidx102.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv100.i, ptr %arrayidx102.i, align 1
  %and103.i = lshr i32 %add54.i, 8
  %shr104.i = and i32 %and103.i, 1
  %51 = lshr i32 %sub30.i, 7
  %shl108.i = and i32 %51, 2
  %52 = lshr i32 %vStart.0.i, 6
  %shl112.i = and i32 %52, 4
  %53 = lshr i32 %vBlankStart.0.i, 5
  %shl116.i = and i32 %53, 8
  %54 = lshr i32 %add54.i, 4
  %shl121.i = and i32 %54, 32
  %55 = lshr i32 %sub30.i, 3
  %shl125.i = and i32 %55, 64
  %56 = lshr i32 %vStart.0.i, 2
  %shl129.i = and i32 %56, 128
  %or109.i = or i32 %shl125.i, %shl108.i
  %or113.i = or i32 %or109.i, %shr104.i
  %or117.i = or i32 %or113.i, %shl121.i
  %or118.i = or i32 %or117.i, %shl112.i
  %or122.i = or i32 %or118.i, %shl129.i
  %or126.i = or i32 %or122.i, %shl116.i
  %57 = trunc i32 %or126.i to i8
  %conv131.i = or i8 %57, 16
  %arrayidx133.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 7
  %58 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv131.i, ptr %arrayidx133.i, align 4
  %59 = lshr i32 %vBlankStart.0.i, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 32
  %conv138.i = or i8 %61, 64
  %arrayidx140.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 9
  %62 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv138.i, ptr %arrayidx140.i, align 2
  %conv142.i = trunc i32 %vStart.0.i to i8
  %arrayidx144.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 16
  %63 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv142.i, ptr %arrayidx144.i, align 1
  %64 = trunc i32 %vEnd.0.i to i8
  %65 = and i8 %64, 15
  %conv149.i = or i8 %65, 32
  %arrayidx151.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 17
  %66 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv149.i, ptr %arrayidx151.i, align 2
  %conv153.i = trunc i32 %sub30.i to i8
  %arrayidx155.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 18
  %67 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv153.i, ptr %arrayidx155.i, align 1
  %div156.i = sdiv i32 %15, 8
  %add157.i = add i32 %bpp.0.i, 1
  %div158.i = sdiv i32 %add157.i, 8
  %mul.i = mul i32 %div156.i, %div158.i
  %conv159.i = trunc i32 %mul.i to i8
  %arrayidx161.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 19
  %68 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv159.i, ptr %arrayidx161.i, align 4
  %conv163.i = trunc i32 %vBlankStart.0.i to i8
  %arrayidx165.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 21
  %69 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv163.i, ptr %arrayidx165.i, align 2
  %70 = trunc i32 %add53.i to i8
  %conv167.i = add i8 %70, 3
  %arrayidx169.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 1, i32 22
  %71 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv167.i, ptr %arrayidx169.i, align 1
  %72 = lshr i32 %add27.i, 2
  %shl172.i = and i32 %72, 16
  %73 = lshr i32 %vBlankStart.0.i, 7
  %shl175.i = and i32 %73, 8
  %74 = lshr i32 %vStart.0.i, 8
  %shl179.i = and i32 %74, 4
  %75 = lshr i32 %sub30.i, 9
  %shl183.i = and i32 %75, 2
  %and185.i = lshr i32 %add54.i, 10
  %shr186.i = and i32 %and185.i, 1
  %or176.i = or i32 %shl183.i, %shl172.i
  %or180.i = or i32 %or176.i, %shr186.i
  %or184.i = or i32 %or180.i, %shl179.i
  %or188.i = or i32 %or184.i, %shl175.i
  %ext.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5
  %screen.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 6
  %76 = ptrtoint ptr %screen.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or188.i, ptr %screen.i, align 4
  %and189.i = lshr i32 %sub26.i, 8
  %shr190.i = and i32 %and189.i, 1
  %and192.i = lshr i32 %sub.i, 8
  %shr193.i = and i32 %and192.i, 1
  %shl194.i = shl nuw nsw i32 %shr193.i, 1
  %or195.i = or i32 %shr190.i, %shl194.i
  %shl198.i = shl nuw nsw i32 %shr193.i, 2
  %or199.i = or i32 %or195.i, %shl198.i
  %77 = lshr i32 %hStart.0.i, 5
  %shl202.i = and i32 %77, 8
  %or203.i = or i32 %shl202.i, %or199.i
  %horiz.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 11
  %78 = ptrtoint ptr %horiz.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or203.i, ptr %horiz.i, align 4
  %and205.i = lshr i32 %add54.i, 11
  %shr206.i = and i32 %and205.i, 1
  %shl210.i = and i32 %75, 4
  %or211.i = or i32 %shr206.i, %shl210.i
  %79 = lshr i32 %vStart.0.i, 7
  %shl214.i = and i32 %79, 16
  %or215.i = or i32 %or211.i, %shl214.i
  %shl218.i = and i32 %53, 64
  %or219.i = or i32 %or215.i, %shl218.i
  %extra.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 9
  %80 = ptrtoint ptr %extra.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or219.i, ptr %extra.i, align 4
  br i1 %cmp59.i, label %if.then226.i, label %if.end68.i.if.end240.i_crit_edge

if.end68.i.if.end240.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end240.i

if.then226.i:                                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr228.i = ashr i32 %sub26.i, 1
  %and230.i = and i32 %shr228.i, 254
  %81 = lshr i32 %shr228.i, 4
  %shl234.i = and i32 %81, 16
  %or237.i = or i32 %or203.i, %shl234.i
  %82 = ptrtoint ptr %horiz.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or237.i, ptr %horiz.i, align 4
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.then226.i, %if.end68.i.if.end240.i_crit_edge
  %.sink.i = phi i32 [ %and230.i, %if.then226.i ], [ 255, %if.end68.i.if.end240.i_crit_edge ]
  %83 = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink.i, ptr %83, align 4
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %86)
  %cmp241.i = icmp ugt i32 %86, 15
  br i1 %cmp241.i, label %if.then243.i, label %if.end240.i.if.end246.i_crit_edge

if.end240.i.if.end246.i_crit_edge:                ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end246.i

if.then243.i:                                     ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %CursorStart.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 12
  %90 = ptrtoint ptr %CursorStart.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %CursorStart.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %89, i32 %91
  %CURSOR.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 26
  %92 = ptrtoint ptr %CURSOR.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr.i38, ptr %CURSOR.i, align 8
  br label %if.end246.i

if.end246.i:                                      ; preds = %if.then243.i, %if.end240.i.if.end246.i_crit_edge
  %sync.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %93 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sync.i, align 4
  %misc_output255.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 4
  %95 = ptrtoint ptr %misc_output255.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %misc_output255.i, align 4
  %97 = and i8 %96, 63
  %98 = trunc i32 %94 to i8
  %99 = shl i8 %98, 6
  %100 = and i8 %99, 64
  %101 = or i8 %100, %97
  %102 = and i8 %99, -128
  %103 = or i8 %101, %102
  %.sink460.i = xor i8 %103, -64
  store i8 %.sink460.i, ptr %misc_output255.i, align 4
  %pdev.i = getelementptr inbounds %struct.riva_par, ptr %9, i32 0, i32 14
  %104 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev.i, align 8
  %call277.i = call i32 @CalcStateExt(ptr noundef %9, ptr noundef %ext.i, ptr noundef %105, i32 noundef %bpp.0.i, i32 noundef %15, i32 noundef %17, i32 noundef %25, i32 noundef %div57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277.i)
  %tobool278.not.i = icmp eq i32 %call277.i, 0
  br i1 %tobool278.not.i, label %if.end280.i, label %do.end20.critedge

if.end280.i:                                      ; preds = %if.end246.i
  %PRAMDAC.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 32
  %106 = ptrtoint ptr %PRAMDAC.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %PRAMDAC.i, align 8
  %add.ptr282.i = getelementptr i8, ptr %107, i32 2120
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr282.i) #11, !srcloc !411
  %and284.i = and i32 %108, -1048321
  %scale.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 7
  %109 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and284.i, ptr %scale.i, align 4
  %110 = ptrtoint ptr %FlatPanel.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %FlatPanel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp287.i = icmp eq i32 %111, 1
  br i1 %cmp287.i, label %if.then289.i, label %if.end280.i.if.end295.i_crit_edge

if.end280.i.if.end295.i_crit_edge:                ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295.i

if.then289.i:                                     ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #13
  %pixel.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 10
  %112 = ptrtoint ptr %pixel.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pixel.i, align 4
  %or291.i = or i32 %113, 128
  store i32 %or291.i, ptr %pixel.i, align 4
  %or294.i = or i32 %and284.i, 256
  %114 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or294.i, ptr %scale.i, align 4
  br label %if.end295.i

if.end295.i:                                      ; preds = %if.then289.i, %if.end280.i.if.end295.i_crit_edge
  %SecondCRTC.i = getelementptr inbounds %struct.riva_par, ptr %9, i32 0, i32 12
  %115 = ptrtoint ptr %SecondCRTC.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %SecondCRTC.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool296.not.i = icmp eq i32 %116, 0
  br i1 %tobool296.not.i, label %if.else314.i, label %if.then297.i

if.then297.i:                                     ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #13
  %PCRTC0.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 15
  %117 = ptrtoint ptr %PCRTC0.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %PCRTC0.i, align 4
  %add.ptr299.i = getelementptr i8, ptr %118, i32 2144
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr299.i) #11, !srcloc !411
  %and301.i = and i32 %119, -4097
  %head.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 19
  %120 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and301.i, ptr %head.i, align 4
  %121 = ptrtoint ptr %PCRTC0.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %PCRTC0.i, align 4
  %add.ptr305.i = getelementptr i8, ptr %122, i32 10336
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr305.i) #11, !srcloc !411
  %or307.i = or i32 %123, 4096
  %head2.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 20
  %124 = ptrtoint ptr %head2.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or307.i, ptr %head2.i, align 4
  %crtcOwner.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 18
  %125 = ptrtoint ptr %crtcOwner.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %crtcOwner.i, align 4
  %pllsel.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 16
  %126 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pllsel.i, align 4
  %or311.i = or i32 %127, 536872960
  store i32 %or311.i, ptr %pllsel.i, align 4
  %vpll.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 14
  %128 = ptrtoint ptr %vpll.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vpll.i, align 4
  br label %if.end340.sink.split.i

if.else314.i:                                     ; preds = %if.end295.i
  %twoHeads.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 14
  %130 = ptrtoint ptr %twoHeads.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %twoHeads.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool316.not.i = icmp eq i32 %131, 0
  br i1 %tobool316.not.i, label %if.else314.i.if.end340.i_crit_edge, label %if.then317.i

if.else314.i.if.end340.i_crit_edge:               ; preds = %if.else314.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end340.i

if.then317.i:                                     ; preds = %if.else314.i
  call void @__sanitizer_cov_trace_pc() #13
  %PCRTC0319.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 15
  %132 = ptrtoint ptr %PCRTC0319.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %PCRTC0319.i, align 4
  %add.ptr320.i = getelementptr i8, ptr %133, i32 2144
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr320.i) #11, !srcloc !411
  %or322.i = or i32 %134, 4096
  %head324.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 19
  %135 = ptrtoint ptr %head324.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or322.i, ptr %head324.i, align 4
  %136 = ptrtoint ptr %PCRTC0319.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %PCRTC0319.i, align 4
  %add.ptr327.i = getelementptr i8, ptr %137, i32 10336
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr327.i) #11, !srcloc !411
  %and329.i = and i32 %138, -4097
  %head2331.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 20
  %139 = ptrtoint ptr %head2331.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and329.i, ptr %head2331.i, align 4
  %crtcOwner333.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 18
  %140 = ptrtoint ptr %crtcOwner333.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %crtcOwner333.i, align 4
  %PRAMDAC0.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 17
  %141 = ptrtoint ptr %PRAMDAC0.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %PRAMDAC0.i, align 4
  %add.ptr335.i = getelementptr i8, ptr %142, i32 1312
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr335.i) #11, !srcloc !411
  br label %if.end340.sink.split.i

if.end340.sink.split.i:                           ; preds = %if.then317.i, %if.then297.i
  %.sink459.i = phi i32 [ %143, %if.then317.i ], [ %129, %if.then297.i ]
  %vpll2338.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 15
  %144 = ptrtoint ptr %vpll2338.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %.sink459.i, ptr %vpll2338.i, align 4
  br label %if.end340.i

if.end340.i:                                      ; preds = %if.end340.sink.split.i, %if.else314.i.if.end340.i_crit_edge
  %145 = ptrtoint ptr %FlatPanel.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %FlatPanel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp342.i = icmp eq i32 %146, 1
  br i1 %cmp342.i, label %if.then344.i, label %if.end340.i.if.end_crit_edge

if.end340.i.if.end_crit_edge:                     ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then344.i:                                     ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #13
  %pixel346.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 10
  %147 = ptrtoint ptr %pixel346.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pixel346.i, align 4
  %or347.i = or i32 %148, 128
  store i32 %or347.i, ptr %pixel346.i, align 4
  %149 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %scale.i, align 4
  %or350.i = or i32 %150, 256
  store i32 %or350.i, ptr %scale.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then344.i, %if.end340.i.if.end_crit_edge
  %cursorConfig.i = getelementptr inbounds %struct.riva_regs, ptr %newmode.i, i32 0, i32 5, i32 22
  %151 = ptrtoint ptr %cursorConfig.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 33554688, ptr %cursorConfig.i, align 4
  %current_state.i = getelementptr inbounds %struct.riva_par, ptr %9, i32 0, i32 6
  %152 = call ptr @memcpy(ptr %current_state.i, ptr %newmode.i, i32 240)
  call fastcc void @riva_load_state(ptr noundef %9, ptr noundef %current_state.i) #11
  %LockUnlock.i = getelementptr inbounds %struct._riva_hw_inst, ptr %9, i32 0, i32 40
  %153 = ptrtoint ptr %LockUnlock.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %LockUnlock.i, align 8
  call void %154(ptr noundef %9, i32 noundef 0) #11
  %call356.i = call i32 @rivafb_blank(i32 noundef 0, ptr noundef %info) #11
  %call361.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.119) #14
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %newmode.i) #11
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %155 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags, align 4
  %and = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %157 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %par1, align 4
  %FifoFreeCount.i = getelementptr inbounds %struct._riva_hw_inst, ptr %158, i32 0, i32 10
  %159 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %FifoFreeCount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp26.i = icmp ult i32 %160, 2
  br i1 %cmp26.i, label %do.body.lr.ph.i, label %if.then5.while.end.i_crit_edge

if.then5.while.end.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.body.lr.ph.i:                                  ; preds = %if.then5
  %Clip.i = getelementptr inbounds %struct._riva_hw_inst, ptr %158, i32 0, i32 44
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !412
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !413
  call void @arm_heavy_mb() #11
  %161 = ptrtoint ptr %Clip.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %Clip.i, align 8
  %FifoFree.i = getelementptr inbounds %struct.anon.87, ptr %162, i32 0, i32 1
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree.i) #11, !srcloc !411
  %shr.i = lshr i32 %163, 2
  %164 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %shr.i, ptr %FifoFreeCount.i, align 8
  %cmp.i40 = icmp ult i32 %163, 8
  br i1 %cmp.i40, label %do.body.i.do.body.i_crit_edge, label %do.body.i.while.end.i_crit_edge

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

while.end.i:                                      ; preds = %do.body.i.while.end.i_crit_edge, %if.then5.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %160, %if.then5.while.end.i_crit_edge ], [ %shr.i, %do.body.i.while.end.i_crit_edge ]
  %sub.i41 = add i32 %.lcssa.i, -2
  %165 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %sub.i41, ptr %FifoFreeCount.i, align 8
  %Clip11.i = getelementptr inbounds %struct._riva_hw_inst, ptr %158, i32 0, i32 44
  %166 = ptrtoint ptr %Clip11.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %Clip11.i, align 8
  %TopLeft.i = getelementptr inbounds %struct.anon.87, ptr %167, i32 0, i32 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TopLeft.i, i32 0) #11, !srcloc !414
  %168 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %xres_virtual.i, align 4
  %and.i43 = and i32 %169, 65535
  %170 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %yres_virtual.i, align 4
  %shl.i = shl i32 %171, 16
  %or.i45 = or i32 %shl.i, %and.i43
  %172 = ptrtoint ptr %Clip11.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %Clip11.i, align 8
  %WidthHeight.i = getelementptr inbounds %struct.anon.87, ptr %173, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WidthHeight.i, i32 %or.i45) #11, !srcloc !414
  call fastcc void @riva_set_rop_solid(ptr noundef %158, i32 noundef 204) #11
  %Busy.i.i = getelementptr inbounds %struct._riva_hw_inst, ptr %158, i32 0, i32 33
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.end.i
  %174 = ptrtoint ptr %Busy.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %Busy.i.i, align 4
  %call.i.i = call i32 %175(ptr noundef %158) #11
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.if.end6_crit_edge, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.cond.i.i.if.end6_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %while.cond.i.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %cursor_reset = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 15
  %176 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %cursor_reset, align 4
  %177 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %xres_virtual.i, align 4
  %179 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %bits_per_pixel.i, align 4
  %shr = lshr i32 %180, 3
  %mul = mul i32 %shr, %178
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %181 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %mul, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %180)
  %cmp = icmp eq i32 %180, 8
  %cond = select i1 %cmp, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %182 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %cond, ptr %visual, align 4
  %183 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flags, align 4
  %and12 = and i32 %184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %scan_align16 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %scan_align16 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %scan_align16, align 4
  br label %do.end20

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %scan_align16 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 4, ptr %scan_align16, align 4
  br label %do.end20

do.end20.critedge:                                ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #13
  %call356.i.c = call i32 @rivafb_blank(i32 noundef 0, ptr noundef %info) #11
  %call361.i.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.119) #14
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %newmode.i) #11
  br label %do.end20

do.end20:                                         ; preds = %do.end20.critedge, %if.else, %if.then14
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.116) #14
  ret i32 %call277.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 32, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch.selectcmp3.i = icmp eq i32 %3, 6
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 64, i32 %switch.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select4.i, i32 %regno)
  %cmp.not = icmp ugt i32 %switch.select4.i, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %red, 77
  %mul4 = mul i32 %green, 151
  %add = add i32 %mul4, %mul
  %mul5 = mul i32 %blue, 28
  %add6 = add i32 %add, %mul5
  %shr = lshr i32 %add6, 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %green.addr.0 = phi i32 [ %shr, %if.then3 ], [ %green, %if.end.if.end7_crit_edge ]
  %blue.addr.0 = phi i32 [ %shr, %if.then3 ], [ %blue, %if.end.if.end7_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then3 ], [ %red, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp8 = icmp ult i32 %regno, 16
  br i1 %cmp8, label %land.lhs.true, label %if.end7.if.end45_crit_edge

if.end7.if.end45_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end7
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp9 = icmp eq i32 %7, 4
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then10:                                        ; preds = %land.lhs.true
  %red12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %red12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %red12, align 4
  %shl = shl i32 %regno, %9
  %green14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %10 = ptrtoint ptr %green14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %green14, align 4
  %shl16 = shl i32 %regno, %11
  %or = or i32 %shl16, %shl
  %blue18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %blue18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blue18, align 4
  %shl20 = shl i32 %regno, %13
  %or21 = or i32 %or, %shl20
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %14 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or21, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp23 = icmp eq i32 %18, 3
  br i1 %cmp23, label %if.then24, label %if.then10.if.end45_crit_edge

if.then10.if.end45_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then24:                                        ; preds = %if.then10
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %19 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits_per_pixel, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %20, label %if.then24.if.end45_crit_edge [
    i32 16, label %sw.bb
    i32 32, label %sw.bb34
  ]

if.then24.if.end45_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

sw.bb:                                            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %red.addr.0, 1
  %shr26 = and i32 %and, 31744
  %and27 = lshr i32 %green.addr.0, 6
  %shr28 = and i32 %and27, 992
  br label %if.end45.sink.split

sw.bb34:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %and35 = shl i32 %red.addr.0, 8
  %shl36 = and i32 %and35, 16711680
  %and37 = and i32 %green.addr.0, 65280
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %sw.bb34, %sw.bb
  %.sink207 = phi i32 [ 8, %sw.bb34 ], [ 11, %sw.bb ]
  %.sink = phi i32 [ 255, %sw.bb34 ], [ 31, %sw.bb ]
  %and37.sink = phi i32 [ %and37, %sw.bb34 ], [ %shr28, %sw.bb ]
  %shl36.sink = phi i32 [ %shl36, %sw.bb34 ], [ %shr26, %sw.bb ]
  %and39 = lshr i32 %blue.addr.0, %.sink207
  %shr40 = and i32 %and39, %.sink
  %or38 = or i32 %shr40, %and37.sink
  %or41 = or i32 %or38, %shl36.sink
  %arrayidx43 = getelementptr %struct.riva_par, ptr %1, i32 0, i32 2, i32 %regno
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or41, ptr %arrayidx43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.then24.if.end45_crit_edge, %if.then10.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %if.end7.if.end45_crit_edge
  %bits_per_pixel47 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel47, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %24, label %if.end45.cleanup_crit_edge [
    i32 8, label %sw.bb48
    i32 16, label %sw.bb55
    i32 32, label %sw.bb107
  ]

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb48:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %regno to i8
  %shr49 = lshr i32 %red.addr.0, 8
  %conv50 = trunc i32 %shr49 to i8
  %shr51 = lshr i32 %green.addr.0, 8
  %conv52 = trunc i32 %shr51 to i8
  %shr53 = lshr i32 %blue.addr.0, 8
  %conv54 = trunc i32 %shr53 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %PDIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 31
  %26 = ptrtoint ptr %PDIO.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %PDIO.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %PDIO.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %PDIO.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv50) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %PDIO.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PDIO.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %31, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %conv52) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %PDIO.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %PDIO.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %33, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %conv54) #11, !srcloc !399
  br label %cleanup

sw.bb55:                                          ; preds = %if.end45
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp58 = icmp eq i32 %35, 5
  br i1 %cmp58, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %sw.bb55
  %mul63 = shl i32 %regno, 3
  %shr66 = lshr i32 %red.addr.0, 8
  %conv67 = trunc i32 %shr66 to i8
  %shr68 = lshr i32 %green.addr.0, 8
  %conv69 = trunc i32 %shr68 to i8
  %shr70 = lshr i32 %blue.addr.0, 8
  %conv71 = trunc i32 %shr70 to i8
  %PDIO.i177 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0202 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %add64 = add nuw nsw i32 %i.0202, %mul63
  %conv65 = trunc i32 %add64 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %PDIO.i177 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PDIO.i177, align 4
  %add.ptr.i178 = getelementptr i8, ptr %37, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i178, i8 %conv65) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %PDIO.i177 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %PDIO.i177, align 4
  %add.ptr4.i179 = getelementptr i8, ptr %39, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i179, i8 %conv67) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %PDIO.i177 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %PDIO.i177, align 4
  %add.ptr8.i180 = getelementptr i8, ptr %41, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i180, i8 %conv69) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %PDIO.i177 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PDIO.i177, align 4
  %add.ptr12.i181 = getelementptr i8, ptr %43, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i181, i8 %conv71) #11, !srcloc !399
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond205.not = icmp eq i32 %inc, 8
  br i1 %exitcond205.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %regno)
  %cmp72 = icmp ult i32 %regno, 32
  br i1 %cmp72, label %for.cond75.preheader, label %if.else.if.end91_crit_edge

if.else.if.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = lshr i32 %green.addr.0, 8
  %.pre206 = trunc i32 %.pre to i8
  br label %if.end91

for.cond75.preheader:                             ; preds = %if.else
  %mul79 = shl nuw nsw i32 %regno, 3
  %shr82 = lshr i32 %red.addr.0, 8
  %conv83 = trunc i32 %shr82 to i8
  %shr84 = lshr i32 %green.addr.0, 8
  %conv85 = trunc i32 %shr84 to i8
  %shr86 = lshr i32 %blue.addr.0, 8
  %conv87 = trunc i32 %shr86 to i8
  %PDIO.i182 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 31
  br label %for.body78

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.cond75.preheader
  %i.1200 = phi i32 [ 0, %for.cond75.preheader ], [ %inc89, %for.body78.for.body78_crit_edge ]
  %add80 = add nuw nsw i32 %i.1200, %mul79
  %conv81 = trunc i32 %add80 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %PDIO.i182 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PDIO.i182, align 4
  %add.ptr.i183 = getelementptr i8, ptr %45, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i183, i8 %conv81) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %PDIO.i182 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %PDIO.i182, align 4
  %add.ptr4.i184 = getelementptr i8, ptr %47, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i184, i8 %conv83) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %PDIO.i182 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PDIO.i182, align 4
  %add.ptr8.i185 = getelementptr i8, ptr %49, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i185, i8 %conv85) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %PDIO.i182 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %PDIO.i182, align 4
  %add.ptr12.i186 = getelementptr i8, ptr %51, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i186, i8 %conv87) #11, !srcloc !399
  %inc89 = add nuw nsw i32 %i.1200, 1
  %exitcond.not = icmp eq i32 %inc89, 8
  br i1 %exitcond.not, label %for.body78.if.end91_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body78

for.body78.if.end91_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.end91:                                         ; preds = %for.body78.if.end91_crit_edge, %if.else.if.end91_crit_edge
  %conv102.pre-phi = phi i8 [ %.pre206, %if.else.if.end91_crit_edge ], [ %conv85, %for.body78.if.end91_crit_edge ]
  %mul92 = shl i32 %regno, 2
  %conv93 = trunc i32 %mul92 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  tail call void @arm_heavy_mb() #11
  %PDIO.i187 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 31
  %52 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr.i188 = getelementptr i8, ptr %53, i32 967
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i188, i8 %conv93) #11, !srcloc !399
  %54 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr2.i = getelementptr i8, ptr %55, i32 969
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !420
  %57 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr7.i = getelementptr i8, ptr %58, i32 969
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !421
  %60 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr14.i = getelementptr i8, ptr %61, i32 969
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %63 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr.i190 = getelementptr i8, ptr %64, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i190, i8 %conv93) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr4.i191 = getelementptr i8, ptr %66, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i191, i8 %56) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %67 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr8.i192 = getelementptr i8, ptr %68, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i192, i8 %conv102.pre-phi) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr12.i193 = getelementptr i8, ptr %70, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i193, i8 %62) #11, !srcloc !399
  %71 = trunc i32 %mul92 to i8
  %conv100.1 = or i8 %71, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %72 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr.i190.1 = getelementptr i8, ptr %73, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i190.1, i8 %conv100.1) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr4.i191.1 = getelementptr i8, ptr %75, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i191.1, i8 %56) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr8.i192.1 = getelementptr i8, ptr %77, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i192.1, i8 %conv102.pre-phi) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr12.i193.1 = getelementptr i8, ptr %79, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i193.1, i8 %62) #11, !srcloc !399
  %80 = trunc i32 %mul92 to i8
  %conv100.2 = or i8 %80, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr.i190.2 = getelementptr i8, ptr %82, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i190.2, i8 %conv100.2) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %83 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr4.i191.2 = getelementptr i8, ptr %84, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i191.2, i8 %56) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr8.i192.2 = getelementptr i8, ptr %86, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i192.2, i8 %conv102.pre-phi) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %87 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr12.i193.2 = getelementptr i8, ptr %88, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i193.2, i8 %62) #11, !srcloc !399
  %89 = trunc i32 %mul92 to i8
  %conv100.3 = or i8 %89, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr.i190.3 = getelementptr i8, ptr %91, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i190.3, i8 %conv100.3) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr4.i191.3 = getelementptr i8, ptr %93, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i191.3, i8 %56) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr8.i192.3 = getelementptr i8, ptr %95, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i192.3, i8 %conv102.pre-phi) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %PDIO.i187 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %PDIO.i187, align 4
  %add.ptr12.i193.3 = getelementptr i8, ptr %97, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i193.3, i8 %62) #11, !srcloc !399
  br label %cleanup

sw.bb107:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %conv108 = trunc i32 %regno to i8
  %shr109 = lshr i32 %red.addr.0, 8
  %conv110 = trunc i32 %shr109 to i8
  %shr111 = lshr i32 %green.addr.0, 8
  %conv112 = trunc i32 %shr111 to i8
  %shr113 = lshr i32 %blue.addr.0, 8
  %conv114 = trunc i32 %shr113 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %PDIO.i194 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 31
  %98 = ptrtoint ptr %PDIO.i194 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %PDIO.i194, align 4
  %add.ptr.i195 = getelementptr i8, ptr %99, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i195, i8 %conv108) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %PDIO.i194 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %PDIO.i194, align 4
  %add.ptr4.i196 = getelementptr i8, ptr %101, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i196, i8 %conv110) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %102 = ptrtoint ptr %PDIO.i194 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %PDIO.i194, align 4
  %add.ptr8.i197 = getelementptr i8, ptr %103, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i197, i8 %conv112) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %PDIO.i194 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %PDIO.i194, align 4
  %add.ptr12.i198 = getelementptr i8, ptr %105, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i198, i8 %conv114) #11, !srcloc !399
  br label %cleanup

cleanup:                                          ; preds = %sw.bb107, %if.end91, %for.body.cleanup_crit_edge, %sw.bb48, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %sw.bb107 ], [ 0, %sw.bb48 ], [ 0, %if.end91 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %PVIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #11, !srcloc !399
  %4 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PVIO.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 965
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  tail call void @arm_heavy_mb() #11
  %PCIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %8, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i36, i8 26) #11, !srcloc !399
  %9 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %PCIO.i, align 8
  %add.ptr3.i37 = getelementptr i8, ptr %10, i32 981
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i37) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  %12 = and i8 %11, 63
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.123) #14
  %13 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %blank, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb19
    i32 3, label %sw.bb15
    i32 2, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = or i8 %12, -128
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = or i8 %12, 64
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = or i8 %11, -64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15, %sw.bb11, %entry.sw.epilog_crit_edge
  %vesa.0 = phi i8 [ %12, %entry.sw.epilog_crit_edge ], [ %14, %sw.bb11 ], [ %15, %sw.bb15 ], [ %16, %sw.bb19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool.not = icmp eq i32 %blank, 0
  %17 = and i8 %6, -33
  %masksel = select i1 %tobool.not, i8 0, i8 32
  %spec.select = or i8 %17, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %19, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 1) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %spec.select) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i41 = getelementptr i8, ptr %23, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 26) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PCIO.i, align 8
  %add.ptr5.i42 = getelementptr i8, ptr %25, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i42, i8 %vesa.0) #11, !srcloc !399
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.123) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.126) #14
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  %mul = mul i32 %5, %3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %7
  %SetStartAddress = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %SetStartAddress to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %SetStartAddress, align 8
  tail call void %9(ptr noundef %1, i32 noundef %add) #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.126) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rivafb_fillrect(ptr noundef %info, ptr noundef %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %color3 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp4.not = icmp eq i32 %7, 3
  br i1 %cmp4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette, align 4
  %color6 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %10 = ptrtoint ptr %color6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %color6, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %11
  br label %if.end11

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %color8 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %12 = ptrtoint ptr %color8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %color8, align 4
  %arrayidx9 = getelementptr %struct.riva_par, ptr %1, i32 0, i32 2, i32 %13
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then5, %if.then2
  %color.0.in = phi ptr [ %color3, %if.then2 ], [ %arrayidx, %if.then5 ], [ %arrayidx9, %if.else7 ]
  %14 = ptrtoint ptr %color.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %color.0 = load i32, ptr %color.0.in, align 4
  %rop12 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %15 = ptrtoint ptr %rop12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rop12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cond = icmp eq i32 %16, 1
  %. = select i1 %cond, i32 102, i32 204
  tail call fastcc void @riva_set_rop_solid(ptr noundef %1, i32 noundef %.)
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1597 = icmp eq i32 %18, 0
  br i1 %cmp1597, label %do.body.lr.ph, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.lr.ph:                                    ; preds = %if.end11
  %Bitmap = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 47
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %Bitmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %Bitmap, align 4
  %FifoFree = getelementptr inbounds %struct.anon.90, ptr %20, i32 0, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #11, !srcloc !411
  %shr = lshr i32 %21, 2
  %22 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %FifoFreeCount, align 8
  %cmp15 = icmp ult i32 %21, 4
  br i1 %cmp15, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %if.end11.while.end_crit_edge
  %.lcssa96 = phi i32 [ %18, %if.end11.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa96, -1
  %23 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %FifoFreeCount, align 8
  %Bitmap25 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 47
  %24 = ptrtoint ptr %Bitmap25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %Bitmap25, align 4
  %Color1A = getelementptr inbounds %struct.anon.90, ptr %25, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Color1A, i32 %color.0) #11, !srcloc !414
  %26 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp3099 = icmp ult i32 %.pr, 2
  br i1 %cmp3099, label %while.end.do.body32_crit_edge, label %while.end.while.end46_crit_edge

while.end.while.end46_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end46

while.end.do.body32_crit_edge:                    ; preds = %while.end
  br label %do.body32

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %while.end.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !427
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !428
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %Bitmap25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %Bitmap25, align 4
  %FifoFree40 = getelementptr inbounds %struct.anon.90, ptr %28, i32 0, i32 1
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree40) #11, !srcloc !411
  %shr43 = lshr i32 %29, 2
  %30 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr43, ptr %FifoFreeCount, align 8
  %cmp30 = icmp ult i32 %29, 8
  br i1 %cmp30, label %do.body32.do.body32_crit_edge, label %do.body32.while.end46_crit_edge

do.body32.while.end46_crit_edge:                  ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end46

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

while.end46:                                      ; preds = %do.body32.while.end46_crit_edge, %while.end.while.end46_crit_edge
  %.lcssa = phi i32 [ %.pr, %while.end.while.end46_crit_edge ], [ %shr43, %do.body32.while.end46_crit_edge ]
  %sub49 = add i32 %.lcssa, -2
  %31 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub49, ptr %FifoFreeCount, align 8
  %32 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rect, align 4
  %shl = shl i32 %33, 16
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %34 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dy, align 4
  %or = or i32 %shl, %35
  %36 = ptrtoint ptr %Bitmap25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %Bitmap25, align 4
  %UnclippedRectangle = getelementptr inbounds %struct.anon.90, ptr %37, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %UnclippedRectangle, i32 %or) #11, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !429
  tail call void @arm_heavy_mb() #11
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %38 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width, align 4
  %shl57 = shl i32 %39, 16
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %or58 = or i32 %shl57, %41
  %42 = ptrtoint ptr %Bitmap25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %Bitmap25, align 4
  %WidthHeight = getelementptr inbounds %struct.anon.90, ptr %43, i32 0, i32 5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WidthHeight, i32 %or58) #11, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !430
  tail call void @arm_heavy_mb() #11
  tail call fastcc void @riva_set_rop_solid(ptr noundef %1, i32 noundef 204)
  br label %cleanup

cleanup:                                          ; preds = %while.end46, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rivafb_copyarea(ptr noundef %info, ptr noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp43 = icmp ult i32 %5, 3
  br i1 %cmp43, label %do.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.lr.ph:                                    ; preds = %while.cond.preheader
  %Blt = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 46
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %region) #11
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !431
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !432
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %Blt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %Blt, align 8
  %FifoFree = getelementptr inbounds %struct.anon.89, ptr %7, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #11, !srcloc !411
  %shr = lshr i32 %8, 2
  %9 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %FifoFreeCount, align 8
  %cmp = icmp ult i32 %8, 12
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi i32 [ %5, %while.cond.preheader.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa, -3
  %10 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %FifoFreeCount, align 8
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %11 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sy, align 4
  %shl = shl i32 %12, 16
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %13 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sx, align 4
  %or = or i32 %shl, %14
  %Blt11 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 46
  %15 = ptrtoint ptr %Blt11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %Blt11, align 8
  %TopLeftSrc = getelementptr inbounds %struct.anon.89, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TopLeftSrc, i32 %or) #11, !srcloc !414
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %17 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dy, align 4
  %shl13 = shl i32 %18, 16
  %19 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %region, align 4
  %or14 = or i32 %shl13, %20
  %21 = ptrtoint ptr %Blt11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %Blt11, align 8
  %TopLeftDst = getelementptr inbounds %struct.anon.89, ptr %22, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TopLeftDst, i32 %or14) #11, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !433
  tail call void @arm_heavy_mb() #11
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %shl21 = shl i32 %24, 16
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  %or22 = or i32 %shl21, %26
  %27 = ptrtoint ptr %Blt11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %Blt11, align 8
  %WidthHeight = getelementptr inbounds %struct.anon.89, ptr %28, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WidthHeight, i32 %or22) #11, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !434
  tail call void @arm_heavy_mb() #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rivafb_imageblit(ptr noundef %info, ptr noundef %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %if.end.sw.bb3_crit_edge
    i32 32, label %if.end.sw.bb3_crit_edge314
  ]

if.end.sw.bb3_crit_edge314:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %11 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %13 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bg_color, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge314
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp4.not = icmp eq i32 %16, 3
  br i1 %cmp4.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %17 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pseudo_palette, align 4
  %fg_color7 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %19 = ptrtoint ptr %fg_color7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fg_color7, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %20
  %bg_color9 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %21 = ptrtoint ptr %bg_color9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bg_color9, align 4
  %arrayidx10 = getelementptr i32, ptr %18, i32 %22
  br label %if.end16

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %fg_color11 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %23 = ptrtoint ptr %fg_color11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fg_color11, align 4
  %arrayidx12 = getelementptr %struct.riva_par, ptr %1, i32 0, i32 2, i32 %24
  %bg_color14 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %25 = ptrtoint ptr %bg_color14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bg_color14, align 4
  %arrayidx15 = getelementptr %struct.riva_par, ptr %1, i32 0, i32 2, i32 %26
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %storemerge.in = phi ptr [ %arrayidx15, %if.else ], [ %arrayidx10, %if.then6 ]
  %fgx.0.in = phi ptr [ %arrayidx12, %if.else ], [ %arrayidx, %if.then6 ]
  %27 = ptrtoint ptr %fgx.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %fgx.0 = load i32, ptr %fgx.0.in, align 4
  %28 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp18 = icmp eq i32 %30, 6
  br i1 %cmp18, label %if.then20, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = shl i32 %storemerge, 8
  %shl.i = and i32 %and.i, 16252928
  %and1.i = shl i32 %storemerge, 5
  %shl2.i = and i32 %and1.i, 64512
  %and3.i = shl i32 %storemerge, 3
  %shl4.i = and i32 %and3.i, 248
  %or.i = or i32 %shl.i, %shl2.i
  %or5.i = or i32 %or.i, %shl4.i
  %or6.i = or i32 %or5.i, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !435
  tail call void @arm_heavy_mb() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then20, %if.end16.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  %bgx.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %or6.i, %if.then20 ], [ %storemerge, %if.end16.sw.epilog_crit_edge ], [ %14, %sw.bb ]
  %fgx.1 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %fgx.0, %if.then20 ], [ %fgx.0, %if.end16.sw.epilog_crit_edge ], [ %12, %sw.bb ]
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %cmp23297 = icmp ult i32 %32, 7
  br i1 %cmp23297, label %do.body.lr.ph, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.lr.ph:                                    ; preds = %sw.epilog
  %Bitmap = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 47
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !436
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !437
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %Bitmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %Bitmap, align 4
  %FifoFree = getelementptr inbounds %struct.anon.90, ptr %34, i32 0, i32 1
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #11, !srcloc !411
  %shr = lshr i32 %35, 2
  %36 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr, ptr %FifoFreeCount, align 8
  %cmp23 = icmp ult i32 %35, 28
  br i1 %cmp23, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %.lcssa296 = phi i32 [ %32, %sw.epilog.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa296, -7
  %37 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %FifoFreeCount, align 8
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %38 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dy, align 4
  %shl = shl i32 %39, 16
  %40 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %image, align 4
  %and33 = and i32 %41, 65535
  %or = or i32 %and33, %shl
  %Bitmap35 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 47
  %42 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %Bitmap35, align 4
  %ClipE = getelementptr inbounds %struct.anon.90, ptr %43, i32 0, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ClipE, i32 %or) #11, !srcloc !414
  %44 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dy, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %add = add i32 %47, %45
  %shl38 = shl i32 %add, 16
  %48 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %image, align 4
  %width40 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %50 = ptrtoint ptr %width40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width40, align 4
  %add41 = add i32 %51, %49
  %and42 = and i32 %add41, 65535
  %or43 = or i32 %and42, %shl38
  %52 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %Bitmap35, align 4
  %BottomRight = getelementptr inbounds %struct.anon.90, ptr %53, i32 0, i32 24, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BottomRight, i32 %or43) #11, !srcloc !414
  %54 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %Bitmap35, align 4
  %Color0E = getelementptr inbounds %struct.anon.90, ptr %55, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Color0E, i32 %bgx.0) #11, !srcloc !414
  %56 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %Bitmap35, align 4
  %Color1E = getelementptr inbounds %struct.anon.90, ptr %57, i32 0, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Color1E, i32 %fgx.1) #11, !srcloc !414
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %shl55 = shl i32 %59, 16
  %60 = ptrtoint ptr %width40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %width40, align 4
  %add57 = add i32 %61, 31
  %and58 = and i32 %add57, -32
  %or59 = or i32 %and58, %shl55
  %62 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %Bitmap35, align 4
  %WidthHeightInE = getelementptr inbounds %struct.anon.90, ptr %63, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WidthHeightInE, i32 %or59) #11, !srcloc !414
  %64 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height, align 4
  %shl64 = shl i32 %65, 16
  %66 = ptrtoint ptr %width40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width40, align 4
  %add66 = add i32 %67, 31
  %and67 = and i32 %add66, -32
  %or68 = or i32 %and67, %shl64
  %68 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %Bitmap35, align 4
  %WidthHeightOutE = getelementptr inbounds %struct.anon.90, ptr %69, i32 0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WidthHeightOutE, i32 %or68) #11, !srcloc !414
  %70 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dy, align 4
  %shl73 = shl i32 %71, 16
  %72 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %image, align 4
  %and75 = and i32 %73, 65535
  %or76 = or i32 %and75, %shl73
  %74 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %Bitmap35, align 4
  %PointE = getelementptr inbounds %struct.anon.90, ptr %75, i32 0, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PointE, i32 %or76) #11, !srcloc !414
  %76 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %Bitmap35, align 4
  %MonochromeData01E = getelementptr inbounds %struct.anon.90, ptr %77, i32 0, i32 30
  %78 = ptrtoint ptr %width40 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width40, align 4
  %add83 = add i32 %79, 31
  %div231 = lshr i32 %add83, 5
  %80 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %height, align 4
  %mul = mul i32 %div231, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mul)
  %cmp86303 = icmp sgt i32 %mul, 15
  br i1 %cmp86303, label %while.end.while.cond89thread-pre-split_crit_edge, label %while.end.while.end119_crit_edge

while.end.while.end119_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end119

while.end.while.cond89thread-pre-split_crit_edge: ; preds = %while.end
  br label %while.cond89thread-pre-split

while.cond89thread-pre-split:                     ; preds = %for.end.while.cond89thread-pre-split_crit_edge, %while.end.while.cond89thread-pre-split_crit_edge
  %size.0305 = phi i32 [ %sub118, %for.end.while.cond89thread-pre-split_crit_edge ], [ %mul, %while.end.while.cond89thread-pre-split_crit_edge ]
  %cdat.0304 = phi ptr [ %add.ptr115, %for.end.while.cond89thread-pre-split_crit_edge ], [ %3, %while.end.while.cond89thread-pre-split_crit_edge ]
  %82 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load i32, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp92299 = icmp ult i32 %.pr, 16
  br i1 %cmp92299, label %while.cond89thread-pre-split.do.body95_crit_edge, label %while.cond89thread-pre-split.while.end109_crit_edge

while.cond89thread-pre-split.while.end109_crit_edge: ; preds = %while.cond89thread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end109

while.cond89thread-pre-split.do.body95_crit_edge: ; preds = %while.cond89thread-pre-split
  br label %do.body95

do.body95:                                        ; preds = %do.body95.do.body95_crit_edge, %while.cond89thread-pre-split.do.body95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !438
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !439
  tail call void @arm_heavy_mb() #11
  %83 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %Bitmap35, align 4
  %FifoFree103 = getelementptr inbounds %struct.anon.90, ptr %84, i32 0, i32 1
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree103) #11, !srcloc !411
  %shr106 = lshr i32 %85, 2
  %86 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %shr106, ptr %FifoFreeCount, align 8
  %cmp92 = icmp ult i32 %85, 64
  br i1 %cmp92, label %do.body95.do.body95_crit_edge, label %do.body95.while.end109_crit_edge

do.body95.while.end109_crit_edge:                 ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end109

do.body95.do.body95_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

while.end109:                                     ; preds = %do.body95.while.end109_crit_edge, %while.cond89thread-pre-split.while.end109_crit_edge
  %.lcssa295 = phi i32 [ %.pr, %while.cond89thread-pre-split.while.end109_crit_edge ], [ %shr106, %do.body95.while.end109_crit_edge ]
  %sub112 = add i32 %.lcssa295, -16
  %87 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub112, ptr %FifoFreeCount, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end109
  %i.0302 = phi i32 [ 0, %while.end109 ], [ %inc, %for.body.for.body_crit_edge ]
  %cdat.1301 = phi ptr [ %cdat.0304, %while.end109 ], [ %add.ptr115, %for.body.for.body_crit_edge ]
  %88 = ptrtoint ptr %cdat.1301 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cdat.1301, align 4
  %tmp.sroa.11.0.extract.shift = lshr i32 %89, 16
  %tmp.sroa.15.0.extract.shift = lshr i32 %89, 8
  %add.ptr115 = getelementptr i32, ptr %cdat.1301, i32 1
  %tmp.sroa.0.0.extract.shift = lshr i32 %89, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %tmp.sroa.0.0.extract.shift
  %90 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom.i173.i = and i32 %tmp.sroa.11.0.extract.shift, 255
  %arrayidx.i174.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i173.i
  %92 = ptrtoint ptr %arrayidx.i174.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i174.i, align 1
  %idxprom.i175.i = and i32 %tmp.sroa.15.0.extract.shift, 255
  %arrayidx.i176.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i175.i
  %94 = ptrtoint ptr %arrayidx.i176.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i176.i, align 1
  %idxprom.i177.i = and i32 %89, 255
  %arrayidx.i178.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i177.i
  %96 = ptrtoint ptr %arrayidx.i178.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i178.i, align 1
  %tmp.sroa.19.0.insert.ext = zext i8 %97 to i32
  %tmp.sroa.15.0.insert.ext = zext i8 %95 to i32
  %tmp.sroa.15.0.insert.shift = shl nuw nsw i32 %tmp.sroa.15.0.insert.ext, 8
  %tmp.sroa.15.0.insert.insert = or i32 %tmp.sroa.15.0.insert.shift, %tmp.sroa.19.0.insert.ext
  %tmp.sroa.11.0.insert.ext = zext i8 %93 to i32
  %tmp.sroa.11.0.insert.shift = shl nuw nsw i32 %tmp.sroa.11.0.insert.ext, 16
  %tmp.sroa.11.0.insert.insert = or i32 %tmp.sroa.15.0.insert.insert, %tmp.sroa.11.0.insert.shift
  %tmp.sroa.0.0.insert.ext = zext i8 %91 to i32
  %tmp.sroa.0.0.insert.shift = shl nuw i32 %tmp.sroa.0.0.insert.ext, 24
  %tmp.sroa.0.0.insert.insert = or i32 %tmp.sroa.11.0.insert.insert, %tmp.sroa.0.0.insert.shift
  %mul116 = shl i32 %i.0302, 2
  %add.ptr117 = getelementptr i8, ptr %MonochromeData01E, i32 %mul116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %tmp.sroa.0.0.insert.insert) #11, !srcloc !414
  %inc = add nuw nsw i32 %i.0302, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %sub118 = add nsw i32 %size.0305, -16
  %cmp86 = icmp sgt i32 %size.0305, 31
  br i1 %cmp86, label %for.end.while.cond89thread-pre-split_crit_edge, label %for.end.while.end119_crit_edge

for.end.while.end119_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end119

for.end.while.cond89thread-pre-split_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond89thread-pre-split

while.end119:                                     ; preds = %for.end.while.end119_crit_edge, %while.end.while.end119_crit_edge
  %cdat.0.lcssa = phi ptr [ %3, %while.end.while.end119_crit_edge ], [ %add.ptr115, %for.end.while.end119_crit_edge ]
  %size.0.lcssa = phi i32 [ %mul, %while.end.while.end119_crit_edge ], [ %sub118, %for.end.while.end119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa)
  %tobool120.not = icmp eq i32 %size.0.lcssa, 0
  br i1 %tobool120.not, label %while.end119.cleanup_crit_edge, label %while.cond122.preheader

while.end119.cleanup_crit_edge:                   ; preds = %while.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond122.preheader:                          ; preds = %while.end119
  %98 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %size.0.lcssa)
  %cmp125308 = icmp ult i32 %99, %size.0.lcssa
  br i1 %cmp125308, label %while.cond122.preheader.do.body128_crit_edge, label %while.cond122.preheader.while.end142_crit_edge

while.cond122.preheader.while.end142_crit_edge:   ; preds = %while.cond122.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end142

while.cond122.preheader.do.body128_crit_edge:     ; preds = %while.cond122.preheader
  br label %do.body128

do.body128:                                       ; preds = %do.body128.do.body128_crit_edge, %while.cond122.preheader.do.body128_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !440
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !441
  tail call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %Bitmap35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %Bitmap35, align 4
  %FifoFree136 = getelementptr inbounds %struct.anon.90, ptr %101, i32 0, i32 1
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree136) #11, !srcloc !411
  %shr139 = lshr i32 %102, 2
  %103 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %shr139, ptr %FifoFreeCount, align 8
  %cmp125 = icmp ult i32 %shr139, %size.0.lcssa
  br i1 %cmp125, label %do.body128.do.body128_crit_edge, label %do.body128.while.end142_crit_edge

do.body128.while.end142_crit_edge:                ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end142

do.body128.do.body128_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

while.end142:                                     ; preds = %do.body128.while.end142_crit_edge, %while.cond122.preheader.while.end142_crit_edge
  %.lcssa = phi i32 [ %99, %while.cond122.preheader.while.end142_crit_edge ], [ %shr139, %do.body128.while.end142_crit_edge ]
  %sub145 = sub i32 %.lcssa, %size.0.lcssa
  %104 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub145, ptr %FifoFreeCount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa)
  %cmp147310 = icmp sgt i32 %size.0.lcssa, 0
  br i1 %cmp147310, label %while.end142.for.body149_crit_edge, label %while.end142.cleanup_crit_edge

while.end142.cleanup_crit_edge:                   ; preds = %while.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end142.for.body149_crit_edge:               ; preds = %while.end142
  br label %for.body149

for.body149:                                      ; preds = %for.body149.for.body149_crit_edge, %while.end142.for.body149_crit_edge
  %i.1312 = phi i32 [ %inc154, %for.body149.for.body149_crit_edge ], [ 0, %while.end142.for.body149_crit_edge ]
  %cdat.2311 = phi ptr [ %add.ptr150, %for.body149.for.body149_crit_edge ], [ %cdat.0.lcssa, %while.end142.for.body149_crit_edge ]
  %105 = ptrtoint ptr %cdat.2311 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cdat.2311, align 4
  %tmp.sroa.11.0.extract.shift272 = lshr i32 %106, 16
  %tmp.sroa.15.0.extract.shift280 = lshr i32 %106, 8
  %add.ptr150 = getelementptr i32, ptr %cdat.2311, i32 1
  %tmp.sroa.0.0.extract.shift265 = lshr i32 %106, 24
  %arrayidx.i.i235 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %tmp.sroa.0.0.extract.shift265
  %107 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i.i235, align 1
  %idxprom.i173.i242 = and i32 %tmp.sroa.11.0.extract.shift272, 255
  %arrayidx.i174.i243 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i173.i242
  %109 = ptrtoint ptr %arrayidx.i174.i243 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i174.i243, align 1
  %idxprom.i175.i250 = and i32 %tmp.sroa.15.0.extract.shift280, 255
  %arrayidx.i176.i251 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i175.i250
  %111 = ptrtoint ptr %arrayidx.i176.i251 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i176.i251, align 1
  %idxprom.i177.i258 = and i32 %106, 255
  %arrayidx.i178.i259 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i177.i258
  %113 = ptrtoint ptr %arrayidx.i178.i259 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i178.i259, align 1
  %tmp.sroa.19.0.insert.ext290 = zext i8 %114 to i32
  %tmp.sroa.15.0.insert.ext283 = zext i8 %112 to i32
  %tmp.sroa.15.0.insert.shift284 = shl nuw nsw i32 %tmp.sroa.15.0.insert.ext283, 8
  %tmp.sroa.15.0.insert.insert286 = or i32 %tmp.sroa.15.0.insert.shift284, %tmp.sroa.19.0.insert.ext290
  %tmp.sroa.11.0.insert.ext275 = zext i8 %110 to i32
  %tmp.sroa.11.0.insert.shift276 = shl nuw nsw i32 %tmp.sroa.11.0.insert.ext275, 16
  %tmp.sroa.11.0.insert.insert278 = or i32 %tmp.sroa.15.0.insert.insert286, %tmp.sroa.11.0.insert.shift276
  %tmp.sroa.0.0.insert.ext268 = zext i8 %108 to i32
  %tmp.sroa.0.0.insert.shift269 = shl nuw i32 %tmp.sroa.0.0.insert.ext268, 24
  %tmp.sroa.0.0.insert.insert271 = or i32 %tmp.sroa.11.0.insert.insert278, %tmp.sroa.0.0.insert.shift269
  %mul151 = shl i32 %i.1312, 2
  %add.ptr152 = getelementptr i8, ptr %MonochromeData01E, i32 %mul151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %tmp.sroa.0.0.insert.insert271) #11, !srcloc !414
  %inc154 = add nuw nsw i32 %i.1312, 1
  %exitcond313.not = icmp eq i32 %inc154, %size.0.lcssa
  br i1 %exitcond313.not, label %for.body149.cleanup_crit_edge, label %for.body149.for.body149_crit_edge

for.body149.for.body149_crit_edge:                ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body149

for.body149.cleanup_crit_edge:                    ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body149.cleanup_crit_edge, %while.end142.cleanup_crit_edge, %while.end119.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_cursor(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cursor) #0 align 64 {
entry:
  %data = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %data) #11
  %2 = call ptr @memset(ptr %data, i32 255, i32 128)
  %3 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cursor, align 4
  %conv = zext i16 %4 to i32
  %image = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %width = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp = icmp ugt i32 %6, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp5 = icmp ugt i32 %8, 32
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ShowHideCursor = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 39
  %9 = ptrtoint ptr %ShowHideCursor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ShowHideCursor, align 4
  %call = tail call i32 %10(ptr noundef %1, i32 noundef 0) #11
  %cursor_reset = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cursor_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cursor_reset, align 4
  br label %if.then12

if.end10:                                         ; preds = %if.end
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end10.thread
  %set.0199 = phi i32 [ 255, %if.end10.thread ], [ %conv, %if.end10.if.then12_crit_edge ]
  %CURSOR = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %CURSOR to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %CURSOR, align 8
  tail call void @mmioset(ptr noundef %15, i32 noundef 0, i32 noundef 2048) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %set.0200 = phi i32 [ %set.0199, %if.then12 ], [ %conv, %if.end10.if.end14_crit_edge ]
  %and15 = and i32 %set.0200, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %if.then17

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset, align 4
  %sub = sub i32 %17, %19
  %20 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xoffset, align 4
  %sub21 = sub i32 %21, %23
  %and22 = and i32 %sub21, 65535
  %shl = shl i32 %sub, 16
  %or = or i32 %and22, %shl
  %PRAMDAC = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 32
  %24 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #11, !srcloc !414
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end14.if.end24_crit_edge
  %and25 = and i32 %set.0200, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end117_crit_edge, label %if.then27

if.end24.if.end117_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then27:                                        ; preds = %if.end24
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %26 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bg_color, align 4
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fg_color, align 4
  %30 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width, align 4
  %add = add i32 %31, 7
  %shr = lshr i32 %add, 3
  %data33 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %32 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data33, align 4
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask, align 4
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %37) #11
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %if.then27.if.end117_crit_edge, label %if.end7.i, !prof !442

if.then27.if.end117_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.end7.i:                                        ; preds = %if.then27
  %40 = extractvalue { i32, i1 } %38, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 2592) #16
  %tobool37.not = icmp eq ptr %call8.i, null
  br i1 %tobool37.not, label %if.end7.i.if.end117_crit_edge, label %if.then38

if.end7.i.if.end117_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then38:                                        ; preds = %if.end7.i
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %41 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %42)
  %cond = icmp eq i16 %42, 1
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %mul212 = mul i32 %44, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul212)
  %cmp42213.not = icmp eq i32 %mul212, 0
  br i1 %cond, label %for.cond.preheader, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %if.then38
  br i1 %cmp42213.not, label %for.cond50.preheader.sw.epilog_crit_edge, label %for.body56.preheader

for.cond50.preheader.sw.epilog_crit_edge:         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body56.preheader:                             ; preds = %for.cond50.preheader
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %mul53 = mul i32 %46, %shr
  br label %for.body56

for.cond.preheader:                               ; preds = %if.then38
  br i1 %cmp42213.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.body.preheader

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.preheader:                               ; preds = %for.cond.preheader
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %mul = mul i32 %48, %shr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0214 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %33, i32 %i.0214
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %arrayidx45 = getelementptr i8, ptr %35, i32 %i.0214
  %51 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx45, align 1
  %xor195 = xor i8 %52, %50
  %arrayidx48 = getelementptr i8, ptr %call8.i, i32 %i.0214
  %53 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %xor195, ptr %arrayidx48, align 1
  %inc = add nuw i32 %i.0214, 1
  %cmp42 = icmp ult i32 %inc, %mul
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.body56.preheader
  %i.1211 = phi i32 [ %inc65, %for.body56.for.body56_crit_edge ], [ 0, %for.body56.preheader ]
  %arrayidx57 = getelementptr i8, ptr %33, i32 %i.1211
  %54 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr i8, ptr %35, i32 %i.1211
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx59, align 1
  %and61194 = and i8 %57, %55
  %arrayidx63 = getelementptr i8, ptr %call8.i, i32 %i.1211
  %58 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %and61194, ptr %arrayidx63, align 1
  %inc65 = add nuw i32 %i.1211, 1
  %cmp54 = icmp ult i32 %inc65, %mul53
  br i1 %cmp54, label %for.body56.for.body56_crit_edge, label %for.body56.sw.epilog_crit_edge

for.body56.sw.epilog_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body56

sw.epilog:                                        ; preds = %for.body56.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond50.preheader.sw.epilog_crit_edge
  %59 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height, align 4
  call void @fb_pad_aligned_buffer(ptr noundef nonnull %data, i32 noundef 4, ptr noundef nonnull %call8.i, i32 noundef %shr, i32 noundef %60) #11
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %61 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %red, align 4
  %arrayidx69 = getelementptr i16, ptr %62, i32 %27
  %63 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx69, align 2
  %65 = shl i16 %64, 7
  %66 = and i16 %65, 31744
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %67 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %green, align 4
  %arrayidx74 = getelementptr i16, ptr %68, i32 %27
  %69 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx74, align 2
  %71 = shl i16 %70, 2
  %72 = and i16 %71, 992
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %73 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %blue, align 4
  %arrayidx80 = getelementptr i16, ptr %74, i32 %27
  %75 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx80, align 2
  %77 = lshr i16 %76, 3
  %78 = and i16 %77, 31
  %or78190 = or i16 %66, %72
  %or84191 = or i16 %or78190, %78
  %79 = or i16 %or84191, -32768
  %arrayidx89 = getelementptr i16, ptr %62, i32 %29
  %80 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx89, align 2
  %82 = shl i16 %81, 7
  %83 = and i16 %82, 31744
  %arrayidx95 = getelementptr i16, ptr %68, i32 %29
  %84 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx95, align 2
  %86 = shl i16 %85, 2
  %87 = and i16 %86, 992
  %arrayidx102 = getelementptr i16, ptr %74, i32 %29
  %88 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx102, align 2
  %90 = lshr i16 %89, 3
  %91 = and i16 %90, 31
  %or99192 = or i16 %83, %87
  %or106193 = or i16 %or99192, %91
  %92 = or i16 %or106193, -32768
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 40
  %93 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %LockUnlock, align 8
  call void %94(ptr noundef %1, i32 noundef 0) #11
  %95 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %height, align 4
  %97 = call i16 @llvm.bswap.i16(i16 %79) #11
  %98 = call i16 @llvm.bswap.i16(i16 %92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp97.not.i = icmp eq i32 %96, 0
  br i1 %cmp97.not.i, label %sw.epilog.rivafb_load_cursor_image.exit_crit_edge, label %for.body.lr.ph.i

sw.epilog.rivafb_load_cursor_image.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %rivafb_load_cursor_image.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog
  %99 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width, align 4
  %add.i = add i32 %100, 1
  %and.i = and i32 %add.i, -2
  %div33.i = lshr i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp290.not.i = icmp ult i32 %add.i, 2
  %CURSOR.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 26
  %sub.i = sub i32 32, %and.i
  %div1834.i = lshr exact i32 %sub.i, 1
  %umax.i = call i32 @llvm.umax.i32(i32 %div33.i, i32 1) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %data.0100.i = phi ptr [ %data, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.end.i.for.body.i_crit_edge ]
  %k.099.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add19.i, %for.end.i.for.body.i_crit_edge ]
  %i.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.end.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %data.0100.i, i32 1
  br i1 %cmp290.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body3.i.preheader

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body3.i.preheader:                            ; preds = %for.body.i
  %101 = ptrtoint ptr %data.0100.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data.0100.i, align 4
  %idxprom.i177.i.i = and i32 %102, 255
  %arrayidx.i178.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i177.i.i
  %103 = ptrtoint ptr %arrayidx.i178.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i178.i.i, align 1
  %b.sroa.13.0.extract.shift.i = lshr i32 %102, 8
  %idxprom.i175.i.i = and i32 %b.sroa.13.0.extract.shift.i, 255
  %arrayidx.i176.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i175.i.i
  %105 = ptrtoint ptr %arrayidx.i176.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i176.i.i, align 1
  %b.sroa.11.0.extract.shift.i = lshr i32 %102, 16
  %idxprom.i173.i.i = and i32 %b.sroa.11.0.extract.shift.i, 255
  %arrayidx.i174.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i173.i.i
  %107 = ptrtoint ptr %arrayidx.i174.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i174.i.i, align 1
  %b.sroa.0.0.extract.shift.i = lshr i32 %102, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %b.sroa.0.0.extract.shift.i
  %109 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i.i.i, align 1
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.i.preheader
  %k.196.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ %k.099.i, %for.body3.i.preheader ]
  %j.095.i = phi i32 [ %inc17.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body3.i.preheader ]
  %b.sroa.0.094.i = phi i8 [ %b.sroa.0.0.extract.trunc49.i, %for.body3.i.for.body3.i_crit_edge ], [ %110, %for.body3.i.preheader ]
  %b.sroa.11.093.i = phi i8 [ %b.sroa.11.0.extract.trunc63.i, %for.body3.i.for.body3.i_crit_edge ], [ %108, %for.body3.i.preheader ]
  %b.sroa.13.092.i = phi i8 [ %b.sroa.13.0.extract.trunc77.i, %for.body3.i.for.body3.i_crit_edge ], [ %106, %for.body3.i.preheader ]
  %b.sroa.15.091.i = phi i8 [ %b.sroa.15.0.extract.trunc87.i, %for.body3.i.for.body3.i_crit_edge ], [ %104, %for.body3.i.preheader ]
  %b.sroa.15.0.insert.ext.i = zext i8 %b.sroa.15.091.i to i32
  %b.sroa.13.0.insert.ext.i = zext i8 %b.sroa.13.092.i to i32
  %b.sroa.13.0.insert.shift.i = shl nuw nsw i32 %b.sroa.13.0.insert.ext.i, 8
  %b.sroa.13.0.insert.insert.i = or i32 %b.sroa.13.0.insert.shift.i, %b.sroa.15.0.insert.ext.i
  %b.sroa.11.0.insert.ext.i = zext i8 %b.sroa.11.093.i to i32
  %b.sroa.11.0.insert.shift.i = shl nuw nsw i32 %b.sroa.11.0.insert.ext.i, 16
  %b.sroa.11.0.insert.insert.i = or i32 %b.sroa.13.0.insert.insert.i, %b.sroa.11.0.insert.shift.i
  %b.sroa.0.0.insert.ext.i = zext i8 %b.sroa.0.094.i to i32
  %b.sroa.0.0.insert.shift.i = shl nuw i32 %b.sroa.0.0.insert.ext.i, 24
  %b.sroa.0.0.insert.insert.i = or i32 %b.sroa.11.0.insert.insert.i, %b.sroa.0.0.insert.shift.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.sroa.0.0.insert.insert.i)
  %tobool.not88.i = icmp slt i32 %b.sroa.0.0.insert.insert.i, 0
  %..i = select i1 %tobool.not88.i, i16 %98, i16 %97
  %cond.in.i = zext i16 %..i to i32
  %cond.i = shl nuw i32 %cond.in.i, 16
  %shl7.mask.i = and i32 %b.sroa.0.0.insert.ext.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl7.mask.i)
  %tobool9.not89.not.i = icmp eq i32 %shl7.mask.i, 0
  %cond15.in.i = select i1 %tobool9.not89.not.i, i16 %97, i16 %98
  %cond15.i = zext i16 %cond15.in.i to i32
  %or.i = or i32 %cond.i, %cond15.i
  %shl16.i = shl i32 %b.sroa.0.0.insert.insert.i, 2
  %b.sroa.0.0.extract.shift48.i = lshr i32 %shl16.i, 24
  %b.sroa.0.0.extract.trunc49.i = trunc i32 %b.sroa.0.0.extract.shift48.i to i8
  %b.sroa.11.0.extract.shift62.i = lshr i32 %shl16.i, 16
  %b.sroa.11.0.extract.trunc63.i = trunc i32 %b.sroa.11.0.extract.shift62.i to i8
  %b.sroa.13.0.extract.shift76.i = lshr i32 %shl16.i, 8
  %b.sroa.13.0.extract.trunc77.i = trunc i32 %b.sroa.13.0.extract.shift76.i to i8
  %b.sroa.15.0.extract.trunc87.i = trunc i32 %shl16.i to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !443
  call void @arm_heavy_mb() #11
  %111 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %112 = ptrtoint ptr %CURSOR.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %CURSOR.i, align 8
  %inc.i = add i32 %k.196.i, 1
  %arrayidx.i = getelementptr i32, ptr %113, i32 %k.196.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %111) #11, !srcloc !414
  %inc17.i = add nuw nsw i32 %j.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, %umax.i
  br i1 %exitcond.not.i, label %for.body3.i.for.end.i_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body3.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %k.1.lcssa.i = phi i32 [ %k.099.i, %for.body.i.for.end.i_crit_edge ], [ %inc.i, %for.body3.i.for.end.i_crit_edge ]
  %add19.i = add i32 %k.1.lcssa.i, %div1834.i
  %inc21.i = add nuw i32 %i.098.i, 1
  %exitcond101.not.i = icmp eq i32 %inc21.i, %96
  br i1 %exitcond101.not.i, label %for.end.i.rivafb_load_cursor_image.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.rivafb_load_cursor_image.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rivafb_load_cursor_image.exit

rivafb_load_cursor_image.exit:                    ; preds = %for.end.i.rivafb_load_cursor_image.exit_crit_edge, %sw.epilog.rivafb_load_cursor_image.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i) #11
  br label %if.end117

if.end117:                                        ; preds = %rivafb_load_cursor_image.exit, %if.end7.i.if.end117_crit_edge, %if.then27.if.end117_crit_edge, %if.end24.if.end117_crit_edge
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %114 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool118.not = icmp eq i16 %115, 0
  br i1 %tobool118.not, label %if.end117.cleanup_crit_edge, label %if.then119

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %ShowHideCursor to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ShowHideCursor, align 4
  %call123 = call i32 %117(ptr noundef %1, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.end117.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then119 ], [ 0, %if.end117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rivafb_sync(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %Busy.i = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 33
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %2 = ptrtoint ptr %Busy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Busy.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %wait_for_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

wait_for_idle.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riva_load_state(ptr noundef %par, ptr noundef %regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ext = getelementptr inbounds %struct.riva_regs, ptr %regs, i32 0, i32 5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.66) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  tail call void @arm_heavy_mb() #11
  %PCIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 28
  %0 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 0) #11, !srcloc !399
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 40
  %4 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %LockUnlock, align 8
  tail call void %5(ptr noundef %par, i32 noundef 0) #11
  %LoadStateExt = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 34
  %6 = ptrtoint ptr %LoadStateExt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %LoadStateExt, align 8
  tail call void %7(ptr noundef %par, ptr noundef %ext) #11
  %misc_output = getelementptr inbounds %struct.riva_regs, ptr %regs, i32 0, i32 4
  %8 = ptrtoint ptr %misc_output to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %misc_output, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !444
  tail call void @arm_heavy_mb() #11
  %PVIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 29
  %10 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %11, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i67, i8 %9) #11, !srcloc !399
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.080 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = zext i32 %i.080 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %i.080, label %sw.default [
    i32 25, label %for.body.for.inc_crit_edge
    i32 32, label %for.body.for.inc_crit_edge88
    i32 33, label %for.body.for.inc_crit_edge89
    i32 34, label %for.body.for.inc_crit_edge90
    i32 35, label %for.body.for.inc_crit_edge91
    i32 36, label %for.body.for.inc_crit_edge92
    i32 37, label %for.body.for.inc_crit_edge93
    i32 38, label %for.body.for.inc_crit_edge94
    i32 39, label %for.body.for.inc_crit_edge95
    i32 40, label %for.body.for.inc_crit_edge96
    i32 41, label %for.body.for.inc_crit_edge97
    i32 42, label %for.body.for.inc_crit_edge98
    i32 43, label %for.body.for.inc_crit_edge99
    i32 44, label %for.body.for.inc_crit_edge100
    i32 45, label %for.body.for.inc_crit_edge101
    i32 46, label %for.body.for.inc_crit_edge102
    i32 47, label %for.body.for.inc_crit_edge103
    i32 48, label %for.body.for.inc_crit_edge104
    i32 49, label %for.body.for.inc_crit_edge105
    i32 50, label %for.body.for.inc_crit_edge106
    i32 51, label %for.body.for.inc_crit_edge107
    i32 52, label %for.body.for.inc_crit_edge108
    i32 53, label %for.body.for.inc_crit_edge109
    i32 54, label %for.body.for.inc_crit_edge110
    i32 55, label %for.body.for.inc_crit_edge111
    i32 56, label %for.body.for.inc_crit_edge112
    i32 57, label %for.body.for.inc_crit_edge113
    i32 58, label %for.body.for.inc_crit_edge114
    i32 59, label %for.body.for.inc_crit_edge115
    i32 60, label %for.body.for.inc_crit_edge116
    i32 61, label %for.body.for.inc_crit_edge117
    i32 62, label %for.body.for.inc_crit_edge118
    i32 63, label %for.body.for.inc_crit_edge119
    i32 64, label %for.body.for.inc_crit_edge120
  ]

for.body.for.inc_crit_edge120:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge119:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge118:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge117:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge116:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge115:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge114:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge113:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge112:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge111:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge110:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge109:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge108:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge107:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge106:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge105:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge104:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge103:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge102:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge101:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge100:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge99:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge98:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge97:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge96:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge95:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge94:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge93:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge92:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge91:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge90:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge89:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge88:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %i.080 to i8
  %arrayidx = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 1, i32 %i.080
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %16, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i69, i8 %conv) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %PCIO.i, align 8
  %add.ptr5.i70 = getelementptr i8, ptr %18, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i70, i8 %14) #11, !srcloc !399
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge88, %for.body.for.inc_crit_edge89, %for.body.for.inc_crit_edge90, %for.body.for.inc_crit_edge91, %for.body.for.inc_crit_edge92, %for.body.for.inc_crit_edge93, %for.body.for.inc_crit_edge94, %for.body.for.inc_crit_edge95, %for.body.for.inc_crit_edge96, %for.body.for.inc_crit_edge97, %for.body.for.inc_crit_edge98, %for.body.for.inc_crit_edge99, %for.body.for.inc_crit_edge100, %for.body.for.inc_crit_edge101, %for.body.for.inc_crit_edge102, %for.body.for.inc_crit_edge103, %for.body.for.inc_crit_edge104, %for.body.for.inc_crit_edge105, %for.body.for.inc_crit_edge106, %for.body.for.inc_crit_edge107, %for.body.for.inc_crit_edge108, %for.body.for.inc_crit_edge109, %for.body.for.inc_crit_edge110, %for.body.for.inc_crit_edge111, %for.body.for.inc_crit_edge112, %for.body.for.inc_crit_edge113, %for.body.for.inc_crit_edge114, %for.body.for.inc_crit_edge115, %for.body.for.inc_crit_edge116, %for.body.for.inc_crit_edge117, %for.body.for.inc_crit_edge118, %for.body.for.inc_crit_edge119, %for.body.for.inc_crit_edge120
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.inc.for.body8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.inc.for.body8_crit_edge
  %i.182 = phi i32 [ %inc12, %for.body8.for.body8_crit_edge ], [ 0, %for.inc.for.body8_crit_edge ]
  %conv9 = trunc i32 %i.182 to i8
  %arrayidx10 = getelementptr [21 x i8], ptr %regs, i32 0, i32 %i.182
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !445
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %22, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 %conv9) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !446
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %PCIO.i, align 8
  %add.ptr5.i73 = getelementptr i8, ptr %24, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i73, i8 %20) #11, !srcloc !399
  %inc12 = add nuw nsw i32 %i.182, 1
  %exitcond85.not = icmp eq i32 %inc12, 21
  br i1 %exitcond85.not, label %for.body8.for.body17_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.body8.for.body17_crit_edge:                   ; preds = %for.body8
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body8.for.body17_crit_edge
  %i.283 = phi i32 [ %inc21, %for.body17.for.body17_crit_edge ], [ 0, %for.body8.for.body17_crit_edge ]
  %conv18 = trunc i32 %i.283 to i8
  %arrayidx19 = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 2, i32 %i.283
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !447
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %28, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i75, i8 %conv18) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !448
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i76 = getelementptr i8, ptr %30, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i76, i8 %26) #11, !srcloc !399
  %inc21 = add nuw nsw i32 %i.283, 1
  %exitcond86.not = icmp eq i32 %inc21, 9
  br i1 %exitcond86.not, label %for.body26.preheader, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

for.body26.preheader:                             ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28 = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 3, i32 0
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx28, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78, i8 0) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i79 = getelementptr i8, ptr %36, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i79, i8 %32) #11, !srcloc !399
  %arrayidx28.1 = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx28.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i78.1 = getelementptr i8, ptr %40, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78.1, i8 1) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i79.1 = getelementptr i8, ptr %42, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i79.1, i8 %38) #11, !srcloc !399
  %arrayidx28.2 = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx28.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i78.2 = getelementptr i8, ptr %46, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78.2, i8 2) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i79.2 = getelementptr i8, ptr %48, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i79.2, i8 %44) #11, !srcloc !399
  %arrayidx28.3 = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx28.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i78.3 = getelementptr i8, ptr %52, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78.3, i8 3) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i79.3 = getelementptr i8, ptr %54, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i79.3, i8 %50) #11, !srcloc !399
  %arrayidx28.4 = getelementptr %struct.riva_regs, ptr %regs, i32 0, i32 3, i32 4
  %55 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx28.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %PVIO.i, align 4
  %add.ptr.i78.4 = getelementptr i8, ptr %58, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78.4, i8 4) #11, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %PVIO.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %PVIO.i, align 4
  %add.ptr5.i79.4 = getelementptr i8, ptr %60, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i79.4, i8 %56) #11, !srcloc !399
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_mode(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CalcStateExt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riva_set_rop_solid(ptr nocapture noundef %par, i32 noundef %rop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %FifoFreeCount.i = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 10
  %0 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %FifoFreeCount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp1.i = icmp ult i32 %1, 4
  br i1 %cmp1.i, label %do.body.lr.ph.i, label %entry.riva_set_pattern.exit_crit_edge

entry.riva_set_pattern.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_set_pattern.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %Patt.i = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 43
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !449
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !450
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %Patt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Patt.i, align 4
  %FifoFree.i = getelementptr inbounds %struct.anon.86, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree.i) #11, !srcloc !411
  %shr.i = lshr i32 %4, 2
  %5 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %FifoFreeCount.i, align 8
  %cmp.i = icmp ult i32 %4, 16
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.riva_set_pattern.exit_crit_edge

do.body.i.riva_set_pattern.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riva_set_pattern.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

riva_set_pattern.exit:                            ; preds = %do.body.i.riva_set_pattern.exit_crit_edge, %entry.riva_set_pattern.exit_crit_edge
  %.lcssa.i = phi i32 [ %1, %entry.riva_set_pattern.exit_crit_edge ], [ %shr.i, %do.body.i.riva_set_pattern.exit_crit_edge ]
  %sub.i = add i32 %.lcssa.i, -4
  %6 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.i, ptr %FifoFreeCount.i, align 8
  %Patt9.i = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 43
  %7 = ptrtoint ptr %Patt9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %Patt9.i, align 4
  %Color0.i = getelementptr inbounds %struct.anon.86, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Color0.i, i32 -1) #11, !srcloc !414
  %9 = ptrtoint ptr %Patt9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %Patt9.i, align 4
  %Color1.i = getelementptr inbounds %struct.anon.86, ptr %10, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Color1.i, i32 -1) #11, !srcloc !414
  %11 = ptrtoint ptr %Patt9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %Patt9.i, align 4
  %Monochrome.i = getelementptr inbounds %struct.anon.86, ptr %12, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Monochrome.i, i32 -1) #11, !srcloc !414
  %13 = ptrtoint ptr %Patt9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %Patt9.i, align 4
  %add.ptr21.i = getelementptr %struct.anon.86, ptr %14, i32 0, i32 7, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 -1) #11, !srcloc !414
  %15 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %FifoFreeCount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp16 = icmp eq i32 %.pr, 0
  br i1 %cmp16, label %do.body.lr.ph, label %riva_set_pattern.exit.while.end_crit_edge

riva_set_pattern.exit.while.end_crit_edge:        ; preds = %riva_set_pattern.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.lr.ph:                                    ; preds = %riva_set_pattern.exit
  %Rop = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 42
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !451
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !452
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %Rop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %Rop, align 8
  %FifoFree = getelementptr inbounds %struct.anon.85, ptr %17, i32 0, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #11, !srcloc !411
  %shr = lshr i32 %18, 2
  %19 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %FifoFreeCount.i, align 8
  %cmp = icmp ult i32 %18, 4
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %riva_set_pattern.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %.pr, %riva_set_pattern.exit.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa, -1
  %20 = ptrtoint ptr %FifoFreeCount.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %FifoFreeCount.i, align 8
  %Rop9 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 42
  %21 = ptrtoint ptr %Rop9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %Rop9, align 8
  %Rop3 = getelementptr inbounds %struct.anon.85, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Rop3, i32 %rop) #11, !srcloc !414
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @riva_create_i2c_busses(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @riva_probe_i2c_connector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_parse_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_bl_default_curve(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riva_bl_update_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.else, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %level.0 = phi i32 [ %7, %if.else ], [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %PMC = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PMC, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4336
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !411
  %and = and i32 %10, 65535
  %PCRTC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %PCRTC0, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 2076
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !411
  %and8 = and i32 %13, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0)
  %cmp9 = icmp sgt i32 %level.0, 0
  br i1 %cmp9, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %and8, 1
  %pdev.i = getelementptr inbounds %struct.riva_par, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.fb_info, ptr %17, i32 0, i32 17, i32 %level.0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %19 to i32
  %add.i = mul nuw nsw i32 %conv.i, 196608
  %shl = add nuw nsw i32 %add.i, 22544384
  %or11 = or i32 %shl, %and
  %or13 = or i32 %or11, -2147483648
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %tmp_pcrt.0 = phi i32 [ %or, %if.then10 ], [ %and8, %if.end.if.end14_crit_edge ]
  %tmp_pmc.0 = phi i32 [ %or13, %if.then10 ], [ %and, %if.end.if.end14_crit_edge ]
  %20 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PCRTC0, align 4
  %add.ptr17 = getelementptr i8, ptr %21, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %tmp_pcrt.0) #11, !srcloc !414
  %22 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %PMC, align 4
  %add.ptr20 = getelementptr i8, ptr %23, i32 4336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %tmp_pmc.0) #11, !srcloc !414
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !134, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !186, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !242, !244, !245, !247, !248, !249, !251, !252, !254, !256, !257, !258, !260, !261, !263, !264, !265, !267, !268, !270, !271, !272, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !288, !290, !292, !294, !296, !298, !300, !302, !303, !304, !306, !308, !310, !311, !312, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !328, !330, !331, !332, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !348, !350, !351, !352, !353, !355, !356, !357, !359, !361, !362, !363, !365, !366, !368, !369, !370, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384}
!llvm.module.flags = !{!386, !387, !388, !389, !390, !391, !392, !393}
!llvm.ident = !{!394}

!0 = !{ptr @__initcall__kmod_rivafb__305_2172_rivafb_init6, !1, !"__initcall__kmod_rivafb__305_2172_rivafb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2172, i32 1}
!2 = !{ptr @__exitcall_rivafb_exit, !3, !"__exitcall_rivafb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2179, i32 1}
!4 = !{ptr @__param_noaccel, !5, !"__param_noaccel", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2181, i32 1}
!6 = !{ptr @__UNIQUE_ID_noacceltype306, !5, !"__UNIQUE_ID_noacceltype306", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_noaccel307, !8, !"__UNIQUE_ID_noaccel307", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2182, i32 1}
!9 = !{ptr @__param_flatpanel, !10, !"__param_flatpanel", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2183, i32 1}
!11 = !{ptr @__UNIQUE_ID_flatpaneltype308, !10, !"__UNIQUE_ID_flatpaneltype308", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_flatpanel309, !13, !"__UNIQUE_ID_flatpanel309", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2184, i32 1}
!14 = !{ptr @__param_forceCRTC, !15, !"__param_forceCRTC", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2185, i32 1}
!16 = !{ptr @__UNIQUE_ID_forceCRTCtype310, !15, !"__UNIQUE_ID_forceCRTCtype310", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_forceCRTC311, !18, !"__UNIQUE_ID_forceCRTC311", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2186, i32 1}
!19 = !{ptr @__param_nomtrr, !20, !"__param_nomtrr", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2187, i32 1}
!21 = !{ptr @__UNIQUE_ID_nomtrrtype312, !20, !"__UNIQUE_ID_nomtrrtype312", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_nomtrr313, !23, !"__UNIQUE_ID_nomtrr313", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2188, i32 1}
!24 = !{ptr @__param_strictmode, !25, !"__param_strictmode", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2189, i32 1}
!26 = !{ptr @__UNIQUE_ID_strictmodetype314, !25, !"__UNIQUE_ID_strictmodetype314", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_strictmode315, !28, !"__UNIQUE_ID_strictmode315", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2190, i32 1}
!29 = !{ptr @__UNIQUE_ID_author316, !30, !"__UNIQUE_ID_author316", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2192, i32 1}
!31 = !{ptr @__UNIQUE_ID_description317, !32, !"__UNIQUE_ID_description317", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2193, i32 1}
!33 = !{ptr @__UNIQUE_ID_file318, !34, !"__UNIQUE_ID_file318", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2194, i32 1}
!35 = !{ptr @__UNIQUE_ID_license319, !34, !"__UNIQUE_ID_license319", i1 false, i1 false}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2164, i32 21}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2113, i32 2}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rivafb_setup._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @rivafb_setup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2117, i32 38}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2118, i32 26}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2126, i32 33}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2128, i32 33}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2130, i32 33}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2132, i32 33}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2134, i32 33}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2139, i32 2}
!60 = !{ptr @rivafb_setup._entry.11, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rivafb_setup._entry_ptr.13, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @backlight, !63, !"backlight", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 205, i32 12}
!64 = !{ptr @mode_option, !65, !"mode_option", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 207, i32 14}
!66 = !{ptr @rivafb_driver, !67, !"rivafb_driver", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2144, i32 26}
!68 = !{ptr @rivafb_pci_tbl, !69, !"rivafb_pci_tbl", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 104, i32 35}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1898, i32 2}
!72 = !{ptr @rivafb_probe._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rivafb_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1899, i32 2}
!76 = !{ptr @rivafb_probe._entry.15, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rivafb_probe._entry_ptr.17, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1917, i32 3}
!81 = !{ptr @rivafb_probe._entry.19, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rivafb_probe._entry_ptr.21, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1923, i32 3}
!85 = !{ptr @rivafb_probe._entry.22, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rivafb_probe._entry_ptr.24, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @rivafb_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1927, i32 2}
!89 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1931, i32 2}
!92 = !{ptr @rivafb_probe._entry.26, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @rivafb_probe._entry_ptr.28, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1934, i32 3}
!96 = !{ptr @rivafb_probe._entry.29, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rivafb_probe._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1941, i32 26}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1948, i32 3}
!102 = !{ptr @rivafb_probe._entry.33, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rivafb_probe._entry_ptr.35, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1969, i32 3}
!106 = !{ptr @rivafb_probe._entry.36, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rivafb_probe._entry_ptr.38, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1982, i32 4}
!110 = !{ptr @rivafb_probe._entry.39, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rivafb_probe._entry_ptr.41, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2009, i32 3}
!114 = !{ptr @rivafb_probe._entry.42, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @rivafb_probe._entry_ptr.44, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2026, i32 3}
!118 = !{ptr @rivafb_probe._entry.45, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @rivafb_probe._entry_ptr.47, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2040, i32 3}
!122 = !{ptr @rivafb_probe._entry.48, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @rivafb_probe._entry_ptr.50, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2045, i32 2}
!126 = !{ptr @rivafb_probe._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @rivafb_probe._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rivafb_probe._entry.55, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2052, i32 2}
!131 = !{ptr @rivafb_probe._entry_ptr.56, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @rivafb_fix, !133, !"rivafb_fix", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 210, i32 33}
!134 = !{ptr @riva_fb_ops, !135, !"riva_fb_ops", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1674, i32 28}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1031, i32 2}
!138 = !{ptr @rivafb_open._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rivafb_open._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @rivafb_open._entry.58, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1050, i32 2}
!142 = !{ptr @rivafb_open._entry_ptr.59, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 588, i32 2}
!145 = !{ptr @riva_save_state._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @riva_save_state._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @riva_save_state._entry.61, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 606, i32 2}
!149 = !{ptr @riva_save_state._entry_ptr.62, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1058, i32 2}
!152 = !{ptr @rivafb_release._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @rivafb_release._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @rivafb_release._entry.64, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1075, i32 2}
!156 = !{ptr @rivafb_release._entry_ptr.65, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 628, i32 2}
!159 = !{ptr @riva_load_state._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @riva_load_state._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @riva_load_state._entry.67, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 655, i32 2}
!163 = !{ptr @riva_load_state._entry_ptr.68, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1086, i32 2}
!166 = !{ptr @rivafb_check_var._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rivafb_check_var._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1135, i32 3}
!170 = !{ptr @rivafb_check_var._entry.70, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @rivafb_check_var._entry_ptr.72, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1138, i32 3}
!174 = !{ptr @rivafb_check_var._entry.73, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @rivafb_check_var._entry_ptr.75, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @rivafb_check_var._entry.76, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1183, i32 2}
!178 = !{ptr @rivafb_check_var._entry_ptr.77, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 825, i32 2}
!181 = !{ptr @riva_update_var._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @riva_update_var._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @riva_update_var._entry.79, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 840, i32 2}
!185 = !{ptr @riva_update_var._entry_ptr.80, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @rivafb_do_maximize.modes, !187, !"modes", i1 false, i1 false}
!187 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 866, i32 4}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 876, i32 2}
!190 = !{ptr @rivafb_do_maximize._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @rivafb_do_maximize._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 879, i32 3}
!194 = !{ptr @rivafb_do_maximize._entry.82, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @rivafb_do_maximize._entry_ptr.84, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 887, i32 4}
!198 = !{ptr @rivafb_do_maximize._entry.85, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @rivafb_do_maximize._entry_ptr.87, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 889, i32 4}
!202 = !{ptr @rivafb_do_maximize._entry.88, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @rivafb_do_maximize._entry_ptr.90, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 895, i32 3}
!206 = !{ptr @rivafb_do_maximize._entry.91, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @rivafb_do_maximize._entry_ptr.93, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 901, i32 3}
!210 = !{ptr @rivafb_do_maximize._entry.94, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @rivafb_do_maximize._entry_ptr.96, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 907, i32 3}
!214 = !{ptr @rivafb_do_maximize._entry.97, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @rivafb_do_maximize._entry_ptr.99, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 912, i32 4}
!218 = !{ptr @rivafb_do_maximize._entry.100, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @rivafb_do_maximize._entry_ptr.102, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @rivafb_do_maximize._entry.103, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 915, i32 4}
!222 = !{ptr @rivafb_do_maximize._entry_ptr.104, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 921, i32 3}
!225 = !{ptr @rivafb_do_maximize._entry.105, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @rivafb_do_maximize._entry_ptr.107, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 928, i32 3}
!229 = !{ptr @rivafb_do_maximize._entry.108, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @rivafb_do_maximize._entry_ptr.110, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 934, i32 3}
!233 = !{ptr @rivafb_do_maximize._entry.111, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @rivafb_do_maximize._entry_ptr.113, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @rivafb_do_maximize._entry.114, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 942, i32 2}
!237 = !{ptr @rivafb_do_maximize._entry_ptr.115, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1192, i32 2}
!240 = !{ptr @rivafb_set_par._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @rivafb_set_par._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @rivafb_set_par._entry.117, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1213, i32 2}
!244 = !{ptr @rivafb_set_par._entry_ptr.118, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 677, i32 2}
!247 = !{ptr @riva_load_video_mode._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @riva_load_video_mode._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @riva_load_video_mode._entry.120, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 817, i32 2}
!251 = !{ptr @riva_load_video_mode._entry_ptr.121, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @reg_template, !253, !"reg_template", i1 false, i1 false}
!253 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 240, i32 31}
!254 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1250, i32 2}
!256 = !{ptr @rivafb_blank._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @rivafb_blank._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @rivafb_blank._entry.124, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1273, i32 2}
!260 = !{ptr @rivafb_blank._entry_ptr.125, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1235, i32 2}
!263 = !{ptr @rivafb_pan_display._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @rivafb_pan_display._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @rivafb_pan_display._entry.127, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1238, i32 2}
!267 = !{ptr @rivafb_pan_display._entry_ptr.128, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1818, i32 2}
!270 = !{ptr @riva_get_EDID._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @riva_get_EDID._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @riva_get_EDID._entry.130, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1820, i32 3}
!274 = !{ptr @riva_get_EDID._entry_ptr.131, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.133, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1824, i32 3}
!277 = !{ptr @riva_get_EDID._entry.132, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @riva_get_EDID._entry_ptr.134, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1827, i32 3}
!281 = !{ptr @riva_get_EDID._entry.135, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @riva_get_EDID._entry_ptr.137, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @riva_get_EDID._entry.138, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1829, i32 2}
!285 = !{ptr @riva_get_EDID._entry_ptr.139, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.140, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1734, i32 3}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1734, i32 15}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1734, i32 27}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1734, i32 35}
!294 = !{ptr @.str.144, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1734, i32 44}
!296 = !{ptr @.str.145, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1734, i32 54}
!298 = distinct !{null, !299, !"propnames", i1 false, i1 false}
!299 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1733, i32 15}
!300 = !{ptr @.str.146, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1737, i32 2}
!302 = !{ptr @riva_get_EDID_OF._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @riva_get_EDID_OF._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.147, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1740, i32 34}
!306 = !{ptr @.str.148, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1743, i32 25}
!308 = !{ptr @.str.150, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1749, i32 5}
!310 = !{ptr @riva_get_EDID_OF._entry.149, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @riva_get_EDID_OF._entry_ptr.151, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @riva_get_EDID_OF._entry.152, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1754, i32 2}
!314 = !{ptr @riva_get_EDID_OF._entry_ptr.153, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1765, i32 2}
!317 = !{ptr @riva_get_EDID_i2c._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @riva_get_EDID_i2c._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1773, i32 4}
!321 = !{ptr @riva_get_EDID_i2c._entry.155, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @riva_get_EDID_i2c._entry_ptr.157, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @riva_get_EDID_i2c._entry.158, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1778, i32 2}
!325 = !{ptr @riva_get_EDID_i2c._entry_ptr.159, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @rivafb_default_var, !327, !"rivafb_default_var", i1 false, i1 false}
!327 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 216, i32 33}
!328 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1789, i32 2}
!330 = !{ptr @riva_update_default_var._entry, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @riva_update_default_var._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @riva_update_default_var._entry.161, !333, !"_entry", i1 false, i1 false}
!333 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1812, i32 2}
!334 = !{ptr @riva_update_default_var._entry_ptr.162, !333, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.163, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1695, i32 2}
!337 = !{ptr @riva_set_fbinfo._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @riva_set_fbinfo._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.165, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1705, i32 7}
!341 = !{ptr @riva_set_fbinfo._entry.164, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @riva_set_fbinfo._entry_ptr.166, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @riva_set_fbinfo._entry.167, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 1723, i32 2}
!345 = !{ptr @riva_set_fbinfo._entry_ptr.168, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.169, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 336, i32 31}
!348 = !{ptr @.str.170, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 345, i32 3}
!350 = !{ptr @.str.171, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @riva_bl_init._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @riva_bl_init._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.173, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 358, i32 2}
!355 = !{ptr @riva_bl_init._entry.172, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @riva_bl_init._entry_ptr.174, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @riva_bl_ops, !358, !"riva_bl_ops", i1 false, i1 false}
!358 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 316, i32 35}
!359 = !{ptr @.str.175, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2081, i32 2}
!361 = !{ptr @rivafb_remove._entry, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @rivafb_remove._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @rivafb_remove._entry.176, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 2099, i32 2}
!365 = !{ptr @rivafb_remove._entry_ptr.177, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.178, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 371, i32 2}
!368 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @riva_bl_exit._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @riva_bl_exit._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @__param_str_noaccel, !5, !"__param_str_noaccel", i1 false, i1 false}
!372 = !{ptr @noaccel, !373, !"noaccel", i1 false, i1 false}
!373 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 203, i32 13}
!374 = !{ptr @__param_str_flatpanel, !10, !"__param_str_flatpanel", i1 false, i1 false}
!375 = !{ptr @flatpanel, !376, !"flatpanel", i1 false, i1 false}
!376 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 201, i32 12}
!377 = !{ptr @__param_str_forceCRTC, !15, !"__param_str_forceCRTC", i1 false, i1 false}
!378 = !{ptr @forceCRTC, !379, !"forceCRTC", i1 false, i1 false}
!379 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 202, i32 12}
!380 = !{ptr @__param_str_nomtrr, !20, !"__param_str_nomtrr", i1 false, i1 false}
!381 = !{ptr @nomtrr, !382, !"nomtrr", i1 false, i1 false}
!382 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 204, i32 13}
!383 = !{ptr @__param_str_strictmode, !25, !"__param_str_strictmode", i1 false, i1 false}
!384 = !{ptr @strictmode, !385, !"strictmode", i1 false, i1 false}
!385 = !{!"../drivers/video/fbdev/riva/fbdev.c", i32 208, i32 13}
!386 = !{i32 1, !"wchar_size", i32 2}
!387 = !{i32 1, !"min_enum_size", i32 4}
!388 = !{i32 8, !"branch-target-enforcement", i32 0}
!389 = !{i32 8, !"sign-return-address", i32 0}
!390 = !{i32 8, !"sign-return-address-all", i32 0}
!391 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!392 = !{i32 7, !"uwtable", i32 1}
!393 = !{i32 7, !"frame-pointer", i32 2}
!394 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!395 = !{i64 2156423949, i64 2156424447, i64 2156423986, i64 2156424042, i64 2156424076, i64 2156424100, i64 2156424141, i64 2156424162, i64 2156424190, i64 2156424224}
!396 = !{!"auto-init"}
!397 = !{i8 0, i8 2}
!398 = !{i64 2156309932}
!399 = !{i64 6269457}
!400 = !{i64 2156310333}
!401 = !{i64 6269852}
!402 = !{i64 2156318101}
!403 = !{i64 2156310905}
!404 = !{i64 2156311339}
!405 = !{i64 2156316584}
!406 = !{i64 2156317018}
!407 = !{i64 2156312798}
!408 = !{i64 2156313232}
!409 = !{i64 2156314691}
!410 = !{i64 2156315125}
!411 = !{i64 6270072}
!412 = !{i64 2156371450}
!413 = !{i64 2156371593}
!414 = !{i64 6269654}
!415 = !{i64 2156320569}
!416 = !{i64 2156320959}
!417 = !{i64 2156321350}
!418 = !{i64 2156321741}
!419 = !{i64 2156322135}
!420 = !{i64 2156322554}
!421 = !{i64 2156322888}
!422 = !{i64 2156323222}
!423 = !{i64 2156313718}
!424 = !{i64 2156314119}
!425 = !{i64 2156391323}
!426 = !{i64 2156391466}
!427 = !{i64 2156392183}
!428 = !{i64 2156392326}
!429 = !{i64 2156392697}
!430 = !{i64 2156392990}
!431 = !{i64 2156393527}
!432 = !{i64 2156393670}
!433 = !{i64 2156394141}
!434 = !{i64 2156394413}
!435 = !{i64 2156394725}
!436 = !{i64 2156395270}
!437 = !{i64 2156395413}
!438 = !{i64 2156396965}
!439 = !{i64 2156397108}
!440 = !{i64 2156397806}
!441 = !{i64 2156397949}
!442 = !{!"branch_weights", i32 1, i32 2000}
!443 = !{i64 2156320075}
!444 = !{i64 2156317500}
!445 = !{i64 2156315611}
!446 = !{i64 2156316012}
!447 = !{i64 2156311825}
!448 = !{i64 2156312226}
!449 = !{i64 2156369304}
!450 = !{i64 2156369447}
!451 = !{i64 2156370603}
!452 = !{i64 2156370746}
