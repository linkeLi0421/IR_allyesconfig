; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/imxfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/imxfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imxfb_rgb = type { %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.imxfb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32, ptr, i32 }
%struct.imx_fb_platform_data = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.imx_fb_videomode = type { %struct.fb_videomode, i32, i8, i8 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_imxfb__330_1136_imxfb_driver_init6 = internal global ptr @imxfb_driver_init, section ".initcall6.init", align 4
@imxfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imxfb_probe, ptr @imxfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imxfb_of_dev_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imxfb_pm_ops, ptr null, ptr null }, ptr @imxfb_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imxfb_driver_exit = internal global ptr @imxfb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description331 = internal constant [52 x i8] c"imxfb.description=Freescale i.MX framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author332 = internal constant [39 x i8] c"imxfb.author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file333 = internal constant [37 x i8] c"imxfb.file=drivers/video/fbdev/imxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [18 x i8] c"imxfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx-fb\00", [25 x i8] zeroinitializer }, align 32
@imxfb_of_dev_id = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imxfb_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imxfb_devtype, i64 24) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@imxfb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imxfb_suspend, ptr @imxfb_resume, ptr @imxfb_suspend, ptr @imxfb_resume, ptr @imxfb_suspend, ptr @imxfb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imxfb_devtype = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx1-fb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"imx21-fb\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@imxfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 873, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i.MX Framebuffer driver\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imxfb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/imxfb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imxfb_probe._entry_ptr = internal global ptr @imxfb_probe._entry, section ".printk_index", align 4
@fb_mode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@imxfb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 913, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No display defined in devicetree\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@imxfb_probe._entry_ptr.10 = internal global ptr @imxfb_probe._entry.7, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@imxfb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 986, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot map frame buffer registers\0A\00", [61 x i8] zeroinitializer }, align 32
@imxfb_probe._entry_ptr.16 = internal global ptr @imxfb_probe._entry.14, section ".printk_index", align 4
@imxfb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 995, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate video RAM\0A\00", [34 x i8] zeroinitializer }, align 32
@imxfb_probe._entry_ptr.19 = internal global ptr @imxfb_probe._entry.17, section ".printk_index", align 4
@imxfb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1030, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register framebuffer\0A\00", [32 x i8] zeroinitializer }, align 32
@imxfb_probe._entry_ptr.22 = internal global ptr @imxfb_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imxfb-lcd\00", [22 x i8] zeroinitializer }, align 32
@imxfb_lcd_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @imxfb_lcd_get_power, ptr @imxfb_lcd_set_power, ptr @imxfb_lcd_get_contrast, ptr @imxfb_lcd_set_contrast, ptr null, ptr @imxfb_lcd_check_fb }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"imxfb\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@imxfb_init_fbinfo.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imxfb_init_fbinfo\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMX\00", [28 x i8] zeroinitializer }, align 32
@imxfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imxfb_check_var, ptr @imxfb_set_par, ptr @imxfb_setcolreg, ptr null, ptr @imxfb_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmap-greyscale\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmap-inverse\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmap-static\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,lpccr\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,lscr1\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,dmacr\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@imxfb_blank.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imxfb_blank\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imxfb_blank: blank=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@imxfb_disable_controller.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imxfb_disable_controller\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disabling LCD controller\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@imxfb_of_read_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 730, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get videomode from DT\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imxfb_of_read_mode\00", [45 x i8] zeroinitializer }, align 32
@imxfb_of_read_mode._entry_ptr = internal global ptr @imxfb_of_read_mode._entry, section ".printk_index", align 4
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bits-per-pixel\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl,pcr\00", [24 x i8] zeroinitializer }, align 32
@imxfb_of_read_mode._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.3, i32 738, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read bpp and pcr from DT\0A\00", [60 x i8] zeroinitializer }, align 32
@imxfb_of_read_mode._entry_ptr.47 = internal global ptr @imxfb_of_read_mode._entry.45, section ".printk_index", align 4
@imxfb_of_read_mode._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.3, i32 743, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bits per pixel have to be between 1 and 255\0A\00", [51 x i8] zeroinitializer }, align 32
@imxfb_of_read_mode._entry_ptr.50 = internal global ptr @imxfb_of_read_mode._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,aus-mode\00", [19 x i8] zeroinitializer }, align 32
@imxfb_check_var.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imxfb_check_var\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"var->bits_per_pixel=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@imxfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Must limit pixel clock to %luHz\0A\00", [61 x i8] zeroinitializer }, align 32
@imxfb_check_var._entry_ptr = internal global ptr @imxfb_check_var._entry, section ".printk_index", align 4
@def_rgb_18 = internal constant { %struct.imxfb_rgb, [48 x i8] } { %struct.imxfb_rgb { %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@def_rgb_16_tft = internal constant { %struct.imxfb_rgb, [48 x i8] } { %struct.imxfb_rgb { %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@def_rgb_16_stn = internal constant { %struct.imxfb_rgb, [48 x i8] } { %struct.imxfb_rgb { %struct.fb_bitfield { i32 8, i32 4, i32 0 }, %struct.fb_bitfield { i32 4, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@def_rgb_8 = internal constant { %struct.imxfb_rgb, [48 x i8] } { %struct.imxfb_rgb { %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@imxfb_check_var.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.52, ptr @.str.3, ptr @.str.55, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RGBT length = %d:%d:%d:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@imxfb_check_var.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.52, ptr @.str.3, ptr @.str.56, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RGBT offset = %d:%d:%d:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@imxfb_activate_var.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imxfb_activate_var\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"var: xres=%d hslen=%d lm=%d rm=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@imxfb_activate_var.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"var: yres=%d vslen=%d um=%d bm=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.3, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: invalid xres %d\0A\00", [41 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr = internal global ptr @imxfb_activate_var._entry, section ".printk_index", align 4
@imxfb_activate_var._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: invalid hsync_len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.63 = internal global ptr @imxfb_activate_var._entry.61, section ".printk_index", align 4
@imxfb_activate_var._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.3, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: invalid left_margin %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.66 = internal global ptr @imxfb_activate_var._entry.64, section ".printk_index", align 4
@imxfb_activate_var._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.3, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid right_margin %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.69 = internal global ptr @imxfb_activate_var._entry.67, section ".printk_index", align 4
@imxfb_activate_var._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.57, ptr @.str.3, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: invalid yres %d\0A\00", [41 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.72 = internal global ptr @imxfb_activate_var._entry.70, section ".printk_index", align 4
@imxfb_activate_var._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.57, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: invalid vsync_len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.75 = internal global ptr @imxfb_activate_var._entry.73, section ".printk_index", align 4
@imxfb_activate_var._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.57, ptr @.str.3, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid upper_margin %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.78 = internal global ptr @imxfb_activate_var._entry.76, section ".printk_index", align 4
@imxfb_activate_var._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.57, ptr @.str.3, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid lower_margin %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imxfb_activate_var._entry_ptr.81 = internal global ptr @imxfb_activate_var._entry.79, section ".printk_index", align 4
@imxfb_enable_controller.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imxfb_enable_controller\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enabling LCD controller\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"imxfb_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1126, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1128, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"imxfb_of_dev_id\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 191, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"imxfb_pm_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1124, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"imxfb_devtype\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 178, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 873, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"fb_mode\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 124, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 911, i32 52 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 913, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 951, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 972, i32 42 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 978, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 986, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 995, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1030, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1034, i32 48 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1040, i32 45 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"imxfb_lcd_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 833, i32 23 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 845, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 851, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 664, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 674, i32 24 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"imxfb_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 570, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 700, i32 7 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 701, i32 49 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 702, i32 48 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 706, i32 28 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 708, i32 28 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 710, i32 28 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 554, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 540, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 724, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 730, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 734, i32 33 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 735, i32 34 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 738, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 743, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 753, i32 51 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 384, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 399, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [11 x i8] c"def_rgb_18\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 221, i32 25 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"def_rgb_16_tft\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 228, i32 25 }
@___asan_gen_.270 = private unnamed_addr constant [15 x i8] c"def_rgb_16_stn\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 235, i32 25 }
@___asan_gen_.273 = private unnamed_addr constant [10 x i8] c"def_rgb_8\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 242, i32 25 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 445, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 449, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 591, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 594, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 600, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 603, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 606, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 609, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 612, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 615, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 618, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 621, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [31 x i8] c"../drivers/video/fbdev/imxfb.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 493, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_imxfb_driver_exit, ptr @__initcall__kmod_imxfb__330_1136_imxfb_driver_init6, ptr @imxfb_activate_var._entry, ptr @imxfb_activate_var._entry.61, ptr @imxfb_activate_var._entry.64, ptr @imxfb_activate_var._entry.67, ptr @imxfb_activate_var._entry.70, ptr @imxfb_activate_var._entry.73, ptr @imxfb_activate_var._entry.76, ptr @imxfb_activate_var._entry.79, ptr @imxfb_activate_var._entry_ptr, ptr @imxfb_activate_var._entry_ptr.63, ptr @imxfb_activate_var._entry_ptr.66, ptr @imxfb_activate_var._entry_ptr.69, ptr @imxfb_activate_var._entry_ptr.72, ptr @imxfb_activate_var._entry_ptr.75, ptr @imxfb_activate_var._entry_ptr.78, ptr @imxfb_activate_var._entry_ptr.81, ptr @imxfb_check_var._entry, ptr @imxfb_check_var._entry_ptr, ptr @imxfb_driver_exit, ptr @imxfb_of_read_mode._entry, ptr @imxfb_of_read_mode._entry.45, ptr @imxfb_of_read_mode._entry.48, ptr @imxfb_of_read_mode._entry_ptr, ptr @imxfb_of_read_mode._entry_ptr.47, ptr @imxfb_of_read_mode._entry_ptr.50, ptr @imxfb_probe._entry, ptr @imxfb_probe._entry.14, ptr @imxfb_probe._entry.17, ptr @imxfb_probe._entry.20, ptr @imxfb_probe._entry.7, ptr @imxfb_probe._entry_ptr, ptr @imxfb_probe._entry_ptr.10, ptr @imxfb_probe._entry_ptr.16, ptr @imxfb_probe._entry_ptr.19, ptr @imxfb_probe._entry_ptr.22, ptr @imxfb_driver, ptr @.str, ptr @imxfb_of_dev_id, ptr @imxfb_pm_ops, ptr @imxfb_devtype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fb_mode, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @imxfb_lcd_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @imxfb_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @def_rgb_18, ptr @def_rgb_16_tft, ptr @def_rgb_16_stn, ptr @def_rgb_8, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_of_dev_id to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_devtype to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_lcd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_of_read_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_of_read_mode._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_of_read_mode._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_rgb_18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_rgb_16_tft to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_rgb_16_stn to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_rgb_8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxfb_activate_var._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imxfb_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imxfb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @imxfb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bpp.i = alloca i32, align 4
  %pcr.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %options.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.i) #11
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %options.i, align 4
  %call.i = call i32 @fb_get_options(ptr noundef nonnull @.str.25, ptr noundef nonnull %options.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %imxfb_setup.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call511.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.26) #11
  %cmp.not12.i = icmp eq ptr %call511.i, null
  br i1 %cmp.not12.i, label %while.cond.preheader.i.if.end_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end_crit_edge:          ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call513.i = phi ptr [ %call5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call511.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %call513.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call513.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not.i = icmp eq i8 %6, 0
  br i1 %tobool6.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.else.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call513.i, ptr @fb_mode, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call5.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.26) #11
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.if.end_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.backedge.i.if.end_crit_edge:           ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

imxfb_setup.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #11
  br label %cleanup197

if.end:                                           ; preds = %while.cond.backedge.i.if.end_crit_edge, %while.cond.preheader.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #11
  %call2 = call ptr @of_match_device(ptr noundef nonnull @imxfb_of_dev_id, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %id_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %id_entry, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup197_crit_edge, label %if.end8

if.end4.cleanup197_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup197

if.end8:                                          ; preds = %if.end4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data.i, align 8
  %call12 = call ptr @framebuffer_alloc(i32 noundef 88, ptr noundef %dev) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end8.cleanup197_crit_edge, label %if.end15

if.end8.cleanup197_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup197

if.end15:                                         ; preds = %if.end8
  %par = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 30
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %call16 = call fastcc i32 @imxfb_init_fbinfo(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.failed_init_crit_edge, label %if.end19

if.end15.failed_init_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_init

if.end19:                                         ; preds = %if.end15
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  %15 = load ptr, ptr @fb_mode, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.then23, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  store ptr %19, ptr @fb_mode, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21.if.end25_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 4
  %mode27 = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 19
  %22 = ptrtoint ptr %mode27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %mode27, align 4
  %num_modes = getelementptr inbounds %struct.imx_fb_platform_data, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_modes, align 4
  %num_modes28 = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 20
  %25 = ptrtoint ptr %num_modes28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_modes28, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end19
  store ptr null, ptr @fb_mode, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %28 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i326 = call i32 @__of_parse_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool.not.i327 = icmp eq i32 %call.i326, 0
  br i1 %tobool.not.i327, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %do.end35

of_parse_phandle.exit:                            ; preds = %if.else
  %29 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %tobool31.not = icmp eq ptr %30, null
  br i1 %tobool31.not, label %of_parse_phandle.exit.do.end35_crit_edge, label %if.end37

of_parse_phandle.exit.do.end35_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

do.end35:                                         ; preds = %of_parse_phandle.exit.do.end35_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  br label %failed_of_parse

if.end37:                                         ; preds = %of_parse_phandle.exit
  %num_modes38 = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 20
  %31 = ptrtoint ptr %num_modes38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_modes38, align 4
  %call.i330 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #11
  %mode41 = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 19
  %32 = ptrtoint ptr %mode41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i330, ptr %mode41, align 4
  %tobool43.not = icmp eq ptr %call.i330, null
  br i1 %tobool43.not, label %if.end37.failed_of_parse_crit_edge, label %if.end45

if.end37.failed_of_parse_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_of_parse

if.end45:                                         ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpp.i) #11
  %33 = ptrtoint ptr %bpp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %bpp.i, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcr.i) #11
  %34 = ptrtoint ptr %pcr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %pcr.i, align 4, !annotation !188
  %call.i331 = call i32 @of_property_read_string(ptr noundef nonnull %30, ptr noundef nonnull @.str.40, ptr noundef nonnull %call.i330) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool.not.i332 = icmp eq i32 %call.i331, 0
  br i1 %tobool.not.i332, label %if.end45.if.end.i333_crit_edge, label %if.then.i

if.end45.if.end.i333_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i333

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %call.i330 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %call.i330, align 4
  br label %if.end.i333

if.end.i333:                                      ; preds = %if.then.i, %if.end45.if.end.i333_crit_edge
  %call2.i = call i32 @of_get_fb_videomode(ptr noundef nonnull %30, ptr noundef nonnull %call.i330, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i333.imxfb_of_read_mode.exit.thread_crit_edge

if.end.i333.imxfb_of_read_mode.exit.thread_crit_edge: ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %imxfb_of_read_mode.exit.thread

if.end5.i:                                        ; preds = %if.end.i333
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %30, ptr noundef nonnull @.str.43, ptr noundef nonnull %bpp.i, i32 noundef 1, i32 noundef 0) #11
  %36 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #11
  %call.i.i41.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %30, ptr noundef nonnull @.str.44, ptr noundef nonnull %pcr.i, i32 noundef 1, i32 noundef 0) #11
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i41.i, i32 0) #11
  %or.i = or i32 %37, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool8.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool8.not.i, label %if.end13.i, label %if.end5.i.imxfb_of_read_mode.exit.thread_crit_edge

if.end5.i.imxfb_of_read_mode.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imxfb_of_read_mode.exit.thread

if.end13.i:                                       ; preds = %if.end5.i
  %38 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bpp.i, align 4
  %40 = add i32 %39, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %40)
  %41 = icmp ult i32 %40, -255
  br i1 %41, label %if.end13.i.imxfb_of_read_mode.exit.thread_crit_edge, label %cleanup

if.end13.i.imxfb_of_read_mode.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imxfb_of_read_mode.exit.thread

imxfb_of_read_mode.exit.thread:                   ; preds = %if.end13.i.imxfb_of_read_mode.exit.thread_crit_edge, %if.end5.i.imxfb_of_read_mode.exit.thread_crit_edge, %if.end.i333.imxfb_of_read_mode.exit.thread_crit_edge
  %.str.41.sink = phi ptr [ @.str.41, %if.end.i333.imxfb_of_read_mode.exit.thread_crit_edge ], [ @.str.46, %if.end5.i.imxfb_of_read_mode.exit.thread_crit_edge ], [ @.str.49, %if.end13.i.imxfb_of_read_mode.exit.thread_crit_edge ]
  %retval.0.i334.ph = phi i32 [ %call2.i, %if.end.i333.imxfb_of_read_mode.exit.thread_crit_edge ], [ -22, %if.end5.i.imxfb_of_read_mode.exit.thread_crit_edge ], [ -22, %if.end13.i.imxfb_of_read_mode.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.41.sink) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpp.i) #11
  br label %failed_of_parse

cleanup:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %39 to i8
  %bpp20.i = getelementptr inbounds %struct.imx_fb_videomode, ptr %call.i330, i32 0, i32 3
  %42 = ptrtoint ptr %bpp20.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %bpp20.i, align 1
  %43 = ptrtoint ptr %pcr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pcr.i, align 4
  %pcr21.i = getelementptr inbounds %struct.imx_fb_videomode, ptr %call.i330, i32 0, i32 1
  %45 = ptrtoint ptr %pcr21.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pcr21.i, align 4
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.51, ptr noundef null) #11
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %aus_mode.i = getelementptr inbounds %struct.imx_fb_videomode, ptr %call.i330, i32 0, i32 2
  %frombool.i = zext i1 %tobool.i.i to i8
  %46 = ptrtoint ptr %aus_mode.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool.i, ptr %aus_mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpp.i) #11
  br label %if.end52

if.end52:                                         ; preds = %cleanup, %if.end25
  %mode53 = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 19
  %47 = ptrtoint ptr %mode53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mode53, align 4
  %bpp = getelementptr inbounds %struct.imx_fb_videomode, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bpp, align 1
  %conv = zext i8 %50 to i32
  %add = add nuw nsw i32 %conv, 7
  %div325 = lshr i32 %add, 3
  %num_modes55 = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 20
  %51 = ptrtoint ptr %num_modes55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_modes55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp56363 = icmp sgt i32 %52, 0
  br i1 %cmp56363, label %for.body.lr.ph, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end52
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0365 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %m.0364 = phi ptr [ %48, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %53 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %smem_len, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %m.0364, i32 0, i32 2
  %55 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %m.0364, i32 0, i32 3
  %57 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %yres, align 4
  %mul = mul i32 %56, %div325
  %mul60 = mul i32 %mul, %58
  %59 = call i32 @llvm.umax.i32(i32 %54, i32 %mul60)
  %60 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %smem_len, align 4
  %inc = add nuw nsw i32 %i.0365, 1
  %incdec.ptr = getelementptr %struct.imx_fb_videomode, ptr %m.0364, i32 1
  %61 = ptrtoint ptr %num_modes55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_modes55, align 4
  %cmp56 = icmp slt i32 %inc, %62
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end52.for.end_crit_edge
  %63 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %64
  %add.i = add i32 %sub.i, %66
  %call66 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %64, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #11
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %for.end.failed_of_parse_crit_edge, label %if.end69

for.end.failed_of_parse_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_of_parse

if.end69:                                         ; preds = %for.end
  %call71 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  %clk_ipg = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 2
  %67 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call71, ptr %clk_ipg, align 4
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %call71 to i32
  br label %failed_getclock

if.end77:                                         ; preds = %if.end69
  %call.i335 = call i32 @clk_prepare(ptr noundef %call71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool.not.i336 = icmp eq i32 %call.i335, 0
  br i1 %tobool.not.i336, label %if.end.i338, label %if.end77.failed_getclock_crit_edge

if.end77.failed_getclock_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_getclock

if.end.i338:                                      ; preds = %if.end77
  %call1.i = call i32 @clk_enable(ptr noundef %call71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i337 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i337, label %if.end82, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call71) #11
  br label %failed_getclock

if.end82:                                         ; preds = %if.end.i338
  %69 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %70) #11
  call void @clk_unprepare(ptr noundef %70) #11
  %call85 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  %clk_ahb = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 3
  %71 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call85, ptr %clk_ahb, align 4
  %cmp.i340 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %call85 to i32
  br label %failed_getclock

if.end91:                                         ; preds = %if.end82
  %call93 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  %clk_per = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 4
  %73 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call93, ptr %clk_per, align 4
  %cmp.i341 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i341, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %call93 to i32
  br label %failed_getclock

if.end99:                                         ; preds = %if.end91
  %75 = ptrtoint ptr %call66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call66, align 4
  %end.i342 = getelementptr inbounds %struct.resource, ptr %call66, i32 0, i32 1
  %77 = ptrtoint ptr %end.i342 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %end.i342, align 4
  %sub.i343 = sub i32 1, %76
  %add.i344 = add i32 %sub.i343, %78
  %call102 = call ptr @ioremap(i32 noundef %76, i32 noundef %add.i344) #11
  %regs = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 1
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call102, ptr %regs, align 4
  %cmp104 = icmp eq ptr %call102, null
  br i1 %cmp104, label %do.end109, label %if.end111

do.end109:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #14
  br label %failed_getclock

if.end111:                                        ; preds = %if.end99
  %smem_len113 = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %smem_len113 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %smem_len113, align 4
  %add114 = add i32 %81, 4095
  %and = and i32 %add114, -4096
  %map_size = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 8
  %82 = ptrtoint ptr %map_size to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and, ptr %map_size, align 4
  %map_dma = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 7
  %call.i345 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %map_dma, i32 noundef 3264, i32 noundef 4) #11
  %83 = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 25
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i345, ptr %83, align 4
  %tobool118.not = icmp eq ptr %call.i345, null
  br i1 %tobool118.not, label %do.end122, label %if.end124

do.end122:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #14
  br label %failed_map

if.end124:                                        ; preds = %if.end111
  %85 = ptrtoint ptr %map_dma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %map_dma, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 1
  %87 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %smem_start, align 4
  br i1 %tobool20.not, label %if.end124.if.end136_crit_edge, label %land.lhs.true

if.end124.if.end136_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

land.lhs.true:                                    ; preds = %if.end124
  %init = getelementptr inbounds %struct.imx_fb_platform_data, ptr %11, i32 0, i32 5
  %88 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init, align 4
  %tobool128.not = icmp eq ptr %89, null
  br i1 %tobool128.not, label %land.lhs.true.if.end136_crit_edge, label %if.then129

land.lhs.true.if.end136_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then129:                                       ; preds = %land.lhs.true
  %90 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %13, align 4
  %call132 = call i32 %89(ptr noundef %91) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then129.if.end136_crit_edge, label %if.then129.failed_platform_init_crit_edge

if.then129.failed_platform_init_crit_edge:        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_platform_init

if.then129.if.end136_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.end136:                                        ; preds = %if.then129.if.end136_crit_edge, %land.lhs.true.if.end136_crit_edge, %if.end124.if.end136_crit_edge
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 13
  %92 = ptrtoint ptr %modelist to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %modelist, ptr %modelist, align 4
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 13, i32 1
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %modelist, ptr %prev.i, align 4
  %94 = ptrtoint ptr %num_modes55 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_modes55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp139366 = icmp sgt i32 %95, 0
  br i1 %cmp139366, label %if.end136.for.body141_crit_edge, label %if.end136.for.end149_crit_edge

if.end136.for.end149_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end149

if.end136.for.body141_crit_edge:                  ; preds = %if.end136
  br label %for.body141

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %if.end136.for.body141_crit_edge
  %i.1367 = phi i32 [ %inc148, %for.body141.for.body141_crit_edge ], [ 0, %if.end136.for.body141_crit_edge ]
  %96 = ptrtoint ptr %mode53 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mode53, align 4
  %arrayidx143 = getelementptr %struct.imx_fb_videomode, ptr %97, i32 %i.1367
  %call146 = call i32 @fb_add_videomode(ptr noundef %arrayidx143, ptr noundef %modelist) #11
  %inc148 = add nuw nsw i32 %i.1367, 1
  %98 = ptrtoint ptr %num_modes55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_modes55, align 4
  %cmp139 = icmp slt i32 %inc148, %99
  br i1 %cmp139, label %for.body141.for.body141_crit_edge, label %for.body141.for.end149_crit_edge

for.body141.for.end149_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end149

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body141

for.end149:                                       ; preds = %for.body141.for.end149_crit_edge, %if.end136.for.end149_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 6
  %call150 = call i32 @imxfb_check_var(ptr noundef %var, ptr noundef nonnull %call12)
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 12
  %call151 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %for.end149.failed_cmap_crit_edge, label %if.end155

for.end149.failed_cmap_crit_edge:                 ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_cmap

if.end155:                                        ; preds = %for.end149
  %call156 = call i32 @imxfb_set_par(ptr noundef nonnull %call12)
  %call157 = call i32 @register_framebuffer(ptr noundef nonnull %call12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %do.end163, label %if.end165

do.end163:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #14
  br label %failed_register

if.end165:                                        ; preds = %if.end155
  %call167 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  %lcd_pwr = getelementptr inbounds %struct.imxfb_info, ptr %13, i32 0, i32 21
  %100 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call167, ptr %lcd_pwr, align 4
  %cmp170 = icmp eq ptr %call167, inttoptr (i32 -517 to ptr)
  br i1 %cmp170, label %if.end165.failed_lcd_crit_edge, label %if.end173

if.end165.failed_lcd_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_lcd

if.end173:                                        ; preds = %if.end165
  %call176 = call ptr @devm_lcd_device_register(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %dev, ptr noundef %13, ptr noundef nonnull @imxfb_lcd_ops) #11
  %cmp.i346 = icmp ugt ptr %call176, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %call176 to i32
  br label %failed_lcd

if.end180:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %call176 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 255, ptr %call176, align 8
  %call181 = call fastcc i32 @imxfb_enable_controller(ptr noundef %13)
  %103 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %pdev, ptr %13, align 4
  br label %cleanup197

failed_lcd:                                       ; preds = %if.then178, %if.end165.failed_lcd_crit_edge
  %ret.1 = phi i32 [ %101, %if.then178 ], [ -517, %if.end165.failed_lcd_crit_edge ]
  call void @unregister_framebuffer(ptr noundef nonnull %call12) #11
  br label %failed_register

failed_register:                                  ; preds = %failed_lcd, %do.end163
  %ret.2 = phi i32 [ %call157, %do.end163 ], [ %ret.1, %failed_lcd ]
  call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  br label %failed_cmap

failed_cmap:                                      ; preds = %failed_register, %for.end149.failed_cmap_crit_edge
  %ret.3 = phi i32 [ %call151, %for.end149.failed_cmap_crit_edge ], [ %ret.2, %failed_register ]
  br i1 %tobool20.not, label %failed_cmap.failed_platform_init_crit_edge, label %land.lhs.true185

failed_cmap.failed_platform_init_crit_edge:       ; preds = %failed_cmap
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_platform_init

land.lhs.true185:                                 ; preds = %failed_cmap
  %exit = getelementptr inbounds %struct.imx_fb_platform_data, ptr %11, i32 0, i32 6
  %104 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %exit, align 4
  %tobool186.not = icmp eq ptr %105, null
  br i1 %tobool186.not, label %land.lhs.true185.failed_platform_init_crit_edge, label %if.then187

land.lhs.true185.failed_platform_init_crit_edge:  ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed_platform_init

if.then187:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %13, align 4
  call void %105(ptr noundef %107) #11
  br label %failed_platform_init

failed_platform_init:                             ; preds = %if.then187, %land.lhs.true185.failed_platform_init_crit_edge, %failed_cmap.failed_platform_init_crit_edge, %if.then129.failed_platform_init_crit_edge
  %ret.4 = phi i32 [ %call132, %if.then129.failed_platform_init_crit_edge ], [ %ret.3, %if.then187 ], [ %ret.3, %land.lhs.true185.failed_platform_init_crit_edge ], [ %ret.3, %failed_cmap.failed_platform_init_crit_edge ]
  %108 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %map_size, align 4
  %110 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %83, align 4
  %112 = ptrtoint ptr %map_dma to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %map_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %109, ptr noundef %111, i32 noundef %113, i32 noundef 4) #11
  br label %failed_map

failed_map:                                       ; preds = %failed_platform_init, %do.end122
  %ret.5 = phi i32 [ %ret.4, %failed_platform_init ], [ -12, %do.end122 ]
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  call void @iounmap(ptr noundef %115) #11
  br label %failed_getclock

failed_getclock:                                  ; preds = %failed_map, %do.end109, %if.then96, %if.then88, %if.then3.i, %if.end77.failed_getclock_crit_edge, %if.then74
  %ret.6 = phi i32 [ %68, %if.then74 ], [ %72, %if.then88 ], [ %74, %if.then96 ], [ -12, %do.end109 ], [ %ret.5, %failed_map ], [ %call1.i, %if.then3.i ], [ %call.i335, %if.end77.failed_getclock_crit_edge ]
  %116 = ptrtoint ptr %call66 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call66, align 4
  %end.i347 = getelementptr inbounds %struct.resource, ptr %call66, i32 0, i32 1
  %118 = ptrtoint ptr %end.i347 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %end.i347, align 4
  %sub.i348 = sub i32 1, %117
  %add.i349 = add i32 %sub.i348, %119
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %117, i32 noundef %add.i349) #11
  br label %failed_of_parse

failed_of_parse:                                  ; preds = %failed_getclock, %for.end.failed_of_parse_crit_edge, %imxfb_of_read_mode.exit.thread, %if.end37.failed_of_parse_crit_edge, %do.end35
  %ret.7 = phi i32 [ %ret.6, %failed_getclock ], [ -16, %for.end.failed_of_parse_crit_edge ], [ %retval.0.i334.ph, %imxfb_of_read_mode.exit.thread ], [ -12, %if.end37.failed_of_parse_crit_edge ], [ -22, %do.end35 ]
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 27
  %120 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pseudo_palette, align 4
  call void @kfree(ptr noundef %121) #11
  br label %failed_init

failed_init:                                      ; preds = %failed_of_parse, %if.end15.failed_init_crit_edge
  %ret.8 = phi i32 [ %call16, %if.end15.failed_init_crit_edge ], [ %ret.7, %failed_of_parse ]
  call void @framebuffer_release(ptr noundef nonnull %call12) #11
  br label %cleanup197

cleanup197:                                       ; preds = %failed_init, %if.end180, %if.end8.cleanup197_crit_edge, %if.end4.cleanup197_crit_edge, %imxfb_setup.exit
  %retval.0 = phi i32 [ %ret.8, %failed_init ], [ 0, %if.end180 ], [ -19, %imxfb_setup.exit ], [ -19, %if.end4.cleanup197_crit_edge ], [ -12, %if.end8.cleanup197_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  tail call fastcc void @imxfb_disable_controller(ptr noundef %3)
  tail call void @unregister_framebuffer(ptr noundef %1) #11
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %exit = getelementptr inbounds %struct.imx_fb_platform_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exit, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void %7(ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %map_size = getelementptr inbounds %struct.imxfb_info, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_size, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %map_dma = getelementptr inbounds %struct.imxfb_info, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %map_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %map_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef %14, i32 noundef %16, i32 noundef 4) #11
  %regs = getelementptr inbounds %struct.imxfb_info, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %18) #11
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %20
  %add.i = add i32 %sub.i, %22
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %20, i32 noundef %add.i) #11
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 27
  %23 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pseudo_palette, align 4
  tail call void @kfree(ptr noundef %24) #11
  tail call void @framebuffer_release(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imxfb_init_fbinfo(ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_init_fbinfo.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_init_fbinfo, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !189

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_init_fbinfo.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 64) #15
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %pseudo_palette, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %8 = call ptr @memset(ptr %5, i32 0, i32 88)
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %devtype = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %devtype, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7
  %call10 = tail call i32 @strlcpy(ptr noundef %fix, ptr noundef nonnull @.str.29, i32 noundef 16) #11
  %type = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type_aux, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 7
  %17 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %ywrapstep, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 12
  %19 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %accel, align 4
  %nonstd = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 12
  %20 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nonstd, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 13
  %21 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %activate, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 14
  %22 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 15
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %width, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 16
  %24 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %accel_flags, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 25
  %25 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %vmode, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 20
  %26 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @imxfb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 128, ptr %flags, align 4
  %tobool22.not = icmp eq ptr %1, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %lscr1 = getelementptr inbounds %struct.imx_fb_platform_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %lscr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lscr1, align 4
  %lscr124 = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 15
  %30 = ptrtoint ptr %lscr124 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lscr124, align 4
  %dmacr = getelementptr inbounds %struct.imx_fb_platform_data, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dmacr, align 4
  %dmacr25 = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 16
  %33 = ptrtoint ptr %dmacr25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dmacr25, align 4
  %pwmr = getelementptr inbounds %struct.imx_fb_platform_data, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %pwmr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pwmr, align 4
  %pwmr26 = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %pwmr26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %pwmr26, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %38, ptr noundef nonnull @.str.30, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i, null
  %conv = zext i1 %tobool.i to i32
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 7
  %39 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %grayscale, align 4
  %call.i84 = tail call ptr @of_find_property(ptr noundef %38, ptr noundef nonnull @.str.31, ptr noundef null) #11
  %tobool.i85 = icmp ne ptr %call.i84, null
  %cmap_inverse = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 17
  %frombool31 = zext i1 %tobool.i85 to i8
  %40 = ptrtoint ptr %cmap_inverse to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool31, ptr %cmap_inverse, align 4
  %call.i86 = tail call ptr @of_find_property(ptr noundef %38, ptr noundef nonnull @.str.32, ptr noundef null) #11
  %tobool.i87 = icmp ne ptr %call.i86, null
  %cmap_static = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 18
  %frombool33 = zext i1 %tobool.i87 to i8
  %41 = ptrtoint ptr %cmap_static to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool33, ptr %cmap_static, align 1
  %lscr134 = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 15
  %42 = ptrtoint ptr %lscr134 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1180416, ptr %lscr134, align 4
  %pwmr35 = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 14
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.33, ptr noundef %pwmr35, i32 noundef 1, i32 noundef 0) #11
  %call.i.i88 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.34, ptr noundef %lscr134, i32 noundef 1, i32 noundef 0) #11
  %dmacr39 = getelementptr inbounds %struct.imxfb_info, ptr %5, i32 0, i32 16
  %call.i.i89 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.35, ptr noundef %dmacr39, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp ult i32 %3, 64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %var, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %5 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp2 = icmp ult i32 %6, 64
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %yres, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %8 = load ptr, ptr @fb_mode, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode.i, align 4
  br label %imxfb_find_mode.exit

