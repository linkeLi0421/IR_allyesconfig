; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/tridentfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/tridentfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.tridentfb_par = type { ptr, [16 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__param_str_mode_option = internal constant [22 x i8] c"tridentfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype305 = internal constant [37 x i8] c"tridentfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option306 = internal constant [66 x i8] c"tridentfb.parm=mode_option:Initial video mode e.g. '648x480-8@60'\00", section ".modinfo", align 1
@__param_str_mode = internal constant [15 x i8] c"tridentfb.mode\00", align 1
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_modetype307 = internal constant [30 x i8] c"tridentfb.parmtype=mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode308 = internal constant [72 x i8] c"tridentfb.parm=mode:Initial video mode e.g. '648x480-8@60' (deprecated)\00", section ".modinfo", align 1
@__param_str_bpp = internal constant [14 x i8] c"tridentfb.bpp\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bpp = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_bpp = internal constant %struct.kernel_param { ptr @__param_str_bpp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bpp } }, section "__param", align 4
@__UNIQUE_ID_bpptype309 = internal constant [27 x i8] c"tridentfb.parmtype=bpp:int\00", section ".modinfo", align 1
@__param_str_center = internal constant [17 x i8] c"tridentfb.center\00", align 1
@center = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_center = internal constant %struct.kernel_param { ptr @__param_str_center, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @center } }, section "__param", align 4
@__UNIQUE_ID_centertype310 = internal constant [30 x i8] c"tridentfb.parmtype=center:int\00", section ".modinfo", align 1
@__param_str_stretch = internal constant [18 x i8] c"tridentfb.stretch\00", align 1
@stretch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_stretch = internal constant %struct.kernel_param { ptr @__param_str_stretch, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @stretch } }, section "__param", align 4
@__UNIQUE_ID_stretchtype311 = internal constant [31 x i8] c"tridentfb.parmtype=stretch:int\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [18 x i8] c"tridentfb.noaccel\00", align 1
@noaccel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype312 = internal constant [31 x i8] c"tridentfb.parmtype=noaccel:int\00", section ".modinfo", align 1
@__param_str_memsize = internal constant [18 x i8] c"tridentfb.memsize\00", align 1
@memsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_memsize = internal constant %struct.kernel_param { ptr @__param_str_memsize, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @memsize } }, section "__param", align 4
@__UNIQUE_ID_memsizetype313 = internal constant [31 x i8] c"tridentfb.parmtype=memsize:int\00", section ".modinfo", align 1
@__param_str_memdiff = internal constant [18 x i8] c"tridentfb.memdiff\00", align 1
@memdiff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_memdiff = internal constant %struct.kernel_param { ptr @__param_str_memdiff, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @memdiff } }, section "__param", align 4
@__UNIQUE_ID_memdifftype314 = internal constant [31 x i8] c"tridentfb.parmtype=memdiff:int\00", section ".modinfo", align 1
@__param_str_nativex = internal constant [18 x i8] c"tridentfb.nativex\00", align 1
@nativex = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nativex = internal constant %struct.kernel_param { ptr @__param_str_nativex, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nativex } }, section "__param", align 4
@__UNIQUE_ID_nativextype315 = internal constant [31 x i8] c"tridentfb.parmtype=nativex:int\00", section ".modinfo", align 1
@__param_str_fp = internal constant [13 x i8] c"tridentfb.fp\00", align 1
@fp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fp = internal constant %struct.kernel_param { ptr @__param_str_fp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @fp } }, section "__param", align 4
@__UNIQUE_ID_fptype316 = internal constant [26 x i8] c"tridentfb.parmtype=fp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fp317 = internal constant [51 x i8] c"tridentfb.parm=fp:Define if flatpanel is connected\00", section ".modinfo", align 1
@__param_str_crt = internal constant [14 x i8] c"tridentfb.crt\00", align 1
@crt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_crt = internal constant %struct.kernel_param { ptr @__param_str_crt, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @crt } }, section "__param", align 4
@__UNIQUE_ID_crttype318 = internal constant [27 x i8] c"tridentfb.parmtype=crt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_crt319 = internal constant [46 x i8] c"tridentfb.parm=crt:Define if CRT is connected\00", section ".modinfo", align 1
@tridentfb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @trident_devices, ptr @trident_pci_probe, ptr @trident_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_tridentfb__320_1828_tridentfb_init6 = internal global ptr @tridentfb_init, section ".initcall6.init", align 4
@__exitcall_tridentfb_exit = internal global ptr @tridentfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [43 x i8] c"tridentfb.author=Jani Monoses <jani@iv.ro>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [59 x i8] c"tridentfb.description=Framebuffer driver for Trident cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [45 x i8] c"tridentfb.file=drivers/video/fbdev/tridentfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [22 x i8] c"tridentfb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias325 = internal constant [24 x i8] c"tridentfb.alias=cyblafb\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tridentfb\00", [22 x i8] zeroinitializer }, align 32
@trident_devices = internal constant { [22 x %struct.pci_device_id], [160 x i8] } { [22 x %struct.pci_device_id] [%struct.pci_device_id { i32 4131, i32 39040, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 33792, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 33824, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 34048, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 34080, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 34304, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 34336, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 38208, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 37952, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 38496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 38736, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 38992, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 37664, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 37768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 38176, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 38181, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 37783, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 37786, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 34848, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 39184, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 39216, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@tridentfb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Trident\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 0, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@tridentfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tridentfb_check_var, ptr @tridentfb_set_par, ptr @tridentfb_setcolreg, ptr null, ptr @tridentfb_blank, ptr @tridentfb_pan_display, ptr @tridentfb_fillrect, ptr @tridentfb_copyarea, ptr @tridentfb_imageblit, ptr null, ptr @tridentfb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017disabling acceleration\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trident_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/video/fbdev/tridentfb.c\00", [32 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry_ptr = internal global ptr @trident_pci_probe._entry, section ".printk_index", align 4
@trident_pci_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1643, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error getting mode database\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry_ptr.8 = internal global ptr @trident_pci_probe._entry.4, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"640x480-8@60\00", [19 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1675, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode %s not found\0A\00", [45 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry_ptr.12 = internal global ptr @trident_pci_probe._entry.10, section ".printk_index", align 4
@trident_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013tridentfb: could not register framebuffer\0A\00", [51 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry_ptr.15 = internal global ptr @trident_pci_probe._entry.13, section ".printk_index", align 4
@trident_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016tridentfb: fb%d: %s frame buffer device %dx%d-%dbpp\0A\00", [41 x i8] zeroinitializer }, align 32
@trident_pci_probe._entry_ptr.18 = internal global ptr @trident_pci_probe._entry.16, section ".printk_index", align 4
@get_memsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016tridentfb: framebuffer size = %d Kb\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_memsize\00", [20 x i8] zeroinitializer }, align 32
@get_memsize._entry_ptr = internal global ptr @get_memsize._entry, section ".printk_index", align 4
@get_nativex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016tridentfb: %dx%d flat panel found\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_nativex\00", [20 x i8] zeroinitializer }, align 32
@get_nativex._entry_ptr = internal global ptr @get_nativex._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fp\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crt\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bpp=\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"center\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stretch\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memsize=\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memdiff=\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nativex=\00", [23 x i8] zeroinitializer }, align 32
@switch.table.trident_pci_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1280, i32 640, i32 1024, i32 800], [16 x i8] zeroinitializer }, align 32
@switch.table.trident_pci_probe.33 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1024, i32 480, i32 768, i32 600], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 33792, i64 33824, i64 34048, i64 34080, i64 34304, i64 34336, i64 34848, i64 37783, i64 37786, i64 38176, i64 38181, i64 38208, i64 38496, i64 38736, i64 39040, i64 39184, i64 39216]
@__sancov_gen_cov_switch_values.34 = internal global [18 x i64] [i64 16, i64 8, i64 33, i64 34, i64 35, i64 42, i64 48, i64 51, i64 52, i64 53, i64 56, i64 58, i64 64, i64 65, i64 66, i64 67, i64 74, i64 179]
@__sancov_gen_cov_switch_values.35 = internal global [12 x i64] [i64 10, i64 32, i64 33792, i64 33824, i64 34048, i64 34080, i64 34304, i64 34848, i64 38208, i64 39040, i64 39184, i64 39216]
@__sancov_gen_cov_switch_values.36 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 10, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 16, i64 17]
@__sancov_gen_cov_switch_values.38 = internal global [16 x i64] [i64 14, i64 32, i64 33824, i64 34048, i64 34080, i64 34304, i64 34336, i64 34848, i64 37762, i64 37765, i64 37768, i64 37783, i64 37786, i64 38176, i64 38181, i64 38208]
@__sancov_gen_cov_switch_values.39 = internal global [9 x i64] [i64 7, i64 32, i64 33792, i64 33824, i64 34048, i64 34080, i64 34304, i64 38208, i64 39040]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 37664, i64 37952, i64 38496]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 37664, i64 37762, i64 37765, i64 37952, i64 38496, i64 38533]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 37664, i64 37762, i64 37765, i64 37952, i64 38496, i64 38533]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [19 x i64] [i64 17, i64 32, i64 33792, i64 33824, i64 34048, i64 34080, i64 34304, i64 34336, i64 34848, i64 37783, i64 37786, i64 38176, i64 38181, i64 38208, i64 38736, i64 38992, i64 39040, i64 39184, i64 39216]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 34848, i64 39184]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 32, i64 37664, i64 37762, i64 37765, i64 37768, i64 37952, i64 38496, i64 38533]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 37664, i64 37952, i64 38496]
@__sancov_gen_cov_switch_values.52 = internal global [16 x i64] [i64 14, i64 32, i64 33824, i64 34048, i64 34080, i64 34304, i64 34336, i64 34848, i64 37762, i64 37765, i64 37768, i64 37783, i64 37786, i64 38176, i64 38181, i64 38208]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 34848, i64 39184, i64 39216]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 37952, i64 38736]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 37952, i64 38496]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 37664, i64 37952, i64 38496]
@__sancov_gen_cov_switch_values.57 = internal global [19 x i64] [i64 17, i64 32, i64 33792, i64 33824, i64 34048, i64 34080, i64 34304, i64 34336, i64 34848, i64 37783, i64 37786, i64 38176, i64 38181, i64 38208, i64 38736, i64 38992, i64 39040, i64 39184, i64 39216]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 37664, i64 37952]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 63, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 64, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 68, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 69, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 66, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"memsize\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 74, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"memdiff\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 75, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [8 x i8] c"nativex\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 76, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 71, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 72, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"tridentfb_pci_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1765, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1766, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"trident_devices\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1738, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"tridentfb_fix\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 52, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"tridentfb_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1446, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1630, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1643, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1664, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1674, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1692, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1697, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 985, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 787, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1783, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1786, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1788, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1790, i32 26 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1792, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1794, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1796, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1798, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1800, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [35 x i8] c"../drivers/video/fbdev/tridentfb.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1802, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"switch.table.trident_pci_probe\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"switch.table.trident_pci_probe.33\00", align 1
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_bpptype309, ptr @__UNIQUE_ID_centertype310, ptr @__UNIQUE_ID_crt319, ptr @__UNIQUE_ID_crttype318, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_fp317, ptr @__UNIQUE_ID_fptype316, ptr @__UNIQUE_ID_license324, ptr @__UNIQUE_ID_memdifftype314, ptr @__UNIQUE_ID_memsizetype313, ptr @__UNIQUE_ID_mode308, ptr @__UNIQUE_ID_mode_option306, ptr @__UNIQUE_ID_mode_optiontype305, ptr @__UNIQUE_ID_modetype307, ptr @__UNIQUE_ID_nativextype315, ptr @__UNIQUE_ID_noacceltype312, ptr @__UNIQUE_ID_stretchtype311, ptr @__exitcall_tridentfb_exit, ptr @__initcall__kmod_tridentfb__320_1828_tridentfb_init6, ptr @__param_bpp, ptr @__param_center, ptr @__param_crt, ptr @__param_fp, ptr @__param_memdiff, ptr @__param_memsize, ptr @__param_mode, ptr @__param_mode_option, ptr @__param_nativex, ptr @__param_noaccel, ptr @__param_stretch, ptr @get_memsize._entry, ptr @get_memsize._entry_ptr, ptr @get_nativex._entry, ptr @get_nativex._entry_ptr, ptr @trident_pci_probe._entry, ptr @trident_pci_probe._entry.10, ptr @trident_pci_probe._entry.13, ptr @trident_pci_probe._entry.16, ptr @trident_pci_probe._entry.4, ptr @trident_pci_probe._entry_ptr, ptr @trident_pci_probe._entry_ptr.12, ptr @trident_pci_probe._entry_ptr.15, ptr @trident_pci_probe._entry_ptr.18, ptr @trident_pci_probe._entry_ptr.8, ptr @tridentfb_exit, ptr @mode_option, ptr @bpp, ptr @center, ptr @stretch, ptr @noaccel, ptr @memsize, ptr @memdiff, ptr @nativex, ptr @fp, ptr @crt, ptr @tridentfb_pci_driver, ptr @.str, ptr @trident_devices, ptr @tridentfb_fix, ptr @tridentfb_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.trident_pci_probe, ptr @switch.table.trident_pci_probe.33], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @center to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stretch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memdiff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nativex to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tridentfb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_devices to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tridentfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tridentfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_pci_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_memsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_nativex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trident_pci_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trident_pci_probe.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @tridentfb_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @tridentfb_setup(ptr noundef %2) #13
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @tridentfb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trident_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 1504, ptr noundef %dev1) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end5.lor.rhs.i_crit_edge [
    i32 38496, label %if.then6
    i32 39040, label %if.end5.is3Dchip.exit_crit_edge
    i32 38208, label %if.end5.is3Dchip.exit_crit_edge444
    i32 33792, label %if.end5.is3Dchip.exit_crit_edge445
    i32 33824, label %if.end5.is3Dchip.exit_crit_edge446
    i32 34048, label %if.end5.is3Dchip.exit_crit_edge447
    i32 34080, label %if.end5.is3Dchip.exit_crit_edge448
    i32 34304, label %if.end5.is3Dchip.exit_crit_edge449
    i32 34336, label %if.end5.is3Dchip.exit_crit_edge450
    i32 34848, label %if.end5.is3Dchip.exit_crit_edge451
    i32 39184, label %if.end5.is3Dchip.exit_crit_edge452
    i32 39216, label %if.end5.is3Dchip.exit_crit_edge453
    i32 38736, label %if.end5.is3Dchip.exit_crit_edge454
    i32 38181, label %if.end5.is3Dchip.exit_crit_edge455
    i32 38176, label %if.end5.is3Dchip.exit_crit_edge456
    i32 37786, label %if.end5.is3Dchip.exit_crit_edge457
    i32 37783, label %if.end5.is3Dchip.exit_crit_edge458
  ]

if.end5.is3Dchip.exit_crit_edge458:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge457:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge456:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge455:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge454:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge453:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge452:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge451:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge450:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge449:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge448:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge447:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge446:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge445:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge444:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.is3Dchip.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %is3Dchip.exit

if.end5.lor.rhs.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

if.then6:                                         ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 9) #10, !srcloc !161
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %5, label %if.then6.lor.rhs.i_crit_edge [
    i8 33, label %sw.bb
    i8 34, label %if.then6.if.then27_crit_edge
    i8 35, label %if.then6.if.then27_crit_edge459
    i8 42, label %sw.bb9
    i8 48, label %if.then6.sw.bb10_crit_edge
    i8 51, label %if.then6.sw.bb10_crit_edge460
    i8 52, label %if.then6.sw.bb10_crit_edge461
    i8 53, label %if.then6.sw.bb10_crit_edge462
    i8 56, label %if.then6.sw.bb10_crit_edge463
    i8 58, label %if.then6.sw.bb10_crit_edge464
    i8 -77, label %if.then6.sw.bb10_crit_edge465
    i8 64, label %if.then6.sw.bb11_crit_edge
    i8 65, label %if.then6.sw.bb11_crit_edge466
    i8 66, label %if.then6.sw.bb11_crit_edge467
    i8 67, label %if.then6.sw.bb11_crit_edge468
    i8 74, label %sw.bb12
  ]

if.then6.sw.bb11_crit_edge468:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

if.then6.sw.bb11_crit_edge467:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

if.then6.sw.bb11_crit_edge466:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

if.then6.sw.bb11_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

if.then6.sw.bb10_crit_edge465:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.sw.bb10_crit_edge464:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.sw.bb10_crit_edge463:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.sw.bb10_crit_edge462:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.sw.bb10_crit_edge461:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.sw.bb10_crit_edge460:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.sw.bb10_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.then6.if.then27_crit_edge459:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then6.if.then27_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then6.lor.rhs.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

sw.bb9:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

sw.bb10:                                          ; preds = %if.then6.sw.bb10_crit_edge, %if.then6.sw.bb10_crit_edge460, %if.then6.sw.bb10_crit_edge461, %if.then6.sw.bb10_crit_edge462, %if.then6.sw.bb10_crit_edge463, %if.then6.sw.bb10_crit_edge464, %if.then6.sw.bb10_crit_edge465
  br label %lor.rhs.i

sw.bb11:                                          ; preds = %if.then6.sw.bb11_crit_edge, %if.then6.sw.bb11_crit_edge466, %if.then6.sw.bb11_crit_edge467, %if.then6.sw.bb11_crit_edge468
  br label %lor.rhs.i

sw.bb12:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb, %if.then6.lor.rhs.i_crit_edge, %if.end5.lor.rhs.i_crit_edge
  %chip_id.0399 = phi i32 [ 38533, %sw.bb ], [ 37765, %sw.bb10 ], [ 37762, %sw.bb11 ], [ 37768, %sw.bb12 ], [ 38496, %if.then6.lor.rhs.i_crit_edge ], [ %3, %if.end5.lor.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 38992, i32 %chip_id.0399)
  %cmp12.i = icmp eq i32 %chip_id.0399, 38992
  %phi.cast.i = zext i1 %cmp12.i to i32
  br label %is3Dchip.exit

is3Dchip.exit:                                    ; preds = %lor.rhs.i, %if.end5.is3Dchip.exit_crit_edge, %if.end5.is3Dchip.exit_crit_edge444, %if.end5.is3Dchip.exit_crit_edge445, %if.end5.is3Dchip.exit_crit_edge446, %if.end5.is3Dchip.exit_crit_edge447, %if.end5.is3Dchip.exit_crit_edge448, %if.end5.is3Dchip.exit_crit_edge449, %if.end5.is3Dchip.exit_crit_edge450, %if.end5.is3Dchip.exit_crit_edge451, %if.end5.is3Dchip.exit_crit_edge452, %if.end5.is3Dchip.exit_crit_edge453, %if.end5.is3Dchip.exit_crit_edge454, %if.end5.is3Dchip.exit_crit_edge455, %if.end5.is3Dchip.exit_crit_edge456, %if.end5.is3Dchip.exit_crit_edge457, %if.end5.is3Dchip.exit_crit_edge458
  %chip_id.0400 = phi i32 [ %chip_id.0399, %lor.rhs.i ], [ %3, %if.end5.is3Dchip.exit_crit_edge ], [ %3, %if.end5.is3Dchip.exit_crit_edge444 ], [ %3, %if.end5.is3Dchip.exit_crit_edge445 ], [ %3, %if.end5.is3Dchip.exit_crit_edge446 ], [ %3, %if.end5.is3Dchip.exit_crit_edge447 ], [ %3, %if.end5.is3Dchip.exit_crit_edge448 ], [ %3, %if.end5.is3Dchip.exit_crit_edge449 ], [ %3, %if.end5.is3Dchip.exit_crit_edge450 ], [ %3, %if.end5.is3Dchip.exit_crit_edge451 ], [ %3, %if.end5.is3Dchip.exit_crit_edge452 ], [ %3, %if.end5.is3Dchip.exit_crit_edge453 ], [ %3, %if.end5.is3Dchip.exit_crit_edge454 ], [ %3, %if.end5.is3Dchip.exit_crit_edge455 ], [ %3, %if.end5.is3Dchip.exit_crit_edge456 ], [ %3, %if.end5.is3Dchip.exit_crit_edge457 ], [ %3, %if.end5.is3Dchip.exit_crit_edge458 ]
  %7 = phi i32 [ %phi.cast.i, %lor.rhs.i ], [ 1, %if.end5.is3Dchip.exit_crit_edge ], [ 1, %if.end5.is3Dchip.exit_crit_edge444 ], [ 1, %if.end5.is3Dchip.exit_crit_edge445 ], [ 1, %if.end5.is3Dchip.exit_crit_edge446 ], [ 1, %if.end5.is3Dchip.exit_crit_edge447 ], [ 1, %if.end5.is3Dchip.exit_crit_edge448 ], [ 1, %if.end5.is3Dchip.exit_crit_edge449 ], [ 1, %if.end5.is3Dchip.exit_crit_edge450 ], [ 1, %if.end5.is3Dchip.exit_crit_edge451 ], [ 1, %if.end5.is3Dchip.exit_crit_edge452 ], [ 1, %if.end5.is3Dchip.exit_crit_edge453 ], [ 1, %if.end5.is3Dchip.exit_crit_edge454 ], [ 1, %if.end5.is3Dchip.exit_crit_edge455 ], [ 1, %if.end5.is3Dchip.exit_crit_edge456 ], [ 1, %if.end5.is3Dchip.exit_crit_edge457 ], [ 1, %if.end5.is3Dchip.exit_crit_edge458 ]
  %8 = zext i32 %chip_id.0400 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %chip_id.0400, label %is_blade.exit [
    i32 34848, label %is3Dchip.exit.if.then17_crit_edge
    i32 39184, label %is3Dchip.exit.if.then17_crit_edge469
    i32 39216, label %is3Dchip.exit.if.then17_crit_edge470
    i32 39040, label %is3Dchip.exit.if.then20_crit_edge
    i32 38208, label %is3Dchip.exit.if.then20_crit_edge471
    i32 33792, label %is3Dchip.exit.if.then20_crit_edge472
    i32 33824, label %is3Dchip.exit.if.then20_crit_edge473
    i32 34048, label %is3Dchip.exit.if.then20_crit_edge474
    i32 34080, label %is3Dchip.exit.if.then20_crit_edge475
    i32 34304, label %is3Dchip.exit.if.then20_crit_edge476
  ]

