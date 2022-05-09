; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/carminefb.c_pt.bc'
source_filename = "../drivers/video/fbdev/carminefb.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.carmine_resolution = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.carmine_hw = type { ptr, ptr, [2 x ptr] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.carmine_fb = type { ptr, ptr, i32, i32, i32, ptr, [16 x i32] }

@__param_str_fb_mode = internal constant [18 x i8] c"carminefb.fb_mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fb_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fb_mode = internal constant %struct.kernel_param { ptr @__param_str_fb_mode, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @fb_mode } }, section "__param", align 4
@__UNIQUE_ID_fb_modetype305 = internal constant [32 x i8] c"carminefb.parmtype=fb_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_fb_mode306 = internal constant [54 x i8] c"carminefb.parm=fb_mode:Initial video mode as integer.\00", section ".modinfo", align 1
@__param_str_fb_mode_str = internal constant [22 x i8] c"carminefb.fb_mode_str\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fb_mode_str = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_fb_mode_str = internal constant %struct.kernel_param { ptr @__param_str_fb_mode_str, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @fb_mode_str } }, section "__param", align 4
@__UNIQUE_ID_fb_mode_strtype307 = internal constant [37 x i8] c"carminefb.parmtype=fb_mode_str:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fb_mode_str308 = internal constant [61 x i8] c"carminefb.parm=fb_mode_str:Initial video mode in characters.\00", section ".modinfo", align 1
@__param_str_fb_displays = internal constant [22 x i8] c"carminefb.fb_displays\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fb_displays = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_fb_displays = internal constant %struct.kernel_param { ptr @__param_str_fb_displays, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @fb_displays } }, section "__param", align 4
@__UNIQUE_ID_fb_displaystype309 = internal constant [35 x i8] c"carminefb.parmtype=fb_displays:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fb_displays310 = internal constant [61 x i8] c"carminefb.parm=fb_displays:Bit mode, which displays are used\00", section ".modinfo", align 1
@__initcall__kmod_carminefb__311_779_carminefb_init6 = internal global ptr @carminefb_init, section ".initcall6.init", align 4
@carmine_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @carmine_devices, ptr @carminefb_probe, ptr @carminefb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_carminefb_cleanup = internal global ptr @carminefb_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [59 x i8] c"carminefb.author=Sebastian Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [75 x i8] c"carminefb.description=Framebuffer driver for Fujitsu Carmine based devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [45 x i8] c"carminefb.file=drivers/video/fbdev/carminefb\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [25 x i8] c"carminefb.license=GPL v2\00", section ".modinfo", align 1
@carminefb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013If you disable both displays than you don't need the driver at all\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"carminefb_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/video/fbdev/carminefb.c\00", [32 x i8] zeroinitializer }, align 32
@carminefb_init._entry_ptr = internal global ptr @carminefb_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"carminefb\00", [22 x i8] zeroinitializer }, align 32
@carmine_devices = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4303, i32 8235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@carminefb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Carmine\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"carminefb regbase\00", [46 x i8] zeroinitializer }, align 32
@carminefb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013carminefb: Can't reserve regbase.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"carminefb_probe\00", [16 x i8] zeroinitializer }, align 32
@carminefb_probe._entry_ptr = internal global ptr @carminefb_probe._entry, section ".printk_index", align 4
@carminefb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013carminefb: Can't remap %s register.\0A\00", [57 x i8] zeroinitializer }, align 32
@carminefb_probe._entry_ptr.9 = internal global ptr @carminefb_probe._entry.7, section ".printk_index", align 4
@carminefb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013carminefb: Memory bar is only %d bytes, %d are required.\00", [37 x i8] zeroinitializer }, align 32
@carminefb_probe._entry_ptr.12 = internal global ptr @carminefb_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"carminefb smem\00", [17 x i8] zeroinitializer }, align 32
@carminefb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013carminefb: Can't reserve smem.\0A\00", [62 x i8] zeroinitializer }, align 32
@carminefb_probe._entry_ptr.16 = internal global ptr @carminefb_probe._entry.14, section ".printk_index", align 4
@carminefb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013carmine: Can't ioremap smem area.\0A\00", [59 x i8] zeroinitializer }, align 32
@carminefb_probe._entry_ptr.19 = internal global ptr @carminefb_probe._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013DRAM init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_hardware\00", [18 x i8] zeroinitializer }, align 32
@init_hardware._entry_ptr = internal global ptr @init_hardware._entry, section ".printk_index", align 4
@carminefb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @carmine_check_var, ptr @carmine_set_par, ptr @carmine_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@carmine_modedb = internal constant { [2 x %struct.fb_videomode], [48 x i8] } { [2 x %struct.fb_videomode] [%struct.fb_videomode { ptr @.str.24, i32 0, i32 640, i32 480, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.25, i32 0, i32 800, i32 600, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@alloc_carmine_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc_carmine_fb\00", [47 x i8] zeroinitializer }, align 32
@alloc_carmine_fb._entry_ptr = internal global ptr @alloc_carmine_fb._entry, section ".printk_index", align 4
@car_modes = internal global { [2 x %struct.carmine_resolution], [56 x i8] } { [2 x %struct.carmine_resolution] [%struct.carmine_resolution { i32 800, i32 672, i32 96, i32 640, i32 525, i32 490, i32 2, i32 480, i32 5120 }, %struct.carmine_resolution { i32 1060, i32 864, i32 72, i32 800, i32 628, i32 601, i32 2, i32 600, i32 3328 }], [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"640x480\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"800x600\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.26 = private unnamed_addr constant [8 x i8] c"fb_mode\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 36, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"fb_mode_str\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 40, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"fb_displays\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 50, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"carmine_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 762, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 773, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 777, i32 9 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"carmine_devices\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 754, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"carminefb_fix\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 82, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 629, i32 7 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 632, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 639, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 655, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 661, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 663, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 670, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 498, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"carminefb_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 530, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"carmine_modedb\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 89, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 589, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"car_modes\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 101, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 91, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [35 x i8] c"../drivers/video/fbdev/carminefb.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 95, i32 12 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_fb_displays310, ptr @__UNIQUE_ID_fb_displaystype309, ptr @__UNIQUE_ID_fb_mode306, ptr @__UNIQUE_ID_fb_mode_str308, ptr @__UNIQUE_ID_fb_mode_strtype307, ptr @__UNIQUE_ID_fb_modetype305, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_carminefb_cleanup, ptr @__initcall__kmod_carminefb__311_779_carminefb_init6, ptr @__param_fb_displays, ptr @__param_fb_mode, ptr @__param_fb_mode_str, ptr @alloc_carmine_fb._entry, ptr @alloc_carmine_fb._entry_ptr, ptr @carminefb_cleanup, ptr @carminefb_init._entry, ptr @carminefb_init._entry_ptr, ptr @carminefb_probe._entry, ptr @carminefb_probe._entry.10, ptr @carminefb_probe._entry.14, ptr @carminefb_probe._entry.17, ptr @carminefb_probe._entry.7, ptr @carminefb_probe._entry_ptr, ptr @carminefb_probe._entry_ptr.12, ptr @carminefb_probe._entry_ptr.16, ptr @carminefb_probe._entry_ptr.19, ptr @carminefb_probe._entry_ptr.9, ptr @init_hardware._entry, ptr @init_hardware._entry_ptr, ptr @fb_mode, ptr @fb_mode_str, ptr @fb_displays, ptr @carmine_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @carmine_devices, ptr @carminefb_fix, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @carminefb_ops, ptr @carmine_modedb, ptr @.str.22, ptr @.str.23, ptr @car_modes, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_mode_str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_displays to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carmine_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carmine_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carminefb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carmine_modedb to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_carmine_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @car_modes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @carminefb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fb_displays, align 4
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @carmine_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @carminefb_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @carmine_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carminefb_probe(ptr noundef %dev, ptr nocapture noundef readnone %ent) #3 align 64 {
entry:
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !103
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.err_enable_pci_crit_edge, label %if.end5

if.end.err_enable_pci_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable_pci

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  store i32 %3, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 10), align 4
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end5.cond.end_crit_edge, label %cond.false

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end5.cond.end_crit_edge ]
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 11), align 4
  %call14 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond, ptr noundef nonnull @.str.4, i32 noundef 0) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.end18

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %err_free_hw

if.end18:                                         ; preds = %cond.end
  %8 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 10), align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 11), align 4
  %call19 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %9) #8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %call7.i.i, align 8
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @carminefb_fix) #11
  br label %err_free_reg_mmio

