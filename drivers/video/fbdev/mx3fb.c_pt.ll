; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mx3fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/mx3fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.di_mapping = type { i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_chan_request = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mx3fb_data = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.mx3fb_info = type { i32, i32, i32, [16 x i32], %struct.completion, %struct.mutex, ptr, ptr, ptr, i32, [2 x %struct.scatterlist], %struct.fb_var_screeninfo }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.mx3fb_platform_data = type { ptr, ptr, ptr, i32, i32 }
%struct.idmac_channel = type { %struct.dma_chan, i32, %union.ipu_channel_param, i32, i32, ptr, i32, ptr, [2 x ptr], %struct.list_head, %struct.list_head, %struct.spinlock, %struct.mutex, i8, i32, i32, [16 x i8] }
%union.ipu_channel_param = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i16, i16, i32, i16, i16, i32, i16, i8, i8, i8, i32, i16, i16 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipu_di_signal_cfg = type { i8, [3 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.idmac_tx_desc = type { %struct.dma_async_tx_descriptor, ptr, i32, %struct.list_head }

@mx3fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mx3fb_probe, ptr @mx3fb_remove, ptr null, ptr @mx3fb_suspend, ptr @mx3fb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_mx3fb__329_1698_mx3fb_init6 = internal global ptr @mx3fb_init, section ".initcall6.init", align 4
@__exitcall_mx3fb_exit = internal global ptr @mx3fb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [43 x i8] c"mx3fb.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [41 x i8] c"mx3fb.description=MX3 framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias332 = internal constant [32 x i8] c"mx3fb.alias=platform:mx3_sdc_fb\00", section ".modinfo", align 1
@__UNIQUE_ID_file333 = internal constant [37 x i8] c"mx3fb.file=drivers/video/fbdev/mx3fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [21 x i8] c"mx3fb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mx3_sdc_fb\00", [21 x i8] zeroinitializer }, align 32
@mx3fb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mx3fb->lock\00", [19 x i8] zeroinitializer }, align 32
@mx3fb_probe.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mx3fb\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mx3fb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/mx3fb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Remapped %pR at %p\0A\00", [44 x i8] zeroinitializer }, align 32
@mx3fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1620, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mx3fb: failed to register fb\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mx3fb_probe._entry_ptr = internal global ptr @mx3fb_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu-core\00", [23 x i8] zeroinitializer }, align 32
@init_fb_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 1441, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Illegal display data format %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_fb_chan\00", [19 x i8] zeroinitializer }, align 32
@init_fb_chan._entry_ptr = internal global ptr @init_fb_chan._entry, section ".printk_index", align 4
@mx3fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mx3fb_check_var, ptr @mx3fb_set_par, ptr @mx3fb_setcolreg, ptr null, ptr @mx3fb_blank, ptr @mx3fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fb_mode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mx3fb_modedb = internal constant { [6 x %struct.fb_videomode], [80 x i8] } { [6 x %struct.fb_videomode] [%struct.fb_videomode { ptr @.str.43, i32 60, i32 240, i32 320, i32 185925, i32 9, i32 16, i32 7, i32 9, i32 1, i32 1, i32 2013265921, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.44, i32 60, i32 240, i32 33, i32 185925, i32 9, i32 16, i32 7, i32 296, i32 1, i32 1, i32 2013265921, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.45, i32 60, i32 640, i32 480, i32 38255, i32 144, i32 0, i32 34, i32 40, i32 1, i32 1, i32 -2147483646, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.46, i32 60, i32 640, i32 480, i32 37538, i32 38, i32 177, i32 36, i32 1, i32 3, i32 1, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.47, i32 50, i32 640, i32 480, i32 37538, i32 38, i32 250, i32 32, i32 40, i32 32, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.48, i32 60, i32 640, i32 480, i32 40574, i32 35, i32 45, i32 9, i32 1, i32 46, i32 5, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@default_bpp = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@init_fb_chan.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 1, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disabling irq %d\0A\00", [46 x i8] zeroinitializer }, align 32
@init_fb_chan._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.4, i32 1508, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"registered, using mode %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@init_fb_chan._entry_ptr.16 = internal global ptr @init_fb_chan._entry.13, section ".printk_index", align 4
@mx3fb_init_fbinfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mx3fbi->mutex\00", [17 x i8] zeroinitializer }, align 32
@mx3fb_check_var.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mx3fb_check_var\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mx3fb_check_var.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.18, ptr @.str.4, ptr @.str.20, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pixclock set for 60Hz refresh = %u ps\0A\00", [57 x i8] zeroinitializer }, align 32
@mx3fb_set_par.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mx3fb_set_par\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s [%c]\0A\00", [23 x i8] zeroinitializer }, align 32
@mx3fb_setcolreg.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mx3fb_setcolreg\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s, regno = %u\0A\00", [16 x i8] zeroinitializer }, align 32
@mx3fb_blank.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 1, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mx3fb_blank\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, blank = %d, base %p, len %u\0A\00", [63 x i8] zeroinitializer }, align 32
@mx3fb_pan_display.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.22, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mx3fb_pan_display\00", [46 x i8] zeroinitializer }, align 32
@mx3fb_pan_display.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"x panning not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@mx3fb_pan_display.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.29, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Updating SDC BG buf %d address=0x%08lX\0A\00", [56 x i8] zeroinitializer }, align 32
@mx3fb_pan_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.4, i32 1188, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Panning failed due to %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mx3fb_pan_display._entry_ptr = internal global ptr @mx3fb_pan_display._entry, section ".printk_index", align 4
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"user interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mx3fb_pan_display._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.4, i32 1207, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error preparing a DMA transaction descriptor.\0A\00", [49 x i8] zeroinitializer }, align 32
@mx3fb_pan_display._entry_ptr.35 = internal global ptr @mx3fb_pan_display._entry.33, section ".printk_index", align 4
@mx3fb_pan_display.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.36, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d: Submit %p #%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mx3fb_pan_display._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.4, i32 1224, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error updating SDC buf %d to address=0x%08lX\0A\00", [50 x i8] zeroinitializer }, align 32
@mx3fb_pan_display._entry_ptr.39 = internal global ptr @mx3fb_pan_display._entry.37, section ".printk_index", align 4
@mx3fb_pan_display.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.40, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Update complete\0A\00", [47 x i8] zeroinitializer }, align 32
@mx3fb_dma_done.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mx3fb_dma_done\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq %d callback\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sharp-QVGA\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Sharp-CLI\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NEC-VGA\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TV-NTSC\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TV-PAL\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TV-VGA\00", [25 x i8] zeroinitializer }, align 32
@sdc_set_brightness.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdc_set_brightness\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: value = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__set_par.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__set_par\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pixclock = %u Hz\0A\00", [46 x i8] zeroinitializer }, align 32
@__set_par._entry = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 859, ptr @.str.7, ptr @.str.8 }, align 1
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mx3fb: Error initializing panel.\0A\00", [62 x i8] zeroinitializer }, align 32
@__set_par._entry_ptr = internal global ptr @__set_par._entry, section ".printk_index", align 4
@mx3fb_map_video_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 1342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot allocate %u bytes framebuffer memory\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mx3fb_map_video_memory\00", [41 x i8] zeroinitializer }, align 32
@mx3fb_map_video_memory._entry_ptr = internal global ptr @mx3fb_map_video_memory._entry, section ".printk_index", align 4
@mx3fb_map_video_memory.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"allocated fb @ p=0x%08x, v=0x%p, size=%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@sdc_init_panel.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdc_init_panel\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel size = %d x %d\00", [43 x i8] zeroinitializer }, align 32
@sdc_init_panel.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.61, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"InitPanel() - Pixel clock divider less than 4\0A\00", [49 x i8] zeroinitializer }, align 32
@sdc_init_panel.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.62, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pixel clk = %u, divider %u.%u\0A\00", [33 x i8] zeroinitializer }, align 32
@di_mappings = internal constant { [3 x %struct.di_mapping], [60 x i8] } { [3 x %struct.di_mapping] [%struct.di_mapping { i32 327695, i32 720911, i32 1114127 }, %struct.di_mapping { i32 262207, i32 655375, i32 983103 }, %struct.di_mapping { i32 458752, i32 983040, i32 1507328 }], [60 x i8] zeroinitializer }, align 32
@sdc_init_panel.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.63, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DI_DISP_IF_CONF = 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@sdc_init_panel.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.64, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DI_DISP_SIG_POL = 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@sdc_init_panel.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.65, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DI_DISP3_TIME_CONF = 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@sdc_enable_channel.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdc_enable_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mx3fbi %p, desc %p, sg %p\0A\00", [37 x i8] zeroinitializer }, align 32
@sdc_enable_channel.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mx3fbi %p, txd = NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@sdc_enable_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.4, i32 406, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot allocate descriptor on %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sdc_enable_channel._entry_ptr = internal global ptr @sdc_enable_channel._entry, section ".printk_index", align 4
@sdc_enable_channel.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.66, ptr @.str.4, ptr @.str.70, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d: Submit %p #%d [%c]\0A\00", [40 x i8] zeroinitializer }, align 32
@sdc_enable_channel._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.4, i32 419, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable channel %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sdc_enable_channel._entry_ptr.73 = internal global ptr @sdc_enable_channel._entry.71, section ".printk_index", align 4
@sdc_enable_channel.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.66, ptr @.str.4, ptr @.str.74, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d: Re-submit %p #%d [%c]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mx3fb-bl\00", [23 x i8] zeroinitializer }, align 32
@mx3fb_lcdc_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @mx3fb_bl_update_status, ptr @mx3fb_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@mx3fb_init_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 322, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %ld on backlight register\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mx3fb_init_backlight\00", [43 x i8] zeroinitializer }, align 32
@mx3fb_init_backlight._entry_ptr = internal global ptr @mx3fb_init_backlight._entry, section ".printk_index", align 4
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bpp=\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"mx3fb_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1643, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1645, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1576, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1584, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1620, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [41 x i8] c"../include/linux/platform_data/dma-imx.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 59, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1440, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"mx3fb_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1253, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant [8 x i8] c"fb_mode\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 340, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"mx3fb_modedb\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 132, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"default_bpp\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 341, i32 22 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1501, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1508, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1417, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 930, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1002, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 908, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1032, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1114, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1147, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1151, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1173, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1187, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1206, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1220, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1222, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1243, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 763, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 135, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 153, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 171, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 187, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 203, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 219, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 704, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 87, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 844, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 858, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1341, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1354, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 520, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 574, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 579, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [12 x i8] c"di_mappings\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 357, i32 32 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 613, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 615, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 617, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 395, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 398, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 405, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 414, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 418, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 426, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 318, i32 33 }
@___asan_gen_.339 = private unnamed_addr constant [18 x i8] c"mx3fb_lcdc_bl_ops\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 300, i32 35 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 321, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1669, i32 33 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [31 x i8] c"../drivers/video/fbdev/mx3fb.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1672, i32 21 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_alias332, ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_mx3fb_exit, ptr @__initcall__kmod_mx3fb__329_1698_mx3fb_init6, ptr @__set_par._entry, ptr @__set_par._entry_ptr, ptr @init_fb_chan._entry, ptr @init_fb_chan._entry.13, ptr @init_fb_chan._entry_ptr, ptr @init_fb_chan._entry_ptr.16, ptr @mx3fb_exit, ptr @mx3fb_init_backlight._entry, ptr @mx3fb_init_backlight._entry_ptr, ptr @mx3fb_map_video_memory._entry, ptr @mx3fb_map_video_memory._entry_ptr, ptr @mx3fb_pan_display._entry, ptr @mx3fb_pan_display._entry.33, ptr @mx3fb_pan_display._entry.37, ptr @mx3fb_pan_display._entry_ptr, ptr @mx3fb_pan_display._entry_ptr.35, ptr @mx3fb_pan_display._entry_ptr.39, ptr @mx3fb_probe._entry, ptr @mx3fb_probe._entry_ptr, ptr @sdc_enable_channel._entry, ptr @sdc_enable_channel._entry.71, ptr @sdc_enable_channel._entry_ptr, ptr @sdc_enable_channel._entry_ptr.73, ptr @mx3fb_driver, ptr @.str, ptr @mx3fb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mx3fb_ops, ptr @fb_mode, ptr @mx3fb_modedb, ptr @default_bpp, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @mx3fb_init_fbinfo.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @init_completion.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @di_mappings, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @mx3fb_lcdc_bl_ops, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_fb_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_modedb to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_fb_chan._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_init_fbinfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_pan_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_pan_display._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_pan_display._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_map_video_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_mappings to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdc_enable_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdc_enable_channel._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_lcdc_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3fb_init_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx3fb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mx3fb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mx3fb_setup() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mx3fb_driver, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %rq = alloca %struct.dma_chan_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !211
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rq) #9
  %1 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %rq, align 4, !annotation !211
  %2 = getelementptr inbounds %struct.dma_chan_request, ptr %rq, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !211
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 76, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.mx3fb_data, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mx3fb_probe.__key, i16 noundef signext 3) #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call9 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %add.i) #9
  %reg_base = getelementptr inbounds %struct.mx3fb_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %reg_base, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %do.body.do.end37_crit_edge, label %do.body14