is3Dchip.exit.if.then20_crit_edge476:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then20_crit_edge475:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then20_crit_edge474:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then20_crit_edge473:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then20_crit_edge472:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then20_crit_edge471:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then20_crit_edge:                ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

is3Dchip.exit.if.then17_crit_edge470:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

is3Dchip.exit.if.then17_crit_edge469:             ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

is3Dchip.exit.if.then17_crit_edge:                ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %is3Dchip.exit.if.then17_crit_edge, %is3Dchip.exit.if.then17_crit_edge469, %is3Dchip.exit.if.then17_crit_edge470
  %init_accel = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %init_accel to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xp_init_accel, ptr %init_accel, align 4
  %wait_engine = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %wait_engine to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xp_wait_engine, ptr %wait_engine, align 8
  %fill_rect = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %fill_rect to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xp_fill_rect, ptr %fill_rect, align 4
  %copy_rect = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %copy_rect to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xp_copy_rect, ptr %copy_rect, align 8
  br label %if.end39

is_blade.exit:                                    ; preds = %is3Dchip.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 34336, i32 %chip_id.0400)
  %cmp12.i376.not = icmp eq i32 %chip_id.0400, 34336
  br i1 %cmp12.i376.not, label %is_blade.exit.if.then20_crit_edge, label %if.else25

is_blade.exit.if.then20_crit_edge:                ; preds = %is_blade.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %is_blade.exit.if.then20_crit_edge, %is3Dchip.exit.if.then20_crit_edge, %is3Dchip.exit.if.then20_crit_edge471, %is3Dchip.exit.if.then20_crit_edge472, %is3Dchip.exit.if.then20_crit_edge473, %is3Dchip.exit.if.then20_crit_edge474, %is3Dchip.exit.if.then20_crit_edge475, %is3Dchip.exit.if.then20_crit_edge476
  %init_accel21 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %init_accel21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @blade_init_accel, ptr %init_accel21, align 4
  %wait_engine22 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %wait_engine22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @blade_wait_engine, ptr %wait_engine22, align 8
  %fill_rect23 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %fill_rect23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @blade_fill_rect, ptr %fill_rect23, align 4
  %copy_rect24 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %copy_rect24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @blade_copy_rect, ptr %copy_rect24, align 8
  %image_blit = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %image_blit to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @blade_image_blit, ptr %image_blit, align 4
  br label %if.end39

if.else25:                                        ; preds = %is_blade.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool26.not = icmp eq i32 %7, 0
  br i1 %tobool26.not, label %if.else32, label %if.else25.if.then27_crit_edge

if.else25.if.then27_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %if.else25.if.then27_crit_edge, %sw.bb9, %if.then6.if.then27_crit_edge, %if.then6.if.then27_crit_edge459
  %chip_id.0398422428431437440 = phi i32 [ %chip_id.0400, %if.else25.if.then27_crit_edge ], [ 37786, %sw.bb9 ], [ 37783, %if.then6.if.then27_crit_edge ], [ 37783, %if.then6.if.then27_crit_edge459 ]
  %init_accel28 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %init_accel28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @image_init_accel, ptr %init_accel28, align 4
  %wait_engine29 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %wait_engine29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @image_wait_engine, ptr %wait_engine29, align 8
  %fill_rect30 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %fill_rect30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @image_fill_rect, ptr %fill_rect30, align 4
  %copy_rect31 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %copy_rect31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @image_copy_rect, ptr %copy_rect31, align 8
  br label %if.end39

if.else32:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  %init_accel33 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %init_accel33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tgui_init_accel, ptr %init_accel33, align 4
  %wait_engine34 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %wait_engine34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xp_wait_engine, ptr %wait_engine34, align 8
  %fill_rect35 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %fill_rect35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tgui_fill_rect, ptr %fill_rect35, align 4
  %copy_rect36 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %copy_rect36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tgui_copy_rect, ptr %copy_rect36, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %if.then27, %if.then20, %if.then17
  %.sink = phi i32 [ 52, %if.then20 ], [ 50, %if.else32 ], [ 51, %if.then27 ], [ 53, %if.then17 ]
  %chip_id.0398420 = phi i32 [ %chip_id.0400, %if.then20 ], [ %chip_id.0400, %if.else32 ], [ %chip_id.0398422428431437440, %if.then27 ], [ %chip_id.0400, %if.then17 ]
  store i32 %.sink, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 12), align 4
  %chip_id40 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %chip_id40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %chip_id.0398420, ptr %chip_id40, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 8
  store i32 %28, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 10), align 4
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %29 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp43 = icmp eq i32 %30, 0
  br i1 %cmp43, label %if.end39.cond.end_crit_edge, label %cond.false

if.end39.cond.end_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %30, 1
  %add = sub i32 %sub, %32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end39.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end39.cond.end_crit_edge ]
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 11), align 4
  %call51 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %cond, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #10
  br label %cleanup

if.end54:                                         ; preds = %cond.end
  %33 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 10), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 11), align 4
  %call55 = tail call ptr @ioremap(i32 noundef %33, i32 noundef %34) #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call55, ptr %1, align 8
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %if.end54.if.end242_crit_edge, label %if.end59

if.end54.if.end242_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end242

if.end59:                                         ; preds = %if.end54
  tail call fastcc void @enable_mmio(ptr noundef %1)
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource, align 8
  store i32 %37, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 1), align 4
  %38 = load i32, ptr @memsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %38, 10
  br label %get_memsize.exit

if.else.i:                                        ; preds = %if.end59
  %39 = ptrtoint ptr %chip_id40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_id40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38181, i32 %40)
  %cond.i = icmp eq i32 %40, 38181
  br i1 %cond.i, label %if.else.i.get_memsize.exit_crit_edge, label %sw.default.i

if.else.i.get_memsize.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.default.i:                                     ; preds = %if.else.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 31) #10, !srcloc !161
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %42, i32 981
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %44 = and i8 %43, 15
  %conv2.i = zext i8 %44 to i32
  %45 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %conv2.i, label %sw.default21.i [
    i32 1, label %sw.default.i.get_memsize.exit_crit_edge
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb6.i
    i32 6, label %sw.bb7.i
    i32 7, label %sw.bb8.i
    i32 8, label %sw.bb9.i
    i32 10, label %sw.bb10.i
    i32 12, label %sw.bb11.i
    i32 14, label %sw.bb12.i
    i32 15, label %sw.bb20.i
  ]

sw.default.i.get_memsize.exit_crit_edge:          ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb4.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb5.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb6.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb7.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb8.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb9.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb10.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb11.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb12.i:                                        ; preds = %sw.default.i
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 -63) #10, !srcloc !161
  %add.ptr.i2.i.i = getelementptr i8, ptr %47, i32 965
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %48, label %sw.default19.i [
    i8 0, label %sw.bb12.i.get_memsize.exit_crit_edge
    i8 1, label %sw.bb16.i
    i8 16, label %sw.bb17.i
    i8 17, label %sw.bb18.i
  ]

sw.bb12.i.get_memsize.exit_crit_edge:             ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb16.i:                                        ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb17.i:                                        ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb18.i:                                        ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.default19.i:                                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.bb20.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

sw.default21.i:                                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_memsize.exit

get_memsize.exit:                                 ; preds = %sw.default21.i, %sw.bb20.i, %sw.default19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb12.i.get_memsize.exit_crit_edge, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.default.i.get_memsize.exit_crit_edge, %if.else.i.get_memsize.exit_crit_edge, %if.then.i
  %k.0.i = phi i32 [ %mul.i, %if.then.i ], [ 1048576, %sw.default21.i ], [ 4194304, %sw.bb20.i ], [ 1048576, %sw.default19.i ], [ 33554432, %sw.bb18.i ], [ 29360128, %sw.bb17.i ], [ 25165824, %sw.bb16.i ], [ 16777216, %sw.bb11.i ], [ 14680064, %sw.bb10.i ], [ 12582912, %sw.bb9.i ], [ 2097152, %sw.bb8.i ], [ 10485760, %sw.bb7.i ], [ 8388608, %sw.bb6.i ], [ 1048576, %sw.bb5.i ], [ 6291456, %sw.bb4.i ], [ 2621440, %if.else.i.get_memsize.exit_crit_edge ], [ 524288, %sw.default.i.get_memsize.exit_crit_edge ], [ 20971520, %sw.bb12.i.get_memsize.exit_crit_edge ]
  %50 = load i32, ptr @memdiff, align 4
  %mul24.neg.i = mul i32 %50, -1024
  %sub.i = add i32 %mul24.neg.i, %k.0.i
  %div31.i = lshr exact i32 %sub.i, 10
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %div31.i) #14
  store i32 %sub.i, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 2), align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 1), align 4
  %call64 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %51, i32 noundef %sub.i, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %get_memsize.exit.out_unmap1_crit_edge, label %if.end68

get_memsize.exit.out_unmap1_crit_edge:            ; preds = %get_memsize.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap1

if.end68:                                         ; preds = %get_memsize.exit
  %52 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 1), align 4
  %53 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 2), align 4
  %call69 = tail call ptr @ioremap(i32 noundef %52, i32 noundef %53) #10
  %54 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 25
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call69, ptr %54, align 4
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end68.out_unmap2_crit_edge, label %if.end72

if.end68.out_unmap2_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap2

if.end72:                                         ; preds = %if.end68
  %56 = load i32, ptr @fp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i379 = icmp eq i32 %56, 0
  br i1 %tobool.not.i379, label %if.end.i, label %is_flatpanel.exit.thread410

is_flatpanel.exit.thread410:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %flatpanel412 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %flatpanel412 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %flatpanel412, align 8
  br label %if.then76

if.end.i:                                         ; preds = %if.end72
  %58 = load i32, ptr @crt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool1.not.i = icmp eq i32 %58, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.is_flatpanel.exit.thread_crit_edge

if.end.i.is_flatpanel.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %59 = ptrtoint ptr %chip_id40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chip_id40, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %60, label %lor.lhs.false.i.is_flatpanel.exit.thread_crit_edge [
    i32 37768, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge
    i32 37762, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge477
    i32 37765, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge478
    i32 37783, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge479
    i32 37786, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge480
    i32 38176, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge481
    i32 38181, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge482
    i32 38208, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge483
    i32 33824, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge484
    i32 34048, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge485
    i32 34080, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge486
    i32 34304, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge487
    i32 34336, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge488
    i32 34848, label %lor.lhs.false.i.is_flatpanel.exit_crit_edge489
  ]

lor.lhs.false.i.is_flatpanel.exit_crit_edge489:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge488:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge487:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge486:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge485:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge484:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge483:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge482:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge481:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge480:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge479:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge478:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge477:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit

lor.lhs.false.i.is_flatpanel.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_flatpanel.exit.thread

is_flatpanel.exit.thread:                         ; preds = %lor.lhs.false.i.is_flatpanel.exit.thread_crit_edge, %if.end.i.is_flatpanel.exit.thread_crit_edge
  %flatpanel408 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %flatpanel408 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flatpanel408, align 8
  br label %if.end78

is_flatpanel.exit:                                ; preds = %lor.lhs.false.i.is_flatpanel.exit_crit_edge, %lor.lhs.false.i.is_flatpanel.exit_crit_edge477, %lor.lhs.false.i.is_flatpanel.exit_crit_edge478, %lor.lhs.false.i.is_flatpanel.exit_crit_edge479, %lor.lhs.false.i.is_flatpanel.exit_crit_edge480, %lor.lhs.false.i.is_flatpanel.exit_crit_edge481, %lor.lhs.false.i.is_flatpanel.exit_crit_edge482, %lor.lhs.false.i.is_flatpanel.exit_crit_edge483, %lor.lhs.false.i.is_flatpanel.exit_crit_edge484, %lor.lhs.false.i.is_flatpanel.exit_crit_edge485, %lor.lhs.false.i.is_flatpanel.exit_crit_edge486, %lor.lhs.false.i.is_flatpanel.exit_crit_edge487, %lor.lhs.false.i.is_flatpanel.exit_crit_edge488, %lor.lhs.false.i.is_flatpanel.exit_crit_edge489
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i381 = getelementptr i8, ptr %64, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i381, i8 51) #10, !srcloc !161
  %add.ptr.i2.i.i.i382 = getelementptr i8, ptr %64, i32 975
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i382) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %66 = lshr i8 %65, 4
  %.lobit.i = and i8 %66, 1
  %67 = zext i8 %.lobit.i to i32
  %flatpanel = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %flatpanel to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %flatpanel, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit.i)
  %tobool75.not = icmp eq i8 %.lobit.i, 0
  br i1 %tobool75.not, label %is_flatpanel.exit.if.end78_crit_edge, label %is_flatpanel.exit.if.then76_crit_edge

is_flatpanel.exit.if.then76_crit_edge:            ; preds = %is_flatpanel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

is_flatpanel.exit.if.end78_crit_edge:             ; preds = %is_flatpanel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then76:                                        ; preds = %is_flatpanel.exit.if.then76_crit_edge, %is_flatpanel.exit.thread410
  %69 = load i32, ptr @nativex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i383 = icmp eq i32 %69, 0
  br i1 %tobool.not.i383, label %if.end.i386, label %if.then76.get_nativex.exit_crit_edge

if.then76.get_nativex.exit_crit_edge:             ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_nativex.exit

if.end.i386:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i384 = getelementptr i8, ptr %71, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i384, i8 82) #10, !srcloc !161
  %add.ptr.i2.i.i.i385 = getelementptr i8, ptr %71, i32 975
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i385) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %73 = lshr i8 %72, 4
  %74 = and i8 %73, 3
  %and.i = zext i8 %74 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.trident_pci_probe, i32 0, i32 %and.i
  %75 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep442 = getelementptr inbounds [4 x i32], ptr @switch.table.trident_pci_probe.33, i32 0, i32 %and.i
  %76 = ptrtoint ptr %switch.gep442 to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load443 = load i32, ptr %switch.gep442, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %switch.load, i32 noundef %switch.load443) #14
  br label %get_nativex.exit

get_nativex.exit:                                 ; preds = %if.end.i386, %if.then76.get_nativex.exit_crit_edge
  %retval.0.i388 = phi i32 [ %switch.load, %if.end.i386 ], [ %69, %if.then76.get_nativex.exit_crit_edge ]
  store i32 %retval.0.i388, ptr @nativex, align 4
  br label %if.end78

if.end78:                                         ; preds = %get_nativex.exit, %is_flatpanel.exit.if.end78_crit_edge, %is_flatpanel.exit.thread
  %fix = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7
  %77 = call ptr @memcpy(ptr %fix, ptr @tridentfb_fix, i32 68)
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 20
  %78 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @tridentfb_ops, ptr %fbops, align 4
  %pseudo_pal = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 1
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 27
  %79 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %pseudo_pal, ptr %pseudo_palette, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 2
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8192, ptr %flags, align 4
  %81 = load i32, ptr @noaccel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool79.not = icmp eq i32 %81, 0
  br i1 %tobool79.not, label %land.lhs.true, label %if.end78.if.else87_crit_edge

if.end78.if.else87_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else87

land.lhs.true:                                    ; preds = %if.end78
  %init_accel80 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %init_accel80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_accel80, align 4
  %tobool81.not = icmp eq ptr %83, null
  br i1 %tobool81.not, label %land.lhs.true.if.else87_crit_edge, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true.if.else87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else87

if.else87:                                        ; preds = %land.lhs.true.if.else87_crit_edge, %if.end78.if.else87_crit_edge
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %land.lhs.true.if.end90_crit_edge
  %storemerge = phi i32 [ 8194, %if.else87 ], [ 8960, %land.lhs.true.if.end90_crit_edge ]
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %storemerge, ptr %flags, align 4
  %85 = zext i32 %chip_id.0398420 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %chip_id.0398420, label %lor.rhs.i391 [
    i32 39040, label %if.end90.is_blade.exit392_crit_edge
    i32 38208, label %if.end90.is_blade.exit392_crit_edge490
    i32 33792, label %if.end90.is_blade.exit392_crit_edge491
    i32 33824, label %if.end90.is_blade.exit392_crit_edge492
    i32 34048, label %if.end90.is_blade.exit392_crit_edge493
    i32 34080, label %if.end90.is_blade.exit392_crit_edge494
    i32 34304, label %if.end90.is_blade.exit392_crit_edge495
  ]

if.end90.is_blade.exit392_crit_edge495:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

if.end90.is_blade.exit392_crit_edge494:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

if.end90.is_blade.exit392_crit_edge493:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

if.end90.is_blade.exit392_crit_edge492:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

if.end90.is_blade.exit392_crit_edge491:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

if.end90.is_blade.exit392_crit_edge490:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

if.end90.is_blade.exit392_crit_edge:              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_blade.exit392

lor.rhs.i391:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 34336, i32 %chip_id.0398420)
  %cmp12.i389 = icmp eq i32 %chip_id.0398420, 34336
  %phi.cast.i390 = zext i1 %cmp12.i389 to i32
  br label %is_blade.exit392

is_blade.exit392:                                 ; preds = %lor.rhs.i391, %if.end90.is_blade.exit392_crit_edge, %if.end90.is_blade.exit392_crit_edge490, %if.end90.is_blade.exit392_crit_edge491, %if.end90.is_blade.exit392_crit_edge492, %if.end90.is_blade.exit392_crit_edge493, %if.end90.is_blade.exit392_crit_edge494, %if.end90.is_blade.exit392_crit_edge495
  %86 = phi i32 [ 1, %if.end90.is_blade.exit392_crit_edge ], [ %phi.cast.i390, %lor.rhs.i391 ], [ 1, %if.end90.is_blade.exit392_crit_edge490 ], [ 1, %if.end90.is_blade.exit392_crit_edge491 ], [ 1, %if.end90.is_blade.exit392_crit_edge492 ], [ 1, %if.end90.is_blade.exit392_crit_edge493 ], [ 1, %if.end90.is_blade.exit392_crit_edge494 ], [ 1, %if.end90.is_blade.exit392_crit_edge495 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool92.not = icmp eq i32 %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 39040, i32 %chip_id.0398420)
  %cmp94.not = icmp eq i32 %chip_id.0398420, 39040
  %or.cond = or i1 %cmp94.not, %tobool92.not
  br i1 %or.cond, label %is_blade.exit392.if.end99_crit_edge, label %if.then96

is_blade.exit392.if.end99_crit_edge:              ; preds = %is_blade.exit392
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then96:                                        ; preds = %is_blade.exit392
  call void @__sanitizer_cov_trace_pc() #12
  %or98 = or i32 %storemerge, 128
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or98, ptr %flags, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %is_blade.exit392.if.end99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3264, i32 noundef 4096) #15
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10
  %89 = ptrtoint ptr %pixmap to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i, ptr %pixmap, align 4
  %tobool103.not = icmp eq ptr %call7.i, null
  br i1 %tobool103.not, label %if.end99.out_unmap2_crit_edge, label %if.end105

if.end99.out_unmap2_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap2

if.end105:                                        ; preds = %if.end99
  %size = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10, i32 1
  %90 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4096, ptr %size, align 4
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10, i32 3
  %91 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %buf_align, align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10, i32 4
  %92 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %scan_align, align 4
  %access_align = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10, i32 5
  %93 = ptrtoint ptr %access_align to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 32, ptr %access_align, align 4
  %flags111 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10, i32 6
  %94 = ptrtoint ptr %flags111 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %flags111, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 6
  %95 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %bits_per_pixel, align 4
  %image_blit112 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 8
  %96 = ptrtoint ptr %image_blit112 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %image_blit112, align 4
  %tobool113.not = icmp eq ptr %97, null
  br i1 %tobool113.not, label %if.end105.if.end119_crit_edge, label %if.then114

if.end105.if.end119_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then114:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 4
  %or116 = or i32 %99, 1024
  store i32 %or116, ptr %flags, align 4
  %100 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %scan_align, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end105.if.end119_crit_edge
  %101 = load i32, ptr @noaccel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool120.not = icmp eq i32 %101, 0
  br i1 %tobool120.not, label %if.end119.if.end127_crit_edge, label %do.end

if.end119.if.end127_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

do.end:                                           ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags, align 4
  %or124 = or i32 %103, 2
  store i32 %or124, ptr %flags, align 4
  %104 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %scan_align, align 4
  br label %if.end127

if.end127:                                        ; preds = %do.end, %if.end119.if.end127_crit_edge
  %105 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %par, align 4
  %ddc_adapter.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 11, i32 12
  %call.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef %fix, i32 noundef 48) #10
  %107 = ptrtoint ptr %ddc_adapter.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %ddc_adapter.i, align 8
  %class.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 11, i32 1
  %108 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 8, ptr %class.i, align 4
  %ddc_algo.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12
  %algo_data.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 11, i32 3
  %109 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %ddc_algo.i, ptr %algo_data.i, align 4
  %device.i = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %110 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device.i, align 4
  %parent.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 11, i32 9, i32 1
  %112 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %parent.i, align 8
  %chip_id.i393 = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 2
  %113 = ptrtoint ptr %chip_id.i393 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %chip_id.i393, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %114, label %if.else.i395 [
    i32 37952, label %if.end127.if.then.i394_crit_edge
    i32 38496, label %if.end127.if.then.i394_crit_edge496
    i32 37664, label %if.end127.if.then.i394_crit_edge497
  ]

if.end127.if.then.i394_crit_edge497:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i394

if.end127.if.then.i394_crit_edge496:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i394

if.end127.if.then.i394_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i394