if.end28:                                         ; preds = %if.end18
  %arrayidx30 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx30, align 8
  store i32 %12, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 1), align 4
  %end34 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %13 = ptrtoint ptr %end34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp35 = icmp eq i32 %14, 0
  br i1 %cmp35, label %if.else.thread, label %cond.end46

if.else.thread:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 2), align 4
  br label %do.end54

cond.end46:                                       ; preds = %if.end28
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx30, align 8
  %sub44 = sub i32 %14, %16
  %add45 = add i32 %sub44, 1
  store i32 %add45, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840000, i32 %add45)
  %cmp48 = icmp ugt i32 %add45, 3840000
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #10
  store i32 3840000, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 2), align 4
  br label %if.end58

if.else:                                          ; preds = %cond.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840000, i32 %add45)
  %cmp50.not = icmp eq i32 %add45, 3840000
  br i1 %cmp50.not, label %if.else.if.end58_crit_edge, label %if.else.do.end54_crit_edge

if.else.do.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end54:                                         ; preds = %if.else.do.end54_crit_edge, %if.else.thread
  %cond47149152 = phi i32 [ 0, %if.else.thread ], [ %add45, %if.else.do.end54_crit_edge ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %cond47149152, i32 noundef 3840000) #11
  br label %err_unmap_vregs