if.end.i:                                         ; preds = %if.end5
  %num_modes.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13.i = icmp sgt i32 %12, 0
  br i1 %cmp13.i, label %for.body.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %mode1.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %m.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %14, %for.body.preheader.i ]
  %15 = ptrtoint ptr %m.014.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m.014.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull %8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %for.body.i.imxfb_find_mode.exit_crit_edge, label %for.inc.i

for.body.i.imxfb_find_mode.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imxfb_find_mode.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %incdec.ptr.i = getelementptr %struct.imx_fb_videomode, ptr %m.014.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

imxfb_find_mode.exit:                             ; preds = %for.body.i.imxfb_find_mode.exit_crit_edge, %if.then.i
  %retval.0.i810 = phi ptr [ %10, %if.then.i ], [ %m.014.i, %for.body.i.imxfb_find_mode.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i810, null
  br i1 %tobool.not, label %imxfb_find_mode.exit.cleanup_crit_edge, label %if.end7

imxfb_find_mode.exit.cleanup_crit_edge:           ; preds = %imxfb_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %imxfb_find_mode.exit
  %xres8 = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 2
  %17 = ptrtoint ptr %xres8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres8, align 4
  %19 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %var, align 4
  %yres11 = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 3
  %20 = ptrtoint ptr %yres11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres11, align 4
  %22 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %yres, align 4
  %bpp = getelementptr inbounds %struct.imx_fb_videomode, ptr %retval.0.i810, i32 0, i32 3
  %23 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bpp, align 1
  %conv = zext i8 %24 to i32
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %25 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %bits_per_pixel, align 4
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 4
  %26 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixclock, align 4
  %pixclock14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %28 = ptrtoint ptr %pixclock14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pixclock14, align 4
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 9
  %29 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hsync_len, align 4
  %hsync_len16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %31 = ptrtoint ptr %hsync_len16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hsync_len16, align 4
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 5
  %32 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %left_margin, align 4
  %left_margin18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %34 = ptrtoint ptr %left_margin18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %left_margin18, align 4
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 6
  %35 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %right_margin, align 4
  %right_margin20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %37 = ptrtoint ptr %right_margin20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %right_margin20, align 4
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 10
  %38 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vsync_len, align 4
  %vsync_len22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %40 = ptrtoint ptr %vsync_len22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %vsync_len22, align 4
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 7
  %41 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %upper_margin, align 4
  %upper_margin24 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %43 = ptrtoint ptr %upper_margin24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %upper_margin24, align 4
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 8
  %44 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lower_margin, align 4
  %lower_margin26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %46 = ptrtoint ptr %lower_margin26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %lower_margin26, align 4
  %sync = getelementptr inbounds %struct.fb_videomode, ptr %retval.0.i810, i32 0, i32 11
  %47 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sync, align 4
  %sync28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %49 = ptrtoint ptr %sync28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sync28, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %50 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xres_virtual, align 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 %18)
  %53 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %54 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %yres_virtual, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %21)
  %57 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %yres_virtual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_check_var.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_check_var, %if.then48)) #11
          to label %do.end [label %if.then48], !srcloc !189