if.then.i394:                                     ; preds = %if.end127.if.then.i394_crit_edge, %if.end127.if.then.i394_crit_edge496, %if.end127.if.then.i394_crit_edge497
  %setsda.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 1
  %116 = ptrtoint ptr %setsda.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @tridentfb_ddc_setsda_tgui, ptr %setsda.i, align 4
  %setscl.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 2
  %117 = ptrtoint ptr %setscl.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @tridentfb_ddc_setscl_tgui, ptr %setscl.i, align 8
  %getsda.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 3
  %118 = ptrtoint ptr %getsda.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @tridentfb_ddc_getsda_tgui, ptr %getsda.i, align 4
  br label %tridentfb_setup_ddc_bus.exit

if.else.i395:                                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %setsda12.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 1
  %119 = ptrtoint ptr %setsda12.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @tridentfb_ddc_setsda, ptr %setsda12.i, align 4
  %setscl14.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 2
  %120 = ptrtoint ptr %setscl14.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @tridentfb_ddc_setscl, ptr %setscl14.i, align 8
  %getsda16.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 3
  %121 = ptrtoint ptr %getsda16.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @tridentfb_ddc_getsda, ptr %getsda16.i, align 4
  %getscl.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 4
  %122 = ptrtoint ptr %getscl.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @tridentfb_ddc_getscl, ptr %getscl.i, align 8
  br label %tridentfb_setup_ddc_bus.exit

tridentfb_setup_ddc_bus.exit:                     ; preds = %if.else.i395, %if.then.i394
  %udelay.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 7
  %123 = ptrtoint ptr %udelay.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 10, ptr %udelay.i, align 4
  %timeout.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 12, i32 8
  %124 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 20, ptr %timeout.i, align 8
  %125 = ptrtoint ptr %ddc_algo.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %106, ptr %ddc_algo.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.tridentfb_par, ptr %106, i32 0, i32 11, i32 9, i32 8
  %126 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %106, ptr %driver_data.i.i.i, align 4
  %call23.i = tail call i32 @i2c_bit_add_bus(ptr noundef %ddc_adapter.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp129 = icmp eq i32 %call23.i, 0
  br i1 %cmp129, label %if.then131, label %tridentfb_setup_ddc_bus.exit.if.end161_crit_edge

tridentfb_setup_ddc_bus.exit.if.end161_crit_edge: ; preds = %tridentfb_setup_ddc_bus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then131:                                       ; preds = %tridentfb_setup_ddc_bus.exit
  %ddc_adapter = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 11
  %call132 = tail call ptr @fb_ddc_read(ptr noundef %ddc_adapter) #10
  %ddc_registered = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 10
  %127 = ptrtoint ptr %ddc_registered to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %ddc_registered, align 1
  %tobool133.not = icmp eq ptr %call132, null
  br i1 %tobool133.not, label %if.then131.if.end161_crit_edge, label %if.then134

if.then131.if.end161_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then134:                                       ; preds = %if.then131
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call132, ptr noundef %monspecs) #10
  tail call void @kfree(ptr noundef nonnull %call132) #10
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 1
  %128 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %modedb, align 4
  %tobool136.not = icmp eq ptr %129, null
  br i1 %tobool136.not, label %do.end140, label %if.else142

do.end140:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.5) #14
  br label %if.end161

if.else142:                                       ; preds = %if.then134
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 6
  %132 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %modedb_len, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef nonnull %129, i32 noundef %133, ptr noundef %modelist) #10
  %call148 = tail call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #10
  %tobool149.not = icmp eq ptr %call148, null
  br i1 %tobool149.not, label %if.else142.if.end161_crit_edge, label %if.then150

if.else142.if.end161_crit_edge:                   ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then150:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call148) #10
  %call153 = tail call i32 @tridentfb_check_var(ptr noundef %var, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp eq i32 %call153, 0
  br label %if.end161

if.end161:                                        ; preds = %if.then150, %if.else142.if.end161_crit_edge, %do.end140, %if.then131.if.end161_crit_edge, %tridentfb_setup_ddc_bus.exit.if.end161_crit_edge
  %found.2.off0 = phi i1 [ false, %tridentfb_setup_ddc_bus.exit.if.end161_crit_edge ], [ false, %do.end140 ], [ false, %if.then131.if.end161_crit_edge ], [ false, %if.else142.if.end161_crit_edge ], [ %cmp154, %if.then150 ]
  %134 = load ptr, ptr @mode_option, align 4
  %tobool162.not = icmp ne ptr %134, null
  %brmerge = select i1 %tobool162.not, i1 true, i1 %found.2.off0
  br i1 %brmerge, label %if.end166, label %if.end166.thread

if.end166.thread:                                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @.str.9, ptr @mode_option, align 4
  br label %if.then168

if.end166:                                        ; preds = %if.end161
  %tobool167.not = icmp eq ptr %134, null
  br i1 %tobool167.not, label %if.end166.if.end190_crit_edge, label %if.end166.if.then168_crit_edge

if.end166.if.then168_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then168

if.end166.if.end190_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then168:                                       ; preds = %if.end166.if.then168_crit_edge, %if.end166.thread
  %135 = phi ptr [ @.str.9, %if.end166.thread ], [ %134, %if.end166.if.then168_crit_edge ]
  %modedb171 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 1
  %136 = ptrtoint ptr %modedb171 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %modedb171, align 4
  %modedb_len173 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 6
  %138 = ptrtoint ptr %modedb_len173 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %modedb_len173, align 4
  %140 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bits_per_pixel, align 4
  %call176 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call2, ptr noundef nonnull %135, ptr noundef %137, i32 noundef %139, ptr noundef null, i32 noundef %141) #10
  %142 = zext i32 %call176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call176, label %if.then168.if.end190_crit_edge [
    i32 0, label %if.then168.if.then180_crit_edge
    i32 4, label %if.then168.if.then180_crit_edge498
  ]

if.then168.if.then180_crit_edge498:               ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then180

if.then168.if.then180_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then180

if.then168.if.end190_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then180:                                       ; preds = %if.then168.if.then180_crit_edge, %if.then168.if.then180_crit_edge498
  %143 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device.i, align 4
  %145 = load ptr, ptr @mode_option, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.11, ptr noundef %145) #14
  %146 = ptrtoint ptr %modedb171 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %modedb171, align 4
  tail call void @fb_destroy_modedb(ptr noundef %147) #10
  %148 = ptrtoint ptr %modedb171 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %modedb171, align 4
  br label %out_unmap2

if.end190:                                        ; preds = %if.then168.if.end190_crit_edge, %if.end166.if.end190_crit_edge
  %modedb192 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 1
  %149 = ptrtoint ptr %modedb192 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %modedb192, align 4
  tail call void @fb_destroy_modedb(ptr noundef %150) #10
  %151 = ptrtoint ptr %modedb192 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %modedb192, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 12
  %call195 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %if.end190.out_unmap2_crit_edge, label %if.end199

if.end190.out_unmap2_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap2

if.end199:                                        ; preds = %if.end190
  %152 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %dev1, ptr %device.i, align 4
  %call204 = tail call i32 @register_framebuffer(ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %cmp205 = icmp slt i32 %call204, 0
  br i1 %cmp205, label %do.end210, label %do.end217

do.end210:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #10
  br label %out_unmap2

do.end217:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  %node = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 1
  %153 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %node, align 4
  %155 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 1
  %157 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %yres, align 4
  %159 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bits_per_pixel, align 4
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %154, ptr noundef %fix, i32 noundef %156, i32 noundef %158, i32 noundef %160) #14
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %161 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call2, ptr %driver_data.i.i, align 4
  br label %cleanup

out_unmap2:                                       ; preds = %do.end210, %if.end190.out_unmap2_crit_edge, %if.then180, %if.end99.out_unmap2_crit_edge, %if.end68.out_unmap2_crit_edge
  %err.0 = phi i32 [ -22, %if.then180 ], [ %call195, %if.end190.out_unmap2_crit_edge ], [ -22, %do.end210 ], [ -1, %if.end68.out_unmap2_crit_edge ], [ -12, %if.end99.out_unmap2_crit_edge ]
  %ddc_registered227 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 10
  %162 = ptrtoint ptr %ddc_registered227 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ddc_registered227, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool228.not = icmp eq i8 %163, 0
  br i1 %tobool228.not, label %out_unmap2.if.end231_crit_edge, label %if.then229

out_unmap2.if.end231_crit_edge:                   ; preds = %out_unmap2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then229:                                       ; preds = %out_unmap2
  call void @__sanitizer_cov_trace_pc() #12
  %ddc_adapter230 = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 11
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter230) #10
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %out_unmap2.if.end231_crit_edge
  %pixmap232 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 10
  %164 = ptrtoint ptr %pixmap232 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pixmap232, align 4
  tail call void @kfree(ptr noundef %165) #10
  %166 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %54, align 4
  %tobool234.not = icmp eq ptr %167, null
  br i1 %tobool234.not, label %if.end231.if.end236_crit_edge, label %if.then235

if.end231.if.end236_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %167) #10
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.end231.if.end236_crit_edge
  %168 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 1), align 4
  %169 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %168, i32 noundef %169) #10
  br label %out_unmap1

out_unmap1:                                       ; preds = %if.end236, %get_memsize.exit.out_unmap1_crit_edge
  %err.1.ph = phi i32 [ %err.0, %if.end236 ], [ -1, %get_memsize.exit.out_unmap1_crit_edge ]
  %170 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %par, align 4
  tail call fastcc void @disable_mmio(ptr noundef %171)
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr = load ptr, ptr %1, align 8
  %tobool239.not = icmp eq ptr %.pr, null
  br i1 %tobool239.not, label %out_unmap1.if.end242_crit_edge, label %if.then240

out_unmap1.if.end242_crit_edge:                   ; preds = %out_unmap1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end242

if.then240:                                       ; preds = %out_unmap1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %.pr) #10
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %out_unmap1.if.end242_crit_edge, %if.end54.if.end242_crit_edge
  %err.1417 = phi i32 [ %err.1.ph, %if.then240 ], [ %err.1.ph, %out_unmap1.if.end242_crit_edge ], [ -1, %if.end54.if.end242_crit_edge ]
  %173 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 10), align 4
  %174 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %173, i32 noundef %174) #10
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %do.end217, %if.then53, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1417, %if.end242 ], [ 0, %do.end217 ], [ -1, %if.then53 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trident_pci_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #10
  %ddc_registered = getelementptr inbounds %struct.tridentfb_par, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ddc_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ddc_registered, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ddc_adapter = getelementptr inbounds %struct.tridentfb_par, ptr %3, i32 0, i32 11
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void @iounmap(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @iounmap(ptr noundef %10) #10
  %11 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 1), align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %12) #10
  %13 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 10), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @tridentfb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %14) #10
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %16) #10
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #10
  tail call void @framebuffer_release(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xp_init_accel(ptr nocapture noundef %par, i32 noundef %pitch, i32 noundef %bpp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bpp)
  %cmp = icmp eq i32 %bpp, 24
  %0 = lshr i32 %bpp, 4
  %phi.cast = trunc i32 %0 to i8
  %cond = select i1 %cmp, i8 3, i8 %phi.cast
  %shr8 = ashr i32 %bpp, 3
  %shl9 = shl i32 %pitch, %shr8
  %1 = zext i32 %shl9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shl9, label %entry.sw.epilog_crit_edge [
    i32 4096, label %sw.bb20
    i32 2048, label %sw.bb16
    i32 1024, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = or i8 %cond, 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = or i8 %cond, 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = or i8 %cond, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb16, %sw.bb12, %entry.sw.epilog_crit_edge
  %x.0 = phi i8 [ %4, %sw.bb20 ], [ %3, %sw.bb16 ], [ %2, %sw.bb12 ], [ %cond, %entry.sw.epilog_crit_edge ]
  %conv5 = zext i8 %cond to i32
  %add = add nuw nsw i32 %conv5, 18
  %cond7 = select i1 %cmp, i32 20, i32 %add
  %shl = shl i32 %pitch, %cond7
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 8485
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %x.0) #10, !srcloc !161
  %7 = or i8 %x.0, 64
  %eng_oper = getelementptr inbounds %struct.tridentfb_par, ptr %par, i32 0, i32 9
  %8 = ptrtoint ptr %eng_oper to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %eng_oper, align 8
  %9 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par, align 8
  %add.ptr.i42 = getelementptr i8, ptr %10, i32 8532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %shl) #10, !srcloc !167
  %11 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %par, align 8
  %add.ptr.i43 = getelementptr i8, ptr %12, i32 8528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %shl) #10, !srcloc !167
  %13 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %par, align 8
  %add.ptr.i44 = getelementptr i8, ptr %14, i32 8486
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i44, i8 3) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xp_wait_engine(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 8480
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i18) #10, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not19 = icmp sgt i8 %2, -1
  br i1 %tobool.not19, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.021 = phi i32 [ %timeout.1, %do.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %count.020 = phi i32 [ %count.1, %do.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add i32 %count.020, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %inc)
  %cmp = icmp eq i32 %inc, 10000000
  br i1 %cmp, label %if.then, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %while.body
  %inc2 = add i32 %timeout.021, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc2)
  %cmp3 = icmp eq i32 %inc2, 8
  br i1 %cmp3, label %if.then5, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 8
  %add.ptr.i17 = getelementptr i8, ptr %4, i32 8480
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 0) #10, !srcloc !161
  br label %cleanup

do.end:                                           ; preds = %if.then.do.end_crit_edge, %while.body.do.end_crit_edge
  %count.1 = phi i32 [ 9990000, %if.then.do.end_crit_edge ], [ %inc, %while.body.do.end_crit_edge ]
  %timeout.1 = phi i32 [ %inc2, %if.then.do.end_crit_edge ], [ %timeout.021, %while.body.do.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !169
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 8480
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !162
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xp_fill_rect(ptr nocapture noundef readonly %par, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %c, i32 noundef %rop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8487
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 240) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i10 = getelementptr i8, ptr %3, i32 8536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %c) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 8488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 16384) #10, !srcloc !167
  %shl = shl i32 %w, 16
  %or = or i32 %shl, %h
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %or) #10, !srcloc !167
  %shl1 = shl i32 %x, 16
  %or2 = or i32 %shl1, %y
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 8504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %or2) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 8484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 1) #10, !srcloc !161
  %eng_oper = getelementptr inbounds %struct.tridentfb_par, ptr %par, i32 0, i32 9
  %12 = ptrtoint ptr %eng_oper to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eng_oper, align 8
  %14 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par, align 8
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 8485
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15, i8 %13) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xp_copy_rect(ptr nocapture noundef readonly %par, i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2, i32 noundef %w, i32 noundef %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %x1, i32 %x2)
  %cmp = icmp ult i32 %x1, %x2
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp1 = icmp eq i32 %y1, %y2
  %or.cond = and i1 %cmp, %cmp1
  %direction.0 = select i1 %or.cond, i32 516, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp4 = icmp ult i32 %y1, %y2
  %or6 = or i32 %direction.0, 256
  %add7 = add i32 %h, -1
  %sub8 = select i1 %cmp4, i32 %add7, i32 0
  %y1_tmp.0 = add i32 %sub8, %y1
  %sub10 = select i1 %cmp4, i32 %add7, i32 0
  %y2_tmp.0 = add i32 %sub10, %y2
  %direction.1 = select i1 %cmp4, i32 %or6, i32 %direction.0
  %add2 = add i32 %w, 65535
  %sub3 = select i1 %or.cond, i32 %add2, i32 0
  %x2_tmp.0 = add i32 %sub3, %x2
  %x1_tmp.0 = add i32 %sub3, %x1
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %direction.1) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i39 = getelementptr i8, ptr %3, i32 8487
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 -52) #10, !srcloc !161
  %shl = shl i32 %x1_tmp.0, 16
  %or13 = or i32 %y1_tmp.0, %shl
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i40 = getelementptr i8, ptr %5, i32 8508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %or13) #10, !srcloc !167
  %shl14 = shl i32 %x2_tmp.0, 16
  %or15 = or i32 %y2_tmp.0, %shl14
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i41 = getelementptr i8, ptr %7, i32 8504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %or15) #10, !srcloc !167
  %shl16 = shl i32 %w, 16
  %or17 = or i32 %shl16, %h
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i42 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %or17) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i43 = getelementptr i8, ptr %11, i32 8484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i43, i8 1) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blade_init_accel(ptr nocapture noundef readonly %par, i32 noundef %pitch, i32 noundef %bpp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bpp)
  %cmp = icmp eq i32 %bpp, 24
  %0 = shl i32 %bpp, 25
  %phi.bo = and i32 %0, -536870912
  %cond = select i1 %cmp, i32 1073741824, i32 %phi.bo
  %1 = shl i32 %pitch, 17
  %shl = and i32 %1, -1048576
  %or = or i32 %cond, %shl
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i19 = getelementptr i8, ptr %5, i32 8644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %or) #10, !srcloc !167
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i20 = getelementptr i8, ptr %7, i32 8632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %or) #10, !srcloc !167
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i21 = getelementptr i8, ptr %9, i32 8636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %or) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 8656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %shl) #10, !srcloc !167
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 8
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 8660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %shl) #10, !srcloc !167
  %14 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par, align 8
  %add.ptr.i24 = getelementptr i8, ptr %15, i32 8648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %shl) #10, !srcloc !167
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 8
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 8652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %shl) #10, !srcloc !167
  %18 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par, align 8
  %add.ptr.i26 = getelementptr i8, ptr %19, i32 8556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #10, !srcloc !167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blade_wait_engine(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 8480
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #10, !srcloc !170
  %and6 = and i32 %2, -92274688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not7 = icmp eq i32 %and6, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !172
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 8480
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !170
  %and = and i32 %5, -92274688
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blade_fill_rect(ptr nocapture noundef readonly %par, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %c, i32 noundef %rop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %c) #10, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rop)
  %tobool.not = icmp eq i32 %rop, 0
  %cond = select i1 %tobool.not, i32 204, i32 102
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i11 = getelementptr i8, ptr %3, i32 8520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %cond) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 8516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 537395224) #10, !srcloc !167
  %shl = shl i32 %y, 16
  %or = or i32 %shl, %x
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %or) #10, !srcloc !167
  %add = add i32 %h, %y
  %sub = shl i32 %add, 16
  %shl1 = add i32 %sub, -65536
  %add2 = add i32 %x, -1
  %sub3 = add i32 %add2, %w
  %or4 = or i32 %shl1, %sub3
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 8460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %or4) #10, !srcloc !167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blade_copy_rect(ptr nocapture noundef readonly %par, i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2, i32 noundef %w, i32 noundef %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %y1, 16
  %or = or i32 %shl, %x1
  %add = add i32 %h, %y1
  %sub = shl i32 %add, 16
  %shl1 = add i32 %sub, -65536
  %add2 = add i32 %w, -1
  %sub3 = add i32 %add2, %x1
  %or4 = or i32 %shl1, %sub3
  %shl5 = shl i32 %y2, 16
  %or6 = or i32 %shl5, %x2
  %add7 = add i32 %h, %y2
  %sub8 = shl i32 %add7, 16
  %shl9 = add i32 %sub8, -65536
  %sub11 = add i32 %add2, %x2
  %or12 = or i32 %shl9, %sub11
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp = icmp ugt i32 %y1, %y2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp13 = icmp eq i32 %y1, %y2
  call void @__sanitizer_cov_trace_cmp4(i32 %x1, i32 %x2)
  %cmp14 = icmp ugt i32 %x1, %x2
  %or.cond = and i1 %cmp14, %cmp13
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i.c = getelementptr i8, ptr %1, i32 8520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.c, i32 204) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i56.c = getelementptr i8, ptr %3, i32 8516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.c, i32 -536346604) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i5761 = getelementptr i8, ptr %5, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5761, i32 %or) #10, !srcloc !167
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i5863 = getelementptr i8, ptr %7, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5863, i32 %or4) #10, !srcloc !167
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i5965 = getelementptr i8, ptr %9, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5965, i32 %or6) #10, !srcloc !167
  br label %20

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 8520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 204) #10, !srcloc !167
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 8
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 8516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 -536346602) #10, !srcloc !167
  %14 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par, align 8
  %add.ptr.i57 = getelementptr i8, ptr %15, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %or4) #10, !srcloc !167
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 8
  %add.ptr.i58 = getelementptr i8, ptr %17, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %or) #10, !srcloc !167
  %18 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par, align 8
  %add.ptr.i59 = getelementptr i8, ptr %19, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %or12) #10, !srcloc !167
  br label %20