do.body.do.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.body14:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_probe.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_probe, %if.then19)) #9
          to label %do.end23 [label %if.then19], !srcloc !212

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mx3fb_probe.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef %10) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body14
  tail call void @dmaengine_get() #9
  %dev24 = getelementptr inbounds %struct.mx3fb_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %dev24, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %rq, align 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #9
  call void @_set_bit(i32 noundef 9, ptr noundef nonnull %mask) #9
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 14, ptr %2, align 4
  %call26 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @chan_filter, ptr noundef nonnull %rq, ptr noundef null) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end23.ersdc0_crit_edge, label %if.end29

do.end23.ersdc0_crit_edge:                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %ersdc0

if.end29:                                         ; preds = %do.end23
  %backlight_level = getelementptr inbounds %struct.mx3fb_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %backlight_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %backlight_level, align 4
  %call31 = call fastcc i32 @init_fb_chan(ptr noundef nonnull %call.i, ptr noundef nonnull %call26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %eisdc0, label %if.end33

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @mx3fb_init_backlight(ptr noundef nonnull %call.i)
  br label %cleanup

eisdc0:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %call26) #9
  br label %ersdc0

ersdc0:                                           ; preds = %eisdc0, %do.end23.ersdc0_crit_edge
  %ret.0 = phi i32 [ %call31, %eisdc0 ], [ -16, %do.end23.ersdc0_crit_edge ]
  call void @dmaengine_put() #9
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  call void @iounmap(ptr noundef %18) #9
  br label %do.end37

do.end37:                                         ; preds = %ersdc0, %do.body.do.end37_crit_edge
  %ret.1 = phi i32 [ %ret.0, %ersdc0 ], [ -12, %do.body.do.end37_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end37 ], [ 0, %if.end33 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %idmac_channel = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idmac_channel, align 4
  %device.i.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  %smem_len.i.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %smem_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smem_len.i.i, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %smem_start.i.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %smem_start.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smem_start.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %11, ptr noundef %14, i32 noundef %16, i32 noundef 4) #9
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %12, align 4
  %mm_lock.i.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i.i, i32 noundef 0) #9
  %18 = ptrtoint ptr %smem_start.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %smem_start.i.i, align 4
  %19 = ptrtoint ptr %smem_len.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %smem_len.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mm_lock.i.i) #9
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  tail call void @unregister_framebuffer(ptr noundef %3) #9
  tail call void @framebuffer_release(ptr noundef %3) #9
  %bl.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %bl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bl.i, align 4
  tail call void @backlight_device_unregister(ptr noundef %21) #9
  tail call void @dma_release_channel(ptr noundef %7) #9
  tail call void @dmaengine_put() #9
  %reg_base = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %23) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  tail call void @console_lock() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @fb_set_suspend(ptr noundef %7, i32 noundef 1) #9
  tail call void @console_unlock() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %txd.i = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txd.i, align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %if.then.sdc_disable_channel.exit_crit_edge, label %do.body2.i

if.then.sdc_disable_channel.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdc_disable_channel.exit

do.body2.i:                                       ; preds = %if.then
  %mx3fb1.i = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %mx3fb1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mx3fb1.i, align 4
  %lock.i = getelementptr inbounds %struct.mx3fb_data, ptr %13, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %14 = ptrtoint ptr %mx3fb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mx3fb1.i, align 4
  %reg_base.i.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !213
  %and.i.i = and i32 %18, -513
  %19 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %and.i.i) #9, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  %21 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %txd.i, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 47
  %27 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %do.body2.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

do.body2.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %28(ptr noundef %24) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %do.body2.i.dmaengine_terminate_all.exit.i_crit_edge
  %29 = ptrtoint ptr %txd.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %txd.i, align 4
  %cookie.i = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 9
  %30 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %cookie.i, align 4
  br label %sdc_disable_channel.exit

sdc_disable_channel.exit:                         ; preds = %dmaengine_terminate_all.exit.i, %if.then.sdc_disable_channel.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_suspend, %if.then.i)) #9
          to label %sdc_set_brightness.exit [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %sdc_disable_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %32, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef 0) #9
  br label %sdc_set_brightness.exit

sdc_set_brightness.exit:                          ; preds = %if.then.i, %sdc_disable_channel.exit
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #9, !srcloc !214
  br label %if.end

if.end:                                           ; preds = %sdc_set_brightness.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @sdc_enable_channel(ptr noundef %5)
  %backlight_level = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %backlight_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_resume, %if.then.i)) #9
          to label %sdc_set_brightness.exit [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %conv.i = and i32 %9, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %conv.i) #9
  br label %sdc_set_brightness.exit

sdc_set_brightness.exit:                          ; preds = %if.then.i, %if.then
  %conv3.i = shl i32 %9, 16
  %shl.i = and i32 %conv3.i, 16711680
  %or.i = or i32 %shl.i, 50331648
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #9, !srcloc !214
  br label %if.end

if.end:                                           ; preds = %sdc_set_brightness.exit, %entry.if.end_crit_edge
  tail call void @console_lock() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @fb_set_suspend(ptr noundef %15, i32 noundef 0) #9
  tail call void @console_unlock() #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @chan_filter(ptr nocapture noundef readonly %chan, ptr noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.imx_dma_is_ipu.exit_crit_edge

entry.imx_dma_is_ipu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_dma_is_ipu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %imx_dma_is_ipu.exit

imx_dma_is_ipu.exit:                              ; preds = %if.end.i.i, %entry.imx_dma_is_ipu.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.imx_dma_is_ipu.exit_crit_edge ]
  %call1.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef nonnull dereferenceable(9) @.str.9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp ne i32 %call1.i, 0
  %tobool1.not = icmp eq ptr %arg, null
  %or.cond = or i1 %tobool1.not, %tobool.not.i
  br i1 %or.cond, label %imx_dma_is_ipu.exit.cleanup_crit_edge, label %if.end3

imx_dma_is_ipu.exit.cleanup_crit_edge:            ; preds = %imx_dma_is_ipu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %imx_dma_is_ipu.exit
  %id = getelementptr inbounds %struct.dma_chan_request, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %10 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %land.rhs, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  %dev4 = getelementptr inbounds %struct.mx3fb_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev4, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp7 = icmp eq ptr %19, %3
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end3.cleanup_crit_edge, %imx_dma_is_ipu.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %imx_dma_is_ipu.exit.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_fb_chan(ptr noundef %mx3fb, ptr noundef %ichan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %name2 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name2, align 4
  %disp_data_fmt = getelementptr inbounds %struct.mx3fb_platform_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %disp_data_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disp_data_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ugt i32 %7, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 5
  %8 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mx3fb, ptr %client, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 4
  %9 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %10)
  %cmp4.not = icmp eq i32 %10, 14
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call ptr @framebuffer_alloc(i32 noundef 440, ptr noundef %1) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %par.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 30
  %11 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %par.i, align 4
  %cookie.i = getelementptr inbounds %struct.mx3fb_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %cookie.i, align 4
  %cur_ipu_buf.i = getelementptr inbounds %struct.mx3fb_info, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %cur_ipu_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cur_ipu_buf.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 13
  %15 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %activate.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mx3fb_ops, ptr %fbops.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags.i, align 4
  %pseudo_palette.i = getelementptr inbounds %struct.mx3fb_info, ptr %12, i32 0, i32 3
  %pseudo_palette1.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 27
  %18 = ptrtoint ptr %pseudo_palette1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pseudo_palette.i, ptr %pseudo_palette1.i, align 4
  %mutex.i = getelementptr inbounds %struct.mx3fb_info, ptr %12, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @mx3fb_init_fbinfo.__key) #9
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12
  %call2.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @framebuffer_release(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %19 = load ptr, ptr @fb_mode, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end12:                                         ; preds = %if.end9
  store ptr %5, ptr @fb_mode, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end12.emode_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end12.emode_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %emode

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %20 = phi ptr [ %5, %if.end12.if.end15_crit_edge ], [ %19, %if.end9.if.end15_crit_edge ]
  %mode16 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mode16, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.end15.if.else_crit_edge, label %land.lhs.true

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %num_modes18 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %num_modes18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_modes18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool19.not = icmp eq i32 %24, 0
  br i1 %tobool19.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end15.if.else_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else, %land.lhs.true.if.end23_crit_edge
  %mode.0 = phi ptr [ @mx3fb_modedb, %if.else ], [ %22, %land.lhs.true.if.end23_crit_edge ]
  %num_modes.0 = phi i32 [ 6, %if.else ], [ %24, %land.lhs.true.if.end23_crit_edge ]
  %var = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6
  %25 = load i32, ptr @default_bpp, align 4
  %call24 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call.i, ptr noundef nonnull %20, ptr noundef nonnull %mode.0, i32 noundef %num_modes.0, ptr noundef null, i32 noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.emode_crit_edge, label %if.end27

if.end23.emode_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %emode

if.end27:                                         ; preds = %if.end23
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef nonnull %mode.0, i32 noundef %num_modes.0, ptr noundef %modelist) #9
  %yres = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres, align 4
  %mul = shl i32 %27, 1
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %yres_virtual, align 4
  %29 = ptrtoint ptr %mx3fb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %mx3fb, align 4
  %reg_base.i = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 2
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1048592) #9, !srcloc !214
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_fb_chan, %if.then.i)) #9
          to label %sdc_set_brightness.exit [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %33, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef 255) #9
  br label %sdc_set_brightness.exit