if.then48:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_check_var.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.53, i32 noundef %59) #11
  br label %do.end

do.end:                                           ; preds = %if.then48, %if.end7
  %clk_per = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_per, align 4
  %call51 = tail call i32 @clk_get_rate(ptr noundef %61) #11
  %62 = ptrtoint ptr %pixclock14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pixclock14, align 4
  %conv53 = zext i32 %63 to i64
  %conv54 = zext i32 %call51 to i64
  %mul = mul nuw i64 %conv53, %conv54
  %64 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #17, !srcloc !190
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %64, i32 0) #17, !srcloc !191
  %asmresult10.i = extractvalue { i64, i32 } %65, 0
  %div225801 = lshr i64 %asmresult10.i, 18
  %conv284 = trunc i64 %div225801 to i32
  %66 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %div225801) #17, !srcloc !190
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %div225801, i64 %66, i32 0) #17, !srcloc !191
  %asmresult10.i811 = extractvalue { i64, i32 } %67, 0
  %div446802 = lshr i64 %asmresult10.i811, 18
  %conv447 = trunc i64 %div446802 to i32
  %mul448.neg = mul i32 %conv447, -1000000
  %sub449 = add i32 %mul448.neg, %conv284
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %sub449)
  %cmp472 = icmp ugt i32 %sub449, 500000
  %extract.t = zext i1 %cmp472 to i32
  %tmp.0.off0 = add i32 %conv447, -1
  %dec = add i32 %tmp.0.off0, %extract.t
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %dec)
  %cmp477 = icmp ugt i32 %dec, 63
  br i1 %cmp477, label %if.then479, label %do.end.if.end486_crit_edge