20:                                               ; preds = %if.end, %if.then
  %21 = phi i32 [ %or12, %if.then ], [ %or6, %if.end ]
  %22 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %par, align 8
  %add.ptr.i60 = getelementptr i8, ptr %23, i32 8460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %21) #10, !srcloc !167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blade_image_blit(ptr nocapture noundef readonly %par, ptr noundef %data, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %c, i32 noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %w, 31
  %shr = lshr i32 %add, 5
  %mul = mul i32 %shr, %h
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %c) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 8548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %b) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i16 = getelementptr i8, ptr %5, i32 8516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 -1609039872) #10, !srcloc !167
  %shl = shl i32 %y, 16
  %or = or i32 %shl, %x
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %or) #10, !srcloc !167
  %add1 = add i32 %h, %y
  %sub = shl i32 %add1, 16
  %shl2 = add i32 %sub, -65536
  %add3 = add i32 %x, -1
  %sub4 = add i32 %add3, %w
  %or5 = or i32 %shl2, %sub4
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i18 = getelementptr i8, ptr %9, i32 8460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %or5) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 65536
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %mul) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @image_init_accel(ptr nocapture noundef readonly %par, i32 noundef %pitch, i32 noundef %bpp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bpp)
  %cmp = icmp eq i32 %bpp, 24
  %shr = ashr i32 %bpp, 4
  %phi.bo = or i32 %shr, 1073741824
  %cond = select i1 %cmp, i32 1073741826, i32 %phi.bo
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -268435456) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i17 = getelementptr i8, ptr %3, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %cond) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 -2147483648) #10, !srcloc !167
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i19 = getelementptr i8, ptr %7, i32 8516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #10, !srcloc !167
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 8520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 8528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #10, !srcloc !167
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 8
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 8532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 0) #10, !srcloc !167
  %shl = shl i32 %pitch, 16
  %or1 = or i32 %shl, %pitch
  %or2 = or i32 %or1, 1610612736
  %14 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par, align 8
  %add.ptr.i23 = getelementptr i8, ptr %15, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %or2) #10, !srcloc !167
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 8
  %add.ptr.i24 = getelementptr i8, ptr %17, i32 8556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #10, !srcloc !167
  %18 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par, align 8
  %add.ptr.i25 = getelementptr i8, ptr %19, i32 8560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #10, !srcloc !167
  %20 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par, align 8
  %add.ptr.i26 = getelementptr i8, ptr %21, i32 8572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #10, !srcloc !167
  %22 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %par, align 8
  %add.ptr.i27 = getelementptr i8, ptr %23, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 268435456) #10, !srcloc !167
  %24 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %par, align 8
  %add.ptr.i28 = getelementptr i8, ptr %25, i32 8496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 134154239) #10, !srcloc !167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @image_wait_engine(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 8548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #10, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %2)
  %tobool.not6 = icmp ult i32 %2, 268435456
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !174
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 8548
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !170
  %tobool.not = icmp ult i32 %5, 268435456
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @image_fill_rect(ptr nocapture noundef readonly %par, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %c, i32 noundef %rop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 -1879047988) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 8516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %c) #10, !srcloc !167
  %shl = shl i32 %y, 16
  %or = or i32 %shl, %x
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %or) #10, !srcloc !167
  %add = add i32 %h, %y
  %sub = shl i32 %add, 16
  %shl1 = add i32 %sub, -65536
  %add2 = add i32 %x, -1
  %sub3 = add i32 %add2, %w
  %or4 = or i32 %shl1, %sub3
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i15 = getelementptr i8, ptr %9, i32 8460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %or4) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 8484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 -2134899200) #10, !srcloc !167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @image_copy_rect(ptr nocapture noundef readonly %par, i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2, i32 noundef %w, i32 noundef %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %y1, 16
  %or = or i32 %shl, %x1
  %add = add i32 %h, %y1
  %sub = shl i32 %add, 16
  %shl1 = add i32 %sub, -65536
  %add2 = add i32 %w, -1
  %sub3 = add i32 %add2, %x1
  %or4 = or i32 %shl1, %sub3
  %shl5 = shl i32 %y2, 16
  %or6 = or i32 %shl5, %x2
  %add7 = add i32 %h, %y2
  %sub8 = shl i32 %add7, 16
  %shl9 = add i32 %sub8, -65536
  %sub11 = add i32 %add2, %x2
  %or12 = or i32 %shl9, %sub11
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp = icmp ugt i32 %y1, %y2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp13 = icmp eq i32 %y1, %y2
  call void @__sanitizer_cov_trace_cmp4(i32 %x1, i32 %x2)
  %cmp14 = icmp ugt i32 %x1, %x2
  %or.cond = and i1 %cmp14, %cmp13
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool.not = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  %direction.0 = phi i32 [ -2143288192, %if.then ], [ -2143288188, %lor.lhs.false.if.end_crit_edge ]
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i57 = getelementptr i8, ptr %3, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 -1879047988) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i5863 = getelementptr i8, ptr %5, i32 8448
  br i1 %tobool.not, label %11, label %6

6:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5863, i32 %or4) #10, !srcloc !167
  %7 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %par, align 8
  %add.ptr.i59 = getelementptr i8, ptr %8, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %or) #10, !srcloc !167
  %9 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par, align 8
  %add.ptr.i60 = getelementptr i8, ptr %10, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %or12) #10, !srcloc !167
  br label %16

11:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5863, i32 %or) #10, !srcloc !167
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 8
  %add.ptr.i5965 = getelementptr i8, ptr %13, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5965, i32 %or4) #10, !srcloc !167
  %14 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par, align 8
  %add.ptr.i6067 = getelementptr i8, ptr %15, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6067, i32 %or6) #10, !srcloc !167
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %or12, %11 ], [ %or6, %6 ]
  %18 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par, align 8
  %add.ptr.i61 = getelementptr i8, ptr %19, i32 8460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %17) #10, !srcloc !167
  %20 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par, align 8
  %add.ptr.i62 = getelementptr i8, ptr %21, i32 8484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %direction.0) #10, !srcloc !167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgui_init_accel(ptr nocapture noundef readonly %par, i32 noundef %pitch, i32 noundef %bpp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bpp)
  %cmp = icmp eq i32 %bpp, 24
  %0 = lshr i32 %bpp, 4
  %phi.cast = trunc i32 %0 to i8
  %cond = select i1 %cmp, i8 3, i8 %phi.cast
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 8520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !167
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 8
  %add.ptr.i24 = getelementptr i8, ptr %4, i32 8524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 134156287) #10, !srcloc !167
  %mul = mul i32 %bpp, %pitch
  %div = sdiv i32 %mul, 8
  %5 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %div, label %entry.sw.epilog_crit_edge [
    i32 4096, label %sw.bb11
    i32 2048, label %sw.bb7
    i32 1024, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = or i8 %cond, 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = or i8 %cond, 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = or i8 %cond, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb3, %entry.sw.epilog_crit_edge
  %x.0 = phi i8 [ %8, %sw.bb11 ], [ %7, %sw.bb7 ], [ %6, %sw.bb3 ], [ %cond, %entry.sw.epilog_crit_edge ]
  %conv15 = zext i8 %x.0 to i16
  %9 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 8482
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %conv15) #10, !srcloc !175
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgui_fill_rect(ptr nocapture noundef readonly %par, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %c, i32 noundef %rop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8487
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -16) #10, !srcloc !161
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 8492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %c) #10, !srcloc !167
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 8488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 16416) #10, !srcloc !167
  %sub = shl i32 %h, 16
  %shl = add i32 %sub, -65536
  %sub1 = add i32 %w, -1
  %or = or i32 %shl, %sub1
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %or) #10, !srcloc !167
  %shl2 = shl i32 %y, 16
  %or3 = or i32 %shl2, %x
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 8504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %or3) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 8484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 1) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgui_copy_rect(ptr nocapture noundef readonly %par, i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2, i32 noundef %w, i32 noundef %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %x1, i32 %x2)
  %cmp = icmp ult i32 %x1, %x2
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp1 = icmp eq i32 %y1, %y2
  %or.cond = and i1 %cmp, %cmp1
  %flags.0 = select i1 %or.cond, i32 512, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %y1, i32 %y2)
  %cmp7 = icmp ult i32 %y1, %y2
  %or10 = or i32 %flags.0, 256
  %add11 = add i32 %h, -1
  %flags.1 = select i1 %cmp7, i32 %or10, i32 %flags.0
  %sub12 = select i1 %cmp7, i32 %add11, i32 0
  %y1_tmp.0.in = add i32 %sub12, %y1
  %sub15 = select i1 %cmp7, i32 %add11, i32 0
  %y2_tmp.0.in = add i32 %sub15, %y2
  %add2 = add i32 %w, 65535
  %sub3 = select i1 %or.cond, i32 %add2, i32 0
  %x2_tmp.0.in = add i32 %sub3, %x2
  %x1_tmp.0.in = add i32 %sub3, %x1
  %or21 = or i32 %flags.1, 4
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or21) #10, !srcloc !167
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 8
  %add.ptr.i54 = getelementptr i8, ptr %3, i32 8487
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i54, i8 -52) #10, !srcloc !161
  %shl = shl i32 %y1_tmp.0.in, 16
  %conv23 = and i32 %x1_tmp.0.in, 65535
  %or24 = or i32 %shl, %conv23
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 8
  %add.ptr.i55 = getelementptr i8, ptr %5, i32 8508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %or24) #10, !srcloc !167
  %shl26 = shl i32 %y2_tmp.0.in, 16
  %conv27 = and i32 %x2_tmp.0.in, 65535
  %or28 = or i32 %shl26, %conv27
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 8
  %add.ptr.i56 = getelementptr i8, ptr %7, i32 8504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %or28) #10, !srcloc !167
  %sub29 = shl i32 %h, 16
  %shl30 = add i32 %sub29, -65536
  %sub31 = add i32 %w, -1
  %or32 = or i32 %shl30, %sub31
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  %add.ptr.i57 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %or32) #10, !srcloc !167
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i58 = getelementptr i8, ptr %11, i32 8484
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 1) #10, !srcloc !161
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_mmio(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 11) #10, !srcloc !161
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 14) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -128) #10, !srcloc !161
  %chip_id = getelementptr inbounds %struct.tridentfb_par, ptr %par, i32 0, i32 2
  %1 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_id, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %2, label %if.then [
    i32 37952, label %entry.do.body_crit_edge
    i32 38496, label %entry.do.body_crit_edge9
    i32 37664, label %entry.do.body_crit_edge10
    i32 38533, label %entry.do.body_crit_edge11
    i32 37765, label %entry.do.body_crit_edge12
    i32 37762, label %entry.do.body_crit_edge13
  ]

entry.do.body_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -110) #10, !srcloc !161
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge, %entry.do.body_crit_edge9, %entry.do.body_crit_edge10, %entry.do.body_crit_edge11, %entry.do.body_crit_edge12, %entry.do.body_crit_edge13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 57) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @arm_heavy_mb() #10
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  %5 = or i8 %4, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %5) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_mmio(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 11) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 965
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i12 = getelementptr i8, ptr %4, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i12, i8 14) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i13 = getelementptr i8, ptr %4, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i13, i8 -128) #10, !srcloc !161
  %chip_id = getelementptr inbounds %struct.tridentfb_par, ptr %par, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %6, label %if.then [
    i32 37952, label %entry.if.end_crit_edge
    i32 38496, label %entry.if.end_crit_edge18
    i32 37664, label %entry.if.end_crit_edge19
    i32 38533, label %entry.if.end_crit_edge20
    i32 37765, label %entry.if.end_crit_edge21
    i32 37762, label %entry.if.end_crit_edge22
  ]

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i14 = getelementptr i8, ptr %9, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i14, i8 17) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i15 = getelementptr i8, ptr %9, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i15, i8 -110) #10, !srcloc !161
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge18, %entry.if.end_crit_edge19, %entry.if.end_crit_edge20, %entry.if.end_crit_edge21, %entry.if.end_crit_edge22
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 57) #10, !srcloc !161
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 8
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 981
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16) #10, !srcloc !162
  %15 = and i8 %14, -2
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 8
  %add.ptr.i17 = getelementptr i8, ptr %17, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 %15) #10, !srcloc !161
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tridentfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = add i32 %3, -8
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 29)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 2, label %if.end.thread
    i32 0, label %entry.if.end8_crit_edge
    i32 1, label %entry.if.end8_crit_edge249
    i32 3, label %entry.if.end8_crit_edge250
  ]

entry.if.end8_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

entry.if.end8_crit_edge249:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %bits_per_pixel, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end.thread, %entry.if.end8_crit_edge, %entry.if.end8_crit_edge249, %entry.if.end8_crit_edge250
  %bpp.0234 = phi i32 [ 32, %if.end.thread ], [ %3, %entry.if.end8_crit_edge ], [ %3, %entry.if.end8_crit_edge249 ], [ %3, %entry.if.end8_crit_edge250 ]
  %chip_id = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37952, i32 %9)
  %cmp9 = icmp eq i32 %9, 37952
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bpp.0234)
  %cmp11 = icmp eq i32 %bpp.0234, 32
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %flatpanel = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flatpanel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flatpanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end13.if.end19_crit_edge, label %land.lhs.true14

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true14:                                  ; preds = %if.end13
  %12 = load i32, ptr @nativex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %land.lhs.true14.if.end19_crit_edge, label %land.lhs.true16

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %13 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp17 = icmp ugt i32 %14, %12
  br i1 %cmp17, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end19_crit_edge

land.lhs.true16.if.end19_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true16.if.end19_crit_edge, %land.lhs.true14.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %15 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var, align 4
  %add = add i32 %16, 7
  %and = and i32 %add, -8
  store i32 %and, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %17 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %18)
  %cmp23 = icmp ugt i32 %and, %18
  br i1 %cmp23, label %if.then24, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %xres_virtual, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end19.if.end27_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %20 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %22 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp28 = icmp ugt i32 %21, %23
  br i1 %cmp28, label %if.then29, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %yres_virtual, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27.if.end32_crit_edge
  %25 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %26)
  %cmp34 = icmp ugt i32 %26, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %cmp36 = icmp ugt i32 %21, 2048
  %or.cond247 = select i1 %cmp34, i1 true, i1 %cmp36
  br i1 %or.cond247, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %27 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %28)
  %cmp40 = icmp ugt i32 %28, 65535
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %mul = mul nuw nsw i32 %26, %bpp.0234
  %29 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_id, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %30, label %land.lhs.true46 [
    i32 39040, label %if.end42.if.end82_crit_edge
    i32 38208, label %if.end42.if.end82_crit_edge251
    i32 33792, label %if.end42.if.end82_crit_edge252
    i32 33824, label %if.end42.if.end82_crit_edge253
    i32 34048, label %if.end42.if.end82_crit_edge254
    i32 34080, label %if.end42.if.end82_crit_edge255
    i32 34304, label %if.end42.if.end82_crit_edge256
    i32 34336, label %if.end42.if.end82_crit_edge257
    i32 34848, label %if.end42.if.end82_crit_edge258
    i32 39184, label %if.end42.if.end82_crit_edge259
    i32 39216, label %if.end42.if.end82_crit_edge260
    i32 38736, label %if.end42.if.end82_crit_edge261
    i32 38181, label %if.end42.if.end82_crit_edge262
    i32 38176, label %if.end42.if.end82_crit_edge263
    i32 37786, label %if.end42.if.end82_crit_edge264
    i32 37783, label %if.end42.if.end82_crit_edge265
    i32 38992, label %if.end42.if.end82_crit_edge266
  ]

if.end42.if.end82_crit_edge266:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge265:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge264:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge263:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge262:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge261:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge260:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge259:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge258:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge257:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge256:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge255:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge254:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge253:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge252:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge251:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end42.if.end82_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true46:                                  ; preds = %if.end42
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and47 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true46.if.end82_crit_edge

land.lhs.true46.if.end82_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_const_cmp4(i32 4104, i32 %mul)
  %cmp50 = icmp ult i32 %mul, 4104
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %div52237.rhs.trunc = trunc i32 %bpp.0234 to i16
  %div52237238 = udiv i16 4096, %div52237.rhs.trunc
  %div52237.zext = zext i16 %div52237238 to i32
  br label %if.end78

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %mul)
  %cmp54 = icmp ult i32 %mul, 8200
  br i1 %cmp54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %div56240.rhs.trunc = trunc i32 %bpp.0234 to i16
  %div56240241 = udiv i16 8192, %div56240.rhs.trunc
  %div56240.zext = zext i16 %div56240241 to i32
  br label %if.end78

if.else58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16392, i32 %mul)
  %cmp59 = icmp ult i32 %mul, 16392
  br i1 %cmp59, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #12
  %div61242.rhs.trunc = trunc i32 %bpp.0234 to i16
  %div61242243 = udiv i16 16384, %div61242.rhs.trunc
  %div61242.zext = zext i16 %div61242243 to i32
  br label %if.end78

if.else63:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %mul)
  %cmp64 = icmp ult i32 %mul, 32776
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #12
  %div66244.rhs.trunc = trunc i32 %bpp.0234 to i16
  %div66244245 = udiv i16 -32768, %div66244.rhs.trunc
  %div66244.zext = zext i16 %div66244245 to i32
  br label %if.end78

if.else68:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_const_cmp4(i32 65544, i32 %mul)
  %cmp69 = icmp ult i32 %mul, 65544
  br i1 %cmp69, label %if.then70, label %if.else68.cleanup_crit_edge

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then70:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  %div71246 = udiv i32 65536, %bpp.0234
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %if.then65, %if.then60, %if.then55, %if.then51
  %div56240.zext.sink = phi i32 [ %div56240.zext, %if.then55 ], [ %div66244.zext, %if.then65 ], [ %div71246, %if.then70 ], [ %div61242.zext, %if.then60 ], [ %div52237.zext, %if.then51 ]
  %34 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div56240.zext.sink, ptr %xres_virtual, align 4
  %mul80 = mul i32 %div56240.zext.sink, %bpp.0234
  br label %if.end82

if.end82:                                         ; preds = %if.end78, %land.lhs.true46.if.end82_crit_edge, %if.end42.if.end82_crit_edge, %if.end42.if.end82_crit_edge251, %if.end42.if.end82_crit_edge252, %if.end42.if.end82_crit_edge253, %if.end42.if.end82_crit_edge254, %if.end42.if.end82_crit_edge255, %if.end42.if.end82_crit_edge256, %if.end42.if.end82_crit_edge257, %if.end42.if.end82_crit_edge258, %if.end42.if.end82_crit_edge259, %if.end42.if.end82_crit_edge260, %if.end42.if.end82_crit_edge261, %if.end42.if.end82_crit_edge262, %if.end42.if.end82_crit_edge263, %if.end42.if.end82_crit_edge264, %if.end42.if.end82_crit_edge265, %if.end42.if.end82_crit_edge266
  %line_length.0.in = phi i32 [ %mul, %land.lhs.true46.if.end82_crit_edge ], [ %mul80, %if.end78 ], [ %mul, %if.end42.if.end82_crit_edge ], [ %mul, %if.end42.if.end82_crit_edge251 ], [ %mul, %if.end42.if.end82_crit_edge252 ], [ %mul, %if.end42.if.end82_crit_edge253 ], [ %mul, %if.end42.if.end82_crit_edge254 ], [ %mul, %if.end42.if.end82_crit_edge255 ], [ %mul, %if.end42.if.end82_crit_edge256 ], [ %mul, %if.end42.if.end82_crit_edge257 ], [ %mul, %if.end42.if.end82_crit_edge258 ], [ %mul, %if.end42.if.end82_crit_edge259 ], [ %mul, %if.end42.if.end82_crit_edge260 ], [ %mul, %if.end42.if.end82_crit_edge261 ], [ %mul, %if.end42.if.end82_crit_edge262 ], [ %mul, %if.end42.if.end82_crit_edge263 ], [ %mul, %if.end42.if.end82_crit_edge264 ], [ %mul, %if.end42.if.end82_crit_edge265 ], [ %mul, %if.end42.if.end82_crit_edge266 ]
  %line_length.0 = lshr i32 %line_length.0.in, 3
  %sub = sub nsw i32 %28, %21
  %mul85 = mul i32 %line_length.0, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %mul85)
  %cmp86 = icmp ugt i32 %mul85, 4194304
  br i1 %cmp86, label %if.then87, label %if.end82.if.end92_crit_edge

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %div88 = udiv i32 4194304, %line_length.0
  %add90 = add nuw nsw i32 %div88, %21
  %35 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add90, ptr %yres_virtual, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end82.if.end92_crit_edge
  %36 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres_virtual, align 4
  %mul94 = mul i32 %37, %line_length.0
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul94, i32 %39)
  %cmp95 = icmp ugt i32 %mul94, %39
  br i1 %cmp95, label %if.end92.cleanup_crit_edge, label %if.end97

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97:                                         ; preds = %if.end92
  %40 = zext i32 %bpp.0234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %bpp.0234, label %if.end97.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb101
    i32 32, label %sw.bb114
  ]

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %41 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %43 = call ptr @memcpy(ptr %green, ptr %red, i32 12)
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %44 = call ptr @memcpy(ptr %blue, ptr %red, i32 12)
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %red102 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %45 = ptrtoint ptr %red102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 11, ptr %red102, align 4
  %green104 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %46 = ptrtoint ptr %green104 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %green104, align 4
  %blue106 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %47 = ptrtoint ptr %blue106 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %blue106, align 4
  %length109 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %length109 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %length109, align 4
  %length111 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %length111 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %length111, align 4
  %length113 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %length113 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %length113, align 4
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %red115 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %51 = ptrtoint ptr %red115 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %red115, align 4
  %green117 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %52 = ptrtoint ptr %green117 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %green117, align 4
  %blue119 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %53 = ptrtoint ptr %blue119 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %blue119, align 4
  %length122 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %length122 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %length122, align 4
  %length124 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %length124 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %length124, align 4
  %length126 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %length126 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %length126, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb114, %sw.bb101, %sw.bb
  %57 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip_id, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %58, label %is_xp.exit [
    i32 34848, label %sw.epilog.is_xp.exit.thread_crit_edge
    i32 39184, label %sw.epilog.is_xp.exit.thread_crit_edge267
  ]

sw.epilog.is_xp.exit.thread_crit_edge267:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_xp.exit.thread

sw.epilog.is_xp.exit.thread_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_xp.exit.thread

is_xp.exit:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 39216, i32 %58)
  %cmp2.i.not = icmp eq i32 %58, 39216
  %spec.select = select i1 %cmp2.i.not, i32 350000, i32 230000
  br label %is_xp.exit.thread

is_xp.exit.thread:                                ; preds = %is_xp.exit, %sw.epilog.is_xp.exit.thread_crit_edge, %sw.epilog.is_xp.exit.thread_crit_edge267
  %60 = phi i32 [ 350000, %sw.epilog.is_xp.exit.thread_crit_edge ], [ 350000, %sw.epilog.is_xp.exit.thread_crit_edge267 ], [ %spec.select, %is_xp.exit ]
  %61 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %58, label %is_xp.exit.thread.sw.epilog137_crit_edge [
    i32 37952, label %sw.bb133
    i32 37664, label %is_xp.exit.thread.sw.bb135_crit_edge
    i32 38496, label %is_xp.exit.thread.sw.bb135_crit_edge268
    i32 38533, label %is_xp.exit.thread.sw.bb136_crit_edge
    i32 37768, label %is_xp.exit.thread.sw.bb136_crit_edge269
    i32 37762, label %is_xp.exit.thread.sw.bb136_crit_edge270
    i32 37765, label %is_xp.exit.thread.sw.bb136_crit_edge271
  ]