if.end58:                                         ; preds = %if.else.if.end58_crit_edge, %if.then49
  %17 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 2), align 4
  %call59 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %17, ptr noundef nonnull @.str.13, i32 noundef 0) #8
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %err_unmap_vregs

if.end67:                                         ; preds = %if.end58
  %18 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 1), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 2), align 4
  %call68 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %19) #8
  %screen_mem = getelementptr inbounds %struct.carmine_hw, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %screen_mem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call68, ptr %screen_mem, align 4
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %do.end74, label %if.end77

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %err_reg_smem

if.end77:                                         ; preds = %if.end67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4194316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16580608) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %24, i32 1048832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %26, i32 1310976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %28, i32 4194320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 16777216) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %30, i32 4194320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i45.i = getelementptr i8, ptr %32, i32 3145764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 1426412805) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %34, i32 3145728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 -1023074047) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %36, i32 3145732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 8407367) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %38, i32 3145736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 573194752) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i49.i = getelementptr i8, ptr %40, i32 3145744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 251658240) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %42, i32 3145748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 1181111552) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %44, i32 3145740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 50339840) #8, !srcloc !105
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end77
  %loops.065.i = phi i32 [ 0, %if.end77 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %46, i32 3145740
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %48 = and i32 %47, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.end81, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #8
  %inc.i = add nuw nsw i32 %loops.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5000
  br i1 %exitcond.not.i, label %init_hardware.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

init_hardware.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %err_unmap_screen

if.end81:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %51, i32 3145728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 -1023074048) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %53, i32 3145740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 33562624) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i55.i = getelementptr i8, ptr %55, i32 1572868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 549454080) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i56.i = getelementptr i8, ptr %57, i32 163940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %59, i32 163948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %61, i32 262236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %63, i32 262240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %65, i32 262244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %67, i32 262248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i62.i = getelementptr i8, ptr %69, i32 262252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i63.i = getelementptr i8, ptr %71, i32 262256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 0) #8, !srcloc !105
  %72 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %info, align 4
  %73 = load i32, ptr @fb_displays, align 4
  %and = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %if.end81.if.end90_crit_edge, label %if.then83

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then83:                                        ; preds = %if.end81
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %add.ptr = getelementptr i8, ptr %75, i32 1048576
  %76 = ptrtoint ptr %screen_mem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %screen_mem, align 4
  %call86 = call fastcc i32 @alloc_carmine_fb(ptr noundef %add.ptr, ptr noundef %77, i32 noundef 0, ptr noundef %dev1, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then83.if.end90_crit_edge, label %if.then83.err_deinit_hw_crit_edge

if.then83.err_deinit_hw_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_deinit_hw

if.then83.if.end90_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.end90:                                         ; preds = %if.then83.if.end90_crit_edge, %if.end81.if.end90_crit_edge
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 4
  %fb = getelementptr inbounds %struct.carmine_hw, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %fb, align 8
  store ptr null, ptr %info, align 4
  %81 = load i32, ptr @fb_displays, align 4
  %and92 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end102_crit_edge, label %if.then94

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then94:                                        ; preds = %if.end90
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i, align 8
  %add.ptr96 = getelementptr i8, ptr %83, i32 1310720
  %84 = ptrtoint ptr %screen_mem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %screen_mem, align 4
  %call98 = call fastcc i32 @alloc_carmine_fb(ptr noundef %add.ptr96, ptr noundef %85, i32 noundef 1920000, ptr noundef %dev1, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then94.if.end102_crit_edge, label %err_cleanup_fb0

if.then94.if.end102_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.end102:                                        ; preds = %if.then94.if.end102_crit_edge, %if.end90.if.end102_crit_edge
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 4
  %arrayidx104 = getelementptr %struct.carmine_hw, ptr %call7.i.i, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %arrayidx104, align 4
  store ptr null, ptr %info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_cleanup_fb0:                                  ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fb, align 8
  tail call fastcc void @cleanup_fb_device(ptr noundef %91)
  br label %err_deinit_hw

err_deinit_hw:                                    ; preds = %err_cleanup_fb0, %if.then83.err_deinit_hw_crit_edge
  %ret.0 = phi i32 [ %call86, %if.then83.err_deinit_hw_crit_edge ], [ %call98, %err_cleanup_fb0 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %93, i32 4194316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !105
  br label %err_unmap_screen

err_unmap_screen:                                 ; preds = %err_deinit_hw, %init_hardware.exit
  %ret.1 = phi i32 [ -5, %init_hardware.exit ], [ %ret.0, %err_deinit_hw ]
  %94 = ptrtoint ptr %screen_mem to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %screen_mem, align 4
  tail call void @iounmap(ptr noundef %95) #8
  br label %err_reg_smem

err_reg_smem:                                     ; preds = %err_unmap_screen, %do.end74
  %ret.2 = phi i32 [ %ret.1, %err_unmap_screen ], [ -12, %do.end74 ]
  %96 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 1), align 4
  %97 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %96, i32 noundef %97) #8
  br label %err_unmap_vregs

err_unmap_vregs:                                  ; preds = %err_reg_smem, %do.end64, %do.end54
  %ret.3 = phi i32 [ %ret.2, %err_reg_smem ], [ -12, %do.end64 ], [ -12, %do.end54 ]
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %99) #8
  br label %err_free_reg_mmio