do.end.if.end486_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end486

if.then479:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %div484 = udiv i32 %call51, 63
  %call485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %div484) #14
  br label %if.end486

if.end486:                                        ; preds = %if.then479, %do.end.if.end486_crit_edge
  %pcr.0 = phi i32 [ 63, %if.then479 ], [ %dec, %do.end.if.end486_crit_edge ]
  %68 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bits_per_pixel, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %69, label %sw.default [
    i32 32, label %sw.bb
    i32 8, label %sw.bb503
  ]

sw.bb:                                            ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #13
  %or488 = or i32 %pcr.0, 201326592
  br label %sw.epilog

sw.default:                                       ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #13
  %devtype.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 5
  %71 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i.not = icmp eq i32 %72, 0
  %pcr.1.v = select i1 %cmp.i.not, i32 134217728, i32 167772160
  %pcr.1 = or i32 %pcr.1.v, %pcr.0
  %pcr497 = getelementptr inbounds %struct.imx_fb_videomode, ptr %retval.0.i810, i32 0, i32 1
  %73 = ptrtoint ptr %pcr497 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pcr497, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %tobool499.not = icmp sgt i32 %74, -1
  %spec.select = select i1 %tobool499.not, ptr @def_rgb_16_stn, ptr @def_rgb_16_tft
  br label %sw.epilog