is_xp.exit.thread.sw.bb136_crit_edge271:          ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

is_xp.exit.thread.sw.bb136_crit_edge270:          ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

is_xp.exit.thread.sw.bb136_crit_edge269:          ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

is_xp.exit.thread.sw.bb136_crit_edge:             ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

is_xp.exit.thread.sw.bb135_crit_edge268:          ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb135

is_xp.exit.thread.sw.bb135_crit_edge:             ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb135

is_xp.exit.thread.sw.epilog137_crit_edge:         ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog137

sw.bb133:                                         ; preds = %is_xp.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bpp.0234)
  %cmp134 = icmp ugt i32 %bpp.0234, 15
  %cond = select i1 %cmp134, i32 45000, i32 90000
  br label %sw.epilog137

sw.bb135:                                         ; preds = %is_xp.exit.thread.sw.bb135_crit_edge, %is_xp.exit.thread.sw.bb135_crit_edge268
  br label %sw.epilog137

sw.bb136:                                         ; preds = %is_xp.exit.thread.sw.bb136_crit_edge, %is_xp.exit.thread.sw.bb136_crit_edge269, %is_xp.exit.thread.sw.bb136_crit_edge270, %is_xp.exit.thread.sw.bb136_crit_edge271
  br label %sw.epilog137

sw.epilog137:                                     ; preds = %sw.bb136, %sw.bb135, %sw.bb133, %is_xp.exit.thread.sw.epilog137_crit_edge
  %ramdac.1 = phi i32 [ %60, %is_xp.exit.thread.sw.epilog137_crit_edge ], [ 170000, %sw.bb136 ], [ 135000, %sw.bb135 ], [ %cond, %sw.bb133 ]
  %div140239248 = zext i1 %cmp11 to i32
  %spec.select228 = lshr i32 %ramdac.1, %div140239248
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %62 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pixclock, align 4
  %div142 = udiv i32 1000000000, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %div142, i32 %spec.select228)
  %cmp143 = icmp ugt i32 %div142, %spec.select228
  %spec.select229 = select i1 %cmp143, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog137, %if.end97.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.else68.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end8.cleanup_crit_edge ], [ -22, %land.lhs.true16.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %if.end38.cleanup_crit_edge ], [ -22, %if.else68.cleanup_crit_edge ], [ -22, %if.end92.cleanup_crit_edge ], [ -22, %if.end97.cleanup_crit_edge ], [ %spec.select229, %sw.epilog137 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var2, align 4
  %div509 = lshr i32 %5, 3
  %sub = add nsw i32 %div509, -1
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %6 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %right_margin, align 4
  %add = add i32 %7, %5
  %div4510 = lshr i32 %add, 3
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %8 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hsync_len, align 4
  %add8 = add i32 %add, %9
  %div9511 = lshr i32 %add8, 3
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %10 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %left_margin, align 4
  %add15 = add i32 %add8, %11
  %div16512 = lshr i32 %add15, 3
  %sub17 = add nsw i32 %div16512, -5
  %add19 = add nsw i32 %div16512, -2
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %sub20 = add i32 %13, -1
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %14 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lower_margin, align 4
  %add22 = add i32 %15, %13
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %16 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsync_len, align 4
  %add23 = add i32 %add22, %17
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %18 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upper_margin, align 4
  %add24 = add i32 %add23, -2
  %sub25 = add i32 %add24, %19
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %20 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vmode, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div28515 = lshr i32 %sub25, 1
  %div29516 = lshr i32 %sub20, 1
  %div30517 = lshr i32 %add22, 1
  %div31518 = lshr i32 %add23, 1
  %div32519 = lshr i32 %13, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vdispend.0 = phi i32 [ %div29516, %if.then ], [ %sub20, %entry.if.end_crit_edge ]
  %vsyncstart.0 = phi i32 [ %div30517, %if.then ], [ %add22, %entry.if.end_crit_edge ]
  %vsyncend.0 = phi i32 [ %div31518, %if.then ], [ %add23, %entry.if.end_crit_edge ]
  %vblankstart.0 = phi i32 [ %div32519, %if.then ], [ %13, %entry.if.end_crit_edge ]
  %vblankend.0 = phi i32 [ %div28515, %if.then ], [ %sub25, %entry.if.end_crit_edge ]
  tail call fastcc void @enable_mmio(ptr noundef %1)
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %23, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 17) #10, !srcloc !161
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %23, i32 981
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %25 = and i8 %24, 127
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i3.i = getelementptr i8, ptr %27, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i3.i, i8 17) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i4.i = getelementptr i8, ptr %27, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i4.i, i8 %25) #10, !srcloc !161
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 48) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i = getelementptr i8, ptr %29, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i, i8 8) #10, !srcloc !161
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %30 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync, align 4
  %and34 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %spec.select = select i1 %tobool35.not, i8 -21, i8 -85
  %and41 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %32 = and i8 %spec.select, 107
  %tmp.1 = select i1 %tobool42.not, i8 %spec.select, i8 %32
  %flatpanel = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %flatpanel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flatpanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool48.not = icmp eq i32 %34, 0
  br i1 %tobool48.not, label %if.end.if.else60_crit_edge, label %land.lhs.true

if.end.if.else60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else60

land.lhs.true:                                    ; preds = %if.end
  %35 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %var2, align 4
  %37 = load i32, ptr @nativex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %37)
  %cmp = icmp ult i32 %36, %37
  br i1 %cmp, label %if.then51, label %land.lhs.true.if.else60_crit_edge

land.lhs.true.if.else60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else60

if.then51:                                        ; preds = %land.lhs.true
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -21) #10, !srcloc !161
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i522 = getelementptr i8, ptr %41, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i522, i8 48) #10, !srcloc !161
  %add.ptr.i2.i.i.i523 = getelementptr i8, ptr %41, i32 975
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i523) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %43 = or i8 %42, -127
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i3.i524 = getelementptr i8, ptr %45, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i3.i524, i8 48) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i4.i525 = getelementptr i8, ptr %45, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i4.i525, i8 %43) #10, !srcloc !161
  %46 = load i32, ptr @center, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool54.not = icmp eq i32 %46, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i526 = getelementptr i8, ptr %48, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i526, i8 82) #10, !srcloc !161
  %add.ptr.i2.i.i.i527 = getelementptr i8, ptr %48, i32 975
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i527) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %50 = and i8 %49, 124
  %51 = or i8 %50, -128
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i10.i = getelementptr i8, ptr %53, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i10.i, i8 82) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i11.i = getelementptr i8, ptr %53, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i11.i, i8 %51) #10, !srcloc !161
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i12.i = getelementptr i8, ptr %55, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i12.i, i8 83) #10, !srcloc !161
  %add.ptr.i2.i.i13.i = getelementptr i8, ptr %55, i32 975
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i13.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %57 = and i8 %56, 124
  %58 = or i8 %57, -128
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i14.i = getelementptr i8, ptr %60, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i14.i, i8 83) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i15.i = getelementptr i8, ptr %60, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i15.i, i8 %58) #10, !srcloc !161
  br label %if.end61

if.else:                                          ; preds = %if.then51
  %61 = load i32, ptr @stretch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool56.not = icmp eq i32 %61, 0
  br i1 %tobool56.not, label %if.else.if.end61_crit_edge, label %if.then57

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then57:                                        ; preds = %if.else
  %chip_id.i = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34848, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 34848
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %65, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i13.i, i8 93) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i14.i = getelementptr i8, ptr %65, i32 975
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i14.i, i8 0) #10, !srcloc !161
  br label %screen_stretch.exit

if.else.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i14.i, i8 8) #10, !srcloc !161
  br label %screen_stretch.exit

screen_stretch.exit:                              ; preds = %if.else.i, %if.then.i
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %67, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i15.i, i8 82) #10, !srcloc !161
  %add.ptr.i2.i.i16.i = getelementptr i8, ptr %67, i32 975
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i16.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %69 = and i8 %68, 124
  %70 = or i8 %69, 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i17.i = getelementptr i8, ptr %72, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i17.i, i8 82) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i18.i = getelementptr i8, ptr %72, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i18.i, i8 %70) #10, !srcloc !161
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i19.i = getelementptr i8, ptr %74, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i19.i, i8 83) #10, !srcloc !161
  %add.ptr.i2.i.i20.i = getelementptr i8, ptr %74, i32 975
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i20.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %76 = and i8 %75, 124
  %77 = or i8 %76, 1
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i21.i = getelementptr i8, ptr %79, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i21.i, i8 83) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i22.i = getelementptr i8, ptr %79, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i22.i, i8 %77) #10, !srcloc !161
  br label %if.end61

if.else60:                                        ; preds = %land.lhs.true.if.else60_crit_edge, %if.end.if.else60_crit_edge
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  %add.ptr.i528 = getelementptr i8, ptr %81, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i528, i8 %tmp.1) #10, !srcloc !161
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i529 = getelementptr i8, ptr %83, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i529, i8 48) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i530 = getelementptr i8, ptr %83, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i530, i8 8) #10, !srcloc !161
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %screen_stretch.exit, %if.else.if.end61_crit_edge, %if.then55
  %conv63 = trunc i32 %vblankend.0 to i8
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i531 = getelementptr i8, ptr %85, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i531, i8 6) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i532 = getelementptr i8, ptr %85, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i532, i8 %conv63) #10, !srcloc !161
  %conv65 = trunc i32 %vdispend.0 to i8
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i533 = getelementptr i8, ptr %87, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i533, i8 18) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i534 = getelementptr i8, ptr %87, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i534, i8 %conv65) #10, !srcloc !161
  %conv67 = trunc i32 %vsyncstart.0 to i8
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i535 = getelementptr i8, ptr %89, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i535, i8 16) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i536 = getelementptr i8, ptr %89, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i536, i8 %conv67) #10, !srcloc !161
  %90 = trunc i32 %vsyncend.0 to i8
  %conv69 = and i8 %90, 15
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i537 = getelementptr i8, ptr %92, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i537, i8 17) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i538 = getelementptr i8, ptr %92, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i538, i8 %conv69) #10, !srcloc !161
  %conv71 = trunc i32 %vblankstart.0 to i8
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i539 = getelementptr i8, ptr %94, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i539, i8 21) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i540 = getelementptr i8, ptr %94, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i540, i8 %conv71) #10, !srcloc !161
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i541 = getelementptr i8, ptr %96, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i541, i8 22) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i542 = getelementptr i8, ptr %96, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i542, i8 %conv63) #10, !srcloc !161
  %conv75 = trunc i32 %sub17 to i8
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i543 = getelementptr i8, ptr %98, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i543, i8 0) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i544 = getelementptr i8, ptr %98, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i544, i8 %conv75) #10, !srcloc !161
  %conv77 = trunc i32 %sub to i8
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i545 = getelementptr i8, ptr %100, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i545, i8 1) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i546 = getelementptr i8, ptr %100, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i546, i8 %conv77) #10, !srcloc !161
  %conv79 = trunc i32 %div4510 to i8
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i547 = getelementptr i8, ptr %102, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i547, i8 4) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i548 = getelementptr i8, ptr %102, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i548, i8 %conv79) #10, !srcloc !161
  %and80 = and i32 %div9511, 31
  %and81 = shl nsw i32 %add19, 2
  %shl = and i32 %and81, 128
  %or82 = or i32 %shl, %and80
  %conv83 = trunc i32 %or82 to i8
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i549 = getelementptr i8, ptr %104, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i549, i8 5) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i550 = getelementptr i8, ptr %104, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i550, i8 %conv83) #10, !srcloc !161
  %conv85 = trunc i32 %div509 to i8
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i551 = getelementptr i8, ptr %106, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i551, i8 2) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i552 = getelementptr i8, ptr %106, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i552, i8 %conv85) #10, !srcloc !161
  %107 = trunc i32 %add19 to i8
  %conv87 = and i8 %107, 31
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i553 = getelementptr i8, ptr %109, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i553, i8 3) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i554 = getelementptr i8, ptr %109, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i554, i8 %conv87) #10, !srcloc !161
  %and88 = and i32 %vblankend.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %spec.select520 = select i1 %tobool89.not, i8 16, i8 17
  %and95 = lshr i32 %vdispend.0, 7
  %110 = trunc i32 %and95 to i8
  %111 = and i8 %110, 2
  %and102 = lshr i32 %vsyncstart.0, 6
  %112 = trunc i32 %and102 to i8
  %113 = and i8 %112, 4
  %and109 = lshr i32 %vblankstart.0, 5
  %114 = trunc i32 %and109 to i8
  %115 = and i8 %114, 8
  %and116 = lshr i32 %vblankend.0, 4
  %116 = trunc i32 %and116 to i8
  %117 = and i8 %116, 32
  %and123 = lshr i32 %vdispend.0, 3
  %118 = trunc i32 %and123 to i8
  %119 = and i8 %118, 64
  %and130 = lshr i32 %vsyncstart.0, 2
  %120 = trunc i32 %and130 to i8
  %121 = and i8 %120, -128
  %122 = or i8 %119, %111
  %123 = or i8 %122, %113
  %124 = or i8 %123, %121
  %125 = or i8 %124, %115
  %126 = or i8 %125, %spec.select520
  %127 = or i8 %126, %117
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i555 = getelementptr i8, ptr %129, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i555, i8 7) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i556 = getelementptr i8, ptr %129, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i556, i8 %127) #10, !srcloc !161
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i557 = getelementptr i8, ptr %131, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i557, i8 39) #10, !srcloc !161
  %add.ptr.i2.i.i558 = getelementptr i8, ptr %131, i32 981
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i558) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %133 = and i8 %132, 7
  %and143 = and i32 %vblankend.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  %tmp.9.v = select i1 %tobool144.not, i8 8, i8 -120
  %and150 = lshr i32 %vblankstart.0, 4
  %134 = trunc i32 %and150 to i8
  %135 = and i8 %134, 64
  %and157 = lshr i32 %vsyncstart.0, 5
  %136 = trunc i32 %and157 to i8
  %137 = and i8 %136, 32
  %and164 = lshr i32 %vdispend.0, 6
  %138 = trunc i32 %and164 to i8
  %139 = and i8 %138, 16
  %tmp.9 = or i8 %137, %139
  %140 = or i8 %tmp.9, %135
  %141 = or i8 %140, %tmp.9.v
  %142 = or i8 %141, %133
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i559 = getelementptr i8, ptr %144, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i559, i8 39) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i560 = getelementptr i8, ptr %144, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i560, i8 %142) #10, !srcloc !161
  %shr = lshr i32 %sub17, 8
  %conv172 = and i32 %shr, 1
  %shr173 = lshr i32 %sub, 7
  %and174 = and i32 %shr173, 2
  %shr178 = lshr i32 %add, 8
  %and179 = and i32 %shr178, 8
  %shr183 = lshr i32 %5, 7
  %and184 = and i32 %shr183, 16
  %or176 = or i32 %and174, %and184
  %or181 = or i32 %or176, %and179
  %or186 = or i32 %or181, %conv172
  %conv187 = trunc i32 %or186 to i8
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i561 = getelementptr i8, ptr %146, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i561, i8 43) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i562 = getelementptr i8, ptr %146, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i562, i8 %conv187) #10, !srcloc !161
  %and188 = and i32 %vblankstart.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  %tmp.13 = select i1 %tobool189.not, i8 64, i8 96
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i563 = getelementptr i8, ptr %148, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i563, i8 9) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i564 = getelementptr i8, ptr %148, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i564, i8 %tmp.13) #10, !srcloc !161
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i565 = getelementptr i8, ptr %150, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i565, i8 24) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i566 = getelementptr i8, ptr %150, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i566, i8 -1) #10, !srcloc !161
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i567 = getelementptr i8, ptr %152, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i567, i8 8) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i568 = getelementptr i8, ptr %152, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i568, i8 0) #10, !srcloc !161
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i569 = getelementptr i8, ptr %154, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i569, i8 23) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i570 = getelementptr i8, ptr %154, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i570, i8 -61) #10, !srcloc !161
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i571 = getelementptr i8, ptr %156, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i571, i8 33) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i572 = getelementptr i8, ptr %156, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i572, i8 32) #10, !srcloc !161
  %157 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vmode, align 4
  %and197 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  %conv199 = select i1 %tobool198.not, i8 -128, i8 -124
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i573 = getelementptr i8, ptr %160, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i573, i8 30) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i574 = getelementptr i8, ptr %160, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i574, i8 %conv199) #10, !srcloc !161
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i575 = getelementptr i8, ptr %162, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i575, i8 47) #10, !srcloc !161
  %add.ptr.i2.i.i576 = getelementptr i8, ptr %162, i32 975
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i576) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %164 = and i8 %163, -5
  %165 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %vmode, align 4
  %167 = trunc i32 %166 to i8
  %168 = shl i8 %167, 2
  %169 = and i8 %168, 4
  %tmp.14 = or i8 %169, %164
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i577 = getelementptr i8, ptr %171, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i577, i8 47) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i578 = getelementptr i8, ptr %171, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i578, i8 %tmp.14) #10, !srcloc !161
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i579 = getelementptr i8, ptr %173, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i579, i8 54) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i580 = getelementptr i8, ptr %173, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i580, i8 -128) #10, !srcloc !161
  %174 = add i32 %3, -8
  %175 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %176 = icmp ult i32 %175, 4
  %switch.shiftamt = shl i32 %175, 3
  %switch.downshift = lshr i32 153683200, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %tmp.15 = select i1 %176, i8 %switch.masked, i8 %tmp.14
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i581 = getelementptr i8, ptr %178, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i581, i8 56) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i582 = getelementptr i8, ptr %178, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i582, i8 %tmp.15) #10, !srcloc !161
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i583 = getelementptr i8, ptr %180, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i583, i8 58) #10, !srcloc !161
  %add.ptr.i2.i.i584 = getelementptr i8, ptr %180, i32 981
  %181 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i584) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %chip_id = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 2
  %182 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %chip_id, align 4
  %184 = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %183, label %lor.rhs.i.i [
    i32 37952, label %if.end61.is_oldprotect.exit_crit_edge
    i32 38496, label %if.end61.is_oldprotect.exit_crit_edge666
    i32 37664, label %if.end61.is_oldprotect.exit_crit_edge667
  ]

if.end61.is_oldprotect.exit_crit_edge667:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_oldprotect.exit

if.end61.is_oldprotect.exit_crit_edge666:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_oldprotect.exit

if.end61.is_oldprotect.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_oldprotect.exit

lor.rhs.i.i:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_oldprotect.exit

is_oldprotect.exit:                               ; preds = %lor.rhs.i.i, %if.end61.is_oldprotect.exit_crit_edge, %if.end61.is_oldprotect.exit_crit_edge666, %if.end61.is_oldprotect.exit_crit_edge667
  %185 = phi i1 [ true, %if.end61.is_oldprotect.exit_crit_edge ], [ false, %lor.rhs.i.i ], [ true, %if.end61.is_oldprotect.exit_crit_edge666 ], [ true, %if.end61.is_oldprotect.exit_crit_edge667 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 38533, i32 %183)
  %cmp.i = icmp eq i32 %183, 38533
  %or.cond.i = or i1 %cmp.i, %185
  call void @__sanitizer_cov_trace_const_cmp4(i32 37762, i32 %183)
  %cmp2.i = icmp eq i32 %183, 37762
  %or.cond7.i = or i1 %cmp2.i, %or.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 37765, i32 %183)
  %cmp3.i = icmp eq i32 %183, 37765
  %narrow.i = or i1 %cmp3.i, %or.cond7.i
  %186 = or i8 %181, 16
  %spec.select521 = select i1 %narrow.i, i8 %181, i8 %186
  %187 = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %183, label %is_oldprotect.exit._crit_edge [
    i32 37768, label %is_oldprotect.exit.iscyber.exit_crit_edge
    i32 37762, label %is_oldprotect.exit.iscyber.exit_crit_edge668
    i32 37765, label %is_oldprotect.exit.iscyber.exit_crit_edge669
    i32 37783, label %is_oldprotect.exit.iscyber.exit_crit_edge670
    i32 37786, label %is_oldprotect.exit.iscyber.exit_crit_edge671
    i32 38176, label %is_oldprotect.exit.iscyber.exit_crit_edge672
    i32 38181, label %is_oldprotect.exit.iscyber.exit_crit_edge673
    i32 38208, label %is_oldprotect.exit.iscyber.exit_crit_edge674
    i32 33824, label %is_oldprotect.exit.iscyber.exit_crit_edge675
    i32 34048, label %is_oldprotect.exit.iscyber.exit_crit_edge676
    i32 34080, label %is_oldprotect.exit.iscyber.exit_crit_edge677
    i32 34304, label %is_oldprotect.exit.iscyber.exit_crit_edge678
    i32 34336, label %is_oldprotect.exit.iscyber.exit_crit_edge679
    i32 34848, label %is_oldprotect.exit.iscyber.exit_crit_edge680
  ]

is_oldprotect.exit.iscyber.exit_crit_edge680:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge679:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge678:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge677:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge676:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge675:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge674:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge673:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge672:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge671:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge670:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge669:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge668:     ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit.iscyber.exit_crit_edge:        ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscyber.exit

is_oldprotect.exit._crit_edge:                    ; preds = %is_oldprotect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %189

iscyber.exit:                                     ; preds = %is_oldprotect.exit.iscyber.exit_crit_edge, %is_oldprotect.exit.iscyber.exit_crit_edge668, %is_oldprotect.exit.iscyber.exit_crit_edge669, %is_oldprotect.exit.iscyber.exit_crit_edge670, %is_oldprotect.exit.iscyber.exit_crit_edge671, %is_oldprotect.exit.iscyber.exit_crit_edge672, %is_oldprotect.exit.iscyber.exit_crit_edge673, %is_oldprotect.exit.iscyber.exit_crit_edge674, %is_oldprotect.exit.iscyber.exit_crit_edge675, %is_oldprotect.exit.iscyber.exit_crit_edge676, %is_oldprotect.exit.iscyber.exit_crit_edge677, %is_oldprotect.exit.iscyber.exit_crit_edge678, %is_oldprotect.exit.iscyber.exit_crit_edge679, %is_oldprotect.exit.iscyber.exit_crit_edge680
  %188 = or i8 %spec.select521, 32
  br label %189