sdc_set_brightness.exit:                          ; preds = %if.then.i, %if.end27
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67043328) #9, !srcloc !214
  %lock.i = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 3
  %call2.i114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i116) #9, !srcloc !213
  %or.i = or i32 %38, -16777216
  %39 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #9, !srcloc !214
  %41 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !213
  %or8.i = or i32 %43, 64
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %or8.i) #9, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i114) #9
  %call2.i118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %46 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !213
  %and15.i = and i32 %48, -161
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %and15.i) #9, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i118) #9
  %51 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %par.i, align 4
  %idmac_channel = getelementptr inbounds %struct.mx3fb_info, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ichan, ptr %idmac_channel, align 4
  %54 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chan_id, align 4
  %ipu_ch = getelementptr inbounds %struct.mx3fb_info, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ipu_ch, align 4
  %mx3fb35 = getelementptr inbounds %struct.mx3fb_info, ptr %52, i32 0, i32 6
  %57 = ptrtoint ptr %mx3fb35 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %mx3fb, ptr %mx3fb35, align 4
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %52, align 4
  %59 = ptrtoint ptr %disp_data_fmt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %disp_data_fmt, align 4
  %disp_data_fmt37 = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 8
  %61 = ptrtoint ptr %disp_data_fmt37 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %disp_data_fmt37, align 4
  %flip_cmpl = getelementptr inbounds %struct.mx3fb_info, ptr %52, i32 0, i32 4
  %62 = ptrtoint ptr %flip_cmpl to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flip_cmpl, align 4
  %wait.i = getelementptr inbounds %struct.mx3fb_info, ptr %52, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #9
  %eof_irq = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 15
  %63 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %eof_irq, align 4
  tail call void @disable_irq(i32 noundef %64) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_fb_chan.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_fb_chan, %if.then43)) #9
          to label %do.end48 [label %if.then43], !srcloc !212

if.then43:                                        ; preds = %sdc_set_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  %67 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eof_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_fb_chan.__UNIQUE_ID_ddebug327, ptr noundef %66, ptr noundef nonnull @.str.12, i32 noundef %68) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %sdc_set_brightness.exit
  %call49 = tail call fastcc i32 @__set_par(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end48.emode_crit_edge, label %if.end52

do.end48.emode_crit_edge:                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %emode

if.end52:                                         ; preds = %do.end48
  tail call fastcc void @__blank(i32 noundef 0, ptr noundef nonnull %call.i)
  %69 = load ptr, ptr @fb_mode, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %69) #13
  %call56 = tail call i32 @register_framebuffer(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end52.emode_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52.emode_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %emode

emode:                                            ; preds = %if.end52.emode_crit_edge, %do.end48.emode_crit_edge, %if.end23.emode_crit_edge, %if.end12.emode_crit_edge
  %ret.0 = phi i32 [ %call49, %do.end48.emode_crit_edge ], [ %call56, %if.end52.emode_crit_edge ], [ -22, %if.end12.emode_crit_edge ], [ -16, %if.end23.emode_crit_edge ]
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  tail call void @framebuffer_release(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %emode, %if.end52.cleanup_crit_edge, %if.then3.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %emode ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ -12, %if.then3.i ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx3fb_init_backlight(ptr noundef %fbd) unnamed_addr #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %bl1 = getelementptr inbounds %struct.mx3fb_data, ptr %fbd, i32 0, i32 5
  %0 = ptrtoint ptr %bl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bl1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %4 = call ptr @memset(ptr %props, i32 0, i32 28)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 255, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %backlight_level = getelementptr inbounds %struct.mx3fb_data, ptr %fbd, i32 0, i32 1
  %7 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %backlight_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_init_backlight, %if.then.i)) #9
          to label %sdc_set_brightness.exit [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mx3fb_data, ptr %fbd, i32 0, i32 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %conv.i = and i32 %8, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %10, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %conv.i) #9
  br label %sdc_set_brightness.exit

sdc_set_brightness.exit:                          ; preds = %if.then.i, %if.end
  %conv3.i = shl i32 %8, 16
  %shl.i = and i32 %conv3.i, 16711680
  %or.i = or i32 %shl.i, 50331648
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %fbd, i32 0, i32 2
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #9, !srcloc !214
  %dev = getelementptr inbounds %struct.mx3fb_data, ptr %fbd, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call = call ptr @backlight_device_register(ptr noundef nonnull @.str.75, ptr noundef %14, ptr noundef %fbd, ptr noundef nonnull @mx3fb_lcdc_bl_ops, ptr noundef nonnull %props) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %sdc_set_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %call to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.76, i32 noundef %17) #13
  br label %cleanup

if.end6:                                          ; preds = %sdc_set_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %bl1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %bl1, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %power, align 8
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %fb_blank to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fb_blank, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_base.i.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 20
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !213
  %shr.i.i = lshr i32 %25, 16
  %and.i.i = and i32 %shr.i.i, 255
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i.i, ptr %call, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_put() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_par(ptr noundef %fbi, i1 noundef zeroext %lock) unnamed_addr #2 align 64 {
entry:
  %sig_cfg = alloca %struct.ipu_di_signal_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sig_cfg) #9
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sig_cfg, align 4
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 4
  %mx3fb1 = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mx3fb1, align 4
  %idmac_channel = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idmac_channel, align 4
  %sg2 = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 10
  %txd = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txd, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mx3fb_data, ptr %4, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %9 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mx3fb1, align 4
  %reg_base.i.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !213
  %and.i.i = and i32 %13, -513
  %14 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %and.i.i) #9, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  %16 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txd, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %22 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %do.body2.i.sdc_disable_channel.exit_crit_edge, label %if.then.i.i

do.body2.i.sdc_disable_channel.exit_crit_edge:    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdc_disable_channel.exit

if.then.i.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %23(ptr noundef %19) #9
  br label %sdc_disable_channel.exit

sdc_disable_channel.exit:                         ; preds = %if.then.i.i, %do.body2.i.sdc_disable_channel.exit_crit_edge
  %24 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %txd, align 4
  %cookie.i = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 9
  %25 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -22, ptr %cookie.i, align 4
  br label %if.end

if.end:                                           ; preds = %sdc_disable_channel.exit, %entry.if.end_crit_edge
  %fix1.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7
  %26 = ptrtoint ptr %fix1.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 4920555671799218759, ptr %fix1.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xres_virtual.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %29 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i = mul i32 %30, %28
  %div1.i = lshr i32 %mul.i, 3
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 9
  %31 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div1.i, ptr %line_length.i, align 4
  %type.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type.i, align 4
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 12
  %33 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %accel.i, align 4
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 5
  %34 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %visual.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 6
  %35 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 7
  %36 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %ypanstep.i, align 2
  %var = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 3
  %37 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %38, %div1.i
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %40)
  %cmp = icmp ugt i32 %mul, %40
  br i1 %cmp, label %if.then4, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %smem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool6.not = icmp eq i32 %42, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %43 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device.i, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void @dma_free_attrs(ptr noundef %44, i32 noundef %40, ptr noundef %47, i32 noundef %42, i32 noundef 4) #9
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %45, align 4
  %mm_lock.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i, i32 noundef 0) #9
  %49 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %smem_start, align 4
  %50 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %smem_len, align 4
  tail call void @mutex_unlock(ptr noundef %mm_lock.i) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4.if.end9_crit_edge
  %call11 = tail call fastcc i32 @mx3fb_map_video_memory(ptr noundef %fbi, i32 noundef %mul, i1 noundef zeroext %lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @sg_init_table(ptr noundef %sg2, i32 noundef 1) #9
  %arrayidx16 = getelementptr %struct.mx3fb_info, ptr %2, i32 0, i32 10, i32 1
  tail call void @sg_init_table(ptr noundef %arrayidx16, i32 noundef 1) #9
  %smem_start18 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %smem_start18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %smem_start18, align 4
  %dma_address = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 10, i32 0, i32 3
  %53 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dma_address, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %54 = load ptr, ptr @mem_map, align 4
  %55 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  %sub = add i32 %58, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %54, i32 %shr
  %59 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %smem_len, align 4
  %and = and i32 %58, 4095
  %61 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sg2, align 4
  %63 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i233 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i233, label %do.body11.i.i, label %do.body5.i.i, !prof !215

do.body5.i.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !216
  unreachable

do.body11.i.i:                                    ; preds = %if.end15
  %and.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !215

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !217
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i234 = and i32 %62, 3
  %or.i.i = or i32 %and.i.i234, %63
  %64 = ptrtoint ptr %sg2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i.i, ptr %sg2, align 4
  %offset1.i = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 10, i32 0, i32 1
  %65 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 10, i32 0, i32 2
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %60, ptr %length.i, align 4
  %ipu_ch = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 1
  %67 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ipu_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %68)
  %cmp24 = icmp eq i32 %68, 14
  br i1 %cmp24, label %if.then25, label %sg_set_page.exit.sdc_set_window_pos.exit_crit_edge

sg_set_page.exit.sdc_set_window_pos.exit_crit_edge: ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdc_set_window_pos.exit

if.then25:                                        ; preds = %sg_set_page.exit
  %69 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %sig_cfg, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 24
  %70 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sync, align 4
  %and27 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.if.end30_crit_edge, label %if.then29

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %sig_cfg, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %sig_cfg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25.if.end30_crit_edge
  %and33 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end30.if.end39_crit_edge, label %if.then35

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load36 = load i8, ptr %sig_cfg, align 4
  %bf.set38 = or i8 %bf.load36, 1
  store i8 %bf.set38, ptr %sig_cfg, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end30.if.end39_crit_edge
  %and42 = and i32 %71, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end39.if.end48_crit_edge, label %if.then44

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load45 = load i8, ptr %sig_cfg, align 4
  %bf.set47 = or i8 %bf.load45, 8
  store i8 %bf.set47, ptr %sig_cfg, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end39.if.end48_crit_edge
  %and51 = and i32 %71, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end48.if.end57_crit_edge, label %if.then53

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load54 = load i8, ptr %sig_cfg, align 4
  %bf.set56 = or i8 %bf.load54, 16
  store i8 %bf.set56, ptr %sig_cfg, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end48.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %tobool61.not = icmp sgt i32 %71, -1
  br i1 %tobool61.not, label %if.end57.if.end66_crit_edge, label %if.then62

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load63 = load i8, ptr %sig_cfg, align 4
  %bf.set65 = or i8 %bf.load63, 4
  store i8 %bf.set65, ptr %sig_cfg, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end57.if.end66_crit_edge
  %and69 = and i32 %71, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end66.if.end75_crit_edge, label %if.then71

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load72 = load i8, ptr %sig_cfg, align 4
  %bf.set74 = or i8 %bf.load72, 32
  store i8 %bf.set74, ptr %sig_cfg, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end66.if.end75_crit_edge
  %and78 = and i32 %71, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end75.if.end84_crit_edge, label %if.then80

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load81 = load i8, ptr %sig_cfg, align 4
  %bf.set83 = or i8 %bf.load81, 64
  store i8 %bf.set83, ptr %sig_cfg, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end75.if.end84_crit_edge
  %and87 = lshr i32 %71, 27
  %and87.lobit = and i32 %and87, 1
  %79 = xor i32 %and87.lobit, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_par.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_par, %if.then96)) #9
          to label %do.end [label %if.then96], !srcloc !212