sw.bb503:                                         ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #13
  %or504 = or i32 %pcr.0, 100663296
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb503, %sw.default, %sw.bb
  %pcr.2 = phi i32 [ %or504, %sw.bb503 ], [ %or488, %sw.bb ], [ %pcr.1, %sw.default ]
  %rgb.0 = phi ptr [ @def_rgb_8, %sw.bb503 ], [ @def_rgb_18, %sw.bb ], [ %spec.select, %sw.default ]
  %pcr505 = getelementptr inbounds %struct.imx_fb_videomode, ptr %retval.0.i810, i32 0, i32 1
  %75 = ptrtoint ptr %pcr505 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pcr505, align 4
  %and506 = and i32 %76, -234881088
  %or507 = or i32 %and506, %pcr.2
  %pcr508 = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 12
  %77 = ptrtoint ptr %pcr508 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or507, ptr %pcr508, align 4
  %devtype.i812 = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 5
  %78 = ptrtoint ptr %devtype.i812 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %devtype.i812, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i813.not = icmp eq i32 %79, 0
  br i1 %cmp.i813.not, label %sw.epilog.if.end515_crit_edge, label %land.lhs.true511

sw.epilog.if.end515_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end515

land.lhs.true511:                                 ; preds = %sw.epilog
  %aus_mode = getelementptr inbounds %struct.imx_fb_videomode, ptr %retval.0.i810, i32 0, i32 2
  %80 = ptrtoint ptr %aus_mode to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %aus_mode, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool512.not = icmp eq i8 %81, 0
  br i1 %tobool512.not, label %land.lhs.true511.if.end515_crit_edge, label %if.then514

land.lhs.true511.if.end515_crit_edge:             ; preds = %land.lhs.true511
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end515

if.then514:                                       ; preds = %land.lhs.true511
  call void @__sanitizer_cov_trace_pc() #13
  %lauscr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 13
  %82 = ptrtoint ptr %lauscr to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -2147483648, ptr %lauscr, align 4
  br label %if.end515

if.end515:                                        ; preds = %if.then514, %land.lhs.true511.if.end515_crit_edge, %sw.epilog.if.end515_crit_edge
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %83 = call ptr @memcpy(ptr %red, ptr %rgb.0, i32 12)
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %green517 = getelementptr inbounds %struct.imxfb_rgb, ptr %rgb.0, i32 0, i32 1
  %84 = call ptr @memcpy(ptr %green, ptr %green517, i32 12)
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %blue518 = getelementptr inbounds %struct.imxfb_rgb, ptr %rgb.0, i32 0, i32 2
  %85 = call ptr @memcpy(ptr %blue, ptr %blue518, i32 12)
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %transp519 = getelementptr inbounds %struct.imxfb_rgb, ptr %rgb.0, i32 0, i32 3
  %86 = call ptr @memcpy(ptr %transp, ptr %transp519, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_check_var.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_check_var, %if.then532)) #11
          to label %do.body543 [label %if.then532], !srcloc !189

if.then532:                                       ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #13
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %87 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length, align 4
  %length535 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %89 = ptrtoint ptr %length535 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length535, align 4
  %length537 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %91 = ptrtoint ptr %length537 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length537, align 4
  %length539 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %93 = ptrtoint ptr %length539 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length539, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_check_var.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.55, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94) #11
  br label %do.body543

do.body543:                                       ; preds = %if.then532, %if.end515
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_check_var.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_check_var, %if.then555)) #11
          to label %cleanup [label %if.then555], !srcloc !189

if.then555:                                       ; preds = %do.body543
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %red, align 4
  %97 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %green, align 4
  %99 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blue, align 4
  %101 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %transp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_check_var.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.56, i32 noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef %102) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then555, %do.body543, %imxfb_find_mode.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %imxfb_find_mode.exit.cleanup_crit_edge ], [ 0, %if.then555 ], [ 0, %do.body543 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %if.else [
    i32 16, label %entry.if.then_crit_edge
    i32 32, label %entry.if.then_crit_edge28
  ]

entry.if.then_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge28
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %5 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %visual, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %cmap_static = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %cmap_static to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmap_static, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %visual6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  br i1 %tobool.not, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %visual6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %visual6, align 4
  br label %if.end10

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %visual6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %visual6, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then4, %if.then
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %11, %3
  %div27 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div27, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp14 = icmp eq i32 %3, 8
  %cond = select i1 %cmp14, i32 256, i32 16
  %palette_size = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %palette_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %palette_size, align 4
  tail call fastcc void @imxfb_activate_var(ptr noundef %var1, ptr noundef %info)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imxfb_enable_controller(ptr nocapture noundef %fbi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_enable_controller.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_enable_controller, %if.then4)) #11
          to label %do.body6 [label %if.then4], !srcloc !189

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_enable_controller.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.83) #11
  br label %do.body6