189:                                              ; preds = %iscyber.exit, %is_oldprotect.exit._crit_edge
  %190 = phi i8 [ %188, %iscyber.exit ], [ %spec.select521, %is_oldprotect.exit._crit_edge ]
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i585 = getelementptr i8, ptr %192, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i585, i8 58) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i586 = getelementptr i8, ptr %192, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i586, i8 %190) #10, !srcloc !161
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i587 = getelementptr i8, ptr %194, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i587, i8 42) #10, !srcloc !161
  %add.ptr.i2.i.i588 = getelementptr i8, ptr %194, i32 981
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i588) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %196 = or i8 %195, 64
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i589 = getelementptr i8, ptr %198, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i589, i8 42) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i590 = getelementptr i8, ptr %198, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i590, i8 %196) #10, !srcloc !161
  %199 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %chip_id, align 4
  %201 = zext i32 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %200, label %if.then239 [
    i32 34848, label %.if.end244_crit_edge
    i32 39184, label %.if.end244_crit_edge681
    i32 39216, label %.if.then252_crit_edge
  ]

.if.then252_crit_edge:                            ; preds = %189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then252

.if.end244_crit_edge681:                          ; preds = %189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244

.if.end244_crit_edge:                             ; preds = %189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244

if.then239:                                       ; preds = %189
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i592 = getelementptr i8, ptr %203, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i592, i8 47) #10, !srcloc !161
  %add.ptr.i2.i.i593 = getelementptr i8, ptr %203, i32 981
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i593) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %205 = or i8 %204, 16
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i594 = getelementptr i8, ptr %207, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i594, i8 47) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i595 = getelementptr i8, ptr %207, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i595, i8 %205) #10, !srcloc !161
  %208 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pr.pr = load i32, ptr %chip_id, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then239, %.if.end244_crit_edge, %.if.end244_crit_edge681
  %.pr = phi i32 [ %.pr.pr, %if.then239 ], [ %200, %.if.end244_crit_edge ], [ %200, %.if.end244_crit_edge681 ]
  %209 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %.pr, label %if.end244.if.then252_crit_edge [
    i32 37952, label %if.end244.if.end257_crit_edge
    i32 38736, label %if.end244.if.end257_crit_edge682
  ]

if.end244.if.end257_crit_edge682:                 ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

if.end244.if.end257_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

if.end244.if.then252_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then252

if.then252:                                       ; preds = %if.end244.if.then252_crit_edge, %.if.then252_crit_edge
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i596 = getelementptr i8, ptr %211, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i596, i8 57) #10, !srcloc !161
  %add.ptr.i2.i.i597 = getelementptr i8, ptr %211, i32 981
  %212 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i597) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %213 = or i8 %212, 6
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i598 = getelementptr i8, ptr %215, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i598, i8 57) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i599 = getelementptr i8, ptr %215, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i599, i8 %213) #10, !srcloc !161
  br label %if.end257

if.end257:                                        ; preds = %if.then252, %if.end244.if.end257_crit_edge, %if.end244.if.end257_crit_edge682
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %217, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i = getelementptr i8, ptr %217, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i, i8 3) #10, !srcloc !161
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i600 = getelementptr i8, ptr %219, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i600, i8 1) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i601 = getelementptr i8, ptr %219, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i601, i8 1) #10, !srcloc !161
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i602 = getelementptr i8, ptr %221, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i602, i8 2) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i603 = getelementptr i8, ptr %221, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i603, i8 15) #10, !srcloc !161
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i604 = getelementptr i8, ptr %223, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i604, i8 3) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i605 = getelementptr i8, ptr %223, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i605, i8 0) #10, !srcloc !161
  %224 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i606 = getelementptr i8, ptr %225, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i606, i8 4) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i607 = getelementptr i8, ptr %225, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i607, i8 14) #10, !srcloc !161
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %226 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pixclock, align 4
  %div263 = udiv i32 1000000000, %227
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i608 = getelementptr i8, ptr %229, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i608, i8 15) #10, !srcloc !161
  %add.ptr.i2.i.i609 = getelementptr i8, ptr %229, i32 975
  %230 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i609) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %231 = and i8 %230, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp268 = icmp eq i32 %3, 32
  br i1 %cmp268, label %if.end257.if.then276_crit_edge, label %lor.lhs.false

if.end257.if.then276_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then276

lor.lhs.false:                                    ; preds = %if.end257
  %232 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37952, i32 %233)
  %cmp271 = icmp eq i32 %233, 37952
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp274 = icmp eq i32 %3, 16
  %or.cond = select i1 %cmp271, i1 %cmp274, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then276_crit_edge, label %lor.lhs.false.if.end280_crit_edge

lor.lhs.false.if.end280_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

lor.lhs.false.if.then276_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then276

if.then276:                                       ; preds = %lor.lhs.false.if.then276_crit_edge, %if.end257.if.then276_crit_edge
  %234 = or i8 %231, 8
  %mul = shl nuw nsw i32 %div263, 1
  %235 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %235)
  %.pr660 = load i32, ptr %chip_id, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %lor.lhs.false.if.end280_crit_edge
  %236 = phi i32 [ %.pr660, %if.then276 ], [ %233, %lor.lhs.false.if.end280_crit_edge ]
  %tmp.18 = phi i8 [ %234, %if.then276 ], [ %231, %lor.lhs.false.if.end280_crit_edge ]
  %vclk.0 = phi i32 [ %mul, %if.then276 ], [ %div263, %lor.lhs.false.if.end280_crit_edge ]
  %237 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %236, label %is_oldclock.exit.i [
    i32 37952, label %if.end280.for.cond3.preheader.i_crit_edge
    i32 38496, label %if.end280.for.cond3.preheader.i_crit_edge683
  ]

if.end280.for.cond3.preheader.i_crit_edge683:     ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

if.end280.for.cond3.preheader.i_crit_edge:        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

is_oldclock.exit.i:                               ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 37664, i32 %236)
  %cmp2.i.not.i = icmp eq i32 %236, 37664
  %spec.select.i = select i1 %cmp2.i.not.i, i32 1, i32 2
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %is_oldclock.exit.i, %if.end280.for.cond3.preheader.i_crit_edge, %if.end280.for.cond3.preheader.i_crit_edge683
  %238 = phi i32 [ 1, %if.end280.for.cond3.preheader.i_crit_edge ], [ 1, %if.end280.for.cond3.preheader.i_crit_edge683 ], [ %spec.select.i, %is_oldclock.exit.i ]
  %conv34.i = trunc i32 %238 to i8
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc39.i.for.body6.i_crit_edge, %for.cond3.preheader.i
  %m.0135.i = phi i32 [ 1, %for.cond3.preheader.i ], [ %inc40.i, %for.inc39.i.for.body6.i_crit_edge ]
  %best_k.1134.i = phi i8 [ 0, %for.cond3.preheader.i ], [ %best_k.4.i, %for.inc39.i.for.body6.i_crit_edge ]
  %best_n.1133.i = phi i8 [ 0, %for.cond3.preheader.i ], [ %best_n.4.i, %for.inc39.i.for.body6.i_crit_edge ]
  %best_m.1132.i = phi i8 [ 0, %for.cond3.preheader.i ], [ %best_m.4.i, %for.inc39.i.for.body6.i_crit_edge ]
  %d.1131.i = phi i32 [ 20000, %for.cond3.preheader.i ], [ %d.4.i, %for.inc39.i.for.body6.i_crit_edge ]
  %add.i = add nuw nsw i32 %m.0135.i, 2
  %shl.i = shl i32 %add.i, %238
  %sub.i = add i32 %shl.i, -8
  %239 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %239)
  %cmp12117.i = icmp ult i32 %239, 122
  br i1 %cmp12117.i, label %for.body14.lr.ph.i, label %for.body6.i.for.inc39.i_crit_edge

for.body6.i.for.inc39.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i

for.body14.lr.ph.i:                               ; preds = %for.body6.i
  %conv33.i = trunc i32 %m.0135.i to i8
  br label %for.body14.i

for.body14.i:                                     ; preds = %if.end.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %best_k.2123.i = phi i8 [ %best_k.1134.i, %for.body14.lr.ph.i ], [ %best_k.3.i, %if.end.i.for.body14.i_crit_edge ]
  %best_n.2122.i = phi i8 [ %best_n.1133.i, %for.body14.lr.ph.i ], [ %best_n.3.i, %if.end.i.for.body14.i_crit_edge ]
  %best_m.2121.i = phi i8 [ %best_m.1132.i, %for.body14.lr.ph.i ], [ %best_m.3.i, %if.end.i.for.body14.i_crit_edge ]
  %d.2120.i = phi i32 [ %d.1131.i, %for.body14.lr.ph.i ], [ %d.3.i, %if.end.i.for.body14.i_crit_edge ]
  %n.0118.i = phi i32 [ %239, %for.body14.lr.ph.i ], [ %inc.i, %if.end.i.for.body14.i_crit_edge ]
  %240 = mul nuw nsw i32 %n.0118.i, 14318
  %mul.i = add nuw nsw i32 %240, 114544
  %div.i = udiv i32 %mul.i, %add.i
  %shr.i = lshr i32 %div.i, %238
  %sub17.i = sub i32 %shr.i, %vclk.0
  %241 = tail call i32 @llvm.abs.i32(i32 %sub17.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %d.2120.i)
  %cmp25.i = icmp ult i32 %241, %d.2120.i
  br i1 %cmp25.i, label %for.body14.i.if.then.i612_crit_edge, label %lor.lhs.false.i

for.body14.i.if.then.i612_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i612

lor.lhs.false.i:                                  ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %d.2120.i)
  %cmp27.i = icmp eq i32 %241, %d.2120.i
  %conv29.i = zext i8 %best_k.2123.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %238, i32 %conv29.i)
  %cmp30.i = icmp eq i32 %238, %conv29.i
  %or.cond.i611 = select i1 %cmp27.i, i1 %cmp30.i, i1 false
  br i1 %or.cond.i611, label %lor.lhs.false.i.if.then.i612_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false.i.if.then.i612_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i612

if.then.i612:                                     ; preds = %lor.lhs.false.i.if.then.i612_crit_edge, %for.body14.i.if.then.i612_crit_edge
  %conv32.i = trunc i32 %n.0118.i to i8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i612, %lor.lhs.false.i.if.end.i_crit_edge
  %d.3.i = phi i32 [ %241, %if.then.i612 ], [ %d.2120.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %best_m.3.i = phi i8 [ %conv33.i, %if.then.i612 ], [ %best_m.2121.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %best_n.3.i = phi i8 [ %conv32.i, %if.then.i612 ], [ %best_n.2122.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %best_k.3.i = phi i8 [ %conv34.i, %if.then.i612 ], [ %best_k.2123.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %vclk.0)
  %cmp35.i = icmp ule i32 %shr.i, %vclk.0
  %inc.i = add nuw nsw i32 %n.0118.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %n.0118.i)
  %cmp12.i = icmp ult i32 %n.0118.i, 121
  %or.cond142.i = select i1 %cmp35.i, i1 %cmp12.i, i1 false
  br i1 %or.cond142.i, label %if.end.i.for.body14.i_crit_edge, label %if.end.i.for.inc39.i_crit_edge

if.end.i.for.inc39.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i

if.end.i.for.body14.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.inc39.i:                                      ; preds = %if.end.i.for.inc39.i_crit_edge, %for.body6.i.for.inc39.i_crit_edge
  %d.4.i = phi i32 [ %d.1131.i, %for.body6.i.for.inc39.i_crit_edge ], [ %d.3.i, %if.end.i.for.inc39.i_crit_edge ]
  %best_m.4.i = phi i8 [ %best_m.1132.i, %for.body6.i.for.inc39.i_crit_edge ], [ %best_m.3.i, %if.end.i.for.inc39.i_crit_edge ]
  %best_n.4.i = phi i8 [ %best_n.1133.i, %for.body6.i.for.inc39.i_crit_edge ], [ %best_n.3.i, %if.end.i.for.inc39.i_crit_edge ]
  %best_k.4.i = phi i8 [ %best_k.1134.i, %for.body6.i.for.inc39.i_crit_edge ], [ %best_k.3.i, %if.end.i.for.inc39.i_crit_edge ]
  %inc40.i = add nuw nsw i32 %m.0135.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, 32
  br i1 %exitcond.not.i, label %for.inc42.i, label %for.inc39.i.for.body6.i_crit_edge

for.inc39.i.for.body6.i_crit_edge:                ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i

for.inc42.i:                                      ; preds = %for.inc39.i
  %dec.i = add nsw i32 %238, -1
  %conv34.i.1 = trunc i32 %dec.i to i8
  br label %for.body6.i.1

for.body6.i.1:                                    ; preds = %for.inc39.i.1.for.body6.i.1_crit_edge, %for.inc42.i
  %m.0135.i.1 = phi i32 [ 1, %for.inc42.i ], [ %inc40.i.1, %for.inc39.i.1.for.body6.i.1_crit_edge ]
  %best_k.1134.i.1 = phi i8 [ %best_k.4.i, %for.inc42.i ], [ %best_k.4.i.1, %for.inc39.i.1.for.body6.i.1_crit_edge ]
  %best_n.1133.i.1 = phi i8 [ %best_n.4.i, %for.inc42.i ], [ %best_n.4.i.1, %for.inc39.i.1.for.body6.i.1_crit_edge ]
  %best_m.1132.i.1 = phi i8 [ %best_m.4.i, %for.inc42.i ], [ %best_m.4.i.1, %for.inc39.i.1.for.body6.i.1_crit_edge ]
  %d.1131.i.1 = phi i32 [ %d.4.i, %for.inc42.i ], [ %d.4.i.1, %for.inc39.i.1.for.body6.i.1_crit_edge ]
  %add.i.1 = add nuw nsw i32 %m.0135.i.1, 2
  %shl.i.1 = shl i32 %add.i.1, %238
  %sub.i.1 = add i32 %shl.i.1, -8
  %242 = tail call i32 @llvm.smax.i32(i32 %sub.i.1, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %242)
  %cmp12117.i.1 = icmp ult i32 %242, 122
  br i1 %cmp12117.i.1, label %for.body14.lr.ph.i.1, label %for.body6.i.1.for.inc39.i.1_crit_edge

for.body6.i.1.for.inc39.i.1_crit_edge:            ; preds = %for.body6.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i.1

for.body14.lr.ph.i.1:                             ; preds = %for.body6.i.1
  %conv33.i.1 = trunc i32 %m.0135.i.1 to i8
  br label %for.body14.i.1

for.body14.i.1:                                   ; preds = %if.end.i.1.for.body14.i.1_crit_edge, %for.body14.lr.ph.i.1
  %best_k.2123.i.1 = phi i8 [ %best_k.1134.i.1, %for.body14.lr.ph.i.1 ], [ %best_k.3.i.1, %if.end.i.1.for.body14.i.1_crit_edge ]
  %best_n.2122.i.1 = phi i8 [ %best_n.1133.i.1, %for.body14.lr.ph.i.1 ], [ %best_n.3.i.1, %if.end.i.1.for.body14.i.1_crit_edge ]
  %best_m.2121.i.1 = phi i8 [ %best_m.1132.i.1, %for.body14.lr.ph.i.1 ], [ %best_m.3.i.1, %if.end.i.1.for.body14.i.1_crit_edge ]
  %d.2120.i.1 = phi i32 [ %d.1131.i.1, %for.body14.lr.ph.i.1 ], [ %d.3.i.1, %if.end.i.1.for.body14.i.1_crit_edge ]
  %n.0118.i.1 = phi i32 [ %242, %for.body14.lr.ph.i.1 ], [ %inc.i.1, %if.end.i.1.for.body14.i.1_crit_edge ]
  %243 = mul nuw nsw i32 %n.0118.i.1, 14318
  %mul.i.1 = add nuw nsw i32 %243, 114544
  %div.i.1 = udiv i32 %mul.i.1, %add.i.1
  %shr.i.1 = lshr i32 %div.i.1, %dec.i
  %sub17.i.1 = sub i32 %shr.i.1, %vclk.0
  %244 = tail call i32 @llvm.abs.i32(i32 %sub17.i.1, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %d.2120.i.1)
  %cmp25.i.1 = icmp ult i32 %244, %d.2120.i.1
  br i1 %cmp25.i.1, label %for.body14.i.1.if.then.i612.1_crit_edge, label %lor.lhs.false.i.1

for.body14.i.1.if.then.i612.1_crit_edge:          ; preds = %for.body14.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i612.1

lor.lhs.false.i.1:                                ; preds = %for.body14.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %d.2120.i.1)
  %cmp27.i.1 = icmp eq i32 %244, %d.2120.i.1
  %conv29.i.1 = zext i8 %best_k.2123.i.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %conv29.i.1)
  %cmp30.i.1 = icmp eq i32 %dec.i, %conv29.i.1
  %or.cond.i611.1 = select i1 %cmp27.i.1, i1 %cmp30.i.1, i1 false
  br i1 %or.cond.i611.1, label %lor.lhs.false.i.1.if.then.i612.1_crit_edge, label %lor.lhs.false.i.1.if.end.i.1_crit_edge

lor.lhs.false.i.1.if.end.i.1_crit_edge:           ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.1

lor.lhs.false.i.1.if.then.i612.1_crit_edge:       ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i612.1

if.then.i612.1:                                   ; preds = %lor.lhs.false.i.1.if.then.i612.1_crit_edge, %for.body14.i.1.if.then.i612.1_crit_edge
  %conv32.i.1 = trunc i32 %n.0118.i.1 to i8
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i612.1, %lor.lhs.false.i.1.if.end.i.1_crit_edge
  %d.3.i.1 = phi i32 [ %244, %if.then.i612.1 ], [ %d.2120.i.1, %lor.lhs.false.i.1.if.end.i.1_crit_edge ]
  %best_m.3.i.1 = phi i8 [ %conv33.i.1, %if.then.i612.1 ], [ %best_m.2121.i.1, %lor.lhs.false.i.1.if.end.i.1_crit_edge ]
  %best_n.3.i.1 = phi i8 [ %conv32.i.1, %if.then.i612.1 ], [ %best_n.2122.i.1, %lor.lhs.false.i.1.if.end.i.1_crit_edge ]
  %best_k.3.i.1 = phi i8 [ %conv34.i.1, %if.then.i612.1 ], [ %best_k.2123.i.1, %lor.lhs.false.i.1.if.end.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.1, i32 %vclk.0)
  %cmp35.i.1 = icmp ule i32 %shr.i.1, %vclk.0
  %inc.i.1 = add nuw nsw i32 %n.0118.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %n.0118.i.1)
  %cmp12.i.1 = icmp ult i32 %n.0118.i.1, 121
  %or.cond142.i.1 = select i1 %cmp35.i.1, i1 %cmp12.i.1, i1 false
  br i1 %or.cond142.i.1, label %if.end.i.1.for.body14.i.1_crit_edge, label %if.end.i.1.for.inc39.i.1_crit_edge

if.end.i.1.for.inc39.i.1_crit_edge:               ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i.1

if.end.i.1.for.body14.i.1_crit_edge:              ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.1

for.inc39.i.1:                                    ; preds = %if.end.i.1.for.inc39.i.1_crit_edge, %for.body6.i.1.for.inc39.i.1_crit_edge
  %d.4.i.1 = phi i32 [ %d.1131.i.1, %for.body6.i.1.for.inc39.i.1_crit_edge ], [ %d.3.i.1, %if.end.i.1.for.inc39.i.1_crit_edge ]
  %best_m.4.i.1 = phi i8 [ %best_m.1132.i.1, %for.body6.i.1.for.inc39.i.1_crit_edge ], [ %best_m.3.i.1, %if.end.i.1.for.inc39.i.1_crit_edge ]
  %best_n.4.i.1 = phi i8 [ %best_n.1133.i.1, %for.body6.i.1.for.inc39.i.1_crit_edge ], [ %best_n.3.i.1, %if.end.i.1.for.inc39.i.1_crit_edge ]
  %best_k.4.i.1 = phi i8 [ %best_k.1134.i.1, %for.body6.i.1.for.inc39.i.1_crit_edge ], [ %best_k.3.i.1, %if.end.i.1.for.inc39.i.1_crit_edge ]
  %inc40.i.1 = add nuw nsw i32 %m.0135.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc40.i.1, 32
  br i1 %exitcond.not.i.1, label %for.inc42.i.1, label %for.inc39.i.1.for.body6.i.1_crit_edge

for.inc39.i.1.for.body6.i.1_crit_edge:            ; preds = %for.inc39.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i.1

for.inc42.i.1:                                    ; preds = %for.inc39.i.1
  %dec.i.1 = add nsw i32 %238, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %238)
  %cmp.i613.1 = icmp ugt i32 %238, 1
  br i1 %cmp.i613.1, label %for.cond3.preheader.i.2, label %for.inc42.i.1.for.end43.i_crit_edge

for.inc42.i.1.for.end43.i_crit_edge:              ; preds = %for.inc42.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43.i

for.cond3.preheader.i.2:                          ; preds = %for.inc42.i.1
  %conv34.i.2 = trunc i32 %dec.i.1 to i8
  br label %for.body6.i.2