if.then96:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %80 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device, align 4
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 17
  %82 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %83
  %mul98 = mul i32 %div, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_par.__UNIQUE_ID_ddebug315, ptr noundef %81, ptr noundef nonnull @.str.53, i32 noundef %mul98) #9
  br label %do.end

do.end:                                           ; preds = %if.then96, %if.end84
  %pixclock101 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 17
  %84 = ptrtoint ptr %pixclock101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pixclock101, align 4
  %div102 = udiv i32 1000000000, %85
  %mul103 = mul i32 %div102, 1000
  %86 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %var, align 4
  %conv = trunc i32 %87 to i16
  %yres = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 1
  %88 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %yres, align 4
  %conv106 = trunc i32 %89 to i16
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 18
  %90 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %left_margin, align 4
  %conv108 = trunc i32 %91 to i16
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 22
  %92 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hsync_len, align 4
  %conv110 = trunc i32 %93 to i16
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 19
  %94 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %right_margin, align 4
  %add114 = add i32 %95, %93
  %conv115 = trunc i32 %add114 to i16
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 20
  %96 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %upper_margin, align 4
  %conv117 = trunc i32 %97 to i16
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 23
  %98 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %vsync_len, align 4
  %conv119 = trunc i32 %99 to i16
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 21
  %100 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %lower_margin, align 4
  %add123 = add i32 %101, %99
  %conv124 = trunc i32 %add123 to i16
  %call125 = call fastcc i32 @sdc_init_panel(ptr noundef %4, i32 noundef %79, i32 noundef %mul103, i16 noundef zeroext %conv, i16 noundef zeroext %conv106, i16 noundef zeroext %conv108, i16 noundef zeroext %conv110, i16 noundef zeroext %conv115, i16 noundef zeroext %conv117, i16 noundef zeroext %conv119, i16 noundef zeroext %conv124, ptr noundef nonnull %sig_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %if.end134, label %do.end131

do.end131:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %device132 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %102 = ptrtoint ptr %device132 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device132, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.54) #13
  br label %cleanup

if.end134:                                        ; preds = %do.end
  %104 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %ipu_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 14
  br i1 %cmp.not.i, label %if.end.i, label %if.end134.sdc_set_window_pos.exit_crit_edge

if.end134.sdc_set_window_pos.exit_crit_edge:      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdc_set_window_pos.exit

if.end.i:                                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %h_start_width.i = getelementptr inbounds %struct.mx3fb_data, ptr %4, i32 0, i32 6
  %105 = ptrtoint ptr %h_start_width.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %h_start_width.i, align 4
  %v_start_width.i = getelementptr inbounds %struct.mx3fb_data, ptr %4, i32 0, i32 7
  %107 = ptrtoint ptr %v_start_width.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %v_start_width.i, align 4
  %sext.i = shl i32 %106, 16
  %sext1.i = shl i32 %108, 16
  %conv6.i = ashr exact i32 %sext1.i, 16
  %or.i = or i32 %conv6.i, %sext.i
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %4, i32 0, i32 2
  %109 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #9, !srcloc !214
  br label %sdc_set_window_pos.exit

sdc_set_window_pos.exit:                          ; preds = %if.end.i, %if.end134.sdc_set_window_pos.exit_crit_edge, %sg_set_page.exit.sdc_set_window_pos.exit_crit_edge
  %cur_ipu_buf = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 2
  %111 = ptrtoint ptr %cur_ipu_buf to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %cur_ipu_buf, align 4
  %112 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bits_per_pixel.i, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values)
  switch i32 %113, label %sdc_set_window_pos.exit.bpp_to_pixfmt.exit_crit_edge [
    i32 24, label %sw.bb.i
    i32 32, label %sw.bb1.i
    i32 16, label %sw.bb2.i
  ]

sdc_set_window_pos.exit.bpp_to_pixfmt.exit_crit_edge: ; preds = %sdc_set_window_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpp_to_pixfmt.exit

sw.bb.i:                                          ; preds = %sdc_set_window_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpp_to_pixfmt.exit

sw.bb1.i:                                         ; preds = %sdc_set_window_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpp_to_pixfmt.exit

sw.bb2.i:                                         ; preds = %sdc_set_window_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpp_to_pixfmt.exit

bpp_to_pixfmt.exit:                               ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %sdc_set_window_pos.exit.bpp_to_pixfmt.exit_crit_edge
  %pixfmt.0.i = phi i32 [ 0, %sdc_set_window_pos.exit.bpp_to_pixfmt.exit_crit_edge ], [ 6, %sw.bb2.i ], [ 15, %sw.bb1.i ], [ 12, %sw.bb.i ]
  %out_pixel_fmt = getelementptr inbounds %struct.idmac_channel, ptr %6, i32 0, i32 2, i32 0, i32 5
  %115 = ptrtoint ptr %out_pixel_fmt to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %pixfmt.0.i, ptr %out_pixel_fmt, align 4
  %116 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %var, align 4
  %conv141 = trunc i32 %117 to i16
  %out_width = getelementptr inbounds %struct.idmac_channel, ptr %6, i32 0, i32 2, i32 0, i32 3
  %118 = ptrtoint ptr %out_width to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv141, ptr %out_width, align 4
  %yres143 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 1
  %119 = ptrtoint ptr %yres143 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %yres143, align 4
  %conv144 = trunc i32 %120 to i16
  %out_height = getelementptr inbounds %struct.idmac_channel, ptr %6, i32 0, i32 2, i32 0, i32 4
  %121 = ptrtoint ptr %out_height to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv144, ptr %out_height, align 2
  %122 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %xres_virtual.i, align 4
  %conv146 = trunc i32 %123 to i16
  %out_stride = getelementptr inbounds %struct.idmac_channel, ptr %6, i32 0, i32 2, i32 0, i32 6
  %124 = ptrtoint ptr %out_stride to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv146, ptr %out_stride, align 4
  %125 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp147 = icmp eq i32 %126, 0
  br i1 %cmp147, label %if.then149, label %bpp_to_pixfmt.exit.if.end151_crit_edge

bpp_to_pixfmt.exit.if.end151_crit_edge:           ; preds = %bpp_to_pixfmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then149:                                       ; preds = %bpp_to_pixfmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdc_enable_channel(ptr noundef %2)
  %xoffset = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 11, i32 4
  %127 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 11, i32 5
  %128 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %yoffset, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %bpp_to_pixfmt.exit.if.end151_crit_edge
  %cur_var152 = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 11
  %xoffset153 = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 11, i32 4
  %129 = ptrtoint ptr %xoffset153 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %xoffset153, align 4
  %yoffset155 = getelementptr inbounds %struct.mx3fb_info, ptr %2, i32 0, i32 11, i32 5
  %131 = ptrtoint ptr %yoffset155 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %yoffset155, align 4
  %133 = call ptr @memcpy(ptr %cur_var152, ptr %var, i32 160)
  store i32 %130, ptr %xoffset153, align 4
  store i32 %132, ptr %yoffset155, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %do.end131, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end131 ], [ 0, %if.end151 ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sig_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__blank(i32 noundef %blank, ptr nocapture noundef readonly %fbi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %mx3fb1 = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mx3fb1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  store i32 %blank, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cmp = icmp sgt i32 %blank, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp sgt i32 %5, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %blank, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge23
    i32 3, label %if.end.sw.bb_crit_edge24
    i32 1, label %if.end.sw.bb_crit_edge25
    i32 0, label %sw.bb5
  ]

if.end.sw.bb_crit_edge25:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge23, %if.end.sw.bb_crit_edge24, %if.end.sw.bb_crit_edge25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__blank, %if.then.i)) #9
          to label %sdc_set_brightness.exit [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef 0) #9
  br label %sdc_set_brightness.exit

sdc_set_brightness.exit:                          ; preds = %if.then.i, %sw.bb
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #9, !srcloc !214
  %11 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smem_len, align 4
  %16 = call ptr @memset(ptr %13, i32 0, i32 %15)
  tail call void @msleep(i32 noundef 25) #9
  %txd.i = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %txd.i, align 4
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %sdc_set_brightness.exit.cleanup_crit_edge, label %do.body2.i

sdc_set_brightness.exit.cleanup_crit_edge:        ; preds = %sdc_set_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2.i:                                       ; preds = %sdc_set_brightness.exit
  %19 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mx3fb1, align 4
  %lock.i = getelementptr inbounds %struct.mx3fb_data, ptr %20, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %21 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mx3fb1, align 4
  %reg_base.i.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i.i.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !213
  %and.i.i = and i32 %25, -513
  %26 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %and.i.i) #9, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  %28 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txd.i, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %do.body2.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

do.body2.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %35(ptr noundef %31) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %do.body2.i.dmaengine_terminate_all.exit.i_crit_edge
  %36 = ptrtoint ptr %txd.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %txd.i, align 4
  %cookie.i = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -22, ptr %cookie.i, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  tail call fastcc void @sdc_enable_channel(ptr noundef %1)
  %backlight_level = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %backlight_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__blank, %if.then.i19)) #9
          to label %sdc_set_brightness.exit22 [label %if.then.i19], !srcloc !212

if.then.i19:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i18 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i18, align 4
  %conv.i = and i32 %39, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %41, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %conv.i) #9
  br label %sdc_set_brightness.exit22

sdc_set_brightness.exit22:                        ; preds = %if.then.i19, %sw.bb5
  %conv3.i = shl i32 %39, 16
  %shl.i = and i32 %conv3.i, 16711680
  %or.i = or i32 %shl.i, 50331648
  %reg_base.i.i20 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %reg_base.i.i20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %or.i) #9, !srcloc !214
  br label %cleanup

cleanup:                                          ; preds = %sdc_set_brightness.exit22, %dmaengine_terminate_all.exit.i, %sdc_set_brightness.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_check_var.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_check_var, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_check_var.__UNIQUE_ID_ddebug317, ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then3, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %xres_virtual, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %do.end.if.end6_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %11 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp7 = icmp ult i32 %10, %12
  br i1 %cmp7, label %if.then8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %yres_virtual, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %15, label %if.then18 [
    i32 32, label %if.end11.if.end20_crit_edge
    i32 24, label %if.end11.if.end20_crit_edge203
    i32 16, label %if.end11.if.end20_crit_edge204
  ]