do.body6:                                         ; preds = %if.then4, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  tail call void @arm_heavy_mb() #11
  %map_dma = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 7
  %2 = ptrtoint ptr %map_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_dma, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %regs = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  %12 = and i32 %11, -193
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %16, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 33554432) #11, !srcloc !194
  %clk_ipg = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 2
  %17 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ipg, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body6.do.body44_crit_edge

do.body6.do.body44_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

if.end.i:                                         ; preds = %do.body6
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end32, label %if.end.i.do.body44.sink.split_crit_edge

if.end.i.do.body44.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44.sink.split

if.end32:                                         ; preds = %if.end.i
  %clk_ahb = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 3
  %19 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_ahb, align 4
  %call.i66 = tail call i32 @clk_prepare(ptr noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i70, label %if.end32.err_enable_ahb_crit_edge

if.end32.err_enable_ahb_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_enable_ahb

if.end.i70:                                       ; preds = %if.end32
  %call1.i68 = tail call i32 @clk_enable(ptr noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool2.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool2.not.i69, label %if.end36, label %if.end.i70.err_enable_ahb.sink.split_crit_edge

if.end.i70.err_enable_ahb.sink.split_crit_edge:   ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_enable_ahb.sink.split

if.end36:                                         ; preds = %if.end.i70
  %clk_per = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 4
  %21 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_per, align 4
  %call.i74 = tail call i32 @clk_prepare(ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i78, label %if.end36.err_enable_per_crit_edge

if.end36.err_enable_per_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_enable_per

if.end.i78:                                       ; preds = %if.end36
  %call1.i76 = tail call i32 @clk_enable(ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool2.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool2.not.i77, label %if.end40, label %if.then3.i79

if.then3.i79:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %22) #11
  br label %err_enable_per

if.end40:                                         ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

err_enable_per:                                   ; preds = %if.then3.i79, %if.end36.err_enable_per_crit_edge
  %retval.0.i80.ph = phi i32 [ %call1.i76, %if.then3.i79 ], [ %call.i74, %if.end36.err_enable_per_crit_edge ]
  %24 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %25) #11
  br label %err_enable_ahb.sink.split

err_enable_ahb.sink.split:                        ; preds = %err_enable_per, %if.end.i70.err_enable_ahb.sink.split_crit_edge
  %.sink = phi ptr [ %25, %err_enable_per ], [ %20, %if.end.i70.err_enable_ahb.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i80.ph, %err_enable_per ], [ %call1.i68, %if.end.i70.err_enable_ahb.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %err_enable_ahb

err_enable_ahb:                                   ; preds = %err_enable_ahb.sink.split, %if.end32.err_enable_ahb_crit_edge
  %ret.0 = phi i32 [ %call.i66, %if.end32.err_enable_ahb_crit_edge ], [ %ret.0.ph, %err_enable_ahb.sink.split ]
  %26 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %27) #11
  br label %do.body44.sink.split

do.body44.sink.split:                             ; preds = %err_enable_ahb, %if.end.i.do.body44.sink.split_crit_edge
  %.sink90 = phi ptr [ %27, %err_enable_ahb ], [ %18, %if.end.i.do.body44.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_enable_ahb ], [ %call1.i, %if.end.i.do.body44.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink90) #11
  br label %do.body44

do.body44:                                        ; preds = %do.body44.sink.split, %do.body6.do.body44_crit_edge
  %ret.1 = phi i32 [ %call.i, %do.body6.do.body44_crit_edge ], [ %ret.1.ph, %do.body44.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr48 = getelementptr i8, ptr %29, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #11, !srcloc !194
  br label %cleanup

cleanup:                                          ; preds = %do.body44, %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.body44 ], [ 0, %if.end40 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %trans, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %cmap_inverse = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %cmap_inverse to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmap_inverse, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %sub = sub i32 65535, %red
  %sub1 = sub i32 65535, %green
  %sub2 = sub i32 65535, %blue
  %blue.addr.0 = select i1 %tobool.not, i32 %blue, i32 %sub2
  %green.addr.0 = select i1 %tobool.not, i32 %green, i32 %sub1
  %red.addr.0 = select i1 %tobool.not, i32 %red, i32 %sub
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %entry.if.end8_crit_edge, label %if.then4

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %red.addr.0, 19595
  %mul5 = mul i32 %green.addr.0, 38470
  %add = add i32 %mul, %mul5
  %mul6 = mul i32 %blue.addr.0, 7471
  %add7 = add i32 %add, %mul6
  %shr = lshr i32 %add7, 16
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %entry.if.end8_crit_edge
  %blue.addr.1 = phi i32 [ %shr, %if.then4 ], [ %blue.addr.0, %entry.if.end8_crit_edge ]
  %green.addr.1 = phi i32 [ %shr, %if.then4 ], [ %green.addr.0, %entry.if.end8_crit_edge ]
  %red.addr.1 = phi i32 [ %shr, %if.then4 ], [ %red.addr.0, %entry.if.end8_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %7, label %if.end8.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %if.end8.sw.bb20_crit_edge
    i32 3, label %if.end8.sw.bb20_crit_edge54
  ]

if.end8.sw.bb20_crit_edge54:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20

if.end8.sw.bb20_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then9, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %9 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pseudo_palette, align 4
  %red11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.1, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %12
  %shr.i = lshr i32 %and.i, %sub.i
  %13 = ptrtoint ptr %red11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %red11, align 4
  %shl.i = shl i32 %shr.i, %14
  %green13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i42 = and i32 %green.addr.1, 65535
  %length.i43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %15 = ptrtoint ptr %length.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i43, align 4
  %sub.i44 = sub i32 16, %16
  %shr.i45 = lshr i32 %and.i42, %sub.i44
  %17 = ptrtoint ptr %green13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %green13, align 4
  %shl.i46 = shl i32 %shr.i45, %18
  %or = or i32 %shl.i46, %shl.i
  %blue16 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i47 = and i32 %blue.addr.1, 65535
  %length.i48 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %19 = ptrtoint ptr %length.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i48, align 4
  %sub.i49 = sub i32 16, %20
  %shr.i50 = lshr i32 %and.i47, %sub.i49
  %21 = ptrtoint ptr %blue16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blue16, align 4
  %shl.i51 = shl i32 %shr.i50, %22
  %or18 = or i32 %or, %shl.i51
  %arrayidx = getelementptr i32, ptr %10, i32 %regno
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or18, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end8.sw.bb20_crit_edge, %if.end8.sw.bb20_crit_edge54
  %palette_size.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %palette_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %palette_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %regno)
  %cmp.i = icmp ugt i32 %25, %regno
  br i1 %cmp.i, label %if.then.i, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i52 = shl i32 %red.addr.1, 4
  %add.i = sub i32 32767, %red.addr.1
  %sub.i53 = add i32 %add.i, %shl.i52
  %26 = lshr i32 %sub.i53, 8
  %shl1.i = and i32 %26, 16776960
  %shl2.i = shl i32 %green.addr.1, 4
  %add3.i = sub i32 32767, %green.addr.1
  %sub4.i = add i32 %add3.i, %shl2.i
  %27 = lshr i32 %sub4.i, 12
  %shl6.i = and i32 %27, 1048560
  %shl7.i = shl i32 %blue.addr.1, 4
  %add8.i = sub i32 32767, %blue.addr.1
  %sub9.i = add i32 %add8.i, %shl7.i
  %shr10.i = lshr i32 %sub9.i, 16
  %or.i = or i32 %shl6.i, %shr10.i
  %or11.i = or i32 %or.i, %shl1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %regs.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 2048
  %shl12.i = shl i32 %regno, 2
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %shl12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %28) #11, !srcloc !194
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb20.sw.epilog_crit_edge, %if.then9, %sw.bb.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 1, %if.end8.sw.epilog_crit_edge ], [ 0, %if.then9 ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 1, %sw.bb20.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_blank.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_blank, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !189

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_blank.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.37, i32 noundef %blank) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %blank, label %do.end.cleanup_crit_edge [
    i32 4, label %do.end.sw.bb_crit_edge
    i32 2, label %do.end.sw.bb_crit_edge8
    i32 3, label %do.end.sw.bb_crit_edge9
    i32 1, label %do.end.sw.bb_crit_edge10
    i32 0, label %sw.bb3
  ]

do.end.sw.bb_crit_edge10:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.bb_crit_edge9:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.bb_crit_edge8:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge8, %do.end.sw.bb_crit_edge9, %do.end.sw.bb_crit_edge10
  tail call fastcc void @imxfb_disable_controller(ptr noundef %1)
  br label %cleanup