err_free_reg_mmio:                                ; preds = %err_unmap_vregs, %do.end25
  %ret.4 = phi i32 [ %ret.3, %err_unmap_vregs ], [ -12, %do.end25 ]
  %100 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 10), align 4
  %101 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @carminefb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %100, i32 noundef %101) #8
  br label %err_free_hw

err_free_hw:                                      ; preds = %err_free_reg_mmio, %do.end
  %ret.5 = phi i32 [ %ret.4, %err_free_reg_mmio ], [ -16, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_enable_pci

err_enable_pci:                                   ; preds = %err_free_hw, %if.end.err_enable_pci_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_free_hw ], [ -12, %if.end.err_enable_pci_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_enable_pci, %if.end102, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %err_enable_pci ], [ 0, %if.end102 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carminefb_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fb = getelementptr %struct.carmine_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.carmine_hw, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.pn = phi ptr [ %5, %if.else ], [ %3, %entry.if.end_crit_edge ]
  %fix.sroa.8.0.in = getelementptr inbounds %struct.fb_info, ptr %.pn, i32 0, i32 7, i32 11
  %fix.sroa.713.0.in = getelementptr inbounds %struct.fb_info, ptr %.pn, i32 0, i32 7, i32 10
  %fix.sroa.6.0.in = getelementptr inbounds %struct.fb_info, ptr %.pn, i32 0, i32 7, i32 2
  %fix.sroa.5.0.in = getelementptr inbounds %struct.fb_info, ptr %.pn, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %fix.sroa.8.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %fix.sroa.8.0 = load i32, ptr %fix.sroa.8.0.in, align 4
  %7 = ptrtoint ptr %fix.sroa.713.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %fix.sroa.713.0 = load i32, ptr %fix.sroa.713.0.in, align 4
  %8 = ptrtoint ptr %fix.sroa.6.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %fix.sroa.6.0 = load i32, ptr %fix.sroa.6.0.in, align 4
  %9 = ptrtoint ptr %fix.sroa.5.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %fix.sroa.5.0 = load i32, ptr %fix.sroa.5.0.in, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1048832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %13, i32 1310976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 4194316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #8, !srcloc !105
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.cleanup_fb_device.exit_crit_edge, label %if.then.i

if.end.cleanup_fb_device.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_fb_device.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_framebuffer(ptr noundef nonnull %17) #8
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #8
  tail call void @framebuffer_release(ptr noundef nonnull %17) #8
  br label %cleanup_fb_device.exit

cleanup_fb_device.exit:                           ; preds = %if.then.i, %if.end.cleanup_fb_device.exit_crit_edge
  %arrayidx8.1 = getelementptr %struct.carmine_hw, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8.1, align 4
  %tobool.not.i.1 = icmp eq ptr %19, null
  br i1 %tobool.not.i.1, label %cleanup_fb_device.exit.cleanup_fb_device.exit.1_crit_edge, label %if.then.i.1

cleanup_fb_device.exit.cleanup_fb_device.exit.1_crit_edge: ; preds = %cleanup_fb_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_fb_device.exit.1

if.then.i.1:                                      ; preds = %cleanup_fb_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_framebuffer(ptr noundef nonnull %19) #8
  %cmap.i.1 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i.1) #8
  tail call void @framebuffer_release(ptr noundef nonnull %19) #8
  br label %cleanup_fb_device.exit.1