if.end11.if.end20_crit_edge204:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end11.if.end20_crit_edge203:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %17 = load i32, ptr @default_bpp, align 4
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bits_per_pixel, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11.if.end20_crit_edge, %if.end11.if.end20_crit_edge203, %if.end11.if.end20_crit_edge204
  %19 = phi i32 [ %15, %if.end11.if.end20_crit_edge ], [ %15, %if.end11.if.end20_crit_edge203 ], [ %15, %if.end11.if.end20_crit_edge204 ], [ %17, %if.then18 ]
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %19, label %if.end20.sw.epilog_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb39
    i32 32, label %sw.bb64
  ]

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %length, align 4
  %22 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 11, ptr %red, align 4
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %msb_right, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length24 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %length24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %length24, align 4
  %25 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %green, align 4
  %msb_right28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %26 = ptrtoint ptr %msb_right28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %msb_right28, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %length29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %length29, align 4
  %28 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue, align 4
  %msb_right33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %29 = call ptr @memset(ptr %msb_right33, i32 0, i32 16)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %red40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %length41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %length41, align 4
  %31 = ptrtoint ptr %red40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %red40, align 4
  %msb_right45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %32 = ptrtoint ptr %msb_right45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %msb_right45, align 4
  %green46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %length47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length47, align 4
  %34 = ptrtoint ptr %green46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %green46, align 4
  %msb_right51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %msb_right51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msb_right51, align 4
  %blue52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length53 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %length53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %length53, align 4
  %37 = ptrtoint ptr %blue52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue52, align 4
  %msb_right57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %38 = call ptr @memset(ptr %msb_right57, i32 0, i32 16)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %red65 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length66 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %length66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length66, align 4
  %40 = ptrtoint ptr %red65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %red65, align 4
  %msb_right70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %41 = ptrtoint ptr %msb_right70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %msb_right70, align 4
  %green71 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %length72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %length72, align 4
  %43 = ptrtoint ptr %green71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %green71, align 4
  %msb_right76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %msb_right76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %msb_right76, align 4
  %blue77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %length78 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %length78, align 4
  %46 = ptrtoint ptr %blue77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %blue77, align 4
  %msb_right82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %47 = ptrtoint ptr %msb_right82 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %msb_right82, align 4
  %transp83 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length84 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %length84 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %length84, align 4
  %49 = ptrtoint ptr %transp83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 24, ptr %transp83, align 4
  %msb_right88 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %50 = ptrtoint ptr %msb_right88 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %msb_right88, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %sw.bb39, %sw.bb, %if.end20.sw.epilog_crit_edge
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %51 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %52)
  %cmp89 = icmp ult i32 %52, 1000
  br i1 %cmp89, label %if.then90, label %sw.epilog.if.end121_crit_edge

sw.epilog.if.end121_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then90:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %53 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %right_margin, align 4
  %add = add i32 %54, %7
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %55 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hsync_len, align 4
  %add92 = add i32 %add, %56
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %57 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %left_margin, align 4
  %add93 = add i32 %add92, %58
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %59 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lower_margin, align 4
  %add95 = add i32 %60, %12
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %61 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vsync_len, align 4
  %add96 = add i32 %add95, %62
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %63 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %upper_margin, align 4
  %add97 = add i32 %add96, %64
  %mul = mul i32 %add93, 6
  %mul98 = mul i32 %mul, %add97
  %div = udiv i32 %mul98, 100
  %div101 = udiv i32 1000000000, %div
  %65 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div101, ptr %pixclock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_check_var.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_check_var, %if.then115)) #9
          to label %if.end121 [label %if.then115], !srcloc !212

if.then115:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %device116 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %66 = ptrtoint ptr %device116 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device116, align 4
  %68 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pixclock, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_check_var.__UNIQUE_ID_ddebug318, ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef %69) #9
  br label %if.end121

if.end121:                                        ; preds = %if.then115, %if.then90, %sw.epilog.if.end121_crit_edge
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %70 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %71 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %width, align 4
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %72 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %grayscale, align 4
  %sync = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 11, i32 24
  %73 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sync, align 4
  %sync122 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %75 = ptrtoint ptr %sync122 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sync122, align 4
  %or = or i32 %76, %74
  store i32 %or, ptr %sync122, align 4
  %77 = load i32, ptr %sync, align 4
  %or126 = or i32 %77, %or
  store i32 %or126, ptr %sync, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_set_par(ptr noundef %fbi) #2 align 64 {
entry:
  %old_var.i = alloca %struct.fb_var_screeninfo, align 4
  %new_var.i = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %mx3fb1 = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mx3fb1, align 4
  %idmac_channel = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idmac_channel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_set_par.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_set_par, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  %cond = select i1 %cmp.i.not, i32 45, i32 43
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_set_par.__UNIQUE_ID_ddebug316, ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %old_var.i) #9
  %cur_var.i = getelementptr inbounds %struct.mx3fb_info, ptr %11, i32 0, i32 11
  %12 = call ptr @memcpy(ptr %old_var.i, ptr %cur_var.i, i32 160)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %new_var.i) #9
  %var.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %new_var.i, ptr %var.i, i32 160)
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 13
  %14 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %activate.i, align 4
  %16 = and i32 %15, 143
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %16)
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %mx3fb_must_set_par.exit.thread, label %mx3fb_must_set_par.exit

mx3fb_must_set_par.exit.thread:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %new_var.i) #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %old_var.i) #9
  br label %cond.true

mx3fb_must_set_par.exit:                          ; preds = %do.end
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %new_var.i, i32 0, i32 4
  %18 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xoffset.i, align 4
  %xoffset5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %old_var.i, i32 0, i32 4
  %20 = ptrtoint ptr %xoffset5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %xoffset5.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %new_var.i, i32 0, i32 5
  %21 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %yoffset.i, align 4
  %yoffset6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %old_var.i, i32 0, i32 5
  %23 = ptrtoint ptr %yoffset6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %yoffset6.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(160) %old_var.i, ptr noundef nonnull dereferenceable(160) %new_var.i, i32 160) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.i.not = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %new_var.i) #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %old_var.i) #9
  br i1 %tobool7.i.not, label %mx3fb_must_set_par.exit.cond.end_crit_edge, label %mx3fb_must_set_par.exit.cond.true_crit_edge

mx3fb_must_set_par.exit.cond.true_crit_edge:      ; preds = %mx3fb_must_set_par.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

mx3fb_must_set_par.exit.cond.end_crit_edge:       ; preds = %mx3fb_must_set_par.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %mx3fb_must_set_par.exit.cond.true_crit_edge, %mx3fb_must_set_par.exit.thread
  %call7 = tail call fastcc i32 @__set_par(ptr noundef %fbi, i1 noundef zeroext true)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mx3fb_must_set_par.exit.cond.end_crit_edge
  %cond8 = phi i32 [ %call7, %cond.true ], [ 0, %mx3fb_must_set_par.exit.cond.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %cond8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %trans, ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_setcolreg.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_setcolreg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_setcolreg.__UNIQUE_ID_ddebug319, ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %regno) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %red, 19595
  %mul5 = mul i32 %green, 38470
  %add = add i32 %mul5, %mul
  %mul6 = mul i32 %blue, 7471
  %add7 = add i32 %add, %mul6
  %shr = lshr i32 %add7, 16
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then4 ], [ %blue, %do.end.if.end8_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then4 ], [ %green, %do.end.if.end8_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then4 ], [ %red, %do.end.if.end8_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cond = icmp eq i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  %or.cond = and i1 %cmp, %cond
  br i1 %or.cond, label %if.then9, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette, align 4
  %red11 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.0, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 8, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %11
  %shr.i = lshr i32 %and.i, %sub.i
  %12 = ptrtoint ptr %red11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %red11, align 4
  %shl.i = shl i32 %shr.i, %13
  %green14 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 9
  %and.i38 = and i32 %green.addr.0, 65535
  %length.i39 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 9, i32 1
  %14 = ptrtoint ptr %length.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i39, align 4
  %sub.i40 = sub i32 16, %15
  %shr.i41 = lshr i32 %and.i38, %sub.i40
  %16 = ptrtoint ptr %green14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %green14, align 4
  %shl.i42 = shl i32 %shr.i41, %17
  %or = or i32 %shl.i42, %shl.i
  %blue17 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 10
  %and.i43 = and i32 %blue.addr.0, 65535
  %length.i44 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 10, i32 1
  %18 = ptrtoint ptr %length.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i44, align 4
  %sub.i45 = sub i32 16, %19
  %shr.i46 = lshr i32 %and.i43, %sub.i45
  %20 = ptrtoint ptr %blue17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blue17, align 4
  %shl.i47 = shl i32 %shr.i46, %21
  %or19 = or i32 %or, %shl.i47
  %arrayidx = getelementptr i32, ptr %9, i32 %regno
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or19, ptr %arrayidx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9, %if.end8.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.end8.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_blank(i32 noundef %blank, ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_blank.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_blank, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_blank.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %blank, ptr noundef %6, i32 noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %blank)
  %cmp = icmp eq i32 %10, %blank
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  tail call fastcc void @__blank(i32 noundef %blank, ptr noundef %fbi)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_pan_display(ptr nocapture noundef readonly %var, ptr noundef %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %sg1 = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 10
  %idmac_channel = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idmac_channel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_pan_display, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idmac_channel, align 4
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  %cond = select i1 %cmp.i.not, i32 45, i32 43
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_pan_display.__UNIQUE_ID_ddebug321, ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, i32 noundef %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %10 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end26, label %do.body9

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_pan_display, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !212

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %device22 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %12 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_pan_display.__UNIQUE_ID_ddebug322, ptr noundef %13, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %cur_var = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 11
  %xoffset27 = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %xoffset27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xoffset27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp29 = icmp eq i32 %15, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end26
  %yoffset = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yoffset, align 4
  %yoffset31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %18 = ptrtoint ptr %yoffset31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp32 = icmp eq i32 %17, %19
  br i1 %cmp32, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %yoffset35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %20 = ptrtoint ptr %yoffset35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yoffset35, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %22 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vmode, align 4
  %and = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.then37, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %yres = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yres, align 4
  %add = add i32 %25, %21
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %y_bottom.0 = phi i32 [ %21, %if.end34.if.end39_crit_edge ], [ %add, %if.then37 ]
  %var40 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y_bottom.0, i32 %27)
  %cmp41 = icmp ugt i32 %y_bottom.0, %27
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %mutex = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %28 = ptrtoint ptr %yoffset35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yoffset35, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 9
  %30 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %line_length, align 4
  %mul = mul i32 %31, %29
  %32 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xoffset, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bits_per_pixel, align 4
  %div259 = lshr i32 %35, 3
  %mul47 = mul i32 %div259, %33
  %add48 = add i32 %mul47, %mul
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %smem_start, align 4
  %add50 = add i32 %add48, %37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_pan_display, %if.then63)) #9
          to label %do.end67 [label %if.then63], !srcloc !212