sw.bb3:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc i32 @imxfb_enable_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %sw.bb ]
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imxfb_disable_controller(ptr nocapture noundef %fbi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_disable_controller.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_disable_controller, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !189

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_disable_controller.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.39) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %clk_per = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 4
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %clk_ahb = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 3
  %4 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %clk_ipg = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 2
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  tail call void @arm_heavy_mb() #11
  %regs = getelementptr inbounds %struct.imxfb_info, ptr %fbi, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !194
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_fb_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imxfb_activate_var(ptr nocapture noundef readonly %var, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %devtype.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  %cond = select i1 %cmp.i.not, i32 511, i32 1023
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_activate_var.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_activate_var, %if.then)) #11
          to label %do.body5 [label %if.then], !srcloc !189

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %6 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hsync_len, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %8 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %left_margin, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %10 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %right_margin, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_activate_var.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.58, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxfb_activate_var.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imxfb_activate_var, %if.then17)) #11
          to label %do.end20 [label %if.then17], !srcloc !189

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %14 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_len, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %16 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %upper_margin, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %18 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lower_margin, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imxfb_activate_var.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.59, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #11
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %22 = add i32 %21, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1009, i32 %22)
  %23 = icmp ult i32 %22, -1009
  br i1 %23, label %do.end27, label %do.end20.if.end31_crit_edge

do.end20.if.end31_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end27:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %fix, i32 noundef %21) #14
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %do.end20.if.end31_crit_edge
  %hsync_len32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %24 = ptrtoint ptr %hsync_len32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hsync_len32, align 4
  %26 = add i32 %25, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %26)
  %27 = icmp ult i32 %26, -64
  br i1 %27, label %do.end40, label %if.end31.if.end47_crit_edge

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %fix42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %fix42, i32 noundef %25) #14
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %if.end31.if.end47_crit_edge
  %left_margin48 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %28 = ptrtoint ptr %left_margin48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %left_margin48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %29)
  %cmp49 = icmp ugt i32 %29, 255
  br i1 %cmp49, label %do.end53, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %fix55 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %fix55, i32 noundef %29) #14
  br label %if.end60

if.end60:                                         ; preds = %do.end53, %if.end47.if.end60_crit_edge
  %right_margin61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %30 = ptrtoint ptr %right_margin61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %right_margin61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %31)
  %cmp62 = icmp ugt i32 %31, 255
  br i1 %cmp62, label %do.end66, label %if.end60.if.end73_crit_edge

if.end60.if.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %fix68 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %fix68, i32 noundef %31) #14
  br label %if.end73

if.end73:                                         ; preds = %do.end66, %if.end60.if.end73_crit_edge
  %yres74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %32 = ptrtoint ptr %yres74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yres74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp75 = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cond)
  %cmp78 = icmp ugt i32 %33, %cond
  %or.cond4 = select i1 %cmp75, i1 true, i1 %cmp78
  br i1 %or.cond4, label %do.end82, label %if.end73.if.end89_crit_edge

if.end73.if.end89_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %fix84 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %fix84, i32 noundef %33) #14
  br label %if.end89

if.end89:                                         ; preds = %do.end82, %if.end73.if.end89_crit_edge
  %vsync_len90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %34 = ptrtoint ptr %vsync_len90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vsync_len90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %35)
  %cmp91 = icmp ugt i32 %35, 100
  br i1 %cmp91, label %do.end95, label %if.end89.if.end102_crit_edge

if.end89.if.end102_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %fix97 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %fix97, i32 noundef %35) #14
  br label %if.end102

if.end102:                                        ; preds = %do.end95, %if.end89.if.end102_crit_edge
  %upper_margin103 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %36 = ptrtoint ptr %upper_margin103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %upper_margin103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %37)
  %cmp104 = icmp ugt i32 %37, 63
  br i1 %cmp104, label %do.end108, label %if.end102.if.end115_crit_edge

if.end102.if.end115_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %fix110 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %fix110, i32 noundef %37) #14
  br label %if.end115

if.end115:                                        ; preds = %do.end108, %if.end102.if.end115_crit_edge
  %lower_margin116 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %38 = ptrtoint ptr %lower_margin116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lower_margin116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %39)
  %cmp117 = icmp ugt i32 %39, 255
  br i1 %cmp117, label %do.end121, label %if.end115.do.body129_crit_edge

if.end115.do.body129_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body129

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %fix123 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %fix123, i32 noundef %39) #14
  br label %do.body129

do.body129:                                       ; preds = %do.end121, %if.end115.do.body129_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %var, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %42 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %43, %41
  %div1332 = lshr i32 %mul, 5
  %and = and i32 %div1332, 1023
  %44 = tail call i32 @llvm.bswap.i32(i32 %and)
  %regs = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %hsync_len32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hsync_len32, align 4
  %sub = shl i32 %48, 26
  %shl = add i32 %sub, -67108864
  %49 = ptrtoint ptr %right_margin61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %right_margin61, align 4
  %sub140 = shl i32 %50, 8
  %and141 = add i32 %sub140, 65280
  %shl142 = and i32 %and141, 65280
  %or = or i32 %shl142, %shl
  %51 = ptrtoint ptr %left_margin48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %left_margin48, align 4
  %sub144 = add i32 %52, 253
  %and145 = and i32 %sub144, 255
  %or146 = or i32 %or, %and145
  %53 = tail call i32 @llvm.bswap.i32(i32 %or146)
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr148 = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %53) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %vsync_len90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vsync_len90, align 4
  %shl154 = shl i32 %57, 26
  %58 = ptrtoint ptr %lower_margin116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lower_margin116, align 4
  %and156 = shl i32 %59, 8
  %shl157 = and i32 %and156, 65280
  %or158 = or i32 %shl157, %shl154
  %60 = ptrtoint ptr %upper_margin103 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %upper_margin103, align 4
  %and160 = and i32 %61, 255
  %or161 = or i32 %or158, %and160
  %62 = tail call i32 @llvm.bswap.i32(i32 %or161)
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr163 = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %62) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %var, align 4
  %67 = shl i32 %66, 16
  %shl169 = and i32 %67, 66060288
  %68 = ptrtoint ptr %yres74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %yres74, align 4
  %and171 = and i32 %69, %cond
  %or172 = or i32 %shl169, %and171
  %70 = tail call i32 @llvm.bswap.i32(i32 %or172)
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 4
  %add.ptr174 = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 %70) #11, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  tail call void @arm_heavy_mb() #11
  %pcr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 12
  %73 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pcr, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr179 = getelementptr i8, ptr %77, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %75) #11, !srcloc !194
  %pwmr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 14
  %78 = ptrtoint ptr %pwmr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pwmr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool180.not = icmp eq i32 %79, 0
  br i1 %tobool180.not, label %do.body129.do.body189_crit_edge, label %do.body182

do.body129.do.body189_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body189

do.body182:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  tail call void @arm_heavy_mb() #11
  %80 = ptrtoint ptr %pwmr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pwmr, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr187 = getelementptr i8, ptr %84, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %82) #11, !srcloc !194
  br label %do.body189

do.body189:                                       ; preds = %do.body182, %do.body129.do.body189_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  tail call void @arm_heavy_mb() #11
  %lscr1 = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 15
  %85 = ptrtoint ptr %lscr1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lscr1, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr193 = getelementptr i8, ptr %89, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %87) #11, !srcloc !194
  %dmacr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 16
  %90 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dmacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool194.not = icmp eq i32 %91, 0
  br i1 %tobool194.not, label %do.body189.if.end202_crit_edge, label %do.body196

do.body189.if.end202_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

do.body196:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dmacr, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr201 = getelementptr i8, ptr %96, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %94) #11, !srcloc !194
  br label %if.end202

if.end202:                                        ; preds = %do.body196, %do.body189.if.end202_crit_edge
  %lauscr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 13
  %97 = ptrtoint ptr %lauscr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lauscr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool203.not = icmp eq i32 %98, 0
  br i1 %tobool203.not, label %if.end202.if.end211_crit_edge, label %do.body205

if.end202.if.end211_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

do.body205:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  tail call void @arm_heavy_mb() #11
  %99 = ptrtoint ptr %lauscr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lauscr, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  %add.ptr210 = getelementptr i8, ptr %103, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 %101) #11, !srcloc !194
  br label %if.end211