for.body6.i.2:                                    ; preds = %for.inc39.i.2.for.body6.i.2_crit_edge, %for.cond3.preheader.i.2
  %m.0135.i.2 = phi i32 [ 1, %for.cond3.preheader.i.2 ], [ %inc40.i.2, %for.inc39.i.2.for.body6.i.2_crit_edge ]
  %best_k.1134.i.2 = phi i8 [ %best_k.4.i.1, %for.cond3.preheader.i.2 ], [ %best_k.4.i.2, %for.inc39.i.2.for.body6.i.2_crit_edge ]
  %best_n.1133.i.2 = phi i8 [ %best_n.4.i.1, %for.cond3.preheader.i.2 ], [ %best_n.4.i.2, %for.inc39.i.2.for.body6.i.2_crit_edge ]
  %best_m.1132.i.2 = phi i8 [ %best_m.4.i.1, %for.cond3.preheader.i.2 ], [ %best_m.4.i.2, %for.inc39.i.2.for.body6.i.2_crit_edge ]
  %d.1131.i.2 = phi i32 [ %d.4.i.1, %for.cond3.preheader.i.2 ], [ %d.4.i.2, %for.inc39.i.2.for.body6.i.2_crit_edge ]
  %add.i.2 = add nuw nsw i32 %m.0135.i.2, 2
  %shl.i.2 = shl i32 %add.i.2, %238
  %sub.i.2 = add i32 %shl.i.2, -8
  %245 = tail call i32 @llvm.smax.i32(i32 %sub.i.2, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %245)
  %cmp12117.i.2 = icmp ult i32 %245, 122
  br i1 %cmp12117.i.2, label %for.body14.lr.ph.i.2, label %for.body6.i.2.for.inc39.i.2_crit_edge

for.body6.i.2.for.inc39.i.2_crit_edge:            ; preds = %for.body6.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i.2

for.body14.lr.ph.i.2:                             ; preds = %for.body6.i.2
  %conv33.i.2 = trunc i32 %m.0135.i.2 to i8
  br label %for.body14.i.2

for.body14.i.2:                                   ; preds = %if.end.i.2.for.body14.i.2_crit_edge, %for.body14.lr.ph.i.2
  %best_k.2123.i.2 = phi i8 [ %best_k.1134.i.2, %for.body14.lr.ph.i.2 ], [ %best_k.3.i.2, %if.end.i.2.for.body14.i.2_crit_edge ]
  %best_n.2122.i.2 = phi i8 [ %best_n.1133.i.2, %for.body14.lr.ph.i.2 ], [ %best_n.3.i.2, %if.end.i.2.for.body14.i.2_crit_edge ]
  %best_m.2121.i.2 = phi i8 [ %best_m.1132.i.2, %for.body14.lr.ph.i.2 ], [ %best_m.3.i.2, %if.end.i.2.for.body14.i.2_crit_edge ]
  %d.2120.i.2 = phi i32 [ %d.1131.i.2, %for.body14.lr.ph.i.2 ], [ %d.3.i.2, %if.end.i.2.for.body14.i.2_crit_edge ]
  %n.0118.i.2 = phi i32 [ %245, %for.body14.lr.ph.i.2 ], [ %inc.i.2, %if.end.i.2.for.body14.i.2_crit_edge ]
  %246 = mul nuw nsw i32 %n.0118.i.2, 14318
  %mul.i.2 = add nuw nsw i32 %246, 114544
  %div.i.2 = udiv i32 %mul.i.2, %add.i.2
  %shr.i.2 = lshr i32 %div.i.2, %dec.i.1
  %sub17.i.2 = sub i32 %shr.i.2, %vclk.0
  %247 = tail call i32 @llvm.abs.i32(i32 %sub17.i.2, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %d.2120.i.2)
  %cmp25.i.2 = icmp ult i32 %247, %d.2120.i.2
  br i1 %cmp25.i.2, label %for.body14.i.2.if.then.i612.2_crit_edge, label %lor.lhs.false.i.2

for.body14.i.2.if.then.i612.2_crit_edge:          ; preds = %for.body14.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i612.2

lor.lhs.false.i.2:                                ; preds = %for.body14.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %d.2120.i.2)
  %cmp27.i.2 = icmp eq i32 %247, %d.2120.i.2
  %conv29.i.2 = zext i8 %best_k.2123.i.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i.1, i32 %conv29.i.2)
  %cmp30.i.2 = icmp eq i32 %dec.i.1, %conv29.i.2
  %or.cond.i611.2 = select i1 %cmp27.i.2, i1 %cmp30.i.2, i1 false
  br i1 %or.cond.i611.2, label %lor.lhs.false.i.2.if.then.i612.2_crit_edge, label %lor.lhs.false.i.2.if.end.i.2_crit_edge

lor.lhs.false.i.2.if.end.i.2_crit_edge:           ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.2

lor.lhs.false.i.2.if.then.i612.2_crit_edge:       ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i612.2

if.then.i612.2:                                   ; preds = %lor.lhs.false.i.2.if.then.i612.2_crit_edge, %for.body14.i.2.if.then.i612.2_crit_edge
  %conv32.i.2 = trunc i32 %n.0118.i.2 to i8
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i612.2, %lor.lhs.false.i.2.if.end.i.2_crit_edge
  %d.3.i.2 = phi i32 [ %247, %if.then.i612.2 ], [ %d.2120.i.2, %lor.lhs.false.i.2.if.end.i.2_crit_edge ]
  %best_m.3.i.2 = phi i8 [ %conv33.i.2, %if.then.i612.2 ], [ %best_m.2121.i.2, %lor.lhs.false.i.2.if.end.i.2_crit_edge ]
  %best_n.3.i.2 = phi i8 [ %conv32.i.2, %if.then.i612.2 ], [ %best_n.2122.i.2, %lor.lhs.false.i.2.if.end.i.2_crit_edge ]
  %best_k.3.i.2 = phi i8 [ %conv34.i.2, %if.then.i612.2 ], [ %best_k.2123.i.2, %lor.lhs.false.i.2.if.end.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.2, i32 %vclk.0)
  %cmp35.i.2 = icmp ule i32 %shr.i.2, %vclk.0
  %inc.i.2 = add nuw nsw i32 %n.0118.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %n.0118.i.2)
  %cmp12.i.2 = icmp ult i32 %n.0118.i.2, 121
  %or.cond142.i.2 = select i1 %cmp35.i.2, i1 %cmp12.i.2, i1 false
  br i1 %or.cond142.i.2, label %if.end.i.2.for.body14.i.2_crit_edge, label %if.end.i.2.for.inc39.i.2_crit_edge

if.end.i.2.for.inc39.i.2_crit_edge:               ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i.2

if.end.i.2.for.body14.i.2_crit_edge:              ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.2

for.inc39.i.2:                                    ; preds = %if.end.i.2.for.inc39.i.2_crit_edge, %for.body6.i.2.for.inc39.i.2_crit_edge
  %d.4.i.2 = phi i32 [ %d.1131.i.2, %for.body6.i.2.for.inc39.i.2_crit_edge ], [ %d.3.i.2, %if.end.i.2.for.inc39.i.2_crit_edge ]
  %best_m.4.i.2 = phi i8 [ %best_m.1132.i.2, %for.body6.i.2.for.inc39.i.2_crit_edge ], [ %best_m.3.i.2, %if.end.i.2.for.inc39.i.2_crit_edge ]
  %best_n.4.i.2 = phi i8 [ %best_n.1133.i.2, %for.body6.i.2.for.inc39.i.2_crit_edge ], [ %best_n.3.i.2, %if.end.i.2.for.inc39.i.2_crit_edge ]
  %best_k.4.i.2 = phi i8 [ %best_k.1134.i.2, %for.body6.i.2.for.inc39.i.2_crit_edge ], [ %best_k.3.i.2, %if.end.i.2.for.inc39.i.2_crit_edge ]
  %inc40.i.2 = add nuw nsw i32 %m.0135.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc40.i.2, 32
  br i1 %exitcond.not.i.2, label %for.inc39.i.2.for.end43.i_crit_edge, label %for.inc39.i.2.for.body6.i.2_crit_edge

for.inc39.i.2.for.body6.i.2_crit_edge:            ; preds = %for.inc39.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i.2

for.inc39.i.2.for.end43.i_crit_edge:              ; preds = %for.inc39.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.inc39.i.2.for.end43.i_crit_edge, %for.inc42.i.1.for.end43.i_crit_edge
  %best_m.4.i.lcssa.lcssa = phi i8 [ %best_m.4.i.1, %for.inc42.i.1.for.end43.i_crit_edge ], [ %best_m.4.i.2, %for.inc39.i.2.for.end43.i_crit_edge ]
  %best_n.4.i.lcssa.lcssa = phi i8 [ %best_n.4.i.1, %for.inc42.i.1.for.end43.i_crit_edge ], [ %best_n.4.i.2, %for.inc39.i.2.for.end43.i_crit_edge ]
  %best_k.4.i.lcssa.lcssa = phi i8 [ %best_k.4.i.1, %for.inc42.i.1.for.end43.i_crit_edge ], [ %best_k.4.i.2, %for.inc39.i.2.for.end43.i_crit_edge ]
  %248 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %236, label %for.end43.i._crit_edge [
    i32 37952, label %for.end43.i._crit_edge684
    i32 38496, label %for.end43.i._crit_edge685
    i32 37664, label %for.end43.i._crit_edge686
  ]

for.end43.i._crit_edge686:                        ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %249

for.end43.i._crit_edge685:                        ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %249

for.end43.i._crit_edge684:                        ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %249

for.end43.i._crit_edge:                           ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %251

249:                                              ; preds = %for.end43.i._crit_edge684, %for.end43.i._crit_edge685, %for.end43.i._crit_edge686
  %shl50.i = shl i8 %best_m.4.i.lcssa.lcssa, 7
  %250 = lshr i8 %best_m.4.i.lcssa.lcssa, 1
  br label %251

251:                                              ; preds = %249, %for.end43.i._crit_edge
  %.sink152.i = phi i8 [ 4, %249 ], [ 6, %for.end43.i._crit_edge ]
  %.sink.i = phi i8 [ %250, %249 ], [ %best_m.4.i.lcssa.lcssa, %for.end43.i._crit_edge ]
  %252 = phi i8 [ %shl50.i, %249 ], [ 0, %for.end43.i._crit_edge ]
  %shl55.i = shl i8 %best_k.4.i.lcssa.lcssa, %.sink152.i
  %or56.i = or i8 %shl55.i, %.sink.i
  %lo.0.i = or i8 %252, %best_n.4.i.lcssa.lcssa
  %253 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %236, label %if.else69.i [
    i32 39040, label %.if.then67.i_crit_edge
    i32 38208, label %.if.then67.i_crit_edge687
    i32 33792, label %.if.then67.i_crit_edge688
    i32 33824, label %.if.then67.i_crit_edge689
    i32 34048, label %.if.then67.i_crit_edge690
    i32 34080, label %.if.then67.i_crit_edge691
    i32 34304, label %.if.then67.i_crit_edge692
    i32 34336, label %.if.then67.i_crit_edge693
    i32 34848, label %.if.then67.i_crit_edge694
    i32 39184, label %.if.then67.i_crit_edge695
    i32 39216, label %.if.then67.i_crit_edge696
    i32 38736, label %.if.then67.i_crit_edge697
    i32 38181, label %.if.then67.i_crit_edge698
    i32 38176, label %.if.then67.i_crit_edge699
    i32 37786, label %.if.then67.i_crit_edge700
    i32 37783, label %.if.then67.i_crit_edge701
    i32 38992, label %.if.then67.i_crit_edge702
  ]

.if.then67.i_crit_edge702:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge701:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge700:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge699:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge698:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge697:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge696:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge695:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge694:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge693:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge692:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge691:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge690:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge689:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge688:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge687:                        ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

.if.then67.i_crit_edge:                           ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67.i

if.then67.i:                                      ; preds = %.if.then67.i_crit_edge, %.if.then67.i_crit_edge687, %.if.then67.i_crit_edge688, %.if.then67.i_crit_edge689, %.if.then67.i_crit_edge690, %.if.then67.i_crit_edge691, %.if.then67.i_crit_edge692, %.if.then67.i_crit_edge693, %.if.then67.i_crit_edge694, %.if.then67.i_crit_edge695, %.if.then67.i_crit_edge696, %.if.then67.i_crit_edge697, %.if.then67.i_crit_edge698, %.if.then67.i_crit_edge699, %.if.then67.i_crit_edge700, %.if.then67.i_crit_edge701, %.if.then67.i_crit_edge702
  %254 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i614 = getelementptr i8, ptr %255, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i614, i8 25) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i615 = getelementptr i8, ptr %255, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i615, i8 %or56.i) #10, !srcloc !161
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i111.i = getelementptr i8, ptr %257, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i111.i, i8 24) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i112.i = getelementptr i8, ptr %257, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i112.i, i8 %lo.0.i) #10, !srcloc !161
  br label %set_vclk.exit

if.else69.i:                                      ; preds = %251
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 8
  %add.ptr.i.i616 = getelementptr i8, ptr %259, i32 17352
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i616, i8 %lo.0.i) #10, !srcloc !161
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 8
  %add.ptr.i113.i = getelementptr i8, ptr %261, i32 17353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113.i, i8 %or56.i) #10, !srcloc !161
  br label %set_vclk.exit

set_vclk.exit:                                    ; preds = %if.else69.i, %if.then67.i
  %262 = or i8 %tmp.18, 18
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i617 = getelementptr i8, ptr %264, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i617, i8 15) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i618 = getelementptr i8, ptr %264, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i618, i8 %262) #10, !srcloc !161
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i619 = getelementptr i8, ptr %266, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i619, i8 5) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i620 = getelementptr i8, ptr %266, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i620, i8 64) #10, !srcloc !161
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i621 = getelementptr i8, ptr %268, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i621, i8 6) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i622 = getelementptr i8, ptr %268, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i622, i8 5) #10, !srcloc !161
  %269 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i623 = getelementptr i8, ptr %270, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i623, i8 7) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i624 = getelementptr i8, ptr %270, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i624, i8 15) #10, !srcloc !161
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %1, align 8
  %add.ptr.i625 = getelementptr i8, ptr %272, i32 986
  %273 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i625) #10, !srcloc !162
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i626 = getelementptr i8, ptr %275, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i626, i8 16) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i626, i8 65) #10, !srcloc !161
  %276 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %1, align 8
  %add.ptr.i627 = getelementptr i8, ptr %277, i32 986
  %278 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i627) #10, !srcloc !162
  %279 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i628 = getelementptr i8, ptr %280, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i628, i8 18) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i628, i8 15) #10, !srcloc !161
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 8
  %add.ptr.i629 = getelementptr i8, ptr %282, i32 986
  %283 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i629) #10, !srcloc !162
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i630 = getelementptr i8, ptr %285, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i630, i8 19) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i630, i8 0) #10, !srcloc !161
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %set_vclk.exit
  %tmp.19661 = phi i8 [ 0, %set_vclk.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %286 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %1, align 8
  %add.ptr.i631 = getelementptr i8, ptr %287, i32 986
  %288 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i631) #10, !srcloc !162
  %289 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i632 = getelementptr i8, ptr %290, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i632, i8 %tmp.19661) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i632, i8 %tmp.19661) #10, !srcloc !161
  %inc = add nuw nsw i8 %tmp.19661, 1
  %cmp285 = icmp ult i8 %tmp.19661, 15
  br i1 %cmp285, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %291 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %292, i32 986
  %293 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !162
  %294 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %1, align 8
  %add.ptr.i633 = getelementptr i8, ptr %295, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i633, i8 32) #10, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %296 = icmp ult i32 %175, 4
  %switch.shiftamt663 = shl i32 %175, 3
  %switch.downshift664 = lshr i32 -791662592, %switch.shiftamt663
  %switch.masked665 = trunc i32 %switch.downshift664 to i8
  %tmp.20 = select i1 %296, i8 %switch.masked665, i8 16
  %297 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %1, align 8
  %add.ptr.i634 = getelementptr i8, ptr %298, i32 968
  %299 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i634) #10, !srcloc !162
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %1, align 8
  %add.ptr.i635 = getelementptr i8, ptr %301, i32 966
  %302 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i635) #10, !srcloc !162
  %303 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %1, align 8
  %add.ptr.i636 = getelementptr i8, ptr %304, i32 966
  %305 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i636) #10, !srcloc !162
  %306 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %1, align 8
  %add.ptr.i637 = getelementptr i8, ptr %307, i32 966
  %308 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i637) #10, !srcloc !162
  %309 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %1, align 8
  %add.ptr.i638 = getelementptr i8, ptr %310, i32 966
  %311 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i638) #10, !srcloc !162
  %312 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %1, align 8
  %add.ptr.i639 = getelementptr i8, ptr %313, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i639, i8 %tmp.20) #10, !srcloc !161
  %314 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %1, align 8
  %add.ptr.i640 = getelementptr i8, ptr %315, i32 968
  %316 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i640) #10, !srcloc !162
  %317 = ptrtoint ptr %flatpanel to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %flatpanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool301.not = icmp eq i32 %318, 0
  br i1 %tobool301.not, label %for.end.if.end305_crit_edge, label %if.then302

for.end.if.end305_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

if.then302:                                       ; preds = %for.end
  %319 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %yres, align 4
  %321 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i641 = getelementptr i8, ptr %322, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i641, i8 49) #10, !srcloc !161
  %add.ptr.i2.i.i.i642 = getelementptr i8, ptr %322, i32 975
  %323 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i.i642) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %324 = and i8 %323, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %320)
  %cmp.i643 = icmp sgt i32 %320, 1024
  br i1 %cmp.i643, label %if.then.i644, label %if.else.i646

if.then.i644:                                     ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i8 %324, 80
  br label %set_number_of_lines.exit

if.else.i646:                                     ; preds = %if.then302
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %320)
  %cmp2.i645 = icmp sgt i32 %320, 768
  br i1 %cmp2.i645, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %if.else.i646
  call void @__sanitizer_cov_trace_pc() #12
  %or5.i = or i8 %324, 48
  br label %set_number_of_lines.exit

if.else6.i:                                       ; preds = %if.else.i646
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %320)
  %cmp7.i = icmp sgt i32 %320, 600
  br i1 %cmp7.i, label %if.then9.i, label %if.else11.i

if.then9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  %or10.i = or i8 %324, 32
  br label %set_number_of_lines.exit

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %320)
  %cmp12.i647 = icmp sgt i32 %320, 480
  %or15.i = or i8 %324, 16
  %spec.select.i648 = select i1 %cmp12.i647, i8 %or15.i, i8 %324
  br label %set_number_of_lines.exit

set_number_of_lines.exit:                         ; preds = %if.else11.i, %if.then9.i, %if.then4.i, %if.then.i644
  %tmp.0.i = phi i8 [ %or.i, %if.then.i644 ], [ %or5.i, %if.then4.i ], [ %or10.i, %if.then9.i ], [ %spec.select.i648, %if.else11.i ]
  %325 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i28.i = getelementptr i8, ptr %326, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i28.i, i8 49) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i29.i = getelementptr i8, ptr %326, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i29.i, i8 %tmp.0.i) #10, !srcloc !161
  br label %if.end305

if.end305:                                        ; preds = %set_number_of_lines.exit, %for.end.if.end305_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %327 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %xres_virtual, align 4
  %mul307 = mul i32 %328, %3
  %div308513 = lshr i32 %mul307, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %329 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %div308513, ptr %line_length, align 4
  %div311514 = lshr i32 %mul307, 6
  %conv.i = trunc i32 %div311514 to i8
  %330 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i649 = getelementptr i8, ptr %331, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i649, i8 19) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i.i650 = getelementptr i8, ptr %331, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i.i650, i8 %conv.i) #10, !srcloc !161
  %332 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %chip_id, align 4
  %334 = zext i32 %333 to i64
  call void @__sanitizer_cov_trace_switch(i64 %334, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %333, label %if.else.i655 [
    i32 37952, label %if.end305.if.then.i652_crit_edge
    i32 37664, label %if.end305.if.then.i652_crit_edge703
  ]

if.end305.if.then.i652_crit_edge703:              ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i652

if.end305.if.then.i652_crit_edge:                 ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i652

if.then.i652:                                     ; preds = %if.end305.if.then.i652_crit_edge, %if.end305.if.then.i652_crit_edge703
  %335 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i24.i = getelementptr i8, ptr %336, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i24.i, i8 41) #10, !srcloc !161
  %add.ptr.i2.i.i25.i = getelementptr i8, ptr %336, i32 981
  %337 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i25.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %338 = and i8 %337, -17
  %and7.i = lshr i32 %mul307, 10
  %339 = trunc i32 %and7.i to i8
  %340 = and i8 %339, 16
  %conv8.i = or i8 %338, %340
  %341 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i26.i = getelementptr i8, ptr %342, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i26.i, i8 41) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i27.i = getelementptr i8, ptr %342, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i27.i, i8 %conv8.i) #10, !srcloc !161
  br label %set_lwidth.exit

if.else.i655:                                     ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  %343 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i28.i653 = getelementptr i8, ptr %344, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i28.i653, i8 41) #10, !srcloc !161
  %add.ptr.i2.i.i29.i654 = getelementptr i8, ptr %344, i32 981
  %345 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i29.i654) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %346 = and i8 %345, -49
  %and12.i = lshr i32 %mul307, 10
  %347 = trunc i32 %and12.i to i8
  %348 = and i8 %347, 48
  %conv15.i = or i8 %346, %348
  %349 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i30.i = getelementptr i8, ptr %350, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i30.i, i8 41) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i31.i = getelementptr i8, ptr %350, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i31.i, i8 %conv15.i) #10, !srcloc !161
  br label %set_lwidth.exit

set_lwidth.exit:                                  ; preds = %if.else.i655, %if.then.i652
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %351 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %flags, align 4
  %and312 = and i32 %352, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %if.then314, label %set_lwidth.exit.if.end317_crit_edge

set_lwidth.exit.if.end317_crit_edge:              ; preds = %set_lwidth.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317

if.then314:                                       ; preds = %set_lwidth.exit
  call void @__sanitizer_cov_trace_pc() #12
  %init_accel = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 4
  %353 = ptrtoint ptr %init_accel to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %init_accel, align 4
  %355 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %xres_virtual, align 4
  tail call void %354(ptr noundef %1, i32 noundef %356, i32 noundef %3) #10
  br label %if.end317