if.then63:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %device64 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %38 = ptrtoint ptr %device64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device64, align 4
  %cur_ipu_buf = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %cur_ipu_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_ipu_buf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_pan_display.__UNIQUE_ID_ddebug323, ptr noundef %39, ptr noundef nonnull @.str.29, i32 noundef %41, i32 noundef %add50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %if.end43
  %flip_cmpl = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %flip_cmpl to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flip_cmpl, align 4
  %wait.i = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #9
  %43 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idmac_channel, align 4
  %eof_irq = getelementptr inbounds %struct.idmac_channel, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eof_irq, align 4
  tail call void @enable_irq(i32 noundef %46) #9
  %call70 = tail call i32 @wait_for_completion_timeout(ptr noundef %flip_cmpl, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %if.then72, label %if.end84

if.then72:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %device77 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %47 = ptrtoint ptr %device77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp78.not = icmp eq i32 %call70, 0
  %cond79 = select i1 %cmp78.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond79) #13
  %49 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %idmac_channel, align 4
  %eof_irq81 = getelementptr inbounds %struct.idmac_channel, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %eof_irq81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eof_irq81, align 4
  tail call void @disable_irq(i32 noundef %52) #9
  %cond83 = select i1 %cmp78.not, i32 -110, i32 %call70
  br label %cleanup

if.end84:                                         ; preds = %do.end67
  %cur_ipu_buf85 = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %cur_ipu_buf85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_ipu_buf85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool86.not = icmp eq i32 %54, 0
  %lnot.ext88 = zext i1 %tobool86.not to i32
  %55 = ptrtoint ptr %cur_ipu_buf85 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %lnot.ext88, ptr %cur_ipu_buf85, align 4
  %dma_address = getelementptr %struct.scatterlist, ptr %sg1, i32 %lnot.ext88, i32 3
  %56 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add50, ptr %dma_address, align 4
  %arrayidx92 = getelementptr %struct.scatterlist, ptr %sg1, i32 %lnot.ext88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %57 = load ptr, ptr @mem_map, align 4
  %58 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 %add48
  %61 = ptrtoint ptr %add.ptr to i32
  %sub = add i32 %61, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr95 = getelementptr %struct.page, ptr %57, i32 %shr
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %smem_len, align 4
  %and98 = and i32 %61, 4095
  %64 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx92, align 4
  %66 = ptrtoint ptr %add.ptr95 to i32
  %and2.i.i = and i32 %66, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !215

do.body5.i.i:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !216
  unreachable

do.body11.i.i:                                    ; preds = %if.end84
  %and.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !215

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !217
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %65, 3
  %or.i.i = or i32 %and.i.i, %66
  %67 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i.i, ptr %arrayidx92, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %sg1, i32 %lnot.ext88, i32 1
  %68 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and98, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %sg1, i32 %lnot.ext88, i32 2
  %69 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %63, ptr %length.i, align 4
  %txd99 = getelementptr inbounds %struct.mx3fb_info, ptr %1, i32 0, i32 8
  %70 = ptrtoint ptr %txd99 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %txd99, align 4
  %tobool100.not = icmp eq ptr %71, null
  br i1 %tobool100.not, label %sg_set_page.exit.if.end103_crit_edge, label %if.then101

sg_set_page.exit.if.end103_crit_edge:             ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then101:                                       ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %73, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %sg_set_page.exit.if.end103_crit_edge
  %74 = ptrtoint ptr %cur_ipu_buf85 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cur_ipu_buf85, align 4
  %add.ptr105 = getelementptr %struct.scatterlist, ptr %sg1, i32 %75
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end103.do.end111_crit_edge, label %lor.lhs.false.i

if.end103.do.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

lor.lhs.false.i:                                  ; preds = %if.end103
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %77, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end111_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end111_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 39
  %78 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %79, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end111_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end111_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %79(ptr noundef nonnull %3, ptr noundef %add.ptr105, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %tobool107.not = icmp eq ptr %call.i, null
  br i1 %tobool107.not, label %dmaengine_prep_slave_sg.exit.do.end111_crit_edge, label %if.end114

dmaengine_prep_slave_sg.exit.do.end111_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

do.end111:                                        ; preds = %dmaengine_prep_slave_sg.exit.do.end111_crit_edge, %lor.lhs.false2.i.do.end111_crit_edge, %lor.lhs.false.i.do.end111_crit_edge, %if.end103.do.end111_crit_edge
  %device112 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %80 = ptrtoint ptr %device112 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device112, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.34) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end114:                                        ; preds = %dmaengine_prep_slave_sg.exit
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %82 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %callback_param, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %83 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mx3fb_dma_done, ptr %callback, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %84 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_submit, align 4
  %call115 = tail call i32 %85(ptr noundef nonnull %call.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_pan_display, %if.then128)) #9
          to label %do.end132 [label %if.then128], !srcloc !212

if.then128:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %device129 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %86 = ptrtoint ptr %device129 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device129, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_pan_display.__UNIQUE_ID_ddebug324, ptr noundef %87, ptr noundef nonnull @.str.36, i32 noundef 1220, ptr noundef nonnull %call.i, i32 noundef %call115) #9
  br label %do.end132

do.end132:                                        ; preds = %if.then128, %if.end114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp133 = icmp slt i32 %call115, 0
  br i1 %cmp133, label %do.end137, label %if.end141

do.end137:                                        ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #11
  %device138 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %88 = ptrtoint ptr %device138 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device138, align 4
  %90 = ptrtoint ptr %cur_ipu_buf85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cur_ipu_buf85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.38, i32 noundef %91, i32 noundef %add50) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end141:                                        ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %txd99 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i, ptr %txd99, align 4
  %93 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %xoffset, align 4
  %xoffset145 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 4
  %95 = ptrtoint ptr %xoffset145 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %xoffset145, align 4
  %96 = ptrtoint ptr %yoffset35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %yoffset35, align 4
  %yoffset148 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 5
  %98 = ptrtoint ptr %yoffset148 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %yoffset148, align 4
  %99 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vmode, align 4
  %and150 = and i32 %100, 256
  %vmode156 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 25
  %101 = ptrtoint ptr %vmode156 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vmode156, align 4
  %and157 = and i32 %102, -257
  %and157.sink = or i32 %and157, %and150
  store i32 %and157.sink, ptr %vmode156, align 4
  %103 = call ptr @memcpy(ptr %cur_var, ptr %var40, i32 160)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_pan_display, %if.then174)) #9
          to label %cleanup [label %if.then174], !srcloc !212

if.then174:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %device175 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %104 = ptrtoint ptr %device175 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device175, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_pan_display.__UNIQUE_ID_ddebug325, ptr noundef %105, ptr noundef nonnull @.str.40) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %if.end141, %do.end137, %do.end111, %if.then72, %if.end39.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then21, %do.body9
  %retval.0 = phi i32 [ %cond83, %if.then72 ], [ -5, %do.end137 ], [ -5, %do.end111 ], [ -22, %if.then21 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ 0, %if.then174 ], [ -22, %do.body9 ], [ 0, %if.end141 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx3fb_dma_done(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %client = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_dma_done.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_dma_done, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %eof_irq = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eof_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_dma_done.__UNIQUE_ID_ddebug314, ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %eof_irq8 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %eof_irq8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eof_irq8, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #9
  %flip_cmpl = getelementptr inbounds %struct.mx3fb_info, ptr %7, i32 0, i32 4
  tail call void @complete(ptr noundef %flip_cmpl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mx3fb_map_video_memory(ptr noundef %fbi, i32 noundef %mem_len, i1 noundef zeroext %lock) unnamed_addr #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !211
  %device = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 21
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %mem_len, ptr noundef nonnull %addr, i32 noundef 3265, i32 noundef 4) #9
  %3 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %3, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.56, i32 noundef %mem_len) #13
  %smem_len31 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %smem_len31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %smem_len31, align 4
  %smem_start33 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %smem_start33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %smem_start33, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %lock, label %if.then8, label %if.end5

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mem_len, ptr %smem_len, align 4
  br label %do.body11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mm_lock = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #9
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %smem_start56 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %smem_start56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %smem_start56, align 4
  %smem_len57 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %smem_len57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mem_len, ptr %smem_len57, align 4
  call void @mutex_unlock(ptr noundef %mm_lock) #9
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %if.end5
  %smem_len60 = phi ptr [ %smem_len, %if.end5 ], [ %smem_len57, %if.then8 ]
  %smem_start58 = phi ptr [ %smem_start, %if.end5 ], [ %smem_start56, %if.then8 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx3fb_map_video_memory.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_map_video_memory, %if.then17)) #9
          to label %do.end25 [label %if.then17], !srcloc !212

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %20 = ptrtoint ptr %smem_start58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smem_start58, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %smem_len60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smem_len60, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx3fb_map_video_memory.__UNIQUE_ID_ddebug326, ptr noundef %19, ptr noundef nonnull @.str.58, i32 noundef %21, ptr noundef %23, i32 noundef %25) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %do.body11
  %26 = ptrtoint ptr %smem_len60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smem_len60, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 26
  %28 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %screen_size, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 %27)
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end
  %retval.0 = phi i32 [ 0, %do.end25 ], [ -16, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdc_init_panel(ptr noundef %mx3fb, i32 noundef %panel, i32 noundef %pixel_clk, i16 noundef zeroext %width, i16 noundef zeroext %height, i16 noundef zeroext %h_start_width, i16 noundef zeroext %h_sync_width, i16 noundef zeroext %h_end_width, i16 noundef zeroext %v_start_width, i16 noundef zeroext %v_sync_width, i16 noundef zeroext %v_end_width, ptr nocapture noundef readonly %sig) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_init_panel.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_init_panel, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i16 %width to i32
  %conv3 = zext i16 %height to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_init_panel.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %conv, i32 noundef %conv3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %v_sync_width)
  %cmp = icmp eq i16 %v_sync_width, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %h_sync_width)
  %cmp7 = icmp eq i16 %h_sync_width, 0
  %or.cond = or i1 %cmp7, %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conv4 = zext i16 %v_sync_width to i32
  %conv6 = zext i16 %h_sync_width to i32
  %sub = shl i32 %conv6, 26
  %shl = add i32 %sub, -67108864
  %conv12 = zext i16 %width to i32
  %conv13 = zext i16 %h_start_width to i32
  %add = add nuw nsw i32 %conv13, %conv12
  %conv14 = zext i16 %h_end_width to i32
  %add15 = add nuw nsw i32 %add, %conv14
  %sub16 = shl i32 %add15, 16
  %shl17 = add i32 %sub16, -65536
  %or = or i32 %shl17, %shl
  %reg_base.i = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 2
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #9, !srcloc !214
  %sub19 = shl i32 %conv4, 26
  %shl20 = add i32 %sub19, -67108864
  %conv22 = zext i16 %height to i32
  %conv23 = zext i16 %v_start_width to i32
  %add24 = add nuw nsw i32 %conv23, %conv22
  %conv25 = zext i16 %v_end_width to i32
  %add26 = add nuw nsw i32 %add24, %conv25
  %sub27 = shl i32 %add26, 16
  %shl28 = add i32 %sub27, -65536
  %or21 = or i32 %shl20, %shl28
  %or29 = or i32 %or21, 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 %or29) #9, !srcloc !214
  %h_start_width31 = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 6
  %6 = ptrtoint ptr %h_start_width31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv13, ptr %h_start_width31, align 4
  %v_start_width33 = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 7
  %7 = ptrtoint ptr %v_start_width33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv23, ptr %v_start_width33, align 4
  %8 = zext i32 %panel to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %panel, label %if.end10.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i275 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275, i32 16580866) #9, !srcloc !214
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i277 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 16056564) #9, !srcloc !214
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 4097) #9, !srcloc !214
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #9, !srcloc !214
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb
  %dev35 = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 4
  %17 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev35, align 4
  %call36 = tail call ptr @clk_get(ptr noundef %18, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.do.body45_crit_edge, label %if.end41

sw.epilog.do.body45_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

if.end41:                                         ; preds = %sw.epilog
  %call39 = tail call i32 @clk_get_rate(ptr noundef %call36) #9
  %mul = shl i32 %call39, 4
  %div40 = udiv i32 %mul, %pixel_clk
  tail call void @clk_put(ptr noundef %call36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div40)
  %cmp42 = icmp ult i32 %div40, 64
  br i1 %cmp42, label %if.end41.do.body45_crit_edge, label %if.end41.do.body63_crit_edge

if.end41.do.body63_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

if.end41.do.body45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

do.body45:                                        ; preds = %if.end41.do.body45_crit_edge, %sw.epilog.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_init_panel.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_init_panel, %if.then57)) #9
          to label %do.body63 [label %if.then57], !srcloc !212

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_init_panel.__UNIQUE_ID_ddebug308, ptr noundef %20, ptr noundef nonnull @.str.61) #9
  br label %do.body63