if.end211:                                        ; preds = %do.body205, %if.end202.if.end211_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_lcd_get_power(ptr nocapture noundef readonly %lcddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lcd_pwr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_pwr, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @regulator_is_enabled(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 4, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_lcd_set_power(ptr nocapture noundef readonly %lcddev, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lcd_pwr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_pwr, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %cmp = icmp eq i32 %power, 0
  %conv = zext i1 %cmp to i32
  %lcd_pwr_enabled.i = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %lcd_pwr_enabled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lcd_pwr_enabled.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.i4 = icmp eq i32 %5, %conv
  br i1 %cmp.i4, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  br i1 %cmp, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @regulator_enable(ptr noundef %3) #11
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @regulator_disable(ptr noundef %3) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.then1.i
  %ret.0.i = phi i32 [ %call.i, %if.then1.i ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp5.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %lcd_pwr_enabled.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %lcd_pwr_enabled.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end4.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then6.i ], [ %ret.0.i, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imxfb_lcd_get_contrast(ptr nocapture noundef readonly %lcddev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwmr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pwmr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwmr, align 4
  %and = and i32 %3, 255
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_lcd_set_contrast(ptr nocapture noundef readonly %lcddev, i32 noundef %contrast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwmr = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pwmr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwmr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.smax.i32(i32 %contrast, i32 0)
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 255)
  %and = and i32 %3, -256
  %or = or i32 %and, %7
  %8 = ptrtoint ptr %pwmr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %pwmr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %pwmr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pwmr, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %regs = getelementptr inbounds %struct.imxfb_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #11, !srcloc !194
  br label %if.end9

if.end9:                                          ; preds = %if.then, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imxfb_lcd_check_fb(ptr nocapture noundef readonly %lcddev, ptr noundef readonly %fi) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %fi, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %cmp = icmp eq ptr %3, %1
  %spec.select = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  tail call fastcc void @imxfb_disable_controller(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxfb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %call1 = tail call fastcc i32 @imxfb_enable_controller(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !172, !173, !175, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__initcall__kmod_imxfb__330_1136_imxfb_driver_init6, !1, !"__initcall__kmod_imxfb__330_1136_imxfb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/imxfb.c", i32 1136, i32 1}
!2 = !{ptr @__exitcall_imxfb_driver_exit, !1, !"__exitcall_imxfb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description331, !4, !"__UNIQUE_ID_description331", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/imxfb.c", i32 1138, i32 1}
!5 = !{ptr @__UNIQUE_ID_author332, !6, !"__UNIQUE_ID_author332", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/imxfb.c", i32 1139, i32 1}
!7 = !{ptr @__UNIQUE_ID_file333, !8, !"__UNIQUE_ID_file333", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/imxfb.c", i32 1140, i32 1}
!9 = !{ptr @__UNIQUE_ID_license334, !8, !"__UNIQUE_ID_license334", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/imxfb.c", i32 1128, i32 11}
!12 = !{ptr @imxfb_driver, !13, !"imxfb_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/imxfb.c", i32 1126, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/imxfb.c", i32 873, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imxfb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @imxfb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/imxfb.c", i32 911, i32 52}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/imxfb.c", i32 913, i32 4}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @imxfb_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @imxfb_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/imxfb.c", i32 951, i32 42}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/imxfb.c", i32 972, i32 42}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/imxfb.c", i32 978, i32 42}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/imxfb.c", i32 986, i32 3}
!37 = !{ptr @imxfb_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imxfb_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/imxfb.c", i32 995, i32 3}
!41 = !{ptr @imxfb_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @imxfb_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/imxfb.c", i32 1030, i32 3}
!45 = !{ptr @imxfb_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @imxfb_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/imxfb.c", i32 1034, i32 48}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/imxfb.c", i32 1040, i32 45}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/imxfb.c", i32 845, i32 21}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/imxfb.c", i32 851, i32 33}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/imxfb.c", i32 664, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @imxfb_init_fbinfo.__UNIQUE_ID_ddebug327, !56, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/imxfb.c", i32 674, i32 24}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/imxfb.c", i32 700, i32 7}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/imxfb.c", i32 701, i32 49}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/imxfb.c", i32 702, i32 48}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/imxfb.c", i32 706, i32 28}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/imxfb.c", i32 708, i32 28}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/imxfb.c", i32 710, i32 28}
!73 = !{ptr @imxfb_ops, !74, !"imxfb_ops", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/imxfb.c", i32 570, i32 28}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/imxfb.c", i32 554, i32 2}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @imxfb_blank.__UNIQUE_ID_ddebug324, !76, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/imxfb.c", i32 540, i32 2}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @imxfb_disable_controller.__UNIQUE_ID_ddebug323, !80, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!83 = !{ptr @fb_mode, !84, !"fb_mode", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/imxfb.c", i32 124, i32 20}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/imxfb.c", i32 724, i32 36}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/imxfb.c", i32 730, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @imxfb_of_read_mode._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @imxfb_of_read_mode._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/imxfb.c", i32 734, i32 33}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/imxfb.c", i32 735, i32 34}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/imxfb.c", i32 738, i32 3}
!98 = !{ptr @imxfb_of_read_mode._entry.45, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @imxfb_of_read_mode._entry_ptr.47, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/imxfb.c", i32 743, i32 3}
!102 = !{ptr @imxfb_of_read_mode._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @imxfb_of_read_mode._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/imxfb.c", i32 753, i32 51}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/imxfb.c", i32 384, i32 2}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @imxfb_check_var.__UNIQUE_ID_ddebug319, !107, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/imxfb.c", i32 399, i32 3}
!112 = !{ptr @imxfb_check_var._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @imxfb_check_var._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/imxfb.c", i32 445, i32 2}
!116 = !{ptr @imxfb_check_var.__UNIQUE_ID_ddebug320, !115, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/imxfb.c", i32 449, i32 2}
!119 = !{ptr @imxfb_check_var.__UNIQUE_ID_ddebug321, !118, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!120 = !{ptr @def_rgb_18, !121, !"def_rgb_18", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/imxfb.c", i32 221, i32 25}
!122 = !{ptr @def_rgb_16_tft, !123, !"def_rgb_16_tft", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/imxfb.c", i32 228, i32 25}
!124 = !{ptr @def_rgb_16_stn, !125, !"def_rgb_16_stn", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/imxfb.c", i32 235, i32 25}
!126 = !{ptr @def_rgb_8, !127, !"def_rgb_8", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/imxfb.c", i32 242, i32 25}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/imxfb.c", i32 591, i32 2}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @imxfb_activate_var.__UNIQUE_ID_ddebug325, !129, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/imxfb.c", i32 594, i32 2}
!134 = !{ptr @imxfb_activate_var.__UNIQUE_ID_ddebug326, !133, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/imxfb.c", i32 600, i32 3}
!137 = !{ptr @imxfb_activate_var._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @imxfb_activate_var._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/imxfb.c", i32 603, i32 3}
!141 = !{ptr @imxfb_activate_var._entry.61, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @imxfb_activate_var._entry_ptr.63, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/imxfb.c", i32 606, i32 3}
!145 = !{ptr @imxfb_activate_var._entry.64, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @imxfb_activate_var._entry_ptr.66, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/imxfb.c", i32 609, i32 3}
!149 = !{ptr @imxfb_activate_var._entry.67, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @imxfb_activate_var._entry_ptr.69, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/imxfb.c", i32 612, i32 3}
!153 = !{ptr @imxfb_activate_var._entry.70, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @imxfb_activate_var._entry_ptr.72, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/imxfb.c", i32 615, i32 3}
!157 = !{ptr @imxfb_activate_var._entry.73, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @imxfb_activate_var._entry_ptr.75, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/video/fbdev/imxfb.c", i32 618, i32 3}
!161 = !{ptr @imxfb_activate_var._entry.76, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @imxfb_activate_var._entry_ptr.78, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/imxfb.c", i32 621, i32 3}
!165 = !{ptr @imxfb_activate_var._entry.79, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @imxfb_activate_var._entry_ptr.81, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @imxfb_lcd_ops, !168, !"imxfb_lcd_ops", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/imxfb.c", i32 833, i32 23}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/imxfb.c", i32 493, i32 2}
!171 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @imxfb_enable_controller.__UNIQUE_ID_ddebug322, !170, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!173 = !{ptr @imxfb_of_dev_id, !174, !"imxfb_of_dev_id", i1 false, i1 false}
!174 = !{!"../drivers/video/fbdev/imxfb.c", i32 191, i32 34}
!175 = !{ptr @imxfb_pm_ops, !176, !"imxfb_pm_ops", i1 false, i1 false}
!176 = !{!"../drivers/video/fbdev/imxfb.c", i32 1124, i32 8}
!177 = !{ptr @imxfb_devtype, !178, !"imxfb_devtype", i1 false, i1 false}
!178 = !{!"../drivers/video/fbdev/imxfb.c", i32 178, i32 40}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i64 2148978143, i64 2148978148, i64 2148978161, i64 2148978205, i64 2148978239, i64 2148978260}
!190 = !{i64 725359, i64 725386}
!191 = !{i64 726054, i64 726081, i64 726114, i64 726135, i64 726162, i64 726188}
!192 = !{i8 0, i8 2}
!193 = !{i64 2156165413}
!194 = !{i64 4640648}
!195 = !{i64 2156165839}
!196 = !{i64 2156167023}
!197 = !{i64 4641066}
!198 = !{i64 2156167964}
!199 = !{i64 2156168229}
!200 = !{i64 2156168628}
!201 = !{i64 2156140638}
!202 = !{i64 2156171247}
!203 = !{i64 2156191030}
!204 = !{i64 2156191804}
!205 = !{i64 2156192754}
!206 = !{i64 2156193559}
!207 = !{i64 2156194136}
!208 = !{i64 2156194549}
!209 = !{i64 2156194966}
!210 = !{i64 2156195386}
!211 = !{i64 2156195807}
!212 = !{i64 2156207740}