cleanup_fb_device.exit.1:                         ; preds = %if.then.i.1, %cleanup_fb_device.exit.cleanup_fb_device.exit.1_crit_edge
  %screen_mem = getelementptr inbounds %struct.carmine_hw, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %screen_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %screen_mem, align 4
  tail call void @iounmap(ptr noundef %21) #8
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %fix.sroa.5.0, i32 noundef %fix.sroa.6.0) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %23) #8
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %fix.sroa.713.0, i32 noundef %fix.sroa.8.0) #8
  tail call void @pci_disable_device(ptr noundef %dev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_carmine_fb(ptr noundef %regs, ptr noundef %smem_base, i32 noundef %smem_offset, ptr noundef %device, ptr nocapture noundef writeonly %rinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @framebuffer_alloc(i32 noundef 88, ptr noundef %device) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regs, ptr %1, align 4
  %smem_offset2 = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %smem_offset2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %smem_offset, ptr %smem_offset2, align 4
  %add.ptr = getelementptr i8, ptr %smem_base, i32 %smem_offset
  %4 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %4, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 26
  %6 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1920000, ptr %screen_size, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %7 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @carminefb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  %8 = call ptr @memcpy(ptr %fix, ptr @carminefb_fix, i32 68)
  %pseudo_palette = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 6
  %pseudo_palette3 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 27
  %9 = ptrtoint ptr %pseudo_palette3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pseudo_palette, ptr %pseudo_palette3, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 12
  %call4 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.err_free_fb_crit_edge, label %if.end6

if.end.err_free_fb_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_fb

if.end6:                                          ; preds = %if.end
  %11 = load i32, ptr @fb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp ugt i32 %11, 1
  br i1 %cmp7, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr @fb_mode, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %new_mode = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %new_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %new_mode, align 4
  %cur_mode = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %cur_mode, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %14 = load ptr, ptr @fb_mode_str, align 4
  %15 = load i32, ptr @fb_mode, align 4
  %arrayidx = getelementptr [2 x %struct.fb_videomode], ptr @carmine_modedb, i32 0, i32 %15
  %call10 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call, ptr noundef %14, ptr noundef nonnull @carmine_modedb, i32 noundef 2, ptr noundef %arrayidx, i32 noundef 32) #8
  %16 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %if.end14 [
    i32 0, label %if.end9.err_dealloc_cmap_crit_edge
    i32 4, label %if.end9.err_dealloc_cmap_crit_edge51
  ]

if.end9.err_dealloc_cmap_crit_edge51:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dealloc_cmap

if.end9.err_dealloc_cmap_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dealloc_cmap

if.end14:                                         ; preds = %if.end9
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef nonnull @carmine_modedb, i32 noundef 2, ptr noundef %modelist) #8
  %call15 = tail call i32 @register_framebuffer(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.err_dealloc_cmap_crit_edge, label %do.end

if.end14.err_dealloc_cmap_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dealloc_cmap

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %18, ptr noundef %fix) #11
  %19 = ptrtoint ptr %rinfo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %rinfo, align 4
  br label %cleanup

err_dealloc_cmap:                                 ; preds = %if.end14.err_dealloc_cmap_crit_edge, %if.end9.err_dealloc_cmap_crit_edge, %if.end9.err_dealloc_cmap_crit_edge51
  %ret.0 = phi i32 [ %call15, %if.end14.err_dealloc_cmap_crit_edge ], [ -22, %if.end9.err_dealloc_cmap_crit_edge ], [ -22, %if.end9.err_dealloc_cmap_crit_edge51 ]
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_free_fb