do.body63:                                        ; preds = %if.then57, %do.body45, %if.end41.do.body63_crit_edge
  %div.1 = phi i32 [ %div40, %if.end41.do.body63_crit_edge ], [ 64, %if.then57 ], [ 64, %do.body45 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_init_panel.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_init_panel, %if.then75)) #9
          to label %do.body82 [label %if.then75], !srcloc !212

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev35, align 4
  %shr = lshr i32 %div.1, 4
  %and = and i32 %div.1, 7
  %mul77 = mul nuw nsw i32 %and, 125
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_init_panel.__UNIQUE_ID_ddebug309, ptr noundef %22, ptr noundef nonnull @.str.62, i32 noundef %pixel_clk, i32 noundef %shr, i32 noundef %mul77) #9
  br label %do.body82

do.body82:                                        ; preds = %if.then75, %do.body63
  %lock = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 3
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %23 = shl i32 %div.1, 19
  %24 = add i32 %23, -4194304
  %shl94 = and i32 %24, -4194304
  %or95 = or i32 %shl94, %div.1
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %26, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %or95) #9, !srcloc !214
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %28, i32 112
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i283) #9, !srcloc !213
  %and97 = and i32 %29, 2030043135
  %30 = ptrtoint ptr %sig to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %sig, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %shl98 = shl nuw nsw i32 %bf.cast, 24
  %bf.lshr100 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr100, 1
  %bf.cast101 = zext i8 %bf.clear to i32
  %shl102 = shl nuw nsw i32 %bf.cast101, 25
  %or103 = or i32 %shl102, %shl98
  %bf.lshr105 = lshr i8 %bf.load, 5
  %bf.clear106 = and i8 %bf.lshr105, 1
  %bf.cast107 = zext i8 %bf.clear106 to i32
  %shl108 = shl nuw nsw i32 %bf.cast107, 26
  %or109 = or i32 %or103, %shl108
  %or110 = or i32 %or109, %and97
  %31 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %32, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %or110) #9, !srcloc !214
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i287 = getelementptr i8, ptr %34, i32 116
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i287) #9, !srcloc !213
  %and112 = and i32 %35, -520093697
  %36 = ptrtoint ptr %sig to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load113 = load i8, ptr %sig, align 4
  %trunc = zext i8 %bf.load113 to i29
  %rev = tail call i29 @llvm.bitreverse.i29(i29 %trunc)
  %mask = and i29 %rev, -16777216
  %or140 = zext i29 %mask to i32
  %or141 = or i32 %and112, %or140
  %37 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %38, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 %or141) #9, !srcloc !214
  %disp_data_fmt = getelementptr inbounds %struct.mx3fb_data, ptr %mx3fb, i32 0, i32 8
  %39 = ptrtoint ptr %disp_data_fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %disp_data_fmt, align 4
  %arrayidx = getelementptr [3 x %struct.di_mapping], ptr @di_mappings, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %44, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 %42) #9, !srcloc !214
  %b1 = getelementptr [3 x %struct.di_mapping], ptr @di_mappings, i32 0, i32 %40, i32 1
  %45 = ptrtoint ptr %b1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %b1, align 4
  %47 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %48, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 %46) #9, !srcloc !214
  %b2 = getelementptr [3 x %struct.di_mapping], ptr @di_mappings, i32 0, i32 %40, i32 2
  %49 = ptrtoint ptr %b2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %b2, align 4
  %51 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %52, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 %50) #9, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call87) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_init_panel.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_init_panel, %if.then155)) #9
          to label %do.body161 [label %if.then155], !srcloc !212

if.then155:                                       ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev35, align 4
  %55 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %56, i32 112
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_init_panel.__UNIQUE_ID_ddebug310, ptr noundef %54, ptr noundef nonnull @.str.63, i32 noundef %57) #9
  br label %do.body161

do.body161:                                       ; preds = %if.then155, %do.body82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_init_panel.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_init_panel, %if.then173)) #9
          to label %do.body179 [label %if.then173], !srcloc !212

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev35, align 4
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %61, i32 116
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i299) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_init_panel.__UNIQUE_ID_ddebug311, ptr noundef %59, ptr noundef nonnull @.str.64, i32 noundef %62) #9
  br label %do.body179

do.body179:                                       ; preds = %if.then173, %do.body161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_init_panel.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_init_panel, %if.then191)) #9
          to label %cleanup [label %if.then191], !srcloc !212

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev35, align 4
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i301 = getelementptr i8, ptr %66, i32 168
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #9, !srcloc !213
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_init_panel.__UNIQUE_ID_ddebug312, ptr noundef %64, ptr noundef nonnull @.str.65, i32 noundef %67) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then191, %do.body179, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.then191 ], [ 0, %do.body179 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdc_enable_channel(ptr noundef %mx3_fbi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mx3fb1 = getelementptr inbounds %struct.mx3fb_info, ptr %mx3_fbi, i32 0, i32 6
  %0 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mx3fb1, align 4
  %idmac_channel = getelementptr inbounds %struct.mx3fb_info, ptr %mx3_fbi, i32 0, i32 7
  %2 = ptrtoint ptr %idmac_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idmac_channel, align 4
  %txd = getelementptr inbounds %struct.mx3fb_info, ptr %mx3_fbi, i32 0, i32 8
  %4 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_enable_channel.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_enable_channel, %if.then6)) #9
          to label %if.end30 [label %if.then6], !srcloc !212

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txd, align 4
  %sg = getelementptr inbounds %struct.idmac_tx_desc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_enable_channel.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.67, ptr noundef %mx3_fbi, ptr noundef %9, ptr noundef %11) #9
  br label %if.end30

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_enable_channel.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_enable_channel, %if.then25)) #9
          to label %if.end30 [label %if.then25], !srcloc !212

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_enable_channel.__UNIQUE_ID_ddebug304, ptr noundef %13, ptr noundef nonnull @.str.68, ptr noundef %mx3_fbi) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.body13, %if.then6, %do.body
  %cookie31 = getelementptr inbounds %struct.mx3fb_info, ptr %mx3_fbi, i32 0, i32 9
  %14 = ptrtoint ptr %cookie31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cookie31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then32, label %if.else70

if.then32:                                        ; preds = %if.end30
  %sg33 = getelementptr inbounds %struct.mx3fb_info, ptr %mx3_fbi, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then32.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false.i

if.then32.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then32
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 39
  %18 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_sg.exit.thread

dmaengine_prep_slave_sg.exit.thread:              ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %if.then32.dmaengine_prep_slave_sg.exit.thread_crit_edge
  %20 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %txd, align 4
  br label %do.end41

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %19(ptr noundef nonnull %3, ptr noundef %sg33, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %21 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %txd, align 4
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %dmaengine_prep_slave_sg.exit.do.end41_crit_edge, label %if.end43

dmaengine_prep_slave_sg.exit.do.end41_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end41:                                         ; preds = %dmaengine_prep_slave_sg.exit.do.end41_crit_edge, %dmaengine_prep_slave_sg.exit.thread
  %dev42 = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.69, i32 noundef %25) #13
  br label %cleanup

if.end43:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %callback_param, align 4
  %27 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txd, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mx3fb_dma_done, ptr %callback, align 4
  %30 = load ptr, ptr %txd, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_submit, align 4
  %call49 = tail call i32 %32(ptr noundef %30) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_enable_channel.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_enable_channel, %if.then62)) #9
          to label %if.end106 [label %if.then62], !srcloc !212

if.then62:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev63, align 4
  %35 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txd, align 4
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %3, i32 0, i32 10
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %38, %queue
  %cond = select i1 %cmp.i.not, i32 45, i32 43
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_enable_channel.__UNIQUE_ID_ddebug305, ptr noundef %34, ptr noundef nonnull @.str.70, i32 noundef 415, ptr noundef %36, i32 noundef %call49, i32 noundef %cond) #9
  br label %if.end106

if.else70:                                        ; preds = %if.end30
  %39 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %txd, align 4
  %tobool72.not = icmp eq ptr %40, null
  br i1 %tobool72.not, label %if.else70.do.end79_crit_edge, label %lor.lhs.false

if.else70.do.end79_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

lor.lhs.false:                                    ; preds = %if.else70
  %tx_submit74 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %tx_submit74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_submit74, align 4
  %tobool75.not = icmp eq ptr %42, null
  br i1 %tobool75.not, label %lor.lhs.false.do.end79_crit_edge, label %if.end82

lor.lhs.false.do.end79_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

do.end79:                                         ; preds = %lor.lhs.false.do.end79_crit_edge, %if.else70.do.end79_crit_edge
  %dev80 = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev80, align 4
  %chan_id81 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %chan_id81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan_id81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.72, i32 noundef %46) #13
  br label %cleanup

if.end82:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %50(ptr noundef %3) #9
  %51 = ptrtoint ptr %cookie31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cookie31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_enable_channel.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdc_enable_channel, %if.then96)) #9
          to label %if.end106 [label %if.then96], !srcloc !212