if.end317:                                        ; preds = %if.then314, %set_lwidth.exit.if.end317_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp318 = icmp eq i32 %3, 8
  %cond320 = select i1 %cmp318, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %357 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %cond320, ptr %visual, align 4
  %cond324 = select i1 %cmp318, i32 256, i32 16
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %358 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %cond324, ptr %len, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %regno)
  %cmp.not = icmp ugt i32 %5, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp2 = icmp eq i32 %1, 8
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -1) #10, !srcloc !161
  %conv = trunc i32 %regno to i8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr.i64 = getelementptr i8, ptr %9, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i64, i8 %conv) #10, !srcloc !161
  %shr = lshr i32 %red, 10
  %conv4 = trunc i32 %shr to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %add.ptr.i65 = getelementptr i8, ptr %11, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i65, i8 %conv4) #10, !srcloc !161
  %shr5 = lshr i32 %green, 10
  %conv6 = trunc i32 %shr5 to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr.i66 = getelementptr i8, ptr %13, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i66, i8 %conv6) #10, !srcloc !161
  %shr7 = lshr i32 %blue, 10
  %conv8 = trunc i32 %shr7 to i8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %add.ptr.i67 = getelementptr i8, ptr %15, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i67, i8 %conv8) #10, !srcloc !161
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp9 = icmp ult i32 %regno, 16
  br i1 %cmp9, label %if.then11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.else
  %16 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %if.then11.cleanup_crit_edge [
    i32 16, label %if.then14
    i32 32, label %if.then24
  ]

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %red, 63488
  %and15 = lshr i32 %green, 5
  %shr16 = and i32 %and15, 2016
  %or = or i32 %shr16, %and
  %and17 = lshr i32 %blue, 11
  %shr18 = and i32 %and17, 31
  %or19 = or i32 %or, %shr18
  %or20 = mul nuw i32 %or19, 65537
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %17 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %regno
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or20, ptr %arrayidx, align 4
  br label %cleanup

if.then24:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %and25 = shl i32 %transp, 16
  %shl26 = and i32 %and25, -16777216
  %and27 = shl i32 %red, 8
  %shl28 = and i32 %and27, 16711680
  %and30 = and i32 %green, 65280
  %and32 = lshr i32 %blue, 8
  %shr33 = and i32 %and32, 255
  %or29 = or i32 %and30, %shl28
  %or31 = or i32 %or29, %shr33
  %or34 = or i32 %or31, %shl26
  %pseudo_palette35 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %20 = ptrtoint ptr %pseudo_palette35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pseudo_palette35, align 4
  %arrayidx36 = getelementptr i32, ptr %21, i32 %regno
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or34, ptr %arrayidx36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.then14, %if.then11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.then14 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %flatpanel = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flatpanel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flatpanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 33736
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 4) #10, !srcloc !161
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i51 = getelementptr i8, ptr %7, i32 33734
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i51) #10, !srcloc !162
  %9 = and i8 %8, -4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 35) #10, !srcloc !161
  %add.ptr.i2.i.i = getelementptr i8, ptr %11, i32 975
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %13 = and i8 %12, -4
  %14 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %blank_mode, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge56
    i32 3, label %sw.bb12
    i32 2, label %sw.bb19
    i32 4, label %sw.bb26
  ]

if.end.sw.bb_crit_edge56:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge56
  %15 = or i8 %8, 3
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = or i8 %9, 2
  %17 = or i8 %13, 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i8 %9, 2
  %19 = or i8 %13, 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = or i8 %12, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb19, %sw.bb12, %sw.bb, %if.end.sw.epilog_crit_edge
  %PMCont.0 = phi i8 [ %9, %if.end.sw.epilog_crit_edge ], [ %9, %sw.bb26 ], [ %18, %sw.bb19 ], [ %16, %sw.bb12 ], [ %15, %sw.bb ]
  %DPMSCont.0 = phi i8 [ %13, %if.end.sw.epilog_crit_edge ], [ %20, %sw.bb26 ], [ %19, %sw.bb19 ], [ %17, %sw.bb12 ], [ %13, %sw.bb ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i52 = getelementptr i8, ptr %22, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i52, i8 35) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i53 = getelementptr i8, ptr %22, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i53, i8 %DPMSCont.0) #10, !srcloc !161
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr.i54 = getelementptr i8, ptr %24, i32 33736
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i54, i8 4) #10, !srcloc !161
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %add.ptr.i55 = getelementptr i8, ptr %26, i32 33734
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i55, i8 %PMCont.0) #10, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank_mode)
  %cmp = icmp eq i32 %blank_mode, 1
  %cond = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %7, %5
  %add = add i32 %mul, %3
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %mul4 = mul i32 %add, %9
  %div8 = lshr i32 %mul4, 5
  %conv.i = trunc i32 %div8 to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 13) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %11, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i.i, i8 %conv.i) #10, !srcloc !161
  %and1.i = lshr i32 %mul4, 13
  %conv2.i = trunc i32 %and1.i to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i28.i = getelementptr i8, ptr %13, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i28.i, i8 12) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i29.i = getelementptr i8, ptr %13, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i29.i, i8 %conv2.i) #10, !srcloc !161
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i30.i = getelementptr i8, ptr %15, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i30.i, i8 30) #10, !srcloc !161
  %add.ptr.i2.i.i31.i = getelementptr i8, ptr %15, i32 981
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i31.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %17 = and i8 %16, -33
  %and7.i = lshr i32 %mul4, 16
  %18 = trunc i32 %and7.i to i8
  %19 = and i8 %18, 32
  %conv9.i = or i8 %17, %19
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i32.i = getelementptr i8, ptr %21, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i32.i, i8 30) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i33.i = getelementptr i8, ptr %21, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i33.i, i8 %conv9.i) #10, !srcloc !161
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i34.i = getelementptr i8, ptr %23, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i34.i, i8 39) #10, !srcloc !161
  %add.ptr.i2.i.i35.i = getelementptr i8, ptr %23, i32 981
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i35.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %25 = and i8 %24, -8
  %and15.i = lshr i32 %mul4, 22
  %26 = trunc i32 %and15.i to i8
  %27 = and i8 %26, 7
  %conv18.i = or i8 %25, %27
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i36.i = getelementptr i8, ptr %29, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i36.i, i8 39) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i.i37.i = getelementptr i8, ptr %29, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.i37.i, i8 %conv18.i) #10, !srcloc !161
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_fillrect(ptr noundef %info, ptr noundef %fr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %fr) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %fr, i32 0, i32 4
  %6 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %color, align 4
  %shl = shl i32 %7, 8
  %or = or i32 %shl, %7
  %shl3 = shl i32 %or, 16
  %or4 = or i32 %shl3, %or
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette, align 4
  %color5 = getelementptr inbounds %struct.fb_fillrect, ptr %fr, i32 0, i32 4
  %10 = ptrtoint ptr %color5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %color5, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %col.0 = phi i32 [ %or4, %if.then2 ], [ %13, %if.else ]
  %wait_engine = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %wait_engine to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wait_engine, align 8
  tail call void %15(ptr noundef %1) #10
  %fill_rect = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %fill_rect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fill_rect, align 4
  %18 = ptrtoint ptr %fr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fr, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %fr, i32 0, i32 1
  %20 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %fr, i32 0, i32 2
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %fr, i32 0, i32 3
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %fr, i32 0, i32 5
  %26 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rop, align 4
  tail call void %17(ptr noundef %1, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %col.0, i32 noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_copyarea(ptr noundef %info, ptr noundef %ca) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %ca) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %wait_engine = getelementptr inbounds %struct.tridentfb_par, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %wait_engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait_engine, align 8
  tail call void %5(ptr noundef %3) #10
  %copy_rect = getelementptr inbounds %struct.tridentfb_par, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %copy_rect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %copy_rect, align 8
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %ca, i32 0, i32 4
  %8 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sx, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %ca, i32 0, i32 5
  %10 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sy, align 4
  %12 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ca, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %ca, i32 0, i32 1
  %14 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %ca, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %ca, i32 0, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_imageblit(ptr noundef %info, ptr noundef %img) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %depth = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 6
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %img) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp3 = icmp eq i32 %7, 8
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 4
  %8 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fg_color, align 4
  %shl = shl i32 %9, 8
  %or = or i32 %shl, %9
  %shl6 = shl i32 %or, 16
  %or7 = or i32 %shl6, %or
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 5
  %10 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bg_color, align 4
  %shl8 = shl i32 %11, 8
  %or9 = or i32 %shl8, %11
  %shl10 = shl i32 %or9, 16
  %or11 = or i32 %shl10, %or9
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pseudo_palette, align 4
  %fg_color12 = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 4
  %14 = ptrtoint ptr %fg_color12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fg_color12, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %bg_color14 = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 5
  %18 = ptrtoint ptr %bg_color14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bg_color14, align 4
  %arrayidx15 = getelementptr i32, ptr %13, i32 %19
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then5
  %col.0 = phi i32 [ %or7, %if.then5 ], [ %17, %if.else ]
  %bgcol.0 = phi i32 [ %or11, %if.then5 ], [ %21, %if.else ]
  %wait_engine = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %wait_engine to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wait_engine, align 8
  tail call void %23(ptr noundef %1) #10
  %image_blit = getelementptr inbounds %struct.tridentfb_par, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %image_blit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %image_blit, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 7
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %img, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 1
  %30 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 2
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %img, i32 0, i32 3
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  tail call void %25(ptr noundef %1, ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %col.0, i32 noundef %bgcol.0) #10
  br label %cleanup

if.else20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %img) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then18, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_sync(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %wait_engine = getelementptr inbounds %struct.tridentfb_par, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %wait_engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait_engine, align 8
  tail call void %5(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_ddc_setsda_tgui(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %3 = and i8 %2, 4
  %4 = or i8 %3, 8
  %reg.0 = select i1 %tobool.not, i8 %4, i8 %3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i11 = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i11, i8 55) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i12 = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i12, i8 %reg.0) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_ddc_setscl_tgui(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %3 = and i8 %2, 8
  %4 = or i8 %3, 4
  %reg.0 = select i1 %tobool.not, i8 %4, i8 %3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i11 = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i11, i8 55) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i12 = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i12, i8 %reg.0) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_ddc_getsda_tgui(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_ddc_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %3 = and i8 %2, 2
  %4 = or i8 %3, 8
  %reg.0 = select i1 %tobool.not, i8 %4, i8 %3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i11 = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i11, i8 55) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i12 = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i12, i8 %reg.0) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tridentfb_ddc_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %3 = and i8 %2, 8
  %4 = or i8 %3, 2
  %reg.0 = select i1 %tobool.not, i8 %3, i8 %4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i11 = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i11, i8 55) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i2.i12 = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i12, i8 %reg.0) #10, !srcloc !161
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_ddc_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tridentfb_ddc_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 55) #10, !srcloc !161
  %add.ptr.i2.i = getelementptr i8, ptr %1, i32 981
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %3 = lshr i8 %2, 6
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tridentfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.23) #10
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.24, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @noaccel, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(3) @.str.25, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @fp, align 4
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(4) @.str.26, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @fp, align 4
  br label %while.cond.backedge

if.else15:                                        ; preds = %if.else11
  %call16 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(5) @.str.27, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call3, i32 4
  %call19 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #10
  store i32 %call19, ptr @bpp, align 4
  br label %while.cond.backedge

if.else20:                                        ; preds = %if.else15
  %call21 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.28, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @center, align 4
  br label %while.cond.backedge

if.else24:                                        ; preds = %if.else20
  %call25 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.29, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @stretch, align 4
  br label %while.cond.backedge

if.else28:                                        ; preds = %if.else24
  %call29 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.30, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr32 = getelementptr i8, ptr %call3, i32 8
  %call33 = call i32 @simple_strtoul(ptr noundef %add.ptr32, ptr noundef null, i32 noundef 0) #10
  store i32 %call33, ptr @memsize, align 4
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else28
  %call35 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.31, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr38 = getelementptr i8, ptr %call3, i32 8
  %call39 = call i32 @simple_strtoul(ptr noundef %add.ptr38, ptr noundef null, i32 noundef 0) #10
  store i32 %call39, ptr @memdiff, align 4
  br label %while.cond.backedge

if.else40:                                        ; preds = %if.else34
  %call41 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.32, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr44 = getelementptr i8, ptr %call3, i32 8
  %call45 = call i32 @simple_strtoul(ptr noundef %add.ptr44, ptr noundef null, i32 noundef 0) #10
  store i32 %call45, ptr @nativex, align 4
  br label %while.cond.backedge

if.else46:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else46, %if.then43, %if.then37, %if.then31, %if.then27, %if.then23, %if.then18, %if.then14, %if.then10, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.23) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !89, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__param_mode_option, !1, !"__param_mode_option", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/tridentfb.c", i32 78, i32 1}
!2 = !{ptr @__UNIQUE_ID_mode_optiontype305, !1, !"__UNIQUE_ID_mode_optiontype305", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mode_option306, !4, !"__UNIQUE_ID_mode_option306", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/tridentfb.c", i32 79, i32 1}
!5 = !{ptr @__param_mode, !6, !"__param_mode", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/tridentfb.c", i32 80, i32 1}
!7 = !{ptr @__UNIQUE_ID_modetype307, !6, !"__UNIQUE_ID_modetype307", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mode308, !9, !"__UNIQUE_ID_mode308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/tridentfb.c", i32 81, i32 1}
!10 = !{ptr @__param_bpp, !11, !"__param_bpp", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/tridentfb.c", i32 82, i32 1}
!12 = !{ptr @__UNIQUE_ID_bpptype309, !11, !"__UNIQUE_ID_bpptype309", i1 false, i1 false}
!13 = !{ptr @__param_center, !14, !"__param_center", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/tridentfb.c", i32 83, i32 1}
!15 = !{ptr @__UNIQUE_ID_centertype310, !14, !"__UNIQUE_ID_centertype310", i1 false, i1 false}
!16 = !{ptr @__param_stretch, !17, !"__param_stretch", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/tridentfb.c", i32 84, i32 1}
!18 = !{ptr @__UNIQUE_ID_stretchtype311, !17, !"__UNIQUE_ID_stretchtype311", i1 false, i1 false}
!19 = !{ptr @__param_noaccel, !20, !"__param_noaccel", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/tridentfb.c", i32 85, i32 1}
!21 = !{ptr @__UNIQUE_ID_noacceltype312, !20, !"__UNIQUE_ID_noacceltype312", i1 false, i1 false}
!22 = !{ptr @__param_memsize, !23, !"__param_memsize", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/tridentfb.c", i32 86, i32 1}
!24 = !{ptr @__UNIQUE_ID_memsizetype313, !23, !"__UNIQUE_ID_memsizetype313", i1 false, i1 false}
!25 = !{ptr @__param_memdiff, !26, !"__param_memdiff", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/tridentfb.c", i32 87, i32 1}
!27 = !{ptr @__UNIQUE_ID_memdifftype314, !26, !"__UNIQUE_ID_memdifftype314", i1 false, i1 false}
!28 = !{ptr @__param_nativex, !29, !"__param_nativex", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/tridentfb.c", i32 88, i32 1}
!30 = !{ptr @__UNIQUE_ID_nativextype315, !29, !"__UNIQUE_ID_nativextype315", i1 false, i1 false}
!31 = !{ptr @__param_fp, !32, !"__param_fp", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/tridentfb.c", i32 89, i32 1}
!33 = !{ptr @__UNIQUE_ID_fptype316, !32, !"__UNIQUE_ID_fptype316", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_fp317, !35, !"__UNIQUE_ID_fp317", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/tridentfb.c", i32 90, i32 1}
!36 = !{ptr @__param_crt, !37, !"__param_crt", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/tridentfb.c", i32 91, i32 1}
!38 = !{ptr @__UNIQUE_ID_crttype318, !37, !"__UNIQUE_ID_crttype318", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_crt319, !40, !"__UNIQUE_ID_crt319", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/tridentfb.c", i32 92, i32 1}
!41 = !{ptr @__initcall__kmod_tridentfb__320_1828_tridentfb_init6, !42, !"__initcall__kmod_tridentfb__320_1828_tridentfb_init6", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1828, i32 1}
!43 = !{ptr @__exitcall_tridentfb_exit, !44, !"__exitcall_tridentfb_exit", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1829, i32 1}
!45 = !{ptr @__UNIQUE_ID_author321, !46, !"__UNIQUE_ID_author321", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1831, i32 1}
!47 = !{ptr @__UNIQUE_ID_description322, !48, !"__UNIQUE_ID_description322", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1832, i32 1}
!49 = !{ptr @__UNIQUE_ID_file323, !50, !"__UNIQUE_ID_file323", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1833, i32 1}
!51 = !{ptr @__UNIQUE_ID_license324, !50, !"__UNIQUE_ID_license324", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_alias325, !53, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1834, i32 1}
!54 = !{ptr @mode_option, !55, !"mode_option", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/tridentfb.c", i32 63, i32 14}
!56 = !{ptr @noaccel, !57, !"noaccel", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/tridentfb.c", i32 66, i32 12}
!58 = !{ptr @center, !59, !"center", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/tridentfb.c", i32 68, i32 12}
!60 = !{ptr @stretch, !61, !"stretch", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/tridentfb.c", i32 69, i32 12}
!62 = !{ptr @fp, !63, !"fp", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/tridentfb.c", i32 71, i32 12}
!64 = !{ptr @crt, !65, !"crt", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/tridentfb.c", i32 72, i32 12}
!66 = !{ptr @memsize, !67, !"memsize", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/tridentfb.c", i32 74, i32 12}
!68 = !{ptr @memdiff, !69, !"memdiff", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/tridentfb.c", i32 75, i32 12}
!70 = !{ptr @nativex, !71, !"nativex", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/tridentfb.c", i32 76, i32 12}
!72 = !{ptr @__param_str_mode_option, !1, !"__param_str_mode_option", i1 false, i1 false}
!73 = !{ptr @__param_str_mode, !6, !"__param_str_mode", i1 false, i1 false}
!74 = !{ptr @__param_str_bpp, !11, !"__param_str_bpp", i1 false, i1 false}
!75 = !{ptr @bpp, !76, !"bpp", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/tridentfb.c", i32 64, i32 12}
!77 = !{ptr @__param_str_center, !14, !"__param_str_center", i1 false, i1 false}
!78 = !{ptr @__param_str_stretch, !17, !"__param_str_stretch", i1 false, i1 false}
!79 = !{ptr @__param_str_noaccel, !20, !"__param_str_noaccel", i1 false, i1 false}
!80 = !{ptr @__param_str_memsize, !23, !"__param_str_memsize", i1 false, i1 false}
!81 = !{ptr @__param_str_memdiff, !26, !"__param_str_memdiff", i1 false, i1 false}
!82 = !{ptr @__param_str_nativex, !29, !"__param_str_nativex", i1 false, i1 false}
!83 = !{ptr @__param_str_fp, !32, !"__param_str_fp", i1 false, i1 false}
!84 = !{ptr @__param_str_crt, !37, !"__param_str_crt", i1 false, i1 false}
!85 = !{ptr @.str, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1766, i32 10}
!87 = !{ptr @tridentfb_pci_driver, !88, !"tridentfb_pci_driver", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1765, i32 26}
!89 = !{ptr @trident_devices, !90, !"trident_devices", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1738, i32 35}
!91 = !{ptr @.str.1, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1630, i32 3}
!93 = !{ptr @.str.2, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.3, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @trident_pci_probe._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @trident_pci_probe._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.5, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1643, i32 5}
!99 = !{ptr @.str.6, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.7, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @trident_pci_probe._entry.4, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @trident_pci_probe._entry_ptr.8, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.9, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1664, i32 17}
!105 = !{ptr @.str.11, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1674, i32 4}
!107 = !{ptr @trident_pci_probe._entry.10, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @trident_pci_probe._entry_ptr.12, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.14, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1692, i32 3}
!111 = !{ptr @trident_pci_probe._entry.13, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @trident_pci_probe._entry_ptr.15, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.17, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1697, i32 2}
!115 = !{ptr @trident_pci_probe._entry.16, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @trident_pci_probe._entry_ptr.18, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @tridentfb_fix, !118, !"tridentfb_fix", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/tridentfb.c", i32 52, i32 33}
!119 = !{ptr @.str.19, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/tridentfb.c", i32 985, i32 2}
!121 = !{ptr @.str.20, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @get_memsize._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @get_memsize._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.21, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/tridentfb.c", i32 787, i32 2}
!126 = !{ptr @.str.22, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @get_nativex._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @get_nativex._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @tridentfb_ops, !130, !"tridentfb_ops", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1446, i32 28}
!131 = !{ptr @.str.23, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1783, i32 33}
!133 = !{ptr @.str.24, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1786, i32 21}
!135 = !{ptr @.str.25, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1788, i32 26}
!137 = !{ptr @.str.26, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1790, i32 26}
!139 = !{ptr @.str.27, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1792, i32 26}
!141 = !{ptr @.str.28, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1794, i32 26}
!143 = !{ptr @.str.29, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1796, i32 26}
!145 = !{ptr @.str.30, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1798, i32 26}
!147 = !{ptr @.str.31, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1800, i32 26}
!149 = !{ptr @.str.32, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/video/fbdev/tridentfb.c", i32 1802, i32 26}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2152294333}
!161 = !{i64 4758277}
!162 = !{i64 4758672}
!163 = !{i64 2152292348}
!164 = !{i64 2156253540}
!165 = !{i64 2156253160}
!166 = !{i8 0, i8 2}
!167 = !{i64 4758474}
!168 = !{i64 2156308648}
!169 = !{i64 2156308490}
!170 = !{i64 4758892}
!171 = !{i64 2156307970}
!172 = !{i64 2156307812}
!173 = !{i64 2156309126}
!174 = !{i64 2156308968}
!175 = !{i64 4757854}
!176 = !{i64 2156310771}
!177 = !{i64 2156311562}
!178 = !{i64 2156311385}