err_free_fb:                                      ; preds = %err_dealloc_cmap, %if.end.err_free_fb_crit_edge
  %ret.1 = phi i32 [ %call4, %if.end.err_free_fb_crit_edge ], [ %ret.0, %err_dealloc_cmap ]
  tail call void @framebuffer_release(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_fb, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_fb ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_fb_device(ptr noundef %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_framebuffer(ptr noundef nonnull %info) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  tail call void @framebuffer_release(ptr noundef nonnull %info) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @carmine_check_var(ptr noundef %var, ptr nocapture noundef readnone %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %2 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp1.i = icmp eq i32 %2, %1
  br i1 %cmp1.i, label %land.lhs.true.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 0, i32 7), align 4
  %4 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3.i = icmp eq i32 %3, %5
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 1, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1.1.i = icmp eq i32 %6, %1
  br i1 %cmp1.1.i, label %land.lhs.true.1.i, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 1, i32 7), align 4
  %8 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.1.i = icmp eq i32 %7, %9
  br i1 %cmp3.1.i, label %land.lhs.true.1.i.if.end_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.i.if.end_crit_edge:               ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.1.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %10 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %12 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %14 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %16 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %xres_virtual, align 4
  %17 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yres.i, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %19 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %yres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %bits_per_pixel, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %21 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 24, ptr %transp, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %22 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %red, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %23 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %green, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %24 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %blue, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %length, align 4
  %length11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %length11, align 4
  %length13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %length13, align 4
  %length15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %length15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %length15, align 4
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %msb_right, align 4
  %msb_right18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %msb_right18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %msb_right18, align 4
  %msb_right20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %msb_right20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %msb_right20, align 4
  %msb_right22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %msb_right22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %msb_right22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carmine_set_par(ptr nocapture noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp1.i = icmp eq i32 %4, %3
  br i1 %cmp1.i, label %land.lhs.true.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 0, i32 7), align 4
  %6 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.i = icmp eq i32 %5, %7
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %8 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 1, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp1.1.i = icmp eq i32 %8, %3
  br i1 %cmp1.1.i, label %land.lhs.true.1.i, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %9 = load i32, ptr getelementptr inbounds ([2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 1, i32 7), align 4
  %10 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.1.i = icmp eq i32 %9, %11
  br i1 %cmp3.1.i, label %land.lhs.true.1.i.if.end_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.i.if.end_crit_edge:               ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.1.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %land.lhs.true.1.i.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ]
  %new_mode = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %new_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.ph, ptr %new_mode, align 4
  %cur_mode = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %retval.0.i.ph)
  %cmp3.not = icmp eq i32 %14, %retval.0.i.ph
  br i1 %cmp3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.ph, ptr %cur_mode, align 4
  %arrayidx = getelementptr [2 x %struct.carmine_resolution], ptr @car_modes, i32 0, i32 %retval.0.i.ph
  %res = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %res, align 4
  %smem_offset.i = getelementptr inbounds %struct.carmine_fb, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %smem_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smem_offset.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %22, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %24, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 66304) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %26, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %28, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %30, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 16777408) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %32, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 192) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %34, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i, i32 50331840) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %36, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 50331840) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %38, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 50331840) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %40, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 50331840) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %42, i32 6424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 50331840) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %44, i32 6488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 50331840) #8, !srcloc !105
  %45 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %res, align 4
  %hdp.i = getelementptr inbounds %struct.carmine_resolution, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %hdp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hdp.i, align 4
  %49 = shl i32 %48, 12
  %shl.i = and i32 %49, -65536
  %vdp.i = getelementptr inbounds %struct.carmine_resolution, ptr %46, i32 0, i32 7
  %50 = ptrtoint ptr %vdp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vdp.i, align 4
  %sub.i = add i32 %51, -1
  %or.i = or i32 %shl.i, %sub.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %add.ptr.i152.i = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i, i32 %52) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %57, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %55) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %59, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %52) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %61, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %52) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %63, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %52) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %65, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 %52) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %67, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i, i32 %52) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %69, i32 6464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %52) #8, !srcloc !105
  %70 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %res, align 4
  %vdp3.i = getelementptr inbounds %struct.carmine_resolution, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %vdp3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vdp3.i, align 4
  %sub4.i = shl i32 %73, 16
  %shl5.i = add i32 %sub4.i, -65536
  %hdp7.i = getelementptr inbounds %struct.carmine_resolution, ptr %71, i32 0, i32 3
  %74 = ptrtoint ptr %hdp7.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hdp7.i, align 4
  %or8.i = or i32 %shl5.i, %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %77, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #8
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %80, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %82, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %84, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %86, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %88, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %90, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %92, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %94, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %96, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %98, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %100, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %102, i32 6428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %104, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %106, i32 6492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %108, i32 6496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 %78) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %109 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %111, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %113, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %115, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %117, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %119, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %add.ptr.i181.i = getelementptr i8, ptr %121, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %123, i32 6404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %add.ptr.i183.i = getelementptr i8, ptr %125, i32 6468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %127, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %add.ptr.i185.i = getelementptr i8, ptr %129, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %131, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %133, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %135, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %137, i32 6408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %139, i32 6472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %109) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %add.ptr.i191.i = getelementptr i8, ptr %141, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %143, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 4
  %add.ptr.i193.i = getelementptr i8, ptr %145, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %147, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %add.ptr.i195.i = getelementptr i8, ptr %149, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %151, i32 6420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %add.ptr.i197.i = getelementptr i8, ptr %153, i32 6484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %155, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %add.ptr.i199.i = getelementptr i8, ptr %157, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %159, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %add.ptr.i201.i = getelementptr i8, ptr %161, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %163, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 4
  %add.ptr.i203.i = getelementptr i8, ptr %165, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %167, i32 6544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %169, i32 6548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %171, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %add.ptr.i207.i = getelementptr i8, ptr %173, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %175, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %add.ptr.i209.i = getelementptr i8, ptr %177, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %179, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %181, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %183, i32 6552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %185, i32 6556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %187, i32 6272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %add.ptr.i215.i = getelementptr i8, ptr %189, i32 6304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %add.ptr.i216.i = getelementptr i8, ptr %191, i32 6320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 4
  %add.ptr.i217.i = getelementptr i8, ptr %193, i32 6336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %195, i32 6352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 4
  %add.ptr.i219.i = getelementptr i8, ptr %197, i32 6436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 4
  %add.ptr.i220.i = getelementptr i8, ptr %199, i32 6500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %add.ptr.i221.i = getelementptr i8, ptr %201, i32 6276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 4
  %add.ptr.i222.i = getelementptr i8, ptr %203, i32 6308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 4
  %add.ptr.i223.i = getelementptr i8, ptr %205, i32 6324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 4
  %add.ptr.i224.i = getelementptr i8, ptr %207, i32 6340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %add.ptr.i225.i = getelementptr i8, ptr %209, i32 6356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 4
  %add.ptr.i226.i = getelementptr i8, ptr %211, i32 6440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %1, align 4
  %add.ptr.i227.i = getelementptr i8, ptr %213, i32 6504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %215, i32 6280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 4
  %add.ptr.i229.i = getelementptr i8, ptr %217, i32 6312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %1, align 4
  %add.ptr.i230.i = getelementptr i8, ptr %219, i32 6328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %add.ptr.i231.i = getelementptr i8, ptr %221, i32 6344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 4
  %add.ptr.i232.i = getelementptr i8, ptr %223, i32 6360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %224 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %1, align 4
  %add.ptr.i233.i = getelementptr i8, ptr %225, i32 6444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  %add.ptr.i234.i = getelementptr i8, ptr %227, i32 6508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234.i, i32 0) #8, !srcloc !105
  %228 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %res, align 4
  %hdp1.i = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %hdp1.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %hdp1.i, align 4
  %sub.i28 = add i32 %231, -1
  %vdp3.i29 = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 7
  %232 = ptrtoint ptr %vdp3.i29 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %vdp3.i29, align 4
  %234 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %229, align 4
  %hsp9.i = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 1
  %236 = ptrtoint ptr %hsp9.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %hsp9.i, align 4
  %sub10.i = add i32 %237, -1
  %hsw12.i = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 2
  %238 = ptrtoint ptr %hsw12.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %hsw12.i, align 4
  %vtr15.i = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 4
  %240 = ptrtoint ptr %vtr15.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %vtr15.i, align 4
  %vsp18.i = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 5
  %242 = ptrtoint ptr %vsp18.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %vsp18.i, align 4
  %sub19.i = add i32 %243, -1
  %vsw21.i = getelementptr inbounds %struct.carmine_resolution, ptr %229, i32 0, i32 6
  %244 = ptrtoint ptr %vsw21.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %vsw21.i, align 4
  %sub7.i = shl i32 %235, 16
  %shl.i30 = add i32 %sub7.i, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %246 = tail call i32 @llvm.bswap.i32(i32 %shl.i30) #8
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %1, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %248, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 %246) #8, !srcloc !105
  %shl23.i = shl i32 %sub.i28, 16
  %or.i32 = or i32 %shl23.i, %sub.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %249 = tail call i32 @llvm.bswap.i32(i32 %or.i32) #8
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %251, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %249) #8, !srcloc !105
  %sub22.i = shl i32 %245, 24
  %shl24.i = add i32 %sub22.i, -16777216
  %sub13.i = shl i32 %239, 16
  %shl25.i = add i32 %sub13.i, -65536
  %or26.i = or i32 %shl25.i, %sub10.i
  %or27.i = or i32 %or26.i, %shl24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %252 = tail call i32 @llvm.bswap.i32(i32 %or27.i) #8
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %1, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %254, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %252) #8, !srcloc !105
  %sub16.i = shl i32 %241, 16
  %shl28.i = add i32 %sub16.i, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %255 = tail call i32 @llvm.bswap.i32(i32 %shl28.i) #8
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %257, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %255) #8, !srcloc !105
  %sub4.i33 = shl i32 %233, 16
  %shl29.i = add i32 %sub4.i33, -65536
  %or30.i = or i32 %sub19.i, %shl29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %258 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #8
  %259 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %1, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %260, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %258) #8, !srcloc !105
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %262, i32 256
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %264 = and i32 %263, 65151
  %265 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %res, align 4
  %disp_mode.i = getelementptr inbounds %struct.carmine_resolution, ptr %266, i32 0, i32 8
  %267 = ptrtoint ptr %disp_mode.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %disp_mode.i, align 4
  %and32.i = and i32 %268, 65535
  %269 = or i32 %264, 384
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #8
  %or34.i = or i32 %and32.i, %270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %271 = tail call i32 @llvm.bswap.i32(i32 %or34.i) #8
  %272 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %1, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %273, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %271) #8, !srcloc !105
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %274 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %var, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %276 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %277, %275
  %div26 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %278 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %div26, ptr %line_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.1.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @carmine_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %red, 8
  %shr1 = and i32 %green, -256
  %0 = shl i32 %transp, 16
  %shl = and i32 %0, -16777216
  %1 = shl i32 %blue, 8
  %shl7 = and i32 %1, -65536
  %or = or i32 %shr1, %shr
  %or6 = or i32 %or, %shl7
  %or8 = or i32 %or6, %shl
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %regno
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or8, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__param_fb_mode, !1, !"__param_fb_mode", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/carminefb.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_fb_modetype305, !1, !"__UNIQUE_ID_fb_modetype305", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fb_mode306, !4, !"__UNIQUE_ID_fb_mode306", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/carminefb.c", i32 38, i32 1}
!5 = !{ptr @__param_fb_mode_str, !6, !"__param_fb_mode_str", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/carminefb.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_fb_mode_strtype307, !6, !"__UNIQUE_ID_fb_mode_strtype307", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_fb_mode_str308, !9, !"__UNIQUE_ID_fb_mode_str308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/carminefb.c", i32 42, i32 1}
!10 = !{ptr @__param_fb_displays, !11, !"__param_fb_displays", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/carminefb.c", i32 51, i32 1}
!12 = !{ptr @__UNIQUE_ID_fb_displaystype309, !11, !"__UNIQUE_ID_fb_displaystype309", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_fb_displays310, !14, !"__UNIQUE_ID_fb_displays310", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/carminefb.c", i32 52, i32 1}
!15 = !{ptr @__initcall__kmod_carminefb__311_779_carminefb_init6, !16, !"__initcall__kmod_carminefb__311_779_carminefb_init6", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/carminefb.c", i32 779, i32 1}
!17 = !{ptr @__exitcall_carminefb_cleanup, !18, !"__exitcall_carminefb_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/carminefb.c", i32 785, i32 1}
!19 = !{ptr @__UNIQUE_ID_author312, !20, !"__UNIQUE_ID_author312", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/carminefb.c", i32 787, i32 1}
!21 = !{ptr @__UNIQUE_ID_description313, !22, !"__UNIQUE_ID_description313", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/carminefb.c", i32 788, i32 1}
!23 = !{ptr @__UNIQUE_ID_file314, !24, !"__UNIQUE_ID_file314", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/carminefb.c", i32 789, i32 1}
!25 = !{ptr @__UNIQUE_ID_license315, !24, !"__UNIQUE_ID_license315", i1 false, i1 false}
!26 = !{ptr @fb_mode_str, !27, !"fb_mode_str", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/carminefb.c", i32 40, i32 14}
!28 = !{ptr @__param_str_fb_mode, !1, !"__param_str_fb_mode", i1 false, i1 false}
!29 = !{ptr @fb_mode, !30, !"fb_mode", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/carminefb.c", i32 36, i32 21}
!31 = !{ptr @__param_str_fb_mode_str, !6, !"__param_str_fb_mode_str", i1 false, i1 false}
!32 = !{ptr @__param_str_fb_displays, !11, !"__param_str_fb_displays", i1 false, i1 false}
!33 = !{ptr @fb_displays, !34, !"fb_displays", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/carminefb.c", i32 50, i32 12}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/carminefb.c", i32 773, i32 3}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @carminefb_init._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @carminefb_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/carminefb.c", i32 777, i32 9}
!43 = !{ptr @carmine_pci_driver, !44, !"carmine_pci_driver", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/carminefb.c", i32 762, i32 26}
!45 = !{ptr @carmine_devices, !46, !"carmine_devices", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/carminefb.c", i32 754, i32 29}
!47 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/carminefb.c", i32 629, i32 7}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/carminefb.c", i32 632, i32 3}
!51 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @carminefb_probe._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @carminefb_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/carminefb.c", i32 639, i32 3}
!56 = !{ptr @carminefb_probe._entry.7, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @carminefb_probe._entry_ptr.9, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/carminefb.c", i32 655, i32 3}
!60 = !{ptr @carminefb_probe._entry.10, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @carminefb_probe._entry_ptr.12, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/carminefb.c", i32 661, i32 7}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/carminefb.c", i32 663, i32 3}
!66 = !{ptr @carminefb_probe._entry.14, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @carminefb_probe._entry_ptr.16, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/carminefb.c", i32 670, i32 3}
!70 = !{ptr @carminefb_probe._entry.17, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @carminefb_probe._entry_ptr.19, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @carminefb_fix, !73, !"carminefb_fix", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/carminefb.c", i32 82, i32 33}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/carminefb.c", i32 498, i32 4}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_hardware._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @init_hardware._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/carminefb.c", i32 589, i32 2}
!81 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @alloc_carmine_fb._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @alloc_carmine_fb._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @carminefb_ops, !85, !"carminefb_ops", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/carminefb.c", i32 530, i32 28}
!86 = !{ptr @car_modes, !87, !"car_modes", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/carminefb.c", i32 101, i32 34}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/carminefb.c", i32 91, i32 12}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/carminefb.c", i32 95, i32 12}
!92 = !{ptr @carmine_modedb, !93, !"carmine_modedb", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/carminefb.c", i32 89, i32 34}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{i64 2156236944}
!105 = !{i64 4325195}
!106 = !{i64 4325613}
!107 = !{i64 2156237615}
!108 = !{i64 2156236027}
!109 = !{i64 2156236728}