if.then96:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %dev97 = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev97, align 4
  %55 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %txd, align 4
  %queue99 = getelementptr inbounds %struct.idmac_channel, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %queue99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %queue99, align 4
  %cmp.i173.not = icmp eq ptr %58, %queue99
  %cond102 = select i1 %cmp.i173.not, i32 45, i32 43
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_enable_channel.__UNIQUE_ID_ddebug306, ptr noundef %54, ptr noundef nonnull @.str.74, i32 noundef 427, ptr noundef %56, i32 noundef %52, i32 noundef %cond102) #9
  br label %if.end106

if.end106:                                        ; preds = %if.then96, %if.end82, %if.then62, %if.end43
  %cookie.0 = phi i32 [ %call49, %if.then62 ], [ %52, %if.then96 ], [ %call49, %if.end43 ], [ %52, %if.end82 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cookie.0)
  %cmp107 = icmp sgt i32 %cookie.0, -1
  br i1 %cmp107, label %do.body110, label %if.end106.if.end121_crit_edge

if.end106.if.end121_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

do.body110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 3
  %call114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %59 = ptrtoint ptr %mx3fb1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mx3fb1, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_base.i.i, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !213
  %or.i = or i32 %63, 512
  %64 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %or.i) #9, !srcloc !214
  %66 = ptrtoint ptr %cookie31 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cookie.0, ptr %cookie31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call114) #9
  br label %if.end121

if.end121:                                        ; preds = %do.body110, %if.end106.if.end121_crit_edge
  tail call void @msleep(i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %do.end79, %do.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_bl_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !213
  %shr.i = lshr i32 %4, 16
  %and.i = and i32 %shr.i, 255
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx3fb_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %6 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  %8 = select i1 %cmp4.not, i1 %cmp.not, i1 false
  %spec.store.select9 = select i1 %8, i32 %3, i32 0
  %backlight_level = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %backlight_level, align 4
  %and = and i32 %10, -256
  %or = or i32 %spec.store.select9, %and
  store i32 %or, ptr %backlight_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx3fb_bl_update_status, %if.then.i)) #9
          to label %sdc_set_brightness.exit [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %conv.i = and i32 %spec.store.select9, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdc_set_brightness.__UNIQUE_ID_ddebug313, ptr noundef %12, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %conv.i) #9
  br label %sdc_set_brightness.exit

sdc_set_brightness.exit:                          ; preds = %if.then.i, %entry
  %conv3.i = shl i32 %spec.store.select9, 16
  %shl.i = and i32 %conv3.i, 16711680
  %or.i = or i32 %shl.i, 50331648
  %reg_base.i.i = getelementptr inbounds %struct.mx3fb_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #9, !srcloc !214
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mx3fb_setup() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #9
  %0 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %options, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.2, ptr noundef nonnull %options) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call518 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.78) #9
  %cmp.not19 = icmp eq ptr %call518, null
  br i1 %cmp.not19, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call520 = phi ptr [ %call5, %while.cond.backedge.while.body_crit_edge ], [ %call518, %while.cond.preheader.while.body_crit_edge ]
  %5 = ptrtoint ptr %call520 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call520, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %while.body.while.cond.backedge_crit_edge, label %if.end8

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end8:                                          ; preds = %while.body
  %call9 = call i32 @strncmp(ptr noundef nonnull %call520, ptr noundef nonnull dereferenceable(5) @.str.79, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call520, i32 4
  %call12 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #9
  store i32 %call12, ptr @default_bpp, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call520, ptr @fb_mode, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then11, %while.body.while.cond.backedge_crit_edge
  %call5 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.78) #9
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i29 @llvm.bitreverse.i29(i29) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !193, !194, !195, !196, !198, !200}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @__initcall__kmod_mx3fb__329_1698_mx3fb_init6, !1, !"__initcall__kmod_mx3fb__329_1698_mx3fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1698, i32 1}
!2 = !{ptr @__exitcall_mx3fb_exit, !3, !"__exitcall_mx3fb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1699, i32 1}
!4 = !{ptr @__UNIQUE_ID_author330, !5, !"__UNIQUE_ID_author330", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1701, i32 1}
!6 = !{ptr @__UNIQUE_ID_description331, !7, !"__UNIQUE_ID_description331", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1702, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias332, !9, !"__UNIQUE_ID_alias332", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1703, i32 1}
!10 = !{ptr @__UNIQUE_ID_file333, !11, !"__UNIQUE_ID_file333", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1704, i32 1}
!12 = !{ptr @__UNIQUE_ID_license334, !11, !"__UNIQUE_ID_license334", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1645, i32 11}
!15 = !{ptr @mx3fb_driver, !16, !"mx3fb_driver", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1643, i32 31}
!17 = !{ptr @mx3fb_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1576, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1584, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mx3fb_probe.__UNIQUE_ID_ddebug328, !21, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1620, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mx3fb_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mx3fb_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/platform_data/dma-imx.h", i32 59, i32 46}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1440, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @init_fb_chan._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @init_fb_chan._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1501, i32 2}
!41 = !{ptr @init_fb_chan.__UNIQUE_ID_ddebug327, !40, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1508, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @init_fb_chan._entry.13, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @init_fb_chan._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mx3fb_init_fbinfo.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1417, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mx3fb_ops, !51, !"mx3fb_ops", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1253, i32 28}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/mx3fb.c", i32 930, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mx3fb_check_var.__UNIQUE_ID_ddebug317, !53, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1002, i32 3}
!58 = !{ptr @mx3fb_check_var.__UNIQUE_ID_ddebug318, !57, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/mx3fb.c", i32 908, i32 2}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mx3fb_set_par.__UNIQUE_ID_ddebug316, !60, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1032, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mx3fb_setcolreg.__UNIQUE_ID_ddebug319, !64, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1114, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mx3fb_blank.__UNIQUE_ID_ddebug320, !68, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1147, i32 2}
!73 = !{ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug321, !72, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1151, i32 3}
!76 = !{ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug322, !75, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1173, i32 2}
!79 = !{ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug323, !78, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1187, i32 3}
!82 = !{ptr @mx3fb_pan_display._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mx3fb_pan_display._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1206, i32 3}
!88 = !{ptr @mx3fb_pan_display._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mx3fb_pan_display._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1220, i32 2}
!92 = !{ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug324, !91, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1222, i32 3}
!95 = !{ptr @mx3fb_pan_display._entry.37, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mx3fb_pan_display._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1243, i32 2}
!99 = !{ptr @mx3fb_pan_display.__UNIQUE_ID_ddebug325, !98, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/mx3fb.c", i32 763, i32 2}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mx3fb_dma_done.__UNIQUE_ID_ddebug314, !101, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!104 = !{ptr @fb_mode, !105, !"fb_mode", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/mx3fb.c", i32 340, i32 20}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/mx3fb.c", i32 135, i32 12}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/mx3fb.c", i32 153, i32 12}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/mx3fb.c", i32 171, i32 12}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/mx3fb.c", i32 187, i32 12}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/mx3fb.c", i32 203, i32 12}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/mx3fb.c", i32 219, i32 12}
!118 = !{ptr @mx3fb_modedb, !119, !"mx3fb_modedb", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/mx3fb.c", i32 132, i32 34}
!120 = !{ptr @default_bpp, !121, !"default_bpp", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/mx3fb.c", i32 341, i32 22}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/mx3fb.c", i32 704, i32 2}
!124 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sdc_set_brightness.__UNIQUE_ID_ddebug313, !123, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!126 = !{ptr @init_completion.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../include/linux/completion.h", i32 87, i32 2}
!128 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/mx3fb.c", i32 844, i32 3}
!131 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @__set_par.__UNIQUE_ID_ddebug315, !130, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/mx3fb.c", i32 858, i32 4}
!135 = !{ptr @__set_par._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @__set_par._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/mx3fb.c", i32 742, i32 18}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1341, i32 3}
!141 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mx3fb_map_video_memory._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @mx3fb_map_video_memory._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1354, i32 2}
!146 = !{ptr @mx3fb_map_video_memory.__UNIQUE_ID_ddebug326, !145, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/mx3fb.c", i32 520, i32 2}
!149 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @sdc_init_panel.__UNIQUE_ID_ddebug307, !148, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/mx3fb.c", i32 574, i32 3}
!153 = !{ptr @sdc_init_panel.__UNIQUE_ID_ddebug308, !152, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/mx3fb.c", i32 579, i32 2}
!156 = !{ptr @sdc_init_panel.__UNIQUE_ID_ddebug309, !155, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/mx3fb.c", i32 613, i32 2}
!159 = !{ptr @sdc_init_panel.__UNIQUE_ID_ddebug310, !158, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/video/fbdev/mx3fb.c", i32 615, i32 2}
!162 = !{ptr @sdc_init_panel.__UNIQUE_ID_ddebug311, !161, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/mx3fb.c", i32 617, i32 2}
!165 = !{ptr @sdc_init_panel.__UNIQUE_ID_ddebug312, !164, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!166 = !{ptr @di_mappings, !167, !"di_mappings", i1 false, i1 false}
!167 = !{!"../drivers/video/fbdev/mx3fb.c", i32 357, i32 32}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/mx3fb.c", i32 395, i32 3}
!170 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @sdc_enable_channel.__UNIQUE_ID_ddebug303, !169, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/mx3fb.c", i32 398, i32 3}
!174 = !{ptr @sdc_enable_channel.__UNIQUE_ID_ddebug304, !173, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/video/fbdev/mx3fb.c", i32 405, i32 4}
!177 = !{ptr @sdc_enable_channel._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @sdc_enable_channel._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/mx3fb.c", i32 414, i32 3}
!181 = !{ptr @sdc_enable_channel.__UNIQUE_ID_ddebug305, !180, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/mx3fb.c", i32 418, i32 4}
!184 = !{ptr @sdc_enable_channel._entry.71, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sdc_enable_channel._entry_ptr.73, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/video/fbdev/mx3fb.c", i32 426, i32 3}
!188 = !{ptr @sdc_enable_channel.__UNIQUE_ID_ddebug306, !187, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/video/fbdev/mx3fb.c", i32 318, i32 33}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/mx3fb.c", i32 321, i32 3}
!193 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mx3fb_init_backlight._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @mx3fb_init_backlight._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @mx3fb_lcdc_bl_ops, !197, !"mx3fb_lcdc_bl_ops", i1 false, i1 false}
!197 = !{!"../drivers/video/fbdev/mx3fb.c", i32 300, i32 35}
!198 = !{ptr @.str.78, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1669, i32 33}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/video/fbdev/mx3fb.c", i32 1672, i32 21}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{!"auto-init"}
!212 = !{i64 2148995715, i64 2148995720, i64 2148995733, i64 2148995777, i64 2148995811, i64 2148995832}
!213 = !{i64 4914931}
!214 = !{i64 4914513}
!215 = !{!"branch_weights", i32 2000, i32 1}
!216 = !{i64 2155923655, i64 2155924147, i64 2155923692, i64 2155923748, i64 2155923782, i64 2155923806, i64 2155923847, i64 2155923868, i64 2155923896, i64 2155923930}
!217 = !{i64 2155925265, i64 2155925757, i64 2155925302, i64 2155925358, i64 2155925392, i64 2155925416, i64 2155925457, i64 2155925478, i64 2155925506, i64 2155925540}
