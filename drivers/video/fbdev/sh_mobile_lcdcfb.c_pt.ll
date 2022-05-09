; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/sh_mobile_lcdcfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/sh_mobile_lcdcfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_format_info = type { i32, i32, i8, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.sh_mobile_lcdc_sys_bus_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.sh_mobile_lcdc_priv = type { ptr, i32, %struct.atomic_t, ptr, ptr, i32, [2 x %struct.sh_mobile_lcdc_chan], [4 x %struct.sh_mobile_lcdc_overlay], i32, i32 }
%struct.sh_mobile_lcdc_chan = type { ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.completion, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, [16 x i32], %struct.anon.85, %struct.fb_deferred_io, ptr, i32 }
%struct.anon.85 = type { i32, i32, %struct.fb_videomode }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.sh_mobile_lcdc_overlay = type { ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_info = type { i32, [2 x %struct.sh_mobile_lcdc_chan_cfg], [4 x %struct.sh_mobile_lcdc_overlay_cfg] }
%struct.sh_mobile_lcdc_chan_cfg = type { i32, i32, i32, i32, i32, i32, ptr, i32, %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_bl_info, %struct.sh_mobile_lcdc_sys_bus_cfg, ptr }
%struct.sh_mobile_lcdc_panel_cfg = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.sh_mobile_lcdc_bl_info = type { ptr, i32, ptr }
%struct.sh_mobile_lcdc_sys_bus_cfg = type { i32, i32, i32 }
%struct.sh_mobile_lcdc_overlay_cfg = type { i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.sh_mobile_lcdc_entity = type { ptr, ptr, ptr, %struct.fb_videomode }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sh_mobile_lcdc_entity_ops = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_sh_mobile_lcdcfb__315_2660_sh_mobile_lcdc_driver_init6 = internal global ptr @sh_mobile_lcdc_driver_init, section ".initcall6.init", align 4
@sh_mobile_lcdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_mobile_lcdc_probe, ptr @sh_mobile_lcdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_lcdc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_mobile_lcdc_driver_exit = internal global ptr @sh_mobile_lcdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description316 = internal constant [67 x i8] c"sh_mobile_lcdcfb.description=SuperH Mobile LCDC Framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [57 x i8] c"sh_mobile_lcdcfb.author=Magnus Damm <damm@opensource.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [59 x i8] c"sh_mobile_lcdcfb.file=drivers/video/fbdev/sh_mobile_lcdcfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [32 x i8] c"sh_mobile_lcdcfb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_mobile_lcdc_fb\00", [46 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_mobile_lcdc_suspend, ptr @sh_mobile_lcdc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_lcdc_runtime_suspend, ptr @sh_mobile_lcdc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no platform data defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_mobile_lcdc_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/video/fbdev/sh_mobile_lcdcfb.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr = internal global ptr @sh_mobile_lcdc_probe._entry, section ".printk_index", align 4
@sh_mobile_lcdc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2522, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot get platform resources\0A\00", [33 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr.8 = internal global ptr @sh_mobile_lcdc_probe._entry.6, section ".printk_index", align 4
@sh_mobile_lcdc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv->ch[i].open_lock\00", [41 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr.12 = internal global ptr @sh_mobile_lcdc_probe._entry.10, section ".printk_index", align 4
@sh_mobile_lcdc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 2554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported interface type\0A\00", [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr.15 = internal global ptr @sh_mobile_lcdc_probe._entry.13, section ".printk_index", align 4
@sh_mobile_lcdc_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ch->frame_end_wait\00", [44 x i8] zeroinitializer }, align 32
@lcdc_offs_mainlcd = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 1024, i32 1028, i32 1048, i32 1052, i32 1056, i32 1060, i32 1064, i32 1068, i32 1072, i32 1076, i32 1080, i32 1096, i32 1100, i32 1104, i32 1108, i32 1120, i32 1184], [60 x i8] zeroinitializer }, align 32
@lcdc_offs_sublcd = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 1032, i32 1036, i32 1536, i32 1540, i32 1544, i32 1548, i32 1552, i32 1556, i32 1560, i32 0, i32 1568, i32 1572, i32 1576, i32 1580, i32 1584, i32 1596, i32 0], [60 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channels defined\0A\00", [43 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr.20 = internal global ptr @sh_mobile_lcdc_probe._entry.18, section ".printk_index", align 4
@sh_mobile_lcdc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to setup clocks\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr.23 = internal global ptr @sh_mobile_lcdc_probe._entry.21, section ".printk_index", align 4
@sh_mobile_lcdc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to start hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_probe._entry_ptr.26 = internal global ptr @sh_mobile_lcdc_probe._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @sh_mobile_lcdc_update_bl, ptr @sh_mobile_lcdc_get_brightness, ptr @sh_mobile_lcdc_check_fb }, [16 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 2163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to register backlight device: %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sh_mobile_lcdc_bl_probe\00", [40 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_bl_probe._entry_ptr = internal global ptr @sh_mobile_lcdc_bl_probe._entry, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peripheral_clk\00", [17 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_setup_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get dot clock %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sh_mobile_lcdc_setup_clocks\00", [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_setup_clocks._entry_ptr = internal global ptr @sh_mobile_lcdc_setup_clocks._entry, section ".printk_index", align 4
@sh_mobile_lcdc_channel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 2419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid FOURCC %08x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sh_mobile_lcdc_channel_init\00", [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_init._entry_ptr = internal global ptr @sh_mobile_lcdc_channel_init._entry, section ".printk_index", align 4
@sh_mobile_lcdc_channel_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 2436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"yres must be multiple of 2 for YCbCr420 mode.\0A\00", [49 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_init._entry_ptr.38 = internal global ptr @sh_mobile_lcdc_channel_init._entry.36, section ".printk_index", align 4
@sh_mobile_lcdc_channel_init.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.35, ptr @.str.3, ptr @.str.40, i8 2, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_mobile_lcdcfb\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found largest videomode %ux%u\0A\00", [33 x i8] zeroinitializer }, align 32
@default_720p = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr @.str.48, i32 60, i32 1280, i32 720, i32 13468, i32 220, i32 110, i32 20, i32 5, i32 40, i32 5, i32 3, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.3, i32 2486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_init._entry_ptr.43 = internal global ptr @sh_mobile_lcdc_channel_init._entry.41, section ".printk_index", align 4
@sh_mobile_lcdc_channel_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.3, i32 2494, ptr @.str.46, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get transmitter device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_init._entry_ptr.47 = internal global ptr @sh_mobile_lcdc_channel_init._entry.44, section ".printk_index", align 4
@sh_mobile_format_infos = internal constant { [9 x %struct.sh_mobile_lcdc_format_info], [48 x i8] } { [9 x %struct.sh_mobile_lcdc_format_info] [%struct.sh_mobile_lcdc_format_info { i32 1346520914, i32 16, i8 0, i32 3 }, %struct.sh_mobile_lcdc_format_info { i32 861030210, i32 24, i8 0, i32 11 }, %struct.sh_mobile_lcdc_format_info { i32 877807426, i32 32, i8 0, i32 0 }, %struct.sh_mobile_lcdc_format_info { i32 842094158, i32 12, i8 1, i32 65536 }, %struct.sh_mobile_lcdc_format_info { i32 825382478, i32 12, i8 1, i32 65536 }, %struct.sh_mobile_lcdc_format_info { i32 909203022, i32 16, i8 1, i32 65792 }, %struct.sh_mobile_lcdc_format_info { i32 825644622, i32 16, i8 1, i32 65792 }, %struct.sh_mobile_lcdc_format_info { i32 875714126, i32 24, i8 1, i32 66048 }, %struct.sh_mobile_lcdc_format_info { i32 842290766, i32 24, i8 1, i32 66048 }], [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI 720p\00", [22 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @sh_mobile_lcdc_open, ptr @sh_mobile_lcdc_release, ptr @fb_sys_read, ptr @fb_sys_write, ptr @sh_mobile_lcdc_check_var, ptr @sh_mobile_lcdc_set_par, ptr @sh_mobile_lcdc_setcolreg, ptr null, ptr @sh_mobile_lcdc_blank, ptr @sh_mobile_lcdc_pan, ptr @sh_mobile_lcdc_fillrect, ptr @sh_mobile_lcdc_copyarea, ptr @sh_mobile_lcdc_imageblit, ptr null, ptr null, ptr @sh_mobile_lcdc_ioctl, ptr null, ptr @sh_mobile_lcdc_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_fb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 2064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to allocate cmap\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sh_mobile_lcdc_channel_fb_init\00", [33 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_fb_init._entry_ptr = internal global ptr @sh_mobile_lcdc_channel_fb_init._entry, section ".printk_index", align 4
@sh_mobile_lcdc_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"SH Mobile LCDC\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 1, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 1, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_open.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 1, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_mobile_lcdc_open\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(): %d users\0A\00", [16 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_release.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.53, ptr @.str.3, ptr @.str.52, i8 1, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_mobile_lcdc_release\00", [41 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unable to restart LCDC\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_mobile_lcdc_set_par\00", [41 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_set_par._entry_ptr = internal global ptr @sh_mobile_lcdc_set_par._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sh_mobile_lcdc_overlay_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 2362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid FOURCC %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sh_mobile_lcdc_overlay_init\00", [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_overlay_init._entry_ptr = internal global ptr @sh_mobile_lcdc_overlay_init._entry, section ".printk_index", align 4
@sh_mobile_lcdc_overlay_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.57, ptr @.str.3, i32 2393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_overlay_init._entry_ptr.59 = internal global ptr @sh_mobile_lcdc_overlay_init._entry.58, section ".printk_index", align 4
@sh_mobile_lcdc_overlay_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @fb_sys_write, ptr @sh_mobile_lcdc_overlay_check_var, ptr @sh_mobile_lcdc_overlay_set_par, ptr null, ptr null, ptr @sh_mobile_lcdc_overlay_blank, ptr @sh_mobile_lcdc_overlay_pan, ptr @sys_fillrect, ptr @sys_copyarea, ptr @sys_imageblit, ptr null, ptr null, ptr @sh_mobile_lcdc_overlay_ioctl, ptr null, ptr @sh_mobile_lcdc_overlay_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_overlay_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"SH Mobile LCDC\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 1, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 1, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SH Mobile LCDC Overlay %u\00", [38 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_sys_bus_ops = internal global { %struct.sh_mobile_lcdc_sys_bus_ops, [20 x i8] } { %struct.sh_mobile_lcdc_sys_bus_ops { ptr @lcdc_sys_write_index, ptr @lcdc_sys_write_data, ptr @lcdc_sys_read_data }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sh_mobile_lcdc_channel_fb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 2011, ptr @.str.63, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"registered %s/%s as %dx%d %dbpp.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sh_mobile_lcdc_channel_fb_register\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_channel_fb_register._entry_ptr = internal global ptr @sh_mobile_lcdc_channel_fb_register._entry, section ".printk_index", align 4
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainlcd\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sublcd\00", [25 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_overlay_fb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1533, ptr @.str.63, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"registered %s/overlay %u as %dx%d %dbpp.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sh_mobile_lcdc_overlay_fb_register\00", [61 x i8] zeroinitializer }, align 32
@sh_mobile_lcdc_overlay_fb_register._entry_ptr = internal global ptr @sh_mobile_lcdc_overlay_fb_register._entry, section ".printk_index", align 4
@overlay_sysfs_attrs = internal constant { [4 x %struct.device_attribute], [48 x i8] } { [4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @overlay_alpha_show, ptr @overlay_alpha_store }, %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @overlay_mode_show, ptr @overlay_mode_store }, %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @overlay_position_show, ptr @overlay_position_store }, %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @overlay_rop3_show, ptr @overlay_rop3_store }], [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ovl_alpha\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ovl_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_position\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ovl_rop3\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d,%d\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 4096, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 4103, i64 4104, i64 4105, i64 4106, i64 4107]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 877807426, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.79 = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 877807426, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 877807426, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.85 = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 877807426, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.87 = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 877807426, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.90 = internal global [9 x i64] [i64 7, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 861030210, i64 877807426, i64 909203022, i64 1346520914]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.92 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 861030210, i64 875714126, i64 909203022, i64 1346520914]
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"sh_mobile_lcdc_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2651, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2653, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"sh_mobile_lcdc_dev_pm_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2217, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2515, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2522, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2533, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2539, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2554, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2557, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"lcdc_offs_mainlcd\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 224, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"lcdc_offs_sublcd\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 244, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2579, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2596, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2624, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 87, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [22 x i8] c"sh_mobile_lcdc_bl_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2147, i32 35 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2162, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 364, i32 9 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 368, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 384, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2419, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2435, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2449, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [13 x i8] c"default_720p\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2232, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2486, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2494, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"sh_mobile_format_infos\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 548, i32 48 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2233, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"sh_mobile_lcdc_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1964, i32 28 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2064, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [19 x i8] c"sh_mobile_lcdc_fix\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1648, i32 39 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1813, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1790, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1897, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2362, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2393, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [27 x i8] c"sh_mobile_lcdc_overlay_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1490, i32 28 }
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"sh_mobile_lcdc_overlay_fix\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1356, i32 39 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1580, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant [27 x i8] c"sh_mobile_lcdc_sys_bus_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 432, i32 42 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2008, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1531, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c"overlay_sysfs_attrs\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1345, i32 38 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1346, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1348, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1350, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1352, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1195, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [42 x i8] c"../drivers/video/fbdev/sh_mobile_lcdcfb.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1272, i32 35 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_sh_mobile_lcdc_driver_exit, ptr @__initcall__kmod_sh_mobile_lcdcfb__315_2660_sh_mobile_lcdc_driver_init6, ptr @sh_mobile_lcdc_bl_probe._entry, ptr @sh_mobile_lcdc_bl_probe._entry_ptr, ptr @sh_mobile_lcdc_channel_fb_init._entry, ptr @sh_mobile_lcdc_channel_fb_init._entry_ptr, ptr @sh_mobile_lcdc_channel_fb_register._entry, ptr @sh_mobile_lcdc_channel_fb_register._entry_ptr, ptr @sh_mobile_lcdc_channel_init._entry, ptr @sh_mobile_lcdc_channel_init._entry.36, ptr @sh_mobile_lcdc_channel_init._entry.41, ptr @sh_mobile_lcdc_channel_init._entry.44, ptr @sh_mobile_lcdc_channel_init._entry_ptr, ptr @sh_mobile_lcdc_channel_init._entry_ptr.38, ptr @sh_mobile_lcdc_channel_init._entry_ptr.43, ptr @sh_mobile_lcdc_channel_init._entry_ptr.47, ptr @sh_mobile_lcdc_driver_exit, ptr @sh_mobile_lcdc_overlay_fb_register._entry, ptr @sh_mobile_lcdc_overlay_fb_register._entry_ptr, ptr @sh_mobile_lcdc_overlay_init._entry, ptr @sh_mobile_lcdc_overlay_init._entry.58, ptr @sh_mobile_lcdc_overlay_init._entry_ptr, ptr @sh_mobile_lcdc_overlay_init._entry_ptr.59, ptr @sh_mobile_lcdc_probe._entry, ptr @sh_mobile_lcdc_probe._entry.10, ptr @sh_mobile_lcdc_probe._entry.13, ptr @sh_mobile_lcdc_probe._entry.18, ptr @sh_mobile_lcdc_probe._entry.21, ptr @sh_mobile_lcdc_probe._entry.24, ptr @sh_mobile_lcdc_probe._entry.6, ptr @sh_mobile_lcdc_probe._entry_ptr, ptr @sh_mobile_lcdc_probe._entry_ptr.12, ptr @sh_mobile_lcdc_probe._entry_ptr.15, ptr @sh_mobile_lcdc_probe._entry_ptr.20, ptr @sh_mobile_lcdc_probe._entry_ptr.23, ptr @sh_mobile_lcdc_probe._entry_ptr.26, ptr @sh_mobile_lcdc_probe._entry_ptr.8, ptr @sh_mobile_lcdc_set_par._entry, ptr @sh_mobile_lcdc_set_par._entry_ptr, ptr @sh_mobile_lcdc_setup_clocks._entry, ptr @sh_mobile_lcdc_setup_clocks._entry_ptr, ptr @sh_mobile_lcdc_driver, ptr @.str, ptr @sh_mobile_lcdc_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @sh_mobile_lcdc_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @sh_mobile_lcdc_probe.__key.16, ptr @.str.17, ptr @lcdc_offs_mainlcd, ptr @lcdc_offs_sublcd, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27, ptr @sh_mobile_lcdc_bl_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @default_720p, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @sh_mobile_format_infos, ptr @.str.48, ptr @sh_mobile_lcdc_ops, ptr @.str.49, ptr @.str.50, ptr @sh_mobile_lcdc_fix, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @sh_mobile_lcdc_overlay_ops, ptr @sh_mobile_lcdc_overlay_fix, ptr @.str.60, ptr @sh_mobile_lcdc_sys_bus_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @overlay_sysfs_attrs, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdc_offs_mainlcd to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdc_offs_sublcd to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_setup_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_channel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_channel_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_720p to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_channel_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_channel_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_format_infos to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_channel_fb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_overlay_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_overlay_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_overlay_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_overlay_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_sys_bus_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_channel_fb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_lcdc_overlay_fb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlay_sysfs_attrs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mobile_lcdc_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mobile_lcdc_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #17
  br label %cleanup169

if.end:                                           ; preds = %entry
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #14
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  %tobool3.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #17
  br label %cleanup169

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1496) #18
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup169_crit_edge, label %if.end13

if.end9.cleanup169_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup169

if.end13:                                         ; preds = %if.end9
  %dev15 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev15, align 4
  %open_lock = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @sh_mobile_lcdc_probe.__key) #14
  %open_lock.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 6
  tail call void @__mutex_init(ptr noundef %open_lock.1, ptr noundef nonnull @.str.9, ptr noundef nonnull @sh_mobile_lcdc_probe.__key) #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end13.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call2, ptr noundef nonnull @sh_mobile_lcdc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #17
  br label %err1

if.end29:                                         ; preds = %dev_name.exit
  %irq30 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %irq30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %irq30, align 4
  %hw_usecnt = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt, i32 noundef 4) #14
  %10 = ptrtoint ptr %hw_usecnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 -1, ptr %hw_usecnt, align 8
  %ch35 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 6
  br label %for.body33

for.body33:                                       ; preds = %for.inc62.for.body33_crit_edge, %if.end29
  %cmp32 = phi i1 [ true, %if.end29 ], [ false, %for.inc62.for.body33_crit_edge ]
  %i.1358 = phi i32 [ 0, %if.end29 ], [ 1, %for.inc62.for.body33_crit_edge ]
  %num_channels.0357 = phi i32 [ 0, %if.end29 ], [ %num_channels.2.ph, %for.inc62.for.body33_crit_edge ]
  %add.ptr = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %add.ptr, align 4
  %arrayidx37 = getelementptr %struct.sh_mobile_lcdc_info, ptr %1, i32 0, i32 1, i32 %i.1358
  %cfg = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 2
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx37, ptr %cfg, align 4
  %interface_type1.i = getelementptr %struct.sh_mobile_lcdc_info, ptr %1, i32 0, i32 1, i32 %i.1358, i32 3
  %13 = ptrtoint ptr %interface_type1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interface_type1.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %for.body33.cleanup_crit_edge [
    i32 0, label %for.body33.sw.epilog.i_crit_edge
    i32 4, label %for.body33.sw.epilog.i_crit_edge438
    i32 5, label %for.body33.sw.epilog.i_crit_edge439
    i32 6, label %for.body33.sw.epilog.i_crit_edge440
    i32 7, label %for.body33.sw.epilog.i_crit_edge441
    i32 10, label %for.body33.sw.epilog.i_crit_edge442
    i32 11, label %for.body33.sw.epilog.i_crit_edge443
    i32 4096, label %for.body33.sw.epilog.i_crit_edge444
    i32 4097, label %for.body33.sw.epilog.i_crit_edge445
    i32 4098, label %for.body33.sw.epilog.i_crit_edge446
    i32 4099, label %for.body33.sw.epilog.i_crit_edge447
    i32 4100, label %for.body33.sw.epilog.i_crit_edge448
    i32 4101, label %for.body33.sw.epilog.i_crit_edge449
    i32 4103, label %for.body33.sw.epilog.i_crit_edge450
    i32 4104, label %for.body33.sw.epilog.i_crit_edge451
    i32 4105, label %for.body33.sw.epilog.i_crit_edge452
    i32 4106, label %for.body33.sw.epilog.i_crit_edge453
    i32 4107, label %for.body33.sw.epilog.i_crit_edge454
  ]

for.body33.sw.epilog.i_crit_edge454:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge453:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge452:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge451:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge450:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge449:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge448:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge447:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge446:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge445:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge444:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge443:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge442:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge441:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge440:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge439:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge438:              ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.sw.epilog.i_crit_edge:                 ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.i:                                      ; preds = %for.body33.sw.epilog.i_crit_edge, %for.body33.sw.epilog.i_crit_edge438, %for.body33.sw.epilog.i_crit_edge439, %for.body33.sw.epilog.i_crit_edge440, %for.body33.sw.epilog.i_crit_edge441, %for.body33.sw.epilog.i_crit_edge442, %for.body33.sw.epilog.i_crit_edge443, %for.body33.sw.epilog.i_crit_edge444, %for.body33.sw.epilog.i_crit_edge445, %for.body33.sw.epilog.i_crit_edge446, %for.body33.sw.epilog.i_crit_edge447, %for.body33.sw.epilog.i_crit_edge448, %for.body33.sw.epilog.i_crit_edge449, %for.body33.sw.epilog.i_crit_edge450, %for.body33.sw.epilog.i_crit_edge451, %for.body33.sw.epilog.i_crit_edge452, %for.body33.sw.epilog.i_crit_edge453, %for.body33.sw.epilog.i_crit_edge454
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 2
  br i1 %cmp.i.not.i, label %if.then.i, label %sw.epilog.i.do.body46_crit_edge

sw.epilog.i.do.body46_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body46

if.then.i:                                        ; preds = %sw.epilog.i
  %and.i = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i271

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i271:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %and4.i = and i32 %14, -4097
  br label %do.body46

do.body46:                                        ; preds = %if.end.i271, %sw.epilog.i.do.body46_crit_edge
  %interface_type.0.i = phi i32 [ %and4.i, %if.end.i271 ], [ %14, %sw.epilog.i.do.body46_crit_edge ]
  %ldmt1r_value.i = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 4
  %18 = ptrtoint ptr %ldmt1r_value.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %interface_type.0.i, ptr %ldmt1r_value.i, align 4
  %frame_end_wait = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %frame_end_wait, ptr noundef nonnull @.str.17, ptr noundef nonnull @sh_mobile_lcdc_probe.__key.16) #14
  %vsync_completion = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 14
  %19 = ptrtoint ptr %vsync_completion to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vsync_completion, align 4
  %wait.i = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #14
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %max_brightness = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %21, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not = icmp eq i32 %23, 0
  br i1 %tobool50.not, label %do.body46.if.end54_crit_edge, label %if.then51

do.body46.if.end54_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then51:                                        ; preds = %do.body46
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg, align 4
  %bl_info.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %bl_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bl_info.i, align 4
  %call.i274 = tail call ptr @backlight_device_register(ptr noundef %27, ptr noundef %dev, ptr noundef %add.ptr, ptr noundef nonnull @sh_mobile_lcdc_bl_ops, ptr noundef null) #14
  %cmp.i.i = icmp ugt ptr %call.i274, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i275

do.end.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %call.i274 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %28) #17
  br label %sh_mobile_lcdc_bl_probe.exit

if.end.i275:                                      ; preds = %if.then51
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg, align 4
  %max_brightness.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %30, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_brightness.i, align 4
  %max_brightness5.i = getelementptr inbounds %struct.backlight_properties, ptr %call.i274, i32 0, i32 1
  %33 = ptrtoint ptr %max_brightness5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_brightness5.i, align 4
  %34 = ptrtoint ptr %call.i274 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %call.i274, align 8
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %call.i274, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #14
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %call.i274, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i275.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i275.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i275
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i276 = tail call i32 %38(ptr noundef %call.i274) #14
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i275.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #14
  br label %sh_mobile_lcdc_bl_probe.exit

sh_mobile_lcdc_bl_probe.exit:                     ; preds = %backlight_update_status.exit.i, %do.end.i
  %retval.0.i277 = phi ptr [ null, %do.end.i ], [ %call.i274, %backlight_update_status.exit.i ]
  %bl = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 25
  %39 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i277, ptr %bl, align 4
  br label %if.end54

if.end54:                                         ; preds = %sh_mobile_lcdc_bl_probe.exit, %do.body46.if.end54_crit_edge
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx37, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %41, label %if.end54.for.inc62_crit_edge [
    i32 1, label %if.end54.for.inc62.sink.split_crit_edge
    i32 2, label %sw.bb58
  ]

if.end54.for.inc62.sink.split_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc62.sink.split

if.end54.for.inc62_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc62

sw.bb58:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc62.sink.split

cleanup:                                          ; preds = %if.then.i.cleanup_crit_edge, %for.body33.cleanup_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #17
  br label %err1

for.inc62.sink.split:                             ; preds = %sw.bb58, %if.end54.for.inc62.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb58 ], [ 2, %if.end54.for.inc62.sink.split_crit_edge ]
  %lcdc_offs_sublcd.sink = phi ptr [ @lcdc_offs_sublcd, %sw.bb58 ], [ @lcdc_offs_mainlcd, %if.end54.for.inc62.sink.split_crit_edge ]
  %enabled59 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 5
  %43 = ptrtoint ptr %enabled59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %enabled59, align 4
  %reg_offs60 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %num_channels.0357, i32 3
  %44 = ptrtoint ptr %reg_offs60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %lcdc_offs_sublcd.sink, ptr %reg_offs60, align 4
  %inc61 = add i32 %num_channels.0357, 1
  br label %for.inc62

for.inc62:                                        ; preds = %for.inc62.sink.split, %if.end54.for.inc62_crit_edge
  %num_channels.2.ph = phi i32 [ %num_channels.0357, %if.end54.for.inc62_crit_edge ], [ %inc61, %for.inc62.sink.split ]
  br i1 %cmp32, label %for.inc62.for.body33_crit_edge, label %for.end64

for.inc62.for.body33_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33

for.end64:                                        ; preds = %for.inc62
  %45 = zext i32 %num_channels.2.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %num_channels.2.ph, label %for.end64.if.end76_crit_edge [
    i32 0, label %do.end69
    i32 2, label %if.then73
  ]

for.end64.if.end76_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

do.end69:                                         ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #17
  br label %err1

if.then73:                                        ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #16
  %fourcc = getelementptr inbounds %struct.sh_mobile_lcdc_info, ptr %1, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fourcc, align 4
  %forced_fourcc = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 9
  %48 = ptrtoint ptr %forced_fourcc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %forced_fourcc, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %for.end64.if.end76_crit_edge
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %51 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %50
  %add.i = add i32 %sub.i, %52
  %call78 = tail call ptr @ioremap(i32 noundef %50, i32 noundef %add.i) #14
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call78, ptr %call7.i.i, align 8
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %if.end76.err1_crit_edge, label %if.end82

if.end76.err1_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end82:                                         ; preds = %if.end76
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %55, label %if.end82.do.end88_crit_edge [
    i32 0, label %if.end82.if.end.i281_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.epilog.i278
  ]

if.end82.if.end.i281_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i281

if.end82.do.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end88

sw.bb1.i:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i281

sw.epilog.i278:                                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  %lddckr4.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %lddckr4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 131072, ptr %lddckr4.i, align 4
  br label %if.end90

if.end.i281:                                      ; preds = %sw.bb1.i, %if.end82.if.end.i281_crit_edge
  %.sink.i = phi i32 [ 65536, %sw.bb1.i ], [ %55, %if.end82.if.end.i281_crit_edge ]
  %str.0.ph.i = phi ptr [ @.str.31, %sw.bb1.i ], [ @.str.30, %if.end82.if.end.i281_crit_edge ]
  %lddckr2.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %lddckr2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink.i, ptr %lddckr2.i, align 4
  %59 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev15, align 4
  %call.i279 = tail call ptr @clk_get(ptr noundef %60, ptr noundef nonnull %str.0.ph.i) #14
  %cmp.i.i280 = icmp ugt ptr %call.i279, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i280, label %sh_mobile_lcdc_setup_clocks.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #16
  %dot_clk.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %dot_clk.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i279, ptr %dot_clk.i, align 8
  br label %if.end90

sh_mobile_lcdc_setup_clocks.exit:                 ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.32, ptr noundef nonnull %str.0.ph.i) #17
  %64 = ptrtoint ptr %call.i279 to i32
  br label %do.end88

do.end88:                                         ; preds = %sh_mobile_lcdc_setup_clocks.exit, %if.end82.do.end88_crit_edge
  %retval.0.i283335 = phi i32 [ %64, %sh_mobile_lcdc_setup_clocks.exit ], [ -22, %if.end82.do.end88_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #17
  br label %err1

if.end90:                                         ; preds = %if.end9.i, %sw.epilog.i278
  tail call void @pm_runtime_enable(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.2.ph)
  %cmp93359 = icmp sgt i32 %num_channels.2.ph, 0
  br i1 %cmp93359, label %if.end90.for.body94_crit_edge, label %if.end90.for.body110.preheader_crit_edge

if.end90.for.body110.preheader_crit_edge:         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body110.preheader

if.end90.for.body94_crit_edge:                    ; preds = %if.end90
  br label %for.body94

for.body110.preheader:                            ; preds = %for.cond92.for.body110.preheader_crit_edge, %if.end90.for.body110.preheader_crit_edge
  br label %for.body110

for.cond92:                                       ; preds = %for.body94
  %inc106 = add nuw nsw i32 %i.2360, 1
  %exitcond.not = icmp eq i32 %inc106, %num_channels.2.ph
  br i1 %exitcond.not, label %for.cond92.for.body110.preheader_crit_edge, label %for.cond92.for.body94_crit_edge

for.cond92.for.body94_crit_edge:                  ; preds = %for.cond92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body94

for.cond92.for.body110.preheader_crit_edge:       ; preds = %for.cond92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body110.preheader

for.body94:                                       ; preds = %for.cond92.for.body94_crit_edge, %if.end90.for.body94_crit_edge
  %i.2360 = phi i32 [ %inc106, %for.cond92.for.body94_crit_edge ], [ 0, %if.end90.for.body94_crit_edge ]
  %arrayidx97 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 6, i32 %i.2360
  %call98 = tail call fastcc i32 @sh_mobile_lcdc_channel_init(ptr noundef %arrayidx97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %for.cond92, label %for.body94.err1_crit_edge

for.body94.err1_crit_edge:                        ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

for.body110:                                      ; preds = %for.inc124.for.body110_crit_edge, %for.body110.preheader
  %i.3361 = phi i32 [ %inc125, %for.inc124.for.body110_crit_edge ], [ 0, %for.body110.preheader ]
  %arrayidx111 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361
  %arrayidx113 = getelementptr %struct.sh_mobile_lcdc_info, ptr %1, i32 0, i32 2, i32 %i.3361
  %cfg114 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 1
  %65 = ptrtoint ptr %cfg114 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx113, ptr %cfg114, align 4
  %66 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ch35, ptr %arrayidx111, align 4
  %67 = ptrtoint ptr %ch35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ch35, align 8
  %dev1.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1.i, align 4
  %71 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx113, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %72, label %do.end.i285 [
    i32 0, label %for.body110.for.inc124_crit_edge
    i32 1346520914, label %for.body110.if.end8.i_crit_edge
    i32 861030210, label %cleanup.fold.split.i.i
    i32 877807426, label %cleanup.fold.split8.i.i
    i32 842094158, label %cleanup.fold.split9.i.i
    i32 825382478, label %cleanup.fold.split10.i.i
    i32 909203022, label %cleanup.fold.split11.i.i
    i32 825644622, label %cleanup.fold.split12.i.i
    i32 875714126, label %cleanup.fold.split13.i.i
    i32 842290766, label %cleanup.fold.split14.i.i
  ]

for.body110.if.end8.i_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

for.body110.for.inc124_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc124

cleanup.fold.split.i.i:                           ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split8.i.i:                          ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split9.i.i:                          ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split10.i.i:                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split11.i.i:                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split12.i.i:                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split13.i.i:                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

cleanup.fold.split14.i.i:                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

do.end.i285:                                      ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.56, i32 noundef %72) #17
  br label %err1

if.end8.i:                                        ; preds = %cleanup.fold.split14.i.i, %cleanup.fold.split13.i.i, %cleanup.fold.split12.i.i, %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split.i.i, %for.body110.if.end8.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %cleanup.fold.split14.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %cleanup.fold.split13.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %cleanup.fold.split12.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %cleanup.fold.split11.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %cleanup.fold.split10.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %cleanup.fold.split9.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %cleanup.fold.split8.i.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %cleanup.fold.split.i.i ], [ @sh_mobile_format_infos, %for.body110.if.end8.i_crit_edge ]
  %enabled.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 5
  %74 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %enabled.i, align 4
  %mode.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 6
  %75 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %mode.i, align 4
  %alpha.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 7
  %76 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 255, ptr %alpha.i, align 4
  %rop3.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 8
  %77 = ptrtoint ptr %rop3.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %rop3.i, align 4
  %pos_x.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 21
  %78 = ptrtoint ptr %pos_x.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %pos_x.i, align 4
  %pos_y.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 22
  %79 = ptrtoint ptr %pos_y.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %pos_y.i, align 4
  %format9.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 15
  %80 = ptrtoint ptr %format9.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %retval.0.i.ph.i, ptr %format9.i, align 4
  %max_xres.i = getelementptr %struct.sh_mobile_lcdc_info, ptr %1, i32 0, i32 2, i32 %i.3361, i32 1
  %81 = ptrtoint ptr %max_xres.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_xres.i, align 4
  %xres.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 16
  %83 = ptrtoint ptr %xres.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %xres.i, align 4
  %xres_virtual.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 17
  %84 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %82, ptr %xres_virtual.i, align 4
  %max_yres.i = getelementptr %struct.sh_mobile_lcdc_info, ptr %1, i32 0, i32 2, i32 %i.3361, i32 2
  %85 = ptrtoint ptr %max_yres.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_yres.i, align 4
  %yres.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 18
  %87 = ptrtoint ptr %yres.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %yres.i, align 4
  %mul.i = shl i32 %86, 1
  %yres_virtual.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 19
  %88 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %mul.i, ptr %yres_virtual.i, align 4
  %yuv.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i.ph.i, i32 0, i32 2
  %89 = ptrtoint ptr %yuv.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %yuv.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i286 = icmp eq i8 %90, 0
  br i1 %tobool.not.i286, label %if.then14.i, label %if.end8.i.if.end19.i_crit_edge

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %bpp.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i.ph.i, i32 0, i32 1
  %91 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bpp.i, align 4
  %mul16.i = mul i32 %92, %82
  %div81.i = lshr i32 %mul16.i, 3
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end8.i.if.end19.i_crit_edge
  %.sink.i287 = phi i32 [ %div81.i, %if.then14.i ], [ %82, %if.end8.i.if.end19.i_crit_edge ]
  %93 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 20
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.sink.i287, ptr %93, align 4
  %95 = ptrtoint ptr %max_xres.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_xres.i, align 4
  %97 = ptrtoint ptr %max_yres.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_yres.i, align 4
  %mul24.i = mul i32 %98, %96
  %bpp25.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i.ph.i, i32 0, i32 1
  %99 = ptrtoint ptr %bpp25.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bpp25.i, align 4
  %mul26.i = mul i32 %mul24.i, %100
  %101 = lshr i32 %mul26.i, 2
  %mul28.i = and i32 %101, 1073741822
  %fb_size.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 10
  %102 = ptrtoint ptr %fb_size.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul28.i, ptr %fb_size.i, align 4
  %dma_handle.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 11
  %call.i.i288 = tail call ptr @dma_alloc_attrs(ptr noundef %70, i32 noundef %mul28.i, ptr noundef %dma_handle.i, i32 noundef 3264, i32 noundef 0) #14
  %fb_mem.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 9
  %103 = ptrtoint ptr %fb_mem.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i.i288, ptr %fb_mem.i, align 4
  %tobool32.not.i = icmp eq ptr %call.i.i288, null
  br i1 %tobool32.not.i, label %do.end36.i, label %if.end37.i

do.end36.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.42) #17
  br label %err1

if.end37.i:                                       ; preds = %if.end19.i
  %104 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx111, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %dev.i.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i, align 4
  %call.i83.i = tail call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %109) #14
  %tobool.not.i.i289 = icmp eq ptr %call.i83.i, null
  br i1 %tobool.not.i.i289, label %if.end37.i.err1_crit_edge, label %if.end.i.i

if.end37.i.err1_crit_edge:                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end.i.i:                                       ; preds = %if.end37.i
  %info1.i.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 2
  %110 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i83.i, ptr %info1.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 2
  %111 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %flags.i.i, align 4
  %fbops.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 20
  %112 = ptrtoint ptr %fbops.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @sh_mobile_lcdc_overlay_ops, ptr %fbops.i.i, align 4
  %113 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 21
  %115 = ptrtoint ptr %device.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %device.i.i, align 4
  %116 = ptrtoint ptr %fb_mem.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fb_mem.i, align 4
  %118 = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 25
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %118, align 4
  %par.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 30
  %120 = ptrtoint ptr %par.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %arrayidx111, ptr %par.i.i, align 4
  %fix.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7
  %121 = call ptr @memcpy(ptr %fix.i.i, ptr @sh_mobile_lcdc_overlay_fix, i32 68)
  %index.i.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.3361, i32 3
  %122 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %index.i.i, align 4
  %call4.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i.i, i32 noundef 16, ptr noundef nonnull @.str.60, i32 noundef %123) #14
  %124 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_handle.i, align 4
  %smem_start.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7, i32 1
  %126 = ptrtoint ptr %smem_start.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %smem_start.i.i, align 4
  %127 = ptrtoint ptr %fb_size.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fb_size.i, align 4
  %smem_len.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7, i32 2
  %129 = ptrtoint ptr %smem_len.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %smem_len.i.i, align 4
  %130 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %93, align 4
  %line_length.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7, i32 9
  %132 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %line_length.i.i, align 4
  %133 = ptrtoint ptr %format9.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %format9.i, align 4
  %yuv.i.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %yuv.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %yuv.i.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool8.not.i.i = icmp eq i8 %136, 0
  %spec.select.i.i = select i1 %tobool8.not.i.i, i32 2, i32 6
  %137 = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7, i32 5
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %spec.select.i.i, ptr %137, align 4
  %139 = ptrtoint ptr %format9.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %format9.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %142, label %if.end.i.i.sw.epilog.i.i_crit_edge [
    i32 842094158, label %if.end.i.i.sw.bb.i.i_crit_edge
    i32 825382478, label %if.end.i.i.sw.bb.i.i_crit_edge455
    i32 909203022, label %if.end.i.i.sw.bb16.i.i_crit_edge
    i32 825644622, label %if.end.i.i.sw.bb16.i.i_crit_edge456
  ]

if.end.i.i.sw.bb16.i.i_crit_edge456:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i.i

if.end.i.i.sw.bb16.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i.i

if.end.i.i.sw.bb.i.i_crit_edge455:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge455
  %ypanstep.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7, i32 7
  %144 = ptrtoint ptr %ypanstep.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 2, ptr %ypanstep.i.i, align 2
  br label %sw.bb16.i.i

sw.bb16.i.i:                                      ; preds = %sw.bb.i.i, %if.end.i.i.sw.bb16.i.i_crit_edge, %if.end.i.i.sw.bb16.i.i_crit_edge456
  %xpanstep.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 7, i32 6
  %145 = ptrtoint ptr %xpanstep.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 2, ptr %xpanstep.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb16.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %var18.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6
  %146 = call ptr @memset(ptr %var18.i.i, i32 0, i32 160)
  %147 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %xres.i, align 4
  %149 = ptrtoint ptr %var18.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %var18.i.i, align 4
  %150 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %yres.i, align 4
  %yres20.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6, i32 1
  %152 = ptrtoint ptr %yres20.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %yres20.i.i, align 4
  %153 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual21.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6, i32 2
  %155 = ptrtoint ptr %xres_virtual21.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %xres_virtual21.i.i, align 4
  %156 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual22.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6, i32 3
  %158 = ptrtoint ptr %yres_virtual22.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %yres_virtual22.i.i, align 4
  %activate.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6, i32 13
  %159 = ptrtoint ptr %activate.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %activate.i.i, align 4
  %160 = ptrtoint ptr %format9.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %format9.i, align 4
  %yuv24.i.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %yuv24.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %yuv24.i.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool25.not.i.i = icmp eq i8 %163, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.else28.i.i

if.then26.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bpp.i.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %161, i32 0, i32 1
  %164 = ptrtoint ptr %bpp.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %bpp.i.i, align 4
  %bits_per_pixel.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6, i32 6
  %166 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %bits_per_pixel.i.i, align 4
  br label %sh_mobile_lcdc_overlay_fb_init.exit.i

if.else28.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %167 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %161, align 4
  %grayscale.i.i = getelementptr inbounds %struct.fb_info, ptr %call.i83.i, i32 0, i32 6, i32 7
  %169 = ptrtoint ptr %grayscale.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %grayscale.i.i, align 4
  br label %sh_mobile_lcdc_overlay_fb_init.exit.i

sh_mobile_lcdc_overlay_fb_init.exit.i:            ; preds = %if.else28.i.i, %if.then26.i.i
  %call.i.i.i = tail call fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %var18.i.i, ptr noundef nonnull %call.i83.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp39.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp39.i, label %sh_mobile_lcdc_overlay_fb_init.exit.i.err1_crit_edge, label %sh_mobile_lcdc_overlay_fb_init.exit.i.for.inc124_crit_edge

sh_mobile_lcdc_overlay_fb_init.exit.i.for.inc124_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc124

sh_mobile_lcdc_overlay_fb_init.exit.i.err1_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

for.inc124:                                       ; preds = %sh_mobile_lcdc_overlay_fb_init.exit.i.for.inc124_crit_edge, %for.body110.for.inc124_crit_edge
  %inc125 = add nuw nsw i32 %i.3361, 1
  %exitcond388.not = icmp eq i32 %inc125, 4
  br i1 %exitcond388.not, label %for.end126, label %for.inc124.for.body110_crit_edge

for.inc124.for.body110_crit_edge:                 ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body110

for.end126:                                       ; preds = %for.inc124
  %call127 = tail call fastcc i32 @sh_mobile_lcdc_start(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %for.cond135.preheader, label %do.end132

for.cond135.preheader:                            ; preds = %for.end126
  br i1 %cmp93359, label %for.cond135.preheader.for.body137_crit_edge, label %for.cond135.preheader.for.body154.preheader_crit_edge

for.cond135.preheader.for.body154.preheader_crit_edge: ; preds = %for.cond135.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body154.preheader

for.cond135.preheader.for.body137_crit_edge:      ; preds = %for.cond135.preheader
  br label %for.body137

for.body154.preheader:                            ; preds = %for.cond135.for.body154.preheader_crit_edge, %for.cond135.preheader.for.body154.preheader_crit_edge
  br label %for.body154

do.end132:                                        ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #17
  br label %err1

for.cond135:                                      ; preds = %sh_mobile_lcdc_channel_fb_register.exit
  %inc150 = add nuw nsw i32 %i.4364, 1
  %exitcond389.not = icmp eq i32 %inc150, %num_channels.2.ph
  br i1 %exitcond389.not, label %for.cond135.for.body154.preheader_crit_edge, label %for.cond135.for.body137_crit_edge

for.cond135.for.body137_crit_edge:                ; preds = %for.cond135
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body137

for.cond135.for.body154.preheader_crit_edge:      ; preds = %for.cond135
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body154.preheader

for.body137:                                      ; preds = %for.cond135.for.body137_crit_edge, %for.cond135.preheader.for.body137_crit_edge
  %i.4364 = phi i32 [ %inc150, %for.cond135.for.body137_crit_edge ], [ 0, %for.cond135.preheader.for.body137_crit_edge ]
  %add.ptr141 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %i.4364
  %info1.i = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %i.4364, i32 27
  %170 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %info1.i, align 4
  %fbdefio.i = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 19
  %172 = ptrtoint ptr %fbdefio.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fbdefio.i, align 4
  %tobool.not.i291 = icmp eq ptr %173, null
  br i1 %tobool.not.i291, label %for.body137.if.end5.i296_crit_edge, label %if.then.i295

for.body137.if.end5.i296_crit_edge:               ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i296

if.then.i295:                                     ; preds = %for.body137
  %fb_size.i292 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %i.4364, i32 9
  %174 = ptrtoint ptr %fb_size.i292 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %fb_size.i292, align 4
  %mul.i293 = mul i32 %175, 20
  %shr.i = lshr i32 %mul.i293, 12
  %call.i294 = tail call noalias ptr @vmalloc(i32 noundef %shr.i) #19
  %sglist.i = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %i.4364, i32 31
  %176 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.i294, ptr %sglist.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i294, null
  br i1 %tobool3.not.i, label %if.then.i295.err1_crit_edge, label %if.then.i295.if.end5.i296_crit_edge

if.then.i295.if.end5.i296_crit_edge:              ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i296

if.then.i295.err1_crit_edge:                      ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end5.i296:                                     ; preds = %if.then.i295.if.end5.i296_crit_edge, %for.body137.if.end5.i296_crit_edge
  %bl.i = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %i.4364, i32 25
  %177 = ptrtoint ptr %bl.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bl.i, align 4
  %bl_dev.i = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 15
  %179 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %bl_dev.i, align 4
  %call6.i = tail call i32 @register_framebuffer(ptr noundef %171) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i296.err1_crit_edge, label %do.end.i299

if.end5.i296.err1_crit_edge:                      ; preds = %if.end5.i296
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

do.end.i299:                                      ; preds = %if.end5.i296
  %180 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %add.ptr141, align 4
  %dev.i297 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %dev.i297 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev.i297, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i298 = icmp eq ptr %185, null
  br i1 %tobool.not.i.i298, label %if.end.i.i300, label %do.end.i299.dev_name.exit.i_crit_edge

do.end.i299.dev_name.exit.i_crit_edge:            ; preds = %do.end.i299
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i300:                                    ; preds = %do.end.i299
  call void @__sanitizer_cov_trace_pc() #16
  %186 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %183, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i300, %do.end.i299.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %187, %if.end.i.i300 ], [ %185, %do.end.i299.dev_name.exit.i_crit_edge ]
  %cfg.i301 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %ch35, i32 %i.4364, i32 2
  %188 = ptrtoint ptr %cfg.i301 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i301, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp12.i = icmp eq i32 %191, 1
  %cond.i = select i1 %cmp12.i, ptr @.str.64, ptr @.str.65
  %var.i = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 6
  %192 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %var.i, align 4
  %yres.i302 = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 6, i32 1
  %194 = ptrtoint ptr %yres.i302 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %yres.i302, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 6, i32 6
  %196 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %bits_per_pixel.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.61, ptr noundef %retval.0.i.i, ptr noundef nonnull %cond.i, i32 noundef %193, i32 noundef %195, i32 noundef %197) #17
  %198 = ptrtoint ptr %fbdefio.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %fbdefio.i, align 4
  %tobool16.not.i = icmp eq ptr %199, null
  br i1 %tobool16.not.i, label %lor.lhs.false.i, label %dev_name.exit.i.if.then18.i_crit_edge

dev_name.exit.i.if.then18.i_crit_edge:            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %dev_name.exit.i
  %state.i = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 28
  %200 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp17.i = icmp eq i32 %201, 1
  br i1 %cmp17.i, label %lor.lhs.false.i.if.then18.i_crit_edge, label %lor.lhs.false.i.sh_mobile_lcdc_channel_fb_register.exit_crit_edge

lor.lhs.false.i.sh_mobile_lcdc_channel_fb_register.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_register.exit

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %dev_name.exit.i.if.then18.i_crit_edge
  %202 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %add.ptr141, align 4
  %hw_usecnt.i.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %203, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %hw_usecnt.i.i, i32 1, i32 3, i32 1) #14
  %204 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt.i.i, ptr %hw_usecnt.i.i, i32 1, ptr elementtype(i32) %hw_usecnt.i.i) #14, !srcloc !180
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %204, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i303 = icmp eq i32 %asmresult.i.i.i.i.i, -1
  br i1 %cmp.i.i303, label %if.then.i.i306, label %if.then18.i.sh_mobile_lcdc_channel_fb_register.exit_crit_edge

if.then18.i.sh_mobile_lcdc_channel_fb_register.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_register.exit

if.then.i.i306:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i304 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %203, i32 0, i32 3
  %205 = ptrtoint ptr %dev.i.i304 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i.i304, align 4
  %call.i.i.i305 = tail call i32 @__pm_runtime_idle(ptr noundef %206, i32 noundef 5) #14
  %dot_clk.i.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %203, i32 0, i32 4
  %207 = ptrtoint ptr %dot_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dot_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %208) #14
  tail call void @clk_unprepare(ptr noundef %208) #14
  br label %sh_mobile_lcdc_channel_fb_register.exit

sh_mobile_lcdc_channel_fb_register.exit:          ; preds = %if.then.i.i306, %if.then18.i.sh_mobile_lcdc_channel_fb_register.exit_crit_edge, %lor.lhs.false.i.sh_mobile_lcdc_channel_fb_register.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool143.not = icmp eq i32 %call6.i, 0
  br i1 %tobool143.not, label %for.cond135, label %sh_mobile_lcdc_channel_fb_register.exit.err1_crit_edge

sh_mobile_lcdc_channel_fb_register.exit.err1_crit_edge: ; preds = %sh_mobile_lcdc_channel_fb_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

for.body154:                                      ; preds = %for.inc165.for.body154_crit_edge, %for.body154.preheader
  %i.5373 = phi i32 [ %inc166, %for.inc165.for.body154_crit_edge ], [ 0, %for.body154.preheader ]
  %arrayidx157 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.5373
  %209 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx157, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %info2.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.5373, i32 2
  %213 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %info2.i, align 4
  %cmp.i308 = icmp eq ptr %214, null
  br i1 %cmp.i308, label %for.body154.for.inc165_crit_edge, label %if.end.i310

for.body154.for.inc165_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc165

if.end.i310:                                      ; preds = %for.body154
  %call.i309 = tail call i32 @register_framebuffer(ptr noundef nonnull %214) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %cmp3.i = icmp slt i32 %call.i309, 0
  br i1 %cmp3.i, label %if.end.i310.err1_crit_edge, label %do.end.i314

if.end.i310.err1_crit_edge:                       ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

do.end.i314:                                      ; preds = %if.end.i310
  %dev.i311 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %212, i32 0, i32 3
  %215 = ptrtoint ptr %dev.i311 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i311, align 4
  %init_name.i.i312 = getelementptr inbounds %struct.device, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %init_name.i.i312 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %init_name.i.i312, align 8
  %tobool.not.i.i313 = icmp eq ptr %218, null
  br i1 %tobool.not.i.i313, label %if.end.i.i315, label %do.end.i314.dev_name.exit.i320_crit_edge

do.end.i314.dev_name.exit.i320_crit_edge:         ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i320

if.end.i.i315:                                    ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #16
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %216, align 4
  br label %dev_name.exit.i320

dev_name.exit.i320:                               ; preds = %if.end.i.i315, %do.end.i314.dev_name.exit.i320_crit_edge
  %retval.0.i.i316 = phi ptr [ %220, %if.end.i.i315 ], [ %218, %do.end.i314.dev_name.exit.i320_crit_edge ]
  %index.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.5373, i32 3
  %221 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %index.i, align 4
  %var.i317 = getelementptr inbounds %struct.fb_info, ptr %214, i32 0, i32 6
  %223 = ptrtoint ptr %var.i317 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %var.i317, align 4
  %yres.i318 = getelementptr inbounds %struct.fb_info, ptr %214, i32 0, i32 6, i32 1
  %225 = ptrtoint ptr %yres.i318 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %yres.i318, align 4
  %bits_per_pixel.i319 = getelementptr inbounds %struct.fb_info, ptr %214, i32 0, i32 6, i32 6
  %227 = ptrtoint ptr %bits_per_pixel.i319 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %bits_per_pixel.i319, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %216, ptr noundef nonnull @.str.66, ptr noundef %retval.0.i.i316, i32 noundef %222, i32 noundef %224, i32 noundef %226, i32 noundef %228) #17
  %dev11.i = getelementptr inbounds %struct.fb_info, ptr %214, i32 0, i32 22
  %229 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev11.i, align 4
  %call12.i = tail call i32 @device_create_file(ptr noundef %230, ptr noundef nonnull @overlay_sysfs_attrs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %dev_name.exit.i320.err1_crit_edge, label %for.cond.i

dev_name.exit.i320.err1_crit_edge:                ; preds = %dev_name.exit.i320
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

for.cond.i:                                       ; preds = %dev_name.exit.i320
  %231 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev11.i, align 4
  %call12.1.i = tail call i32 @device_create_file(ptr noundef %232, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @overlay_sysfs_attrs, i32 0, i32 1)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %cmp13.1.i = icmp slt i32 %call12.1.i, 0
  br i1 %cmp13.1.i, label %for.cond.i.err1_crit_edge, label %for.cond.1.i

for.cond.i.err1_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

for.cond.1.i:                                     ; preds = %for.cond.i
  %233 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev11.i, align 4
  %call12.2.i = tail call i32 @device_create_file(ptr noundef %234, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @overlay_sysfs_attrs, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %cmp13.2.i = icmp slt i32 %call12.2.i, 0
  br i1 %cmp13.2.i, label %for.cond.1.i.err1_crit_edge, label %sh_mobile_lcdc_overlay_fb_register.exit

for.cond.1.i.err1_crit_edge:                      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

sh_mobile_lcdc_overlay_fb_register.exit:          ; preds = %for.cond.1.i
  %235 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev11.i, align 4
  %call12.3.i = tail call i32 @device_create_file(ptr noundef %236, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @overlay_sysfs_attrs, i32 0, i32 3)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.3.i)
  %tobool159.not = icmp sgt i32 %call12.3.i, -1
  br i1 %tobool159.not, label %sh_mobile_lcdc_overlay_fb_register.exit.for.inc165_crit_edge, label %sh_mobile_lcdc_overlay_fb_register.exit.err1_crit_edge

sh_mobile_lcdc_overlay_fb_register.exit.err1_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

sh_mobile_lcdc_overlay_fb_register.exit.for.inc165_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc165

for.inc165:                                       ; preds = %sh_mobile_lcdc_overlay_fb_register.exit.for.inc165_crit_edge, %for.body154.for.inc165_crit_edge
  %inc166 = add nuw nsw i32 %i.5373, 1
  %exitcond390.not = icmp eq i32 %inc166, 4
  br i1 %exitcond390.not, label %for.inc165.cleanup169_crit_edge, label %for.inc165.for.body154_crit_edge

for.inc165.for.body154_crit_edge:                 ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body154

for.inc165.cleanup169_crit_edge:                  ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup169

err1:                                             ; preds = %sh_mobile_lcdc_overlay_fb_register.exit.err1_crit_edge, %for.cond.1.i.err1_crit_edge, %for.cond.i.err1_crit_edge, %dev_name.exit.i320.err1_crit_edge, %if.end.i310.err1_crit_edge, %sh_mobile_lcdc_channel_fb_register.exit.err1_crit_edge, %if.end5.i296.err1_crit_edge, %if.then.i295.err1_crit_edge, %do.end132, %sh_mobile_lcdc_overlay_fb_init.exit.i.err1_crit_edge, %if.end37.i.err1_crit_edge, %do.end36.i, %do.end.i285, %for.body94.err1_crit_edge, %do.end88, %if.end76.err1_crit_edge, %do.end69, %cleanup, %do.end27
  %error.0 = phi i32 [ %call.i, %do.end27 ], [ -22, %cleanup ], [ %retval.0.i283335, %do.end88 ], [ %call127, %do.end132 ], [ -22, %do.end69 ], [ -12, %if.end76.err1_crit_edge ], [ -12, %do.end36.i ], [ -22, %do.end.i285 ], [ %call.i309, %if.end.i310.err1_crit_edge ], [ %call12.i, %dev_name.exit.i320.err1_crit_edge ], [ %call12.1.i, %for.cond.i.err1_crit_edge ], [ %call12.2.i, %for.cond.1.i.err1_crit_edge ], [ %call12.3.i, %sh_mobile_lcdc_overlay_fb_register.exit.err1_crit_edge ], [ -12, %if.then.i295.err1_crit_edge ], [ %call6.i, %if.end5.i296.err1_crit_edge ], [ %call6.i, %sh_mobile_lcdc_channel_fb_register.exit.err1_crit_edge ], [ -12, %if.end37.i.err1_crit_edge ], [ %call.i.i.i, %sh_mobile_lcdc_overlay_fb_init.exit.i.err1_crit_edge ], [ %call98, %for.body94.err1_crit_edge ]
  %call168 = tail call i32 @sh_mobile_lcdc_remove(ptr noundef %pdev)
  br label %cleanup169

cleanup169:                                       ; preds = %err1, %for.inc165.cleanup169_crit_edge, %if.end9.cleanup169_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -2, %do.end7 ], [ %error.0, %err1 ], [ -22, %do.end ], [ -12, %if.end9.cleanup169_crit_edge ], [ 0, %for.inc165.cleanup169_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info1.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.sh_mobile_lcdc_overlay_fb_unregister.exit_crit_edge, label %lor.lhs.false.i

entry.sh_mobile_lcdc_overlay_fb_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit

lor.lhs.false.i:                                  ; preds = %entry
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %cmp2.i = icmp eq ptr %5, null
  br i1 %cmp2.i, label %lor.lhs.false.i.sh_mobile_lcdc_overlay_fb_unregister.exit_crit_edge, label %if.end.i

lor.lhs.false.i.sh_mobile_lcdc_overlay_fb_unregister.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %3) #14
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit

sh_mobile_lcdc_overlay_fb_unregister.exit:        ; preds = %if.end.i, %lor.lhs.false.i.sh_mobile_lcdc_overlay_fb_unregister.exit_crit_edge, %entry.sh_mobile_lcdc_overlay_fb_unregister.exit_crit_edge
  %info1.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 1, i32 2
  %6 = ptrtoint ptr %info1.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info1.i.1, align 4
  %cmp.i.1 = icmp eq ptr %7, null
  br i1 %cmp.i.1, label %sh_mobile_lcdc_overlay_fb_unregister.exit.sh_mobile_lcdc_overlay_fb_unregister.exit.1_crit_edge, label %lor.lhs.false.i.1

sh_mobile_lcdc_overlay_fb_unregister.exit.sh_mobile_lcdc_overlay_fb_unregister.exit.1_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.1

lor.lhs.false.i.1:                                ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit
  %dev.i.1 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.1, align 4
  %cmp2.i.1 = icmp eq ptr %9, null
  br i1 %cmp2.i.1, label %lor.lhs.false.i.1.sh_mobile_lcdc_overlay_fb_unregister.exit.1_crit_edge, label %if.end.i.1

lor.lhs.false.i.1.sh_mobile_lcdc_overlay_fb_unregister.exit.1_crit_edge: ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.1

if.end.i.1:                                       ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %7) #14
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.1

sh_mobile_lcdc_overlay_fb_unregister.exit.1:      ; preds = %if.end.i.1, %lor.lhs.false.i.1.sh_mobile_lcdc_overlay_fb_unregister.exit.1_crit_edge, %sh_mobile_lcdc_overlay_fb_unregister.exit.sh_mobile_lcdc_overlay_fb_unregister.exit.1_crit_edge
  %info1.i.2 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 2, i32 2
  %10 = ptrtoint ptr %info1.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info1.i.2, align 4
  %cmp.i.2 = icmp eq ptr %11, null
  br i1 %cmp.i.2, label %sh_mobile_lcdc_overlay_fb_unregister.exit.1.sh_mobile_lcdc_overlay_fb_unregister.exit.2_crit_edge, label %lor.lhs.false.i.2

sh_mobile_lcdc_overlay_fb_unregister.exit.1.sh_mobile_lcdc_overlay_fb_unregister.exit.2_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.2

lor.lhs.false.i.2:                                ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit.1
  %dev.i.2 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %dev.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.2, align 4
  %cmp2.i.2 = icmp eq ptr %13, null
  br i1 %cmp2.i.2, label %lor.lhs.false.i.2.sh_mobile_lcdc_overlay_fb_unregister.exit.2_crit_edge, label %if.end.i.2

lor.lhs.false.i.2.sh_mobile_lcdc_overlay_fb_unregister.exit.2_crit_edge: ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.2

if.end.i.2:                                       ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %11) #14
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.2

sh_mobile_lcdc_overlay_fb_unregister.exit.2:      ; preds = %if.end.i.2, %lor.lhs.false.i.2.sh_mobile_lcdc_overlay_fb_unregister.exit.2_crit_edge, %sh_mobile_lcdc_overlay_fb_unregister.exit.1.sh_mobile_lcdc_overlay_fb_unregister.exit.2_crit_edge
  %info1.i.3 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 3, i32 2
  %14 = ptrtoint ptr %info1.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info1.i.3, align 4
  %cmp.i.3 = icmp eq ptr %15, null
  br i1 %cmp.i.3, label %sh_mobile_lcdc_overlay_fb_unregister.exit.2.sh_mobile_lcdc_overlay_fb_unregister.exit.3_crit_edge, label %lor.lhs.false.i.3

sh_mobile_lcdc_overlay_fb_unregister.exit.2.sh_mobile_lcdc_overlay_fb_unregister.exit.3_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.3

lor.lhs.false.i.3:                                ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit.2
  %dev.i.3 = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %dev.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.3, align 4
  %cmp2.i.3 = icmp eq ptr %17, null
  br i1 %cmp2.i.3, label %lor.lhs.false.i.3.sh_mobile_lcdc_overlay_fb_unregister.exit.3_crit_edge, label %if.end.i.3

lor.lhs.false.i.3.sh_mobile_lcdc_overlay_fb_unregister.exit.3_crit_edge: ; preds = %lor.lhs.false.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.3

if.end.i.3:                                       ; preds = %lor.lhs.false.i.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %15) #14
  br label %sh_mobile_lcdc_overlay_fb_unregister.exit.3

sh_mobile_lcdc_overlay_fb_unregister.exit.3:      ; preds = %if.end.i.3, %lor.lhs.false.i.3.sh_mobile_lcdc_overlay_fb_unregister.exit.3_crit_edge, %sh_mobile_lcdc_overlay_fb_unregister.exit.2.sh_mobile_lcdc_overlay_fb_unregister.exit.3_crit_edge
  %info.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 27
  %18 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %sh_mobile_lcdc_overlay_fb_unregister.exit.3.sh_mobile_lcdc_channel_fb_unregister.exit_crit_edge, label %land.lhs.true.i

sh_mobile_lcdc_overlay_fb_unregister.exit.3.sh_mobile_lcdc_channel_fb_unregister.exit_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_unregister.exit

land.lhs.true.i:                                  ; preds = %sh_mobile_lcdc_overlay_fb_unregister.exit.3
  %dev.i115 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i115, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.sh_mobile_lcdc_channel_fb_unregister.exit_crit_edge, label %if.then.i

land.lhs.true.i.sh_mobile_lcdc_channel_fb_unregister.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_unregister.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %19) #14
  br label %sh_mobile_lcdc_channel_fb_unregister.exit

sh_mobile_lcdc_channel_fb_unregister.exit:        ; preds = %if.then.i, %land.lhs.true.i.sh_mobile_lcdc_channel_fb_unregister.exit_crit_edge, %sh_mobile_lcdc_overlay_fb_unregister.exit.3.sh_mobile_lcdc_channel_fb_unregister.exit_crit_edge
  %info.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 27
  %22 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %23, null
  br i1 %tobool.not.i.1, label %sh_mobile_lcdc_channel_fb_unregister.exit.sh_mobile_lcdc_channel_fb_unregister.exit.1_crit_edge, label %land.lhs.true.i.1

sh_mobile_lcdc_channel_fb_unregister.exit.sh_mobile_lcdc_channel_fb_unregister.exit.1_crit_edge: ; preds = %sh_mobile_lcdc_channel_fb_unregister.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_unregister.exit.1

land.lhs.true.i.1:                                ; preds = %sh_mobile_lcdc_channel_fb_unregister.exit
  %dev.i115.1 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %dev.i115.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i115.1, align 4
  %tobool2.not.i.1 = icmp eq ptr %25, null
  br i1 %tobool2.not.i.1, label %land.lhs.true.i.1.sh_mobile_lcdc_channel_fb_unregister.exit.1_crit_edge, label %if.then.i.1

land.lhs.true.i.1.sh_mobile_lcdc_channel_fb_unregister.exit.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_unregister.exit.1

if.then.i.1:                                      ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %23) #14
  br label %sh_mobile_lcdc_channel_fb_unregister.exit.1

sh_mobile_lcdc_channel_fb_unregister.exit.1:      ; preds = %if.then.i.1, %land.lhs.true.i.1.sh_mobile_lcdc_channel_fb_unregister.exit.1_crit_edge, %sh_mobile_lcdc_channel_fb_unregister.exit.sh_mobile_lcdc_channel_fb_unregister.exit.1_crit_edge
  tail call fastcc void @sh_mobile_lcdc_stop(ptr noundef %1)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %26 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info1.i, align 4
  %cmp.i118 = icmp eq ptr %27, null
  br i1 %cmp.i118, label %sh_mobile_lcdc_channel_fb_unregister.exit.1.sh_mobile_lcdc_overlay_fb_cleanup.exit_crit_edge, label %lor.lhs.false.i120

sh_mobile_lcdc_channel_fb_unregister.exit.1.sh_mobile_lcdc_overlay_fb_cleanup.exit_crit_edge: ; preds = %sh_mobile_lcdc_channel_fb_unregister.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit

lor.lhs.false.i120:                               ; preds = %sh_mobile_lcdc_channel_fb_unregister.exit.1
  %device.i = getelementptr inbounds %struct.fb_info, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %cmp2.i119 = icmp eq ptr %29, null
  br i1 %cmp2.i119, label %lor.lhs.false.i120.sh_mobile_lcdc_overlay_fb_cleanup.exit_crit_edge, label %if.end.i121

lor.lhs.false.i120.sh_mobile_lcdc_overlay_fb_cleanup.exit_crit_edge: ; preds = %lor.lhs.false.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit

if.end.i121:                                      ; preds = %lor.lhs.false.i120
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @framebuffer_release(ptr noundef nonnull %27) #14
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit

sh_mobile_lcdc_overlay_fb_cleanup.exit:           ; preds = %if.end.i121, %lor.lhs.false.i120.sh_mobile_lcdc_overlay_fb_cleanup.exit_crit_edge, %sh_mobile_lcdc_channel_fb_unregister.exit.1.sh_mobile_lcdc_overlay_fb_cleanup.exit_crit_edge
  %fb_mem = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 0, i32 9
  %30 = ptrtoint ptr %fb_mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb_mem, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %sh_mobile_lcdc_overlay_fb_cleanup.exit.if.end_crit_edge, label %if.then

sh_mobile_lcdc_overlay_fb_cleanup.exit.if.end_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #16
  %fb_size = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 0, i32 10
  %32 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fb_size, align 4
  %dma_handle = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 0, i32 11
  %34 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull %31, i32 noundef %35, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %sh_mobile_lcdc_overlay_fb_cleanup.exit.if.end_crit_edge
  %36 = ptrtoint ptr %info1.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info1.i.1, align 4
  %cmp.i118.1 = icmp eq ptr %37, null
  br i1 %cmp.i118.1, label %if.end.sh_mobile_lcdc_overlay_fb_cleanup.exit.1_crit_edge, label %lor.lhs.false.i120.1

if.end.sh_mobile_lcdc_overlay_fb_cleanup.exit.1_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.1

lor.lhs.false.i120.1:                             ; preds = %if.end
  %device.i.1 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %device.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device.i.1, align 4
  %cmp2.i119.1 = icmp eq ptr %39, null
  br i1 %cmp2.i119.1, label %lor.lhs.false.i120.1.sh_mobile_lcdc_overlay_fb_cleanup.exit.1_crit_edge, label %if.end.i121.1

lor.lhs.false.i120.1.sh_mobile_lcdc_overlay_fb_cleanup.exit.1_crit_edge: ; preds = %lor.lhs.false.i120.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.1

if.end.i121.1:                                    ; preds = %lor.lhs.false.i120.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @framebuffer_release(ptr noundef nonnull %37) #14
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.1

sh_mobile_lcdc_overlay_fb_cleanup.exit.1:         ; preds = %if.end.i121.1, %lor.lhs.false.i120.1.sh_mobile_lcdc_overlay_fb_cleanup.exit.1_crit_edge, %if.end.sh_mobile_lcdc_overlay_fb_cleanup.exit.1_crit_edge
  %fb_mem.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 1, i32 9
  %40 = ptrtoint ptr %fb_mem.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb_mem.1, align 4
  %tobool.not.1 = icmp eq ptr %41, null
  br i1 %tobool.not.1, label %sh_mobile_lcdc_overlay_fb_cleanup.exit.1.if.end.1_crit_edge, label %if.then.1

sh_mobile_lcdc_overlay_fb_cleanup.exit.1.if.end.1_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

if.then.1:                                        ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  %fb_size.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 1, i32 10
  %42 = ptrtoint ptr %fb_size.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fb_size.1, align 4
  %dma_handle.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 1, i32 11
  %44 = ptrtoint ptr %dma_handle.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_handle.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %43, ptr noundef nonnull %41, i32 noundef %45, i32 noundef 0) #14
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %sh_mobile_lcdc_overlay_fb_cleanup.exit.1.if.end.1_crit_edge
  %46 = ptrtoint ptr %info1.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info1.i.2, align 4
  %cmp.i118.2 = icmp eq ptr %47, null
  br i1 %cmp.i118.2, label %if.end.1.sh_mobile_lcdc_overlay_fb_cleanup.exit.2_crit_edge, label %lor.lhs.false.i120.2

if.end.1.sh_mobile_lcdc_overlay_fb_cleanup.exit.2_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.2

lor.lhs.false.i120.2:                             ; preds = %if.end.1
  %device.i.2 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %device.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device.i.2, align 4
  %cmp2.i119.2 = icmp eq ptr %49, null
  br i1 %cmp2.i119.2, label %lor.lhs.false.i120.2.sh_mobile_lcdc_overlay_fb_cleanup.exit.2_crit_edge, label %if.end.i121.2

lor.lhs.false.i120.2.sh_mobile_lcdc_overlay_fb_cleanup.exit.2_crit_edge: ; preds = %lor.lhs.false.i120.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.2

if.end.i121.2:                                    ; preds = %lor.lhs.false.i120.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @framebuffer_release(ptr noundef nonnull %47) #14
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.2

sh_mobile_lcdc_overlay_fb_cleanup.exit.2:         ; preds = %if.end.i121.2, %lor.lhs.false.i120.2.sh_mobile_lcdc_overlay_fb_cleanup.exit.2_crit_edge, %if.end.1.sh_mobile_lcdc_overlay_fb_cleanup.exit.2_crit_edge
  %fb_mem.2 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 2, i32 9
  %50 = ptrtoint ptr %fb_mem.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fb_mem.2, align 4
  %tobool.not.2 = icmp eq ptr %51, null
  br i1 %tobool.not.2, label %sh_mobile_lcdc_overlay_fb_cleanup.exit.2.if.end.2_crit_edge, label %if.then.2

sh_mobile_lcdc_overlay_fb_cleanup.exit.2.if.end.2_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

if.then.2:                                        ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  %fb_size.2 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 2, i32 10
  %52 = ptrtoint ptr %fb_size.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fb_size.2, align 4
  %dma_handle.2 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 2, i32 11
  %54 = ptrtoint ptr %dma_handle.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_handle.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %53, ptr noundef nonnull %51, i32 noundef %55, i32 noundef 0) #14
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %sh_mobile_lcdc_overlay_fb_cleanup.exit.2.if.end.2_crit_edge
  %56 = ptrtoint ptr %info1.i.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info1.i.3, align 4
  %cmp.i118.3 = icmp eq ptr %57, null
  br i1 %cmp.i118.3, label %if.end.2.sh_mobile_lcdc_overlay_fb_cleanup.exit.3_crit_edge, label %lor.lhs.false.i120.3

if.end.2.sh_mobile_lcdc_overlay_fb_cleanup.exit.3_crit_edge: ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.3

lor.lhs.false.i120.3:                             ; preds = %if.end.2
  %device.i.3 = getelementptr inbounds %struct.fb_info, ptr %57, i32 0, i32 21
  %58 = ptrtoint ptr %device.i.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device.i.3, align 4
  %cmp2.i119.3 = icmp eq ptr %59, null
  br i1 %cmp2.i119.3, label %lor.lhs.false.i120.3.sh_mobile_lcdc_overlay_fb_cleanup.exit.3_crit_edge, label %if.end.i121.3

lor.lhs.false.i120.3.sh_mobile_lcdc_overlay_fb_cleanup.exit.3_crit_edge: ; preds = %lor.lhs.false.i120.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.3

if.end.i121.3:                                    ; preds = %lor.lhs.false.i120.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @framebuffer_release(ptr noundef nonnull %57) #14
  br label %sh_mobile_lcdc_overlay_fb_cleanup.exit.3

sh_mobile_lcdc_overlay_fb_cleanup.exit.3:         ; preds = %if.end.i121.3, %lor.lhs.false.i120.3.sh_mobile_lcdc_overlay_fb_cleanup.exit.3_crit_edge, %if.end.2.sh_mobile_lcdc_overlay_fb_cleanup.exit.3_crit_edge
  %fb_mem.3 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 3, i32 9
  %60 = ptrtoint ptr %fb_mem.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fb_mem.3, align 4
  %tobool.not.3 = icmp eq ptr %61, null
  br i1 %tobool.not.3, label %sh_mobile_lcdc_overlay_fb_cleanup.exit.3.if.end.3_crit_edge, label %if.then.3

sh_mobile_lcdc_overlay_fb_cleanup.exit.3.if.end.3_crit_edge: ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.3

if.then.3:                                        ; preds = %sh_mobile_lcdc_overlay_fb_cleanup.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  %fb_size.3 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 3, i32 10
  %62 = ptrtoint ptr %fb_size.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fb_size.3, align 4
  %dma_handle.3 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 7, i32 3, i32 11
  %64 = ptrtoint ptr %dma_handle.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_handle.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %63, ptr noundef nonnull %61, i32 noundef %65, i32 noundef 0) #14
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %sh_mobile_lcdc_overlay_fb_cleanup.exit.3.if.end.3_crit_edge
  %tx_dev = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 1
  %66 = ptrtoint ptr %tx_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_dev, align 4
  %tobool23.not = icmp eq ptr %67, null
  br i1 %tobool23.not, label %if.end.3.if.end28_crit_edge, label %if.then24

if.end.3.if.end28_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then24:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  %lcdc = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %lcdc to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %lcdc, align 4
  %cfg = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 2
  %69 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg, align 4
  %tx_dev26 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %tx_dev26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_dev26, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3, i32 6
  %73 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %76) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end.3.if.end28_crit_edge
  %77 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %info.i, align 4
  %tobool.not.i123 = icmp eq ptr %78, null
  br i1 %tobool.not.i123, label %if.end28.sh_mobile_lcdc_channel_fb_cleanup.exit_crit_edge, label %lor.lhs.false.i126

if.end28.sh_mobile_lcdc_channel_fb_cleanup.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_cleanup.exit

lor.lhs.false.i126:                               ; preds = %if.end28
  %device.i124 = getelementptr inbounds %struct.fb_info, ptr %78, i32 0, i32 21
  %79 = ptrtoint ptr %device.i124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device.i124, align 4
  %tobool2.not.i125 = icmp eq ptr %80, null
  br i1 %tobool2.not.i125, label %lor.lhs.false.i126.sh_mobile_lcdc_channel_fb_cleanup.exit_crit_edge, label %if.end.i127

lor.lhs.false.i126.sh_mobile_lcdc_channel_fb_cleanup.exit_crit_edge: ; preds = %lor.lhs.false.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_cleanup.exit

if.end.i127:                                      ; preds = %lor.lhs.false.i126
  call void @__sanitizer_cov_trace_pc() #16
  %sglist.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 31
  %81 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sglist.i, align 4
  tail call void @vfree(ptr noundef %82) #14
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %78, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #14
  tail call void @framebuffer_release(ptr noundef nonnull %78) #14
  br label %sh_mobile_lcdc_channel_fb_cleanup.exit

sh_mobile_lcdc_channel_fb_cleanup.exit:           ; preds = %if.end.i127, %lor.lhs.false.i126.sh_mobile_lcdc_channel_fb_cleanup.exit_crit_edge, %if.end28.sh_mobile_lcdc_channel_fb_cleanup.exit_crit_edge
  %fb_mem29 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 8
  %83 = ptrtoint ptr %fb_mem29 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fb_mem29, align 4
  %tobool30.not = icmp eq ptr %84, null
  br i1 %tobool30.not, label %sh_mobile_lcdc_channel_fb_cleanup.exit.if.end36_crit_edge, label %if.then31

sh_mobile_lcdc_channel_fb_cleanup.exit.if.end36_crit_edge: ; preds = %sh_mobile_lcdc_channel_fb_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then31:                                        ; preds = %sh_mobile_lcdc_channel_fb_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #16
  %fb_size33 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 9
  %85 = ptrtoint ptr %fb_size33 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fb_size33, align 4
  %dma_handle35 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 10
  %87 = ptrtoint ptr %dma_handle35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_handle35, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %86, ptr noundef nonnull %84, i32 noundef %88, i32 noundef 0) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %sh_mobile_lcdc_channel_fb_cleanup.exit.if.end36_crit_edge
  %tx_dev.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 1
  %89 = ptrtoint ptr %tx_dev.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_dev.1, align 4
  %tobool23.not.1 = icmp eq ptr %90, null
  br i1 %tobool23.not.1, label %if.end36.if.end28.1_crit_edge, label %if.then24.1

if.end36.if.end28.1_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.1

if.then24.1:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %lcdc.1 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %lcdc.1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %lcdc.1, align 4
  %cfg.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 2
  %92 = ptrtoint ptr %cfg.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.1, align 4
  %tx_dev26.1 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %tx_dev26.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_dev26.1, align 4
  %driver.1 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3, i32 6
  %96 = ptrtoint ptr %driver.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver.1, align 4
  %owner.1 = getelementptr inbounds %struct.device_driver, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %owner.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %owner.1, align 4
  tail call void @module_put(ptr noundef %99) #14
  br label %if.end28.1

if.end28.1:                                       ; preds = %if.then24.1, %if.end36.if.end28.1_crit_edge
  %100 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %info.i.1, align 4
  %tobool.not.i123.1 = icmp eq ptr %101, null
  br i1 %tobool.not.i123.1, label %if.end28.1.sh_mobile_lcdc_channel_fb_cleanup.exit.1_crit_edge, label %lor.lhs.false.i126.1

if.end28.1.sh_mobile_lcdc_channel_fb_cleanup.exit.1_crit_edge: ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_cleanup.exit.1

lor.lhs.false.i126.1:                             ; preds = %if.end28.1
  %device.i124.1 = getelementptr inbounds %struct.fb_info, ptr %101, i32 0, i32 21
  %102 = ptrtoint ptr %device.i124.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device.i124.1, align 4
  %tobool2.not.i125.1 = icmp eq ptr %103, null
  br i1 %tobool2.not.i125.1, label %lor.lhs.false.i126.1.sh_mobile_lcdc_channel_fb_cleanup.exit.1_crit_edge, label %if.end.i127.1

lor.lhs.false.i126.1.sh_mobile_lcdc_channel_fb_cleanup.exit.1_crit_edge: ; preds = %lor.lhs.false.i126.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_channel_fb_cleanup.exit.1

if.end.i127.1:                                    ; preds = %lor.lhs.false.i126.1
  call void @__sanitizer_cov_trace_pc() #16
  %sglist.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 31
  %104 = ptrtoint ptr %sglist.i.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sglist.i.1, align 4
  tail call void @vfree(ptr noundef %105) #14
  %cmap.i.1 = getelementptr inbounds %struct.fb_info, ptr %101, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i.1) #14
  tail call void @framebuffer_release(ptr noundef nonnull %101) #14
  br label %sh_mobile_lcdc_channel_fb_cleanup.exit.1

sh_mobile_lcdc_channel_fb_cleanup.exit.1:         ; preds = %if.end.i127.1, %lor.lhs.false.i126.1.sh_mobile_lcdc_channel_fb_cleanup.exit.1_crit_edge, %if.end28.1.sh_mobile_lcdc_channel_fb_cleanup.exit.1_crit_edge
  %fb_mem29.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 8
  %106 = ptrtoint ptr %fb_mem29.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fb_mem29.1, align 4
  %tobool30.not.1 = icmp eq ptr %107, null
  br i1 %tobool30.not.1, label %sh_mobile_lcdc_channel_fb_cleanup.exit.1.if.end36.1_crit_edge, label %if.then31.1

sh_mobile_lcdc_channel_fb_cleanup.exit.1.if.end36.1_crit_edge: ; preds = %sh_mobile_lcdc_channel_fb_cleanup.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.1

if.then31.1:                                      ; preds = %sh_mobile_lcdc_channel_fb_cleanup.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  %fb_size33.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 9
  %108 = ptrtoint ptr %fb_size33.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fb_size33.1, align 4
  %dma_handle35.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 10
  %110 = ptrtoint ptr %dma_handle35.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_handle35.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %109, ptr noundef nonnull %107, i32 noundef %111, i32 noundef 0) #14
  br label %if.end36.1

if.end36.1:                                       ; preds = %if.then31.1, %sh_mobile_lcdc_channel_fb_cleanup.exit.1.if.end36.1_crit_edge
  %bl = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 25
  %112 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bl, align 4
  %tobool46.not = icmp eq ptr %113, null
  br i1 %tobool46.not, label %if.end36.1.if.end49_crit_edge, label %if.then47

if.end36.1.if.end49_crit_edge:                    ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then47:                                        ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @backlight_device_unregister(ptr noundef nonnull %113) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end36.1.if.end49_crit_edge
  %open_lock = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %open_lock) #14
  %bl.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 25
  %114 = ptrtoint ptr %bl.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bl.1, align 4
  %tobool46.not.1 = icmp eq ptr %115, null
  br i1 %tobool46.not.1, label %if.end49.if.end49.1_crit_edge, label %if.then47.1

if.end49.if.end49.1_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.1

if.then47.1:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @backlight_device_unregister(ptr noundef nonnull %115) #14
  br label %if.end49.1

if.end49.1:                                       ; preds = %if.then47.1, %if.end49.if.end49.1_crit_edge
  %open_lock.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 6
  tail call void @mutex_destroy(ptr noundef %open_lock.1) #14
  %dot_clk = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 4
  %116 = ptrtoint ptr %dot_clk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dot_clk, align 4
  %tobool53.not = icmp eq ptr %117, null
  br i1 %tobool53.not, label %if.end49.1.if.end57_crit_edge, label %if.then54

if.end49.1.if.end57_crit_edge:                    ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then54:                                        ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #14
  %118 = ptrtoint ptr %dot_clk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dot_clk, align 4
  tail call void @clk_put(ptr noundef %119) #14
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end49.1.if.end57_crit_edge
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %tobool58.not = icmp eq ptr %121, null
  br i1 %tobool58.not, label %if.end57.if.end61_crit_edge, label %if.then59

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %121) #14
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge
  %irq = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 1
  %122 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool62.not = icmp eq i32 %123, 0
  br i1 %tobool62.not, label %if.end61.if.end66_crit_edge, label %if.then63

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %call65 = tail call ptr @free_irq(i32 noundef %123, ptr noundef %1) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end61.if.end66_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !182
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %xor = and i32 %3, -257
  %and = xor i32 %xor, 255
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr.i29 = getelementptr i8, ptr %5, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %6) #14, !srcloc !185
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr.i30 = getelementptr i8, ptr %8, i32 1132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %and5 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp ne i32 %10, 0
  %hw_usecnt.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 3
  %dot_clk.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 4
  %and13 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %enabled = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 0, i32 5
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %entry
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %cfg.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 0, i32 2
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp ne i32 %17, 2
  %cmp9 = xor i1 %11, %cmp.i
  br i1 %cmp9, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  %frame_end = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 0, i32 12
  %18 = ptrtoint ptr %frame_end to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %frame_end, align 4
  %frame_end_wait = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %frame_end_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %hw_usecnt.i, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt.i, ptr %hw_usecnt.i, i32 1, ptr elementtype(i32) %hw_usecnt.i) #14, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp.i31 = icmp eq i32 %asmresult.i.i.i.i, -1
  br i1 %cmp.i31, label %if.then.i, label %if.then10.if.end12_crit_edge

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #14
  %22 = ptrtoint ptr %dot_clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dot_clk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #14
  tail call void @clk_unprepare(ptr noundef %23) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then10.if.end12_crit_edge, %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %if.then15

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %vsync_completion = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 0, i32 14
  tail call void @complete(ptr noundef %vsync_completion) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end12.for.inc_crit_edge, %entry.for.inc_crit_edge
  %enabled.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 1, i32 5
  %24 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enabled.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.1 = icmp eq i32 %25, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  br i1 %tobool6.not, label %if.end.1.if.end12.1_crit_edge, label %if.then7.1

if.end.1.if.end12.1_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.1

if.then7.1:                                       ; preds = %if.end.1
  %cfg.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 1, i32 2
  %26 = ptrtoint ptr %cfg.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i.1 = icmp ne i32 %29, 2
  %cmp9.1 = xor i1 %11, %cmp.i.1
  br i1 %cmp9.1, label %if.then10.1, label %if.then7.1.if.end12.1_crit_edge

if.then7.1.if.end12.1_crit_edge:                  ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.1

if.then10.1:                                      ; preds = %if.then7.1
  %frame_end.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 1, i32 12
  %30 = ptrtoint ptr %frame_end.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %frame_end.1, align 4
  %frame_end_wait.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 1, i32 13
  tail call void @__wake_up(ptr noundef %frame_end_wait.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %hw_usecnt.i, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt.i, ptr %hw_usecnt.i, i32 1, ptr elementtype(i32) %hw_usecnt.i) #14, !srcloc !180
  %asmresult.i.i.i.i.1 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.1)
  %cmp.i31.1 = icmp eq i32 %asmresult.i.i.i.i.1, -1
  br i1 %cmp.i31.1, label %if.then.i.1, label %if.then10.1.if.end12.1_crit_edge

if.then10.1.if.end12.1_crit_edge:                 ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.1

if.then.i.1:                                      ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call.i.i.1 = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #14
  %34 = ptrtoint ptr %dot_clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dot_clk.i, align 4
  tail call void @clk_disable(ptr noundef %35) #14
  tail call void @clk_unprepare(ptr noundef %35) #14
  br label %if.end12.1

if.end12.1:                                       ; preds = %if.then.i.1, %if.then10.1.if.end12.1_crit_edge, %if.then7.1.if.end12.1_crit_edge, %if.end.1.if.end12.1_crit_edge
  br i1 %tobool14.not, label %if.end12.1.for.inc.1_crit_edge, label %if.then15.1

if.end12.1.for.inc.1_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then15.1:                                      ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #16
  %vsync_completion.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %data, i32 0, i32 6, i32 1, i32 14
  tail call void @complete(ptr noundef %vsync_completion.1) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %if.end12.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_mobile_lcdc_channel_init(ptr noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 2
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %dev2 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %fourcc = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %7, label %do.end [
    i32 1346520914, label %entry.if.end_crit_edge
    i32 861030210, label %cleanup.fold.split.i
    i32 877807426, label %cleanup.fold.split8.i
    i32 842094158, label %cleanup.fold.split9.i
    i32 825382478, label %cleanup.fold.split10.i
    i32 909203022, label %cleanup.fold.split11.i
    i32 825644622, label %cleanup.fold.split12.i
    i32 875714126, label %cleanup.fold.split13.i
    i32 842290766, label %cleanup.fold.split14.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34, i32 noundef %7) #17
  br label %cleanup99

if.end:                                           ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end_crit_edge
  %retval.0.i177.ph = phi ptr [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %cleanup.fold.split.i ], [ @sh_mobile_format_infos, %entry.if.end_crit_edge ]
  %lcd_modes = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %1, i32 0, i32 6
  %num_modes4 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %num_modes4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_modes4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5192.not = icmp eq i32 %10, 0
  br i1 %cmp5192.not, label %if.end.if.end32_crit_edge, label %for.body.lr.ph

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

for.body.lr.ph:                                   ; preds = %if.end
  %11 = ptrtoint ptr %lcd_modes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lcd_modes, align 4
  %13 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %max_size.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %20, %for.inc.for.body_crit_edge ]
  %mode.0194 = phi ptr [ %12, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %max_mode.0193 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %mode.0194, i32 0, i32 3
  %15 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %mode.0194, i32 0, i32 2
  %17 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres, align 4
  %mul = mul i32 %18, %16
  %19 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %14, label %for.body.for.inc_crit_edge [
    i32 842094158, label %for.body.land.lhs.true_crit_edge
    i32 825382478, label %for.body.land.lhs.true_crit_edge201
  ]

for.body.land.lhs.true_crit_edge201:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge201
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.37) #17
  br label %cleanup99

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %max_size.0195)
  %cmp16 = icmp ugt i32 %mul, %max_size.0195
  %spec.select = select i1 %cmp16, ptr %mode.0194, ptr %max_mode.0193
  %20 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %max_size.0195)
  %inc = add nuw i32 %i.0196, 1
  %incdec.ptr = getelementptr %struct.fb_videomode, ptr %mode.0194, i32 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %for.end.if.end32_crit_edge, label %do.body21

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

do.body21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_lcdc_channel_init.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mobile_lcdc_channel_init, %if.then26)) #14
          to label %if.end32 [label %if.then26], !srcloc !186

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %xres27 = getelementptr inbounds %struct.fb_videomode, ptr %spec.select, i32 0, i32 2
  %21 = ptrtoint ptr %xres27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xres27, align 4
  %yres28 = getelementptr inbounds %struct.fb_videomode, ptr %spec.select, i32 0, i32 3
  %23 = ptrtoint ptr %yres28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_lcdc_channel_init.__UNIQUE_ID_ddebug314, ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef %22, i32 noundef %24) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %do.body21, %for.end.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %max_size.3 = phi i32 [ %20, %if.then26 ], [ 2073600, %for.end.if.end32_crit_edge ], [ %20, %do.body21 ], [ 2073600, %if.end.if.end32_crit_edge ]
  %25 = ptrtoint ptr %lcd_modes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcd_modes, align 4
  %cmp34 = icmp eq ptr %26, null
  br i1 %cmp34, label %if.end32.if.end39_crit_edge, label %if.else36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.else36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %num_modes4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_modes4, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.end32.if.end39_crit_edge
  %mode.1 = phi ptr [ %26, %if.else36 ], [ @default_720p, %if.end32.if.end39_crit_edge ]
  %num_modes.0 = phi i32 [ %28, %if.else36 ], [ 1, %if.end32.if.end39_crit_edge ]
  %format40 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 15
  %29 = ptrtoint ptr %format40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i177.ph, ptr %format40, align 4
  %xres41 = getelementptr inbounds %struct.fb_videomode, ptr %mode.1, i32 0, i32 2
  %30 = ptrtoint ptr %xres41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xres41, align 4
  %xres42 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 17
  %32 = ptrtoint ptr %xres42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xres42, align 4
  %33 = load i32, ptr %xres41, align 4
  %xres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 18
  %34 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xres_virtual, align 4
  %yres44 = getelementptr inbounds %struct.fb_videomode, ptr %mode.1, i32 0, i32 3
  %35 = ptrtoint ptr %yres44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres44, align 4
  %yres45 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 19
  %37 = ptrtoint ptr %yres45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %yres45, align 4
  %38 = load i32, ptr %yres44, align 4
  %mul47 = shl i32 %38, 1
  %yres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 20
  %39 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul47, ptr %yres_virtual, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i177.ph, i32 0, i32 2
  %40 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool48.not = icmp eq i8 %41, 0
  %colorspace = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 16
  br i1 %tobool48.not, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %colorspace, align 4
  %bpp = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i177.ph, i32 0, i32 1
  %43 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bpp, align 4
  %mul51 = mul i32 %44, %33
  %div174 = lshr i32 %mul51, 3
  br label %if.end56

if.else52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %colorspace, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then49
  %.sink = phi i32 [ %div174, %if.then49 ], [ %33, %if.else52 ]
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 21
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %46, align 4
  %panel_cfg = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %panel_cfg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %panel_cfg, align 4
  %display = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 29
  %50 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %display, align 4
  %height = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %1, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height, align 4
  %height60 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 29, i32 1
  %53 = ptrtoint ptr %height60 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %height60, align 4
  %mode62 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 29, i32 2
  %54 = call ptr @memcpy(ptr %mode62, ptr %mode.1, i32 56)
  %bpp63 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i177.ph, i32 0, i32 1
  %55 = ptrtoint ptr %bpp63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bpp63, align 4
  %mul64 = mul i32 %56, %max_size.3
  %57 = lshr i32 %mul64, 2
  %mul66 = and i32 %57, 1073741822
  %fb_size = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 9
  %58 = ptrtoint ptr %fb_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul66, ptr %fb_size, align 4
  %dma_handle = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 10
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %mul66, ptr noundef %dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %fb_mem = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 8
  %59 = ptrtoint ptr %fb_mem to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %fb_mem, align 4
  %cmp70 = icmp eq ptr %call.i, null
  br i1 %cmp70, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.42) #17
  br label %cleanup99

if.end75:                                         ; preds = %if.end56
  %tx_dev = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %tx_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_dev, align 4
  %tobool76.not = icmp eq ptr %61, null
  br i1 %tobool76.not, label %if.end75.if.end97_crit_edge, label %if.then77

if.end75.if.end97_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then77:                                        ; preds = %if.end75
  %driver = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 6
  %62 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver, align 4
  %tobool80.not = icmp eq ptr %63, null
  br i1 %tobool80.not, label %if.then77.do.end89_crit_edge, label %lor.lhs.false81

if.then77.do.end89_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end89

lor.lhs.false81:                                  ; preds = %if.then77
  %owner = getelementptr inbounds %struct.device_driver, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %owner, align 4
  %call85 = tail call zeroext i1 @try_module_get(ptr noundef %65) #14
  br i1 %call85, label %if.end90, label %lor.lhs.false81.do.end89_crit_edge

lor.lhs.false81.do.end89_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end89

do.end89:                                         ; preds = %lor.lhs.false81.do.end89_crit_edge, %if.then77.do.end89_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.45) #17
  br label %cleanup99

if.end90:                                         ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %tx_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i, align 4
  %tx_dev93 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 1
  %70 = ptrtoint ptr %tx_dev93 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %tx_dev93, align 4
  %lcdc95 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %69, i32 0, i32 2
  %71 = ptrtoint ptr %lcdc95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ch, ptr %lcdc95, align 4
  %72 = load ptr, ptr %tx_dev93, align 4
  %def_mode = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %72, i32 0, i32 3
  %73 = call ptr @memcpy(ptr %def_mode, ptr %mode.1, i32 56)
  br label %if.end97

if.end97:                                         ; preds = %if.end90, %if.end75.if.end97_crit_edge
  %74 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ch, align 4
  %dev.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  %call.i178 = tail call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %77) #14
  %tobool.not.i = icmp eq ptr %call.i178, null
  br i1 %tobool.not.i, label %if.end97.cleanup99_crit_edge, label %if.end.i

if.end97.cleanup99_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

if.end.i:                                         ; preds = %if.end97
  %info1.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 27
  %78 = ptrtoint ptr %info1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i178, ptr %info1.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 2
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %flags.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 20
  %80 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @sh_mobile_lcdc_ops, ptr %fbops.i, align 4
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 21
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %device.i, align 4
  %84 = ptrtoint ptr %fb_mem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fb_mem, align 4
  %86 = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 25
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %86, align 4
  %pseudo_palette.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %ch, i32 0, i32 28
  %pseudo_palette3.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 27
  %88 = ptrtoint ptr %pseudo_palette3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %pseudo_palette.i, ptr %pseudo_palette3.i, align 4
  %par.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 30
  %89 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %ch, ptr %par.i, align 4
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef nonnull %mode.1, i32 noundef %num_modes.0, ptr noundef %modelist.i) #14
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 12
  %call4.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 16, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.49) #17
  br label %cleanup99

if.end7.i:                                        ; preds = %if.end.i
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7
  %92 = call ptr @memcpy(ptr %fix.i, ptr @sh_mobile_lcdc_fix, i32 68)
  %93 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_handle, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %smem_start.i, align 4
  %96 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fb_size, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7, i32 2
  %98 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %smem_len.i, align 4
  %99 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %46, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7, i32 9
  %101 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %line_length.i, align 4
  %102 = ptrtoint ptr %format40 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %format40, align 4
  %yuv.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %yuv.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %yuv.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool11.not.i = icmp eq i8 %105, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 2, i32 6
  %106 = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7, i32 5
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.select.i, ptr %106, align 4
  %108 = ptrtoint ptr %format40 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %format40, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %111, label %if.end7.i.sw.epilog.i_crit_edge [
    i32 842094158, label %if.end7.i.sw.bb.i_crit_edge
    i32 825382478, label %if.end7.i.sw.bb.i_crit_edge202
    i32 909203022, label %if.end7.i.sw.bb19.i_crit_edge
    i32 825644622, label %if.end7.i.sw.bb19.i_crit_edge203
  ]

if.end7.i.sw.bb19.i_crit_edge203:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

if.end7.i.sw.bb19.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

if.end7.i.sw.bb.i_crit_edge202:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end7.i.sw.bb.i_crit_edge, %if.end7.i.sw.bb.i_crit_edge202
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7, i32 7
  %113 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 2, ptr %ypanstep.i, align 2
  br label %sw.bb19.i

sw.bb19.i:                                        ; preds = %sw.bb.i, %if.end7.i.sw.bb19.i_crit_edge, %if.end7.i.sw.bb19.i_crit_edge203
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 7, i32 6
  %114 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 2, ptr %xpanstep.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb19.i, %if.end7.i.sw.epilog.i_crit_edge
  %var21.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6
  tail call void @fb_videomode_to_var(ptr noundef %var21.i, ptr noundef nonnull %mode.1) #14
  %115 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %display, align 4
  %width22.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 15
  %117 = ptrtoint ptr %width22.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %width22.i, align 4
  %118 = ptrtoint ptr %height60 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %height60, align 4
  %height24.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 14
  %120 = ptrtoint ptr %height24.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %height24.i, align 4
  %121 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %xres_virtual, align 4
  %xres_virtual25.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 2
  %123 = ptrtoint ptr %xres_virtual25.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %xres_virtual25.i, align 4
  %124 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %yres_virtual, align 4
  %yres_virtual26.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 3
  %126 = ptrtoint ptr %yres_virtual26.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %yres_virtual26.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 13
  %127 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %activate.i, align 4
  %128 = ptrtoint ptr %format40 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %format40, align 4
  %yuv28.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %yuv28.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %yuv28.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool29.not.i = icmp eq i8 %131, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %bpp.i = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %129, i32 0, i32 1
  %132 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bpp.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 6
  %134 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %bits_per_pixel.i, align 4
  br label %if.end35.i

if.else32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %135 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %129, align 4
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %call.i178, i32 0, i32 6, i32 7
  %137 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %grayscale.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else32.i, %if.then30.i
  %call36.i = tail call i32 @sh_mobile_lcdc_check_var(ptr noundef %var21.i, ptr noundef nonnull %call.i178) #14
  br label %cleanup99

cleanup99:                                        ; preds = %if.end35.i, %do.end.i, %if.end97.cleanup99_crit_edge, %do.end89, %do.end74, %cleanup, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %cleanup ], [ -12, %do.end74 ], [ -22, %do.end89 ], [ %call4.i, %do.end.i ], [ -12, %if.end97.cleanup99_crit_edge ], [ %call36.i, %if.end35.i ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_mobile_lcdc_start(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sh_mobile_lcdc_clk_on(ptr noundef %priv)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %enabled.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 5
  %2 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sh_mobile_lcdc_clk_on(ptr noundef %priv)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %7 = or i32 %6, 65536
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr.i124 = getelementptr i8, ptr %9, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %7) #14, !srcloc !185
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %11, i32 1140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not3.i = icmp eq i32 %13, 0
  br i1 %cmp.not3.i, label %for.inc.1.lcdc_wait_bit.exit_crit_edge, label %for.inc.1.do.end.i_crit_edge

for.inc.1.do.end.i_crit_edge:                     ; preds = %for.inc.1
  br label %do.end.i

for.inc.1.lcdc_wait_bit.exit_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %for.inc.1.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 1140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %17 = and i32 %16, 65536
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %do.end.i.lcdc_wait_bit.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.lcdc_wait_bit.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

lcdc_wait_bit.exit:                               ; preds = %do.end.i.lcdc_wait_bit.exit_crit_edge, %for.inc.1.lcdc_wait_bit.exit_crit_edge
  %arrayidx6 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %lcdc_wait_bit.exit.for.inc19_crit_edge, label %if.end10

lcdc_wait_bit.exit.for.inc19_crit_edge:           ; preds = %lcdc_wait_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19

if.end10:                                         ; preds = %lcdc_wait_bit.exit
  %cfg = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 2
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %setup_sys = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %21, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %setup_sys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup_sys, align 4
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %if.end10.for.inc19_crit_edge, label %if.then12

if.end10.for.inc19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19

if.then12:                                        ; preds = %if.end10
  %call14 = tail call i32 %23(ptr noundef %arrayidx6, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.for.inc19_crit_edge, label %if.then12.cleanup69_crit_edge

if.then12.cleanup69_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.then12.for.inc19_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19

for.inc19:                                        ; preds = %if.then12.for.inc19_crit_edge, %if.end10.for.inc19_crit_edge, %lcdc_wait_bit.exit.for.inc19_crit_edge
  %arrayidx6.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enabled.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.1 = icmp eq i32 %25, 0
  br i1 %tobool8.not.1, label %for.inc19.for.inc19.1_crit_edge, label %if.end10.1

for.inc19.for.inc19.1_crit_edge:                  ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.1

if.end10.1:                                       ; preds = %for.inc19
  %cfg.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 2
  %26 = ptrtoint ptr %cfg.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.1, align 4
  %setup_sys.1 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %27, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %setup_sys.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %setup_sys.1, align 4
  %tobool11.not.1 = icmp eq ptr %29, null
  br i1 %tobool11.not.1, label %if.end10.1.for.inc19.1_crit_edge, label %if.then12.1

if.end10.1.for.inc19.1_crit_edge:                 ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.1

if.then12.1:                                      ; preds = %if.end10.1
  %call14.1 = tail call i32 %29(ptr noundef %arrayidx6.1, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %if.then12.1.for.inc19.1_crit_edge, label %if.then12.1.cleanup69_crit_edge

if.then12.1.cleanup69_crit_edge:                  ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.then12.1.for.inc19.1_crit_edge:                ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.1

for.inc19.1:                                      ; preds = %if.then12.1.for.inc19.1_crit_edge, %if.end10.1.for.inc19.1_crit_edge, %for.inc19.for.inc19.1_crit_edge
  %30 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool28.not = icmp eq i32 %31, 0
  br i1 %tobool28.not, label %for.inc19.1.for.inc32_crit_edge, label %if.end30

for.inc19.1.for.inc32_crit_edge:                  ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32

if.end30:                                         ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #16
  %dma_handle = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 10
  %32 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_handle, align 4
  %base_addr_y = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 22
  %34 = ptrtoint ptr %base_addr_y to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %base_addr_y, align 4
  %xres_virtual = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 18
  %35 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 20
  %37 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %38, %36
  %add = add i32 %mul, %33
  %base_addr_c = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 23
  %39 = ptrtoint ptr %base_addr_c to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %base_addr_c, align 4
  %pitch = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 21
  %40 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pitch, align 4
  %line_size = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 24
  %42 = ptrtoint ptr %line_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %line_size, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.end30, %for.inc19.1.for.inc32_crit_edge
  %43 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %enabled.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool28.not.1 = icmp eq i32 %44, 0
  br i1 %tobool28.not.1, label %for.inc32.for.inc32.1_crit_edge, label %if.end30.1

for.inc32.for.inc32.1_crit_edge:                  ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32.1

if.end30.1:                                       ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #16
  %dma_handle.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 10
  %45 = ptrtoint ptr %dma_handle.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_handle.1, align 4
  %base_addr_y.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 22
  %47 = ptrtoint ptr %base_addr_y.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %base_addr_y.1, align 4
  %xres_virtual.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 18
  %48 = ptrtoint ptr %xres_virtual.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xres_virtual.1, align 4
  %yres_virtual.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 20
  %50 = ptrtoint ptr %yres_virtual.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres_virtual.1, align 4
  %mul.1 = mul i32 %51, %49
  %add.1 = add i32 %mul.1, %46
  %base_addr_c.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 23
  %52 = ptrtoint ptr %base_addr_c.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.1, ptr %base_addr_c.1, align 4
  %pitch.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 21
  %53 = ptrtoint ptr %pitch.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pitch.1, align 4
  %line_size.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 24
  %55 = ptrtoint ptr %line_size.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %line_size.1, align 4
  br label %for.inc32.1

for.inc32.1:                                      ; preds = %if.end30.1, %for.inc32.for.inc32.1_crit_edge
  %arrayidx38 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 7, i32 0
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %arrayidx38)
  %arrayidx38.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 7, i32 1
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %arrayidx38.1)
  %arrayidx38.2 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 7, i32 2
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %arrayidx38.2)
  %arrayidx38.3 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 7, i32 3
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %arrayidx38.3)
  tail call fastcc void @__sh_mobile_lcdc_start(ptr noundef %priv)
  %enabled47 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 5
  %56 = ptrtoint ptr %enabled47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enabled47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool48.not = icmp eq i32 %57, 0
  br i1 %tobool48.not, label %for.inc32.1.for.inc66_crit_edge, label %if.end50

for.inc32.1.for.inc66_crit_edge:                  ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66

if.end50:                                         ; preds = %for.inc32.1
  %cfg51 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 2
  %58 = ptrtoint ptr %cfg51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg51, align 4
  %deferred_io_msec = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %59, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %deferred_io_msec to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %deferred_io_msec, align 4
  %ldmt1r_value = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 4
  %62 = ptrtoint ptr %ldmt1r_value to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ldmt1r_value, align 4
  %and = and i32 %63, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool53.not = icmp eq i32 %61, 0
  %or.cond = select i1 %tobool52.not, i1 true, i1 %tobool53.not
  br i1 %or.cond, label %if.end50.if.end59_crit_edge, label %if.then54

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %defio = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 30
  %deferred_io = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 30, i32 4
  %64 = ptrtoint ptr %deferred_io to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @sh_mobile_lcdc_deferred_io, ptr %deferred_io, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %61) #14
  %65 = ptrtoint ptr %defio to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call2.i, ptr %defio, align 4
  %info = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 27
  %66 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %67, i32 0, i32 19
  %68 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %defio, ptr %fbdefio, align 4
  %69 = load ptr, ptr %info, align 4
  tail call void @fb_deferred_io_init(ptr noundef %69) #14
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end50.if.end59_crit_edge
  %70 = ptrtoint ptr %cfg51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg51, align 4
  %tx_dev.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 1
  %72 = ptrtoint ptr %tx_dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_dev.i, align 4
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %if.end59.if.end7.i_crit_edge, label %if.then.i126

if.end59.if.end7.i_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then.i126:                                     ; preds = %if.end59
  %ops.i = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %call.i = tail call i32 %77(ptr noundef nonnull %73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i125 = icmp slt i32 %call.i, 0
  br i1 %cmp.i125, label %if.then.i126.sh_mobile_lcdc_display_on.exit_crit_edge, label %if.end.i127

if.then.i126.sh_mobile_lcdc_display_on.exit_crit_edge: ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_display_on.exit

if.end.i127:                                      ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i127.if.end7.i_crit_edge

if.end.i127.if.end7.i_crit_edge:                  ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #16
  %info.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 27
  %78 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info.i, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %79, i32 0, i32 28
  %80 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %state.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i127.if.end7.i_crit_edge, %if.end59.if.end7.i_crit_edge
  %display_on8.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %71, i32 0, i32 8, i32 4
  %81 = ptrtoint ptr %display_on8.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %display_on8.i, align 4
  %tobool9.not.i = icmp eq ptr %82, null
  br i1 %tobool9.not.i, label %if.end7.i.sh_mobile_lcdc_display_on.exit_crit_edge, label %if.then10.i

if.end7.i.sh_mobile_lcdc_display_on.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_display_on.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %82() #14
  br label %sh_mobile_lcdc_display_on.exit

sh_mobile_lcdc_display_on.exit:                   ; preds = %if.then10.i, %if.end7.i.sh_mobile_lcdc_display_on.exit_crit_edge, %if.then.i126.sh_mobile_lcdc_display_on.exit_crit_edge
  %bl = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 25
  %83 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bl, align 4
  %tobool60.not = icmp eq ptr %84, null
  br i1 %tobool60.not, label %sh_mobile_lcdc_display_on.exit.for.inc66_crit_edge, label %if.then61

sh_mobile_lcdc_display_on.exit.for.inc66_crit_edge: ; preds = %sh_mobile_lcdc_display_on.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66

if.then61:                                        ; preds = %sh_mobile_lcdc_display_on.exit
  %power = getelementptr inbounds %struct.backlight_properties, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %power, align 8
  %86 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %87, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #14
  %ops.i128 = getelementptr inbounds %struct.backlight_device, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %ops.i128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i128, align 4
  %tobool.not.i129 = icmp eq ptr %89, null
  br i1 %tobool.not.i129, label %if.then61.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.then61.backlight_update_status.exit_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.then61
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i131

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit

if.then.i131:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i130 = tail call i32 %91(ptr noundef %87) #14
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i131, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.then61.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #14
  br label %for.inc66

for.inc66:                                        ; preds = %backlight_update_status.exit, %sh_mobile_lcdc_display_on.exit.for.inc66_crit_edge, %for.inc32.1.for.inc66_crit_edge
  %enabled47.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 5
  %92 = ptrtoint ptr %enabled47.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %enabled47.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool48.not.1 = icmp eq i32 %93, 0
  br i1 %tobool48.not.1, label %for.inc66.cleanup69_crit_edge, label %if.end50.1

for.inc66.cleanup69_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.end50.1:                                       ; preds = %for.inc66
  %cfg51.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 2
  %94 = ptrtoint ptr %cfg51.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg51.1, align 4
  %deferred_io_msec.1 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %95, i32 0, i32 10, i32 2
  %96 = ptrtoint ptr %deferred_io_msec.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %deferred_io_msec.1, align 4
  %ldmt1r_value.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 4
  %98 = ptrtoint ptr %ldmt1r_value.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ldmt1r_value.1, align 4
  %and.1 = and i32 %99, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool52.not.1 = icmp eq i32 %and.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool53.not.1 = icmp eq i32 %97, 0
  %or.cond.1 = select i1 %tobool52.not.1, i1 true, i1 %tobool53.not.1
  br i1 %or.cond.1, label %if.end50.1.if.end59.1_crit_edge, label %if.then54.1

if.end50.1.if.end59.1_crit_edge:                  ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.1

if.then54.1:                                      ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #16
  %defio.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 30
  %deferred_io.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 30, i32 4
  %100 = ptrtoint ptr %deferred_io.1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @sh_mobile_lcdc_deferred_io, ptr %deferred_io.1, align 4
  %call2.i.1 = tail call i32 @__msecs_to_jiffies(i32 noundef %97) #14
  %101 = ptrtoint ptr %defio.1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call2.i.1, ptr %defio.1, align 4
  %info.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 27
  %102 = ptrtoint ptr %info.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %info.1, align 4
  %fbdefio.1 = getelementptr inbounds %struct.fb_info, ptr %103, i32 0, i32 19
  %104 = ptrtoint ptr %fbdefio.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %defio.1, ptr %fbdefio.1, align 4
  %105 = load ptr, ptr %info.1, align 4
  tail call void @fb_deferred_io_init(ptr noundef %105) #14
  br label %if.end59.1

if.end59.1:                                       ; preds = %if.then54.1, %if.end50.1.if.end59.1_crit_edge
  %106 = ptrtoint ptr %cfg51.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg51.1, align 4
  %tx_dev.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 1
  %108 = ptrtoint ptr %tx_dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_dev.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %109, null
  br i1 %tobool.not.i.1, label %if.end59.1.if.end7.i.1_crit_edge, label %if.then.i126.1

if.end59.1.if.end7.i.1_crit_edge:                 ; preds = %if.end59.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.1

if.then.i126.1:                                   ; preds = %if.end59.1
  %ops.i.1 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i.1, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call.i.1 = tail call i32 %113(ptr noundef nonnull %109) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i125.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i125.1, label %if.then.i126.1.sh_mobile_lcdc_display_on.exit.1_crit_edge, label %if.end.i127.1

if.then.i126.1.sh_mobile_lcdc_display_on.exit.1_crit_edge: ; preds = %if.then.i126.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_display_on.exit.1

if.end.i127.1:                                    ; preds = %if.then.i126.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp4.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp4.i.1, label %if.then5.i.1, label %if.end.i127.1.if.end7.i.1_crit_edge

if.end.i127.1.if.end7.i.1_crit_edge:              ; preds = %if.end.i127.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.1

if.then5.i.1:                                     ; preds = %if.end.i127.1
  call void @__sanitizer_cov_trace_pc() #16
  %info.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 27
  %114 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %info.i.1, align 4
  %state.i.1 = getelementptr inbounds %struct.fb_info, ptr %115, i32 0, i32 28
  %116 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %state.i.1, align 4
  br label %if.end7.i.1

if.end7.i.1:                                      ; preds = %if.then5.i.1, %if.end.i127.1.if.end7.i.1_crit_edge, %if.end59.1.if.end7.i.1_crit_edge
  %display_on8.i.1 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %107, i32 0, i32 8, i32 4
  %117 = ptrtoint ptr %display_on8.i.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %display_on8.i.1, align 4
  %tobool9.not.i.1 = icmp eq ptr %118, null
  br i1 %tobool9.not.i.1, label %if.end7.i.1.sh_mobile_lcdc_display_on.exit.1_crit_edge, label %if.then10.i.1

if.end7.i.1.sh_mobile_lcdc_display_on.exit.1_crit_edge: ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_display_on.exit.1

if.then10.i.1:                                    ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %118() #14
  br label %sh_mobile_lcdc_display_on.exit.1

sh_mobile_lcdc_display_on.exit.1:                 ; preds = %if.then10.i.1, %if.end7.i.1.sh_mobile_lcdc_display_on.exit.1_crit_edge, %if.then.i126.1.sh_mobile_lcdc_display_on.exit.1_crit_edge
  %bl.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 25
  %119 = ptrtoint ptr %bl.1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bl.1, align 4
  %tobool60.not.1 = icmp eq ptr %120, null
  br i1 %tobool60.not.1, label %sh_mobile_lcdc_display_on.exit.1.cleanup69_crit_edge, label %if.then61.1

sh_mobile_lcdc_display_on.exit.1.cleanup69_crit_edge: ; preds = %sh_mobile_lcdc_display_on.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.then61.1:                                      ; preds = %sh_mobile_lcdc_display_on.exit.1
  %power.1 = getelementptr inbounds %struct.backlight_properties, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %power.1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %power.1, align 8
  %122 = ptrtoint ptr %bl.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bl.1, align 4
  %update_lock.i.1 = getelementptr inbounds %struct.backlight_device, ptr %123, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.1, i32 noundef 0) #14
  %ops.i128.1 = getelementptr inbounds %struct.backlight_device, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %ops.i128.1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i128.1, align 4
  %tobool.not.i129.1 = icmp eq ptr %125, null
  br i1 %tobool.not.i129.1, label %if.then61.1.backlight_update_status.exit.1_crit_edge, label %land.lhs.true.i.1

if.then61.1.backlight_update_status.exit.1_crit_edge: ; preds = %if.then61.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit.1

land.lhs.true.i.1:                                ; preds = %if.then61.1
  %update_status.i.1 = getelementptr inbounds %struct.backlight_ops, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %update_status.i.1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %update_status.i.1, align 4
  %tobool2.not.i.1 = icmp eq ptr %127, null
  br i1 %tobool2.not.i.1, label %land.lhs.true.i.1.backlight_update_status.exit.1_crit_edge, label %if.then.i131.1

land.lhs.true.i.1.backlight_update_status.exit.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit.1

if.then.i131.1:                                   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %call.i130.1 = tail call i32 %127(ptr noundef %123) #14
  br label %backlight_update_status.exit.1

backlight_update_status.exit.1:                   ; preds = %if.then.i131.1, %land.lhs.true.i.1.backlight_update_status.exit.1_crit_edge, %if.then61.1.backlight_update_status.exit.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.1) #14
  br label %cleanup69

cleanup69:                                        ; preds = %backlight_update_status.exit.1, %sh_mobile_lcdc_display_on.exit.1.cleanup69_crit_edge, %for.inc66.cleanup69_crit_edge, %if.then12.1.cleanup69_crit_edge, %if.then12.cleanup69_crit_edge
  %retval.2 = phi i32 [ %call14, %if.then12.cleanup69_crit_edge ], [ %call14.1, %if.then12.1.cleanup69_crit_edge ], [ 0, %backlight_update_status.exit.1 ], [ 0, %sh_mobile_lcdc_display_on.exit.1.cleanup69_crit_edge ], [ 0, %for.inc66.cleanup69_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_update_bl(ptr nocapture noundef readonly %bdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bdev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bdev, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bdev, align 8
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bdev, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %brightness.0 = phi i32 [ 0, %if.then ], [ %5, %lor.lhs.false.if.end_crit_edge ]
  %bl_brightness = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %bl_brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %brightness.0, ptr %bl_brightness, align 4
  %cfg = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg, align 4
  %set_brightness = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %10, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %set_brightness to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_brightness, align 4
  %call4 = tail call i32 %12(i32 noundef %brightness.0) #14
  ret i32 %call4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_get_brightness(ptr nocapture noundef readonly %bdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bdev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl_brightness = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %bl_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl_brightness, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_check_fb(ptr noundef readnone %bdev, ptr nocapture noundef readonly %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 15
  %0 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bl_dev, align 4
  %cmp = icmp eq ptr %1, %bdev
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cfg = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %num_modes = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp94.not = icmp eq i32 %7, 0
  br i1 %cmp94.not, label %entry.if.end39_crit_edge, label %for.body.lr.ph

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

for.body.lr.ph:                                   ; preds = %entry
  %lcd_modes = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %lcd_modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcd_modes, align 4
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %best_yres.097 = phi i32 [ 0, %for.body.lr.ph ], [ %best_yres.2, %cleanup.for.body_crit_edge ]
  %best_xres.096 = phi i32 [ 0, %for.body.lr.ph ], [ %best_xres.2, %cleanup.for.body_crit_edge ]
  %best_dist.095 = phi i32 [ -1, %for.body.lr.ph ], [ %best_dist.2, %cleanup.for.body_crit_edge ]
  %xres2 = getelementptr %struct.fb_videomode, ptr %9, i32 %i.098, i32 2
  %12 = ptrtoint ptr %xres2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3 = icmp ugt i32 %11, %13
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  %yres4 = getelementptr %struct.fb_videomode, ptr %9, i32 %i.098, i32 3
  %16 = ptrtoint ptr %yres4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp5 = icmp ugt i32 %15, %17
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mul10 = mul i32 %17, %13
  %18 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %mul23.neg = mul i32 %18, -2
  %reass.add = add i32 %mul23.neg, %11
  %reass.mul = mul i32 %reass.add, %15
  %sub = add i32 %reass.mul, %mul10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %best_dist.095)
  %cmp24 = icmp ult i32 %sub, %best_dist.095
  br i1 %cmp24, label %if.then25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_dist.2 = phi i32 [ %best_dist.095, %lor.lhs.false.cleanup_crit_edge ], [ %best_dist.095, %for.body.cleanup_crit_edge ], [ %sub, %if.then25 ], [ %best_dist.095, %if.end.cleanup_crit_edge ]
  %best_xres.2 = phi i32 [ %best_xres.096, %lor.lhs.false.cleanup_crit_edge ], [ %best_xres.096, %for.body.cleanup_crit_edge ], [ %13, %if.then25 ], [ %best_xres.096, %if.end.cleanup_crit_edge ]
  %best_yres.2 = phi i32 [ %best_yres.097, %lor.lhs.false.cleanup_crit_edge ], [ %best_yres.097, %for.body.cleanup_crit_edge ], [ %17, %if.then25 ], [ %best_yres.097, %if.end.cleanup_crit_edge ]
  %inc = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %cmp94.not, label %for.end.if.end39_crit_edge, label %if.then33

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_dist.2)
  %cmp34 = icmp eq i32 %best_dist.2, -1
  br i1 %cmp34, label %if.then33.cleanup48_crit_edge, label %if.end36

if.then33.cleanup48_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

if.end36:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %best_xres.2, ptr %var, align 4
  %yres38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %20 = ptrtoint ptr %yres38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %best_yres.2, ptr %yres38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %for.end.if.end39_crit_edge, %entry.if.end39_crit_edge
  %call = tail call fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %var, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp40 = icmp slt i32 %call, 0
  br i1 %cmp40, label %if.end39.cleanup48_crit_edge, label %if.end42

if.end39.cleanup48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

if.end42:                                         ; preds = %if.end39
  %forced_fourcc = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %forced_fourcc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %forced_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end42.if.end47_crit_edge, label %land.lhs.true

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end42
  %grayscale.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %23 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp ugt i32 %24, 1
  br i1 %cmp.i, label %land.lhs.true.sh_mobile_format_fourcc.exit_crit_edge, label %if.end.i

land.lhs.true.sh_mobile_format_fourcc.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_fourcc.exit

if.end.i:                                         ; preds = %land.lhs.true
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %25 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %26, label %if.end.i.cleanup48_crit_edge [
    i32 16, label %if.end.i.sh_mobile_format_fourcc.exit_crit_edge
    i32 24, label %sw.bb2.i
    i32 32, label %sw.bb3.i
  ]

if.end.i.sh_mobile_format_fourcc.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_fourcc.exit

if.end.i.cleanup48_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_fourcc.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_fourcc.exit

sh_mobile_format_fourcc.exit:                     ; preds = %sw.bb3.i, %sw.bb2.i, %if.end.i.sh_mobile_format_fourcc.exit_crit_edge, %land.lhs.true.sh_mobile_format_fourcc.exit_crit_edge
  %retval.0.i = phi i32 [ 877807426, %sw.bb3.i ], [ 861030210, %sw.bb2.i ], [ %24, %land.lhs.true.sh_mobile_format_fourcc.exit_crit_edge ], [ 1346520914, %if.end.i.sh_mobile_format_fourcc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %retval.0.i)
  %cmp45.not = icmp eq i32 %22, %retval.0.i
  br i1 %cmp45.not, label %sh_mobile_format_fourcc.exit.if.end47_crit_edge, label %sh_mobile_format_fourcc.exit.cleanup48_crit_edge

sh_mobile_format_fourcc.exit.cleanup48_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

sh_mobile_format_fourcc.exit.if.end47_crit_edge:  ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %sh_mobile_format_fourcc.exit.if.end47_crit_edge, %if.end42.if.end47_crit_edge
  br label %cleanup48

cleanup48:                                        ; preds = %if.end47, %sh_mobile_format_fourcc.exit.cleanup48_crit_edge, %if.end.i.cleanup48_crit_edge, %if.end39.cleanup48_crit_edge, %if.then33.cleanup48_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %if.then33.cleanup48_crit_edge ], [ %call, %if.end39.cleanup48_crit_edge ], [ -22, %sh_mobile_format_fourcc.exit.cleanup48_crit_edge ], [ -22, %if.end.i.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_open(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %open_lock = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #14
  %use_count = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %use_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_lcdc_open.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mobile_lcdc_open, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_lcdc_open.__UNIQUE_ID_ddebug309, ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %7) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_unlock(ptr noundef %open_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_release(ptr noundef %info, i32 noundef %user) #2 align 64 {
entry:
  %var.i = alloca %struct.fb_var_screeninfo, align 4
  %mode.i = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %open_lock = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_lcdc_release.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mobile_lcdc_release, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %use_count = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_lcdc_release.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %5) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %use_count3 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %use_count3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_count3, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %use_count3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %tobool4.not = icmp eq i32 %user, 0
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %do.end
  tail call void @console_lock() #14
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var.i) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode.i) #14
  %10 = call ptr @memset(ptr %mode.i, i32 255, i32 56)
  %use_count.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %9, i32 0, i32 7
  %11 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %if.then5.sh_mobile_fb_reconfig.exit_crit_edge, label %lor.lhs.false.i

if.then5.sh_mobile_fb_reconfig.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_fb_reconfig.exit

lor.lhs.false.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp2.i = icmp eq i32 %12, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %13 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fbcon_par.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %land.lhs.true.i.sh_mobile_fb_reconfig.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.sh_mobile_fb_reconfig.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_fb_reconfig.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %var3.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  call void @fb_var_to_videomode(ptr noundef nonnull %mode.i, ptr noundef %var3.i) #14
  %mode4.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %9, i32 0, i32 29, i32 2
  %call.i = call i32 @fb_mode_is_equal(ptr noundef %mode4.i, ptr noundef nonnull %mode.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.sh_mobile_fb_reconfig.exit_crit_edge

if.end.i.sh_mobile_fb_reconfig.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_fb_reconfig.exit

if.end7.i:                                        ; preds = %if.end.i
  %display.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %9, i32 0, i32 29
  %15 = call ptr @memcpy(ptr %var.i, ptr %var3.i, i32 160)
  call void @fb_videomode_to_var(ptr noundef nonnull %var.i, ptr noundef %mode4.i) #14
  %16 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %display.i, align 4
  %width12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var.i, i32 0, i32 15
  %18 = ptrtoint ptr %width12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %width12.i, align 4
  %height.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %9, i32 0, i32 29, i32 1
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %height14.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var.i, i32 0, i32 14
  %21 = ptrtoint ptr %height14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height14.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var.i, i32 0, i32 13
  %22 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %activate.i, align 4
  %call15.i = call i32 @fb_set_var(ptr noundef %info, ptr noundef nonnull %var.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end7.i.sh_mobile_fb_reconfig.exit_crit_edge, label %if.end18.i

if.end7.i.sh_mobile_fb_reconfig.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_fb_reconfig.exit

if.end18.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @fbcon_update_vcs(ptr noundef %info, i1 noundef zeroext true) #14
  br label %sh_mobile_fb_reconfig.exit

sh_mobile_fb_reconfig.exit:                       ; preds = %if.end18.i, %if.end7.i.sh_mobile_fb_reconfig.exit_crit_edge, %if.end.i.sh_mobile_fb_reconfig.exit_crit_edge, %land.lhs.true.i.sh_mobile_fb_reconfig.exit_crit_edge, %if.then5.sh_mobile_fb_reconfig.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode.i) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var.i) #14
  call void @console_unlock() #14
  br label %if.end6

if.end6:                                          ; preds = %sh_mobile_fb_reconfig.exit, %do.end.if.end6_crit_edge
  call void @mutex_unlock(ptr noundef %open_lock) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @sh_mobile_lcdc_stop(ptr noundef %3)
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp ugt i32 %5, 1
  br i1 %cmp.i, label %sh_mobile_format_fourcc.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %7, label %if.end.i.for.cond.8.i_crit_edge [
    i32 16, label %if.end.i.sh_mobile_format_info.exit_crit_edge
    i32 24, label %if.end.i.cleanup.fold.split.i_crit_edge
    i32 32, label %if.end.i.cleanup.fold.split8.i_crit_edge
  ]

if.end.i.cleanup.fold.split8.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split8.i

if.end.i.cleanup.fold.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split.i

if.end.i.sh_mobile_format_info.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

if.end.i.for.cond.8.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.8.i

sh_mobile_format_fourcc.exit:                     ; preds = %entry
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %5, label %sh_mobile_format_fourcc.exit.for.cond.8.i_crit_edge [
    i32 1346520914, label %sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge
    i32 861030210, label %sh_mobile_format_fourcc.exit.cleanup.fold.split.i_crit_edge
    i32 877807426, label %sh_mobile_format_fourcc.exit.cleanup.fold.split8.i_crit_edge
    i32 842094158, label %cleanup.fold.split9.i
    i32 825382478, label %cleanup.fold.split10.i
    i32 909203022, label %cleanup.fold.split11.i
    i32 825644622, label %cleanup.fold.split12.i
    i32 875714126, label %cleanup.fold.split13.i
    i32 842290766, label %cleanup.fold.split14.i
  ]

sh_mobile_format_fourcc.exit.cleanup.fold.split8.i_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split8.i

sh_mobile_format_fourcc.exit.cleanup.fold.split.i_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split.i

sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

sh_mobile_format_fourcc.exit.for.cond.8.i_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.8.i

for.cond.8.i:                                     ; preds = %sh_mobile_format_fourcc.exit.for.cond.8.i_crit_edge, %if.end.i.for.cond.8.i_crit_edge
  br label %sh_mobile_format_info.exit

cleanup.fold.split.i:                             ; preds = %sh_mobile_format_fourcc.exit.cleanup.fold.split.i_crit_edge, %if.end.i.cleanup.fold.split.i_crit_edge
  br label %sh_mobile_format_info.exit

cleanup.fold.split8.i:                            ; preds = %sh_mobile_format_fourcc.exit.cleanup.fold.split8.i_crit_edge, %if.end.i.cleanup.fold.split8.i_crit_edge
  br label %sh_mobile_format_info.exit

cleanup.fold.split9.i:                            ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split10.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split11.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split12.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split13.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split14.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

sh_mobile_format_info.exit:                       ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %for.cond.8.i, %sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge, %if.end.i.sh_mobile_format_info.exit_crit_edge
  %retval.0.i65 = phi ptr [ @sh_mobile_format_infos, %sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge ], [ null, %for.cond.8.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %cleanup.fold.split14.i ], [ @sh_mobile_format_infos, %if.end.i.sh_mobile_format_info.exit_crit_edge ]
  %format = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i65, ptr %format, align 4
  %colorspace = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 27
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %colorspace, align 4
  %colorspace3 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %colorspace3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %colorspace3, align 4
  %14 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %var, align 4
  %xres5 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %xres5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %xres5, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres_virtual, align 4
  %xres_virtual7 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %xres_virtual7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %xres_virtual7, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres, align 4
  %yres9 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %yres9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %yres9, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres_virtual, align 4
  %yres_virtual11 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 20
  %25 = ptrtoint ptr %yres_virtual11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %yres_virtual11, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i65, i32 0, i32 2
  %26 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  %28 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres_virtual, align 4
  br i1 %tobool.not, label %if.else, label %sh_mobile_format_info.exit.if.end_crit_edge

sh_mobile_format_info.exit.if.end_crit_edge:      ; preds = %sh_mobile_format_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %sh_mobile_format_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bpp = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i65, i32 0, i32 1
  %30 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bpp, align 4
  %mul = mul i32 %31, %29
  %div64 = lshr i32 %mul, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %sh_mobile_format_info.exit.if.end_crit_edge
  %.sink = phi i32 [ %div64, %if.else ], [ %29, %sh_mobile_format_info.exit.if.end_crit_edge ]
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %32, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call20 = tail call fastcc i32 @sh_mobile_lcdc_start(ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #17
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %32, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %40 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %line_length, align 4
  %41 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i67 = icmp ult i32 %42, 2
  %spec.select = select i1 %cmp.i67, i32 0, i32 5
  %spec.select77 = select i1 %cmp.i67, i32 2, i32 6
  %43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select77, ptr %45, align 4
  ret i32 %call20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %0 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pseudo_palette, align 4
  %red1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %sub = sub i32 16, %3
  %shr = lshr i32 %red, %sub
  %green3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %4 = ptrtoint ptr %length4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length4, align 4
  %sub5 = sub i32 16, %5
  %shr6 = lshr i32 %green, %sub5
  %blue8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %6 = ptrtoint ptr %length9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length9, align 4
  %sub10 = sub i32 16, %7
  %shr11 = lshr i32 %blue, %sub10
  %transp13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %8 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length14, align 4
  %sub15 = sub i32 16, %9
  %shr16 = lshr i32 %transp, %sub15
  %10 = ptrtoint ptr %red1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %red1, align 4
  %shl = shl i32 %shr, %11
  %12 = ptrtoint ptr %green3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %green3, align 4
  %shl22 = shl i32 %shr6, %13
  %or = or i32 %shl22, %shl
  %14 = ptrtoint ptr %blue8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blue8, align 4
  %shl26 = shl i32 %shr11, %15
  %or27 = or i32 %or, %shl26
  %16 = ptrtoint ptr %transp13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transp13, align 4
  %shl31 = shl i32 %shr16, %17
  %or32 = or i32 %or27, %shl31
  %arrayidx = getelementptr i32, ptr %1, i32 %regno
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_blank(i32 noundef %blank, ptr noundef %info) #2 align 64 {
entry:
  %rect = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cmp = icmp sgt i32 %blank, 0
  br i1 %cmp, label %land.lhs.true, label %entry.land.lhs.true3_crit_edge

entry.land.lhs.true3_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %blank_status = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %blank_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blank_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rect) #14
  %6 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %8 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %10 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %11 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rect, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %6, align 4
  %xres = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %7, align 4
  %yres = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %8, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %9, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %10, align 4
  call void @sys_fillrect(ptr noundef %info, ptr noundef nonnull %rect) #14
  %fbdefio1.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %21 = ptrtoint ptr %fbdefio1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fbdefio1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then.sh_mobile_lcdc_fillrect.exit_crit_edge, label %if.then.i.i

if.then.sh_mobile_lcdc_fillrect.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_fillrect.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %deferred_work.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %deferred_work.i.i, i32 noundef %24) #14
  br label %sh_mobile_lcdc_fillrect.exit

sh_mobile_lcdc_fillrect.exit:                     ; preds = %if.then.i.i, %if.then.sh_mobile_lcdc_fillrect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rect) #14
  br label %if.end

if.end:                                           ; preds = %sh_mobile_lcdc_fillrect.exit, %land.lhs.true.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blank)
  %cmp2 = icmp ult i32 %blank, 2
  br i1 %cmp2, label %if.end.land.lhs.true3_crit_edge, label %land.lhs.true9

if.end.land.lhs.true3_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end.land.lhs.true3_crit_edge, %entry.land.lhs.true3_crit_edge
  %blank_status4 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %blank_status4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blank_status4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp5 = icmp sgt i32 %27, 1
  br i1 %cmp5, label %if.then6, label %land.lhs.true3.if.end16_crit_edge

land.lhs.true3.if.end16_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then6:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sh_mobile_lcdc_clk_on(ptr noundef %3)
  br label %if.end16

land.lhs.true9:                                   ; preds = %if.end
  %28 = ptrtoint ptr %blank_status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blank_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp11 = icmp slt i32 %29, 2
  br i1 %cmp11, label %if.then12, label %land.lhs.true9.if.end16_crit_edge

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true9
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %30 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fbdefio, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.then13, label %if.then12.if.end15_crit_edge

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 1128
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %37 = or i32 %36, -16711680
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %41, i32 1128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %37) #14, !srcloc !185
  %vsync_completion.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 14
  %call3.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %vsync_completion.i, i32 noundef 10) #14
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %45, i32 1128
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #14, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %47 = or i32 %46, -16711680
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %add.ptr.i8.i33 = getelementptr i8, ptr %51, i32 1128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i33, i32 %47) #14, !srcloc !185
  %call3.i35 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %vsync_completion.i, i32 noundef 10) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then12.if.end15_crit_edge
  %hw_usecnt.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  call void @llvm.prefetch.p0(ptr %hw_usecnt.i, i32 1, i32 3, i32 1) #14
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt.i, ptr %hw_usecnt.i, i32 1, ptr elementtype(i32) %hw_usecnt.i) #14, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %52, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end15.if.end16_crit_edge

if.end15.if.end16_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 3
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 5) #14
  %dot_clk.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %dot_clk.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dot_clk.i, align 4
  call void @clk_disable(ptr noundef %56) #14
  call void @clk_unprepare(ptr noundef %56) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.end15.if.end16_crit_edge, %land.lhs.true9.if.end16_crit_edge, %if.then6, %land.lhs.true3.if.end16_crit_edge
  %blank_status17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 32
  %57 = ptrtoint ptr %blank_status17 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %blank, ptr %blank_status17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_pan(ptr nocapture noundef readonly %var, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %format = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %11, %9
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %12 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %13
  %bpp = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpp, align 4
  %mul2 = mul i32 %add, %15
  %div88 = lshr i32 %mul2, 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bpp4 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bpp4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %17)
  %cmp = icmp ult i32 %17, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp7 = icmp ult i32 %17, 16
  %yoffset9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %18 = ptrtoint ptr %yoffset9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset9, align 4
  %xres_virtual10 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %xres_virtual10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xres_virtual10, align 4
  %mul11 = mul i32 %21, %19
  %xoffset12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %22 = ptrtoint ptr %xoffset12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xoffset12, align 4
  %add13 = add i32 %mul11, %23
  %24 = zext i1 %cmp7 to i32
  %div1589 = lshr i32 %19, %24
  %mul17 = shl i32 %21, 1
  %mul18 = mul i32 %mul17, %div1589
  %25 = zext i1 %cmp to i32
  %div1990 = lshr i32 %mul18, %25
  %mul21 = shl i32 %23, 1
  %div2291 = lshr i32 %mul21, %25
  %add23 = add i32 %div1990, %div2291
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %y_offset.0 = phi i32 [ %add13, %if.else ], [ %div88, %if.then ]
  %c_offset.0 = phi i32 [ %add23, %if.else ], [ 0, %if.then ]
  %pan_y_offset = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %pan_y_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pan_y_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y_offset.0, i32 %27)
  %cmp24 = icmp eq i32 %y_offset.0, %27
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %dma_handle = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_handle, align 4
  %add27 = add i32 %29, %y_offset.0
  %xres_virtual29 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %xres_virtual29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xres_virtual29, align 4
  %yres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 20
  %32 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yres_virtual, align 4
  %mul30 = mul i32 %33, %31
  %add31 = add i32 %29, %c_offset.0
  %add32 = add i32 %add31, %mul30
  %base_addr_y33 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 22
  %34 = ptrtoint ptr %base_addr_y33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add27, ptr %base_addr_y33, align 4
  %base_addr_c34 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %base_addr_c34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add32, ptr %base_addr_c34, align 4
  %36 = ptrtoint ptr %pan_y_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %y_offset.0, ptr %pan_y_offset, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %reg_offs.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %40, i32 8
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %42
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %43 = tail call i32 @llvm.bswap.i32(i32 %add27) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %43) #14, !srcloc !185
  %44 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %format, align 4
  %yuv37 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %yuv37 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %yuv37, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool38.not = icmp eq i8 %47, 0
  br i1 %tobool38.not, label %if.end26.if.end40_crit_edge, label %if.then39

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i93 = getelementptr i32, ptr %53, i32 9
  %54 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %51, i32 %55
  %add.ptr1.i95 = getelementptr i8, ptr %add.ptr.i94, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %56 = tail call i32 @llvm.bswap.i32(i32 %add32) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i95, i32 %56) #14, !srcloc !185
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end26.if.end40_crit_edge
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %add.ptr.i96 = getelementptr i8, ptr %58, i32 1144
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #14, !srcloc !182
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %cfg.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp.i.not = icmp eq i32 %64, 2
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  br i1 %cmp.i.not, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %xor = xor i32 %60, 131072
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %add.ptr.i97 = getelementptr i8, ptr %68, i32 1144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %69 = tail call i32 @llvm.bswap.i32(i32 %xor) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %69) #14, !srcloc !185
  br label %if.end48

if.else45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %xor47 = xor i32 %60, 2
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %66, align 4
  %add.ptr.i98 = getelementptr i8, ptr %71, i32 1144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %72 = tail call i32 @llvm.bswap.i32(i32 %xor47) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %72) #14, !srcloc !185
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then43
  %fbdefio1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %73 = ptrtoint ptr %fbdefio1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fbdefio1.i, align 4
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %if.end48.cleanup_crit_edge, label %if.then.i

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %deferred_work.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %77 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %deferred_work.i, i32 noundef %76) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end48.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #14
  %fbdefio1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge, label %if.then.i

entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_deferred_io_touch.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %deferred_work.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %deferred_work.i, i32 noundef %3) #14
  br label %sh_mobile_lcdc_deferred_io_touch.exit

sh_mobile_lcdc_deferred_io_touch.exit:            ; preds = %if.then.i, %entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #14
  %fbdefio1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge, label %if.then.i

entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_deferred_io_touch.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %deferred_work.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %deferred_work.i, i32 noundef %3) #14
  br label %sh_mobile_lcdc_deferred_io_touch.exit

sh_mobile_lcdc_deferred_io_touch.exit:            ; preds = %if.then.i, %entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #14
  %fbdefio1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge, label %if.then.i

entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_deferred_io_touch.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %deferred_work.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %deferred_work.i, i32 noundef %3) #14
  br label %sh_mobile_lcdc_deferred_io_touch.exit

sh_mobile_lcdc_deferred_io_touch.exit:            ; preds = %if.then.i, %entry.sh_mobile_lcdc_deferred_io_touch.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074021920, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074021920
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %7 = or i32 %6, -16711680
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %11, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #14, !srcloc !185
  %vsync_completion.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 14
  %call3.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %vsync_completion.i, i32 noundef 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %..i = select i1 %tobool.not.i, i32 -110, i32 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ %..i, %sw.bb ], [ -515, %entry.sw.epilog_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %fb_mem = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fb_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_mem, align 4
  %dma_handle = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_handle, align 4
  %fb_size = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fb_size, align 4
  %call = tail call i32 @dma_mmap_attrs(ptr noundef %5, ptr noundef %vma, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_mode_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_update_vcs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_stop(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %k.088 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %enabled = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %info = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 27
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end27_crit_edge, label %land.lhs.true

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbdefio, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end27_crit_edge, label %if.then5

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then5:                                         ; preds = %land.lhs.true
  %frame_end = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 12
  %6 = ptrtoint ptr %frame_end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %frame_end, align 4
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %deferred_work, i32 noundef 0) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1082) #14
  %8 = ptrtoint ptr %frame_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end14, label %if.then5.do.end23_crit_edge

if.then5.do.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

if.end14:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %frame_end_wait = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 13
  %call1686 = call i32 @prepare_to_wait_event(ptr noundef %frame_end_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %11 = ptrtoint ptr %frame_end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not87 = icmp eq i32 %12, 0
  br i1 %tobool18.not87, label %if.end14.cleanup_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  call void @schedule() #14
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %frame_end_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %13 = ptrtoint ptr %frame_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_end, align 4
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end14.for.end_crit_edge
  call void @finish_wait(ptr noundef %frame_end_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end23

do.end23:                                         ; preds = %for.end, %if.then5.do.end23_crit_edge
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  call void @fb_deferred_io_cleanup(ptr noundef %16) #14
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %fbdefio26 = getelementptr inbounds %struct.fb_info, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %fbdefio26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fbdefio26, align 4
  call fastcc void @sh_mobile_lcdc_clk_on(ptr noundef %priv)
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %bl = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 25
  %20 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bl, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %if.end27.if.end33_crit_edge, label %if.then29

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then29:                                        ; preds = %if.end27
  %power = getelementptr inbounds %struct.backlight_properties, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %power, align 8
  %23 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %24, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #14
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then29.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.then29.backlight_update_status.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.then29
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 %28(ptr noundef %24) #14
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.then29.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #14
  br label %if.end33

if.end33:                                         ; preds = %backlight_update_status.exit, %if.end27.if.end33_crit_edge
  %cfg.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 2
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 4
  %display_off.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %30, i32 0, i32 8, i32 5
  %31 = ptrtoint ptr %display_off.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %display_off.i, align 4
  %tobool.not.i77 = icmp eq ptr %32, null
  br i1 %tobool.not.i77, label %if.end33.if.end.i_crit_edge, label %if.then.i78

if.end33.if.end.i_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i78:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void %32() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i78, %if.end33.if.end.i_crit_edge
  %tx_dev.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.088, i32 1
  %33 = ptrtoint ptr %tx_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_dev.i, align 4
  %tobool2.not.i79 = icmp eq ptr %34, null
  br i1 %tobool2.not.i79, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ops.i80 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i80, align 4
  %display_off5.i = getelementptr inbounds %struct.sh_mobile_lcdc_entity_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %display_off5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %display_off5.i, align 4
  call void %38(ptr noundef nonnull %34) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then3.i, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.088, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end34, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end34:                                        ; preds = %for.inc
  %started = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 8
  %39 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not = icmp eq i32 %40, 0
  br i1 %tobool35.not, label %for.end34.if.end38_crit_edge, label %if.then36

for.end34.if.end38_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then36:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sh_mobile_lcdc_start_stop(ptr noundef %priv, i32 noundef 0)
  %41 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %started, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %for.end34.if.end38_crit_edge
  %hw_usecnt.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 3
  %dot_clk.i = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 4
  %enabled44 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 5
  %42 = ptrtoint ptr %enabled44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %enabled44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool45.not = icmp eq i32 %43, 0
  br i1 %tobool45.not, label %if.end38.for.inc48_crit_edge, label %if.then46

if.end38.for.inc48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc48

if.then46:                                        ; preds = %if.end38
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  call void @llvm.prefetch.p0(ptr %hw_usecnt.i, i32 1, i32 3, i32 1) #14
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt.i, ptr %hw_usecnt.i, i32 1, ptr elementtype(i32) %hw_usecnt.i) #14, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, -1
  br i1 %cmp.i, label %if.then.i82, label %if.then46.for.inc48_crit_edge

if.then46.for.inc48_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc48

if.then.i82:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %call.i.i81 = call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #14
  %47 = ptrtoint ptr %dot_clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dot_clk.i, align 4
  call void @clk_disable(ptr noundef %48) #14
  call void @clk_unprepare(ptr noundef %48) #14
  br label %for.inc48

for.inc48:                                        ; preds = %if.then.i82, %if.then46.for.inc48_crit_edge, %if.end38.for.inc48_crit_edge
  %enabled44.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 5
  %49 = ptrtoint ptr %enabled44.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enabled44.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool45.not.1 = icmp eq i32 %50, 0
  br i1 %tobool45.not.1, label %for.inc48.for.inc48.1_crit_edge, label %if.then46.1

for.inc48.for.inc48.1_crit_edge:                  ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc48.1

if.then46.1:                                      ; preds = %for.inc48
  %call.i.i.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  call void @llvm.prefetch.p0(ptr %hw_usecnt.i, i32 1, i32 3, i32 1) #14
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt.i, ptr %hw_usecnt.i, i32 1, ptr elementtype(i32) %hw_usecnt.i) #14, !srcloc !180
  %asmresult.i.i.i.i.1 = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.1)
  %cmp.i.1 = icmp eq i32 %asmresult.i.i.i.i.1, -1
  br i1 %cmp.i.1, label %if.then.i82.1, label %if.then46.1.for.inc48.1_crit_edge

if.then46.1.for.inc48.1_crit_edge:                ; preds = %if.then46.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc48.1

if.then.i82.1:                                    ; preds = %if.then46.1
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %call.i.i81.1 = call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 5) #14
  %54 = ptrtoint ptr %dot_clk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dot_clk.i, align 4
  call void @clk_disable(ptr noundef %55) #14
  call void @clk_unprepare(ptr noundef %55) #14
  br label %for.inc48.1

for.inc48.1:                                      ; preds = %if.then.i82.1, %if.then46.1.for.inc48.1_crit_edge, %for.inc48.for.inc48.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_clk_on(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_usecnt = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_usecnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %hw_usecnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_usecnt, ptr %hw_usecnt, i32 1, ptr elementtype(i32) %hw_usecnt) #14, !srcloc !190
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %dot_clk = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 4
  %1 = ptrtoint ptr %dot_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dot_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %2) #14
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %dev = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #14
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_start_stop(ptr nocapture noundef readonly %priv, i32 noundef %start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1140
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !182
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %3, 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %6) #14, !srcloc !185
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %3, -2
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %add.ptr.i46 = getelementptr i8, ptr %8, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %9 = tail call i32 @llvm.bswap.i32(i32 %and) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %9) #14, !srcloc !185
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %add.ptr.i47 = getelementptr i8, ptr %11, i32 1140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #14, !srcloc !182
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %arrayidx = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0
  %enabled = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 5
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enabled, align 4
  %and2 = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %while.cond.preheader

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end
  %reg_offs.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i50 = getelementptr i32, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i50, align 4
  %add.ptr.i4851 = getelementptr i8, ptr %19, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4851) #14, !srcloc !182
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %and852 = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and852)
  %cmp1053 = icmp eq i32 %and852, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and852)
  %cmp1554 = icmp eq i32 %and852, 0
  %or.cond4455 = select i1 %tobool.not, i1 %cmp1554, i1 %cmp1053
  br i1 %or.cond4455, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.do.end_crit_edge

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !193
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %31, i32 15
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %29, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #14, !srcloc !182
  %35 = lshr i32 %34, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %and8 = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8)
  %cmp10 = icmp eq i32 %and8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp15 = icmp eq i32 %and8, 0
  %or.cond44 = select i1 %tobool.not, i1 %cmp15, i1 %cmp10
  br i1 %or.cond44, label %do.end.for.inc_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %add.ptr.i47.1 = getelementptr i8, ptr %37, i32 1140
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.1) #14, !srcloc !182
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %arrayidx.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1
  %enabled.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 5
  %40 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enabled.1, align 4
  %and2.1 = and i32 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1)
  %tobool3.not.1 = icmp eq i32 %and2.1, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %while.cond.preheader.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

while.cond.preheader.1:                           ; preds = %for.inc
  %reg_offs.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %reg_offs.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_offs.i.1, align 4
  %arrayidx.i50.1 = getelementptr i32, ptr %47, i32 15
  %48 = ptrtoint ptr %arrayidx.i50.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i50.1, align 4
  %add.ptr.i4851.1 = getelementptr i8, ptr %45, i32 %49
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4851.1) #14, !srcloc !182
  %51 = lshr i32 %50, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %and852.1 = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and852.1)
  %cmp1053.1 = icmp eq i32 %and852.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and852.1)
  %cmp1554.1 = icmp eq i32 %and852.1, 0
  %or.cond4455.1 = select i1 %tobool.not, i1 %cmp1554.1, i1 %cmp1053.1
  br i1 %or.cond4455.1, label %while.cond.preheader.1.for.inc.1_crit_edge, label %while.cond.preheader.1.do.end.1_crit_edge

while.cond.preheader.1.do.end.1_crit_edge:        ; preds = %while.cond.preheader.1
  br label %do.end.1

while.cond.preheader.1.for.inc.1_crit_edge:       ; preds = %while.cond.preheader.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

do.end.1:                                         ; preds = %do.end.1.do.end.1_crit_edge, %while.cond.preheader.1.do.end.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !193
  %52 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.1, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %reg_offs.i.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_offs.i.1, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %57, i32 15
  %58 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.1, align 4
  %add.ptr.i48.1 = getelementptr i8, ptr %55, i32 %59
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.1) #14, !srcloc !182
  %61 = lshr i32 %60, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %and8.1 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8.1)
  %cmp10.1 = icmp eq i32 %and8.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %cmp15.1 = icmp eq i32 %and8.1, 0
  %or.cond44.1 = select i1 %tobool.not, i1 %cmp15.1, i1 %cmp10.1
  br i1 %or.cond44.1, label %do.end.1.for.inc.1_crit_edge, label %do.end.1.do.end.1_crit_edge

do.end.1.do.end.1_crit_edge:                      ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.1

do.end.1.for.inc.1_crit_edge:                     ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1.for.inc.1_crit_edge, %while.cond.preheader.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  br i1 %tobool.not, label %if.then26, label %for.inc.1.if.end27_crit_edge

for.inc.1.if.end27_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then26:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 4
  %add.ptr.i49 = getelementptr i8, ptr %63, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 16777216) #14, !srcloc !185
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.inc.1.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %1)
  %cmp = icmp ugt i32 %1, 1920
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %2 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1080
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp3 = icmp ult i32 %5, %1
  br i1 %cmp3, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %xres_virtual, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %7 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp9 = icmp ult i32 %8, %3
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %yres_virtual, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %grayscale.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %10 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp ult i32 %11, 2
  br i1 %cmp.i, label %if.else27, label %if.then14

if.then14:                                        ; preds = %if.end13
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %11, label %if.then14.return_crit_edge [
    i32 1346520914, label %if.then14.if.end18_crit_edge
    i32 861030210, label %cleanup.fold.split.i
    i32 877807426, label %cleanup.fold.split8.i
    i32 842094158, label %cleanup.fold.split9.i
    i32 825382478, label %cleanup.fold.split10.i
    i32 909203022, label %cleanup.fold.split11.i
    i32 825644622, label %cleanup.fold.split12.i
    i32 875714126, label %cleanup.fold.split13.i
    i32 842290766, label %cleanup.fold.split14.i
  ]

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then14.return_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cleanup.fold.split.i:                             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split8.i:                            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split9.i:                            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split10.i:                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split11.i:                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split12.i:                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split13.i:                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.fold.split14.i:                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18:                                         ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %if.then14.if.end18_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %cleanup.fold.split.i ], [ @sh_mobile_format_infos, %if.then14.if.end18_crit_edge ]
  %bpp = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i.ph, i32 0, i32 1
  %13 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bpp, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bits_per_pixel, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i.ph, i32 0, i32 2
  %16 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  %colorspace = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 27
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %colorspace, align 4
  br label %if.end95

if.else:                                          ; preds = %if.end18
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp22.not = icmp eq i32 %20, 3
  br i1 %cmp22.not, label %if.else.if.end95_crit_edge, label %if.then23

if.else.if.end95_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %colorspace, align 4
  br label %if.end95

if.else27:                                        ; preds = %if.end13
  %bits_per_pixel28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %22 = ptrtoint ptr %bits_per_pixel28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits_per_pixel28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %23)
  %cmp29 = icmp ult i32 %23, 17
  br i1 %cmp29, label %if.else27.if.end87_crit_edge, label %if.else42

if.else27.if.end87_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.else42:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %23)
  %cmp44 = icmp ult i32 %23, 25
  br i1 %cmp44, label %if.else42.if.end87_crit_edge, label %if.else63

if.else42.if.end87_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.else63:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %23)
  %cmp65 = icmp ult i32 %23, 33
  br i1 %cmp65, label %if.else63.if.end87_crit_edge, label %if.else63.return_crit_edge

if.else63.return_crit_edge:                       ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.else63.if.end87_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.end87:                                         ; preds = %if.else63.if.end87_crit_edge, %if.else42.if.end87_crit_edge, %if.else27.if.end87_crit_edge
  %.sink173 = phi i32 [ 16, %if.else27.if.end87_crit_edge ], [ 24, %if.else42.if.end87_crit_edge ], [ 32, %if.else63.if.end87_crit_edge ]
  %.sink172 = phi i32 [ 11, %if.else27.if.end87_crit_edge ], [ 16, %if.else42.if.end87_crit_edge ], [ 16, %if.else63.if.end87_crit_edge ]
  %.sink171 = phi i32 [ 5, %if.else27.if.end87_crit_edge ], [ 8, %if.else42.if.end87_crit_edge ], [ 8, %if.else63.if.end87_crit_edge ]
  %.sink169 = phi i32 [ 6, %if.else27.if.end87_crit_edge ], [ 8, %if.else42.if.end87_crit_edge ], [ 8, %if.else63.if.end87_crit_edge ]
  %.sink167 = phi i32 [ 0, %if.else27.if.end87_crit_edge ], [ 0, %if.else42.if.end87_crit_edge ], [ 24, %if.else63.if.end87_crit_edge ]
  %.sink = phi i32 [ 0, %if.else27.if.end87_crit_edge ], [ 0, %if.else42.if.end87_crit_edge ], [ 8, %if.else63.if.end87_crit_edge ]
  %24 = ptrtoint ptr %bits_per_pixel28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink173, ptr %bits_per_pixel28, align 4
  %red47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %25 = ptrtoint ptr %red47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink172, ptr %red47, align 4
  %length50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %length50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink171, ptr %length50, align 4
  %green51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %27 = ptrtoint ptr %green51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink171, ptr %green51, align 4
  %length54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %length54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink169, ptr %length54, align 4
  %blue55 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %29 = ptrtoint ptr %blue55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %blue55, align 4
  %length58 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %length58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink171, ptr %length58, align 4
  %transp59 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %31 = ptrtoint ptr %transp59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink167, ptr %transp59, align 4
  %length62 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %length62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %length62, align 4
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %msb_right, align 4
  %msb_right90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %msb_right90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %msb_right90, align 4
  %msb_right92 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %msb_right92 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msb_right92, align 4
  %msb_right94 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %36 = ptrtoint ptr %msb_right94 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msb_right94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.then23, %if.else.if.end95_crit_edge, %if.then20
  %37 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xres_virtual, align 4
  %39 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %40, %38
  %bits_per_pixel98 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %41 = ptrtoint ptr %bits_per_pixel98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bits_per_pixel98, align 4
  %mul99 = mul i32 %mul, %42
  %div159 = lshr i32 %mul99, 3
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div159, i32 %44)
  %cmp100 = icmp ugt i32 %div159, %44
  %. = select i1 %cmp100, i32 -22, i32 0
  br label %return

return:                                           ; preds = %if.end95, %if.else63.return_crit_edge, %if.then14.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.else63.return_crit_edge ], [ %., %if.end95 ], [ -22, %if.then14.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %var, ptr noundef %info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %sh_mobile_format_fourcc.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %if.end.i.for.cond.8.i_crit_edge [
    i32 16, label %if.end.i.sh_mobile_format_info.exit_crit_edge
    i32 24, label %if.end.i.cleanup.fold.split.i_crit_edge
    i32 32, label %if.end.i.cleanup.fold.split8.i_crit_edge
  ]

if.end.i.cleanup.fold.split8.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split8.i

if.end.i.cleanup.fold.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split.i

if.end.i.sh_mobile_format_info.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

if.end.i.for.cond.8.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.8.i

sh_mobile_format_fourcc.exit:                     ; preds = %entry
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %3, label %sh_mobile_format_fourcc.exit.for.cond.8.i_crit_edge [
    i32 1346520914, label %sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge
    i32 861030210, label %sh_mobile_format_fourcc.exit.cleanup.fold.split.i_crit_edge
    i32 877807426, label %sh_mobile_format_fourcc.exit.cleanup.fold.split8.i_crit_edge
    i32 842094158, label %cleanup.fold.split9.i
    i32 825382478, label %cleanup.fold.split10.i
    i32 909203022, label %cleanup.fold.split11.i
    i32 825644622, label %cleanup.fold.split12.i
    i32 875714126, label %cleanup.fold.split13.i
    i32 842290766, label %cleanup.fold.split14.i
  ]

sh_mobile_format_fourcc.exit.cleanup.fold.split8.i_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split8.i

sh_mobile_format_fourcc.exit.cleanup.fold.split.i_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.fold.split.i

sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

sh_mobile_format_fourcc.exit.for.cond.8.i_crit_edge: ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.8.i

for.cond.8.i:                                     ; preds = %sh_mobile_format_fourcc.exit.for.cond.8.i_crit_edge, %if.end.i.for.cond.8.i_crit_edge
  br label %sh_mobile_format_info.exit

cleanup.fold.split.i:                             ; preds = %sh_mobile_format_fourcc.exit.cleanup.fold.split.i_crit_edge, %if.end.i.cleanup.fold.split.i_crit_edge
  br label %sh_mobile_format_info.exit

cleanup.fold.split8.i:                            ; preds = %sh_mobile_format_fourcc.exit.cleanup.fold.split8.i_crit_edge, %if.end.i.cleanup.fold.split8.i_crit_edge
  br label %sh_mobile_format_info.exit

cleanup.fold.split9.i:                            ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split10.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split11.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split12.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split13.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

cleanup.fold.split14.i:                           ; preds = %sh_mobile_format_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_format_info.exit

sh_mobile_format_info.exit:                       ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %for.cond.8.i, %sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge, %if.end.i.sh_mobile_format_info.exit_crit_edge
  %retval.0.i54 = phi ptr [ @sh_mobile_format_infos, %sh_mobile_format_fourcc.exit.sh_mobile_format_info.exit_crit_edge ], [ null, %for.cond.8.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %cleanup.fold.split14.i ], [ @sh_mobile_format_infos, %if.end.i.sh_mobile_format_info.exit_crit_edge ]
  %format = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i54, ptr %format, align 4
  %9 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %var, align 4
  %xres3 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %xres3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %xres3, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  %xres_virtual5 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %xres_virtual5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xres_virtual5, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres, align 4
  %yres7 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %yres7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %yres7, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual, align 4
  %yres_virtual9 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %yres_virtual9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %yres_virtual9, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i54, i32 0, i32 2
  %21 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xres_virtual, align 4
  br i1 %tobool.not, label %if.else, label %sh_mobile_format_info.exit.if.end_crit_edge

sh_mobile_format_info.exit.if.end_crit_edge:      ; preds = %sh_mobile_format_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %sh_mobile_format_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bpp = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %retval.0.i54, i32 0, i32 1
  %25 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bpp, align 4
  %mul = mul i32 %26, %24
  %div53 = lshr i32 %mul, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %sh_mobile_format_info.exit.if.end_crit_edge
  %.sink = phi i32 [ %div53, %if.else ], [ %24, %sh_mobile_format_info.exit.if.end_crit_edge ]
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %1)
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %27, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %31 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %line_length, align 4
  %32 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i56 = icmp ult i32 %33, 2
  %spec.select = select i1 %cmp.i56, i32 0, i32 5
  %spec.select66 = select i1 %cmp.i56, i32 2, i32 6
  %34 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select66, ptr %36, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool.not = icmp eq i32 %blank, 0
  %enabled = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 5
  %frombool = zext i1 %tobool.not to i8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enabled, align 4
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %1)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_pan(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %format = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %9, %7
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %10 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %11
  %bpp = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpp, align 4
  %mul2 = mul i32 %add, %13
  %div92 = lshr i32 %mul2, 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bpp4 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpp4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %15)
  %cmp = icmp ult i32 %15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp7 = icmp ult i32 %15, 16
  %yoffset9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %16 = ptrtoint ptr %yoffset9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yoffset9, align 4
  %xres_virtual10 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %xres_virtual10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xres_virtual10, align 4
  %mul11 = mul i32 %19, %17
  %xoffset12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %20 = ptrtoint ptr %xoffset12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xoffset12, align 4
  %add13 = add i32 %mul11, %21
  %22 = zext i1 %cmp7 to i32
  %div1593 = lshr i32 %17, %22
  %mul17 = shl i32 %19, 1
  %mul18 = mul i32 %mul17, %div1593
  %23 = zext i1 %cmp to i32
  %div1994 = lshr i32 %mul18, %23
  %mul21 = shl i32 %21, 1
  %div2295 = lshr i32 %mul21, %23
  %add23 = add i32 %div1994, %div2295
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %y_offset.0 = phi i32 [ %add13, %if.else ], [ %div92, %if.then ]
  %c_offset.0 = phi i32 [ %add23, %if.else ], [ 0, %if.then ]
  %pan_y_offset = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %pan_y_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pan_y_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y_offset.0, i32 %25)
  %cmp24 = icmp eq i32 %y_offset.0, %25
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dma_handle = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_handle, align 4
  %add27 = add i32 %27, %y_offset.0
  %xres_virtual29 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %xres_virtual29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres_virtual29, align 4
  %yres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %yres_virtual, align 4
  %mul30 = mul i32 %31, %29
  %add31 = add i32 %27, %c_offset.0
  %add32 = add i32 %add31, %mul30
  %base_addr_y33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %base_addr_y33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add27, ptr %base_addr_y33, align 4
  %base_addr_c34 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %base_addr_c34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add32, ptr %base_addr_c34, align 4
  %34 = ptrtoint ptr %pan_y_offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %y_offset.0, ptr %pan_y_offset, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %index = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %add36 = add i32 %40, 16
  %shl = shl nuw i32 1, %add36
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %43 = tail call i32 @llvm.bswap.i32(i32 %shl) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %43) #14, !srcloc !185
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index, align 4
  %mul38 = shl i32 %45, 5
  %add40 = add i32 %mul38, 2864
  %46 = ptrtoint ptr %base_addr_y33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_addr_y33, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %add.ptr.i96 = getelementptr i8, ptr %53, i32 %add40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %54 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %54) #14, !srcloc !185
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %add.ptr4.i = getelementptr i8, ptr %60, i32 %add40
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %54) #14, !srcloc !185
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index, align 4
  %mul43 = shl i32 %62, 5
  %add45 = add i32 %mul43, 2868
  %63 = ptrtoint ptr %base_addr_c34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base_addr_c34, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %add.ptr.i97 = getelementptr i8, ptr %70, i32 %add45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %71 = tail call i32 @llvm.bswap.i32(i32 %64) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %71) #14, !srcloc !185
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %add.ptr4.i98 = getelementptr i8, ptr %77, i32 %add45
  %add.ptr5.i99 = getelementptr i8, ptr %add.ptr4.i98, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i99, i32 %71) #14, !srcloc !185
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index, align 4
  %add50 = add i32 %83, 8
  %shl51 = shl nuw i32 1, %add50
  %shl54 = shl nuw i32 1, %83
  %or = or i32 %shl51, %shl54
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  %add.ptr.i100 = getelementptr i8, ptr %85, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %86 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %86) #14, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074021920, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074021920
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %9 = or i32 %8, -16711680
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %9) #14, !srcloc !185
  %vsync_completion.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 14
  %call3.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %vsync_completion.i, i32 noundef 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %..i = select i1 %tobool.not.i, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %sw.bb ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %fb_mem = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %fb_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb_mem, align 4
  %dma_handle = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_handle, align 4
  %fb_size = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fb_size, align 4
  %call = tail call i32 @dma_mmap_attrs(ptr noundef %7, ptr noundef %vma, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %ovl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ovl, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %index = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %add = add i32 %7, 16
  %shl = shl nuw i32 1, %add
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #14, !srcloc !185
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %mul = shl i32 %12, 5
  %add2 = add i32 %mul, 2848
  %13 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ovl, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %add.ptr.i141 = getelementptr i8, ptr %18, i32 %add2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 0) #14, !srcloc !185
  %19 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ovl, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 %add2
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #14, !srcloc !185
  %25 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ovl, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index, align 4
  %add7 = add i32 %30, 8
  %shl8 = shl nuw i32 1, %add7
  %shl11 = shl nuw i32 1, %30
  %or = or i32 %shl8, %shl11
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %add.ptr.i142 = getelementptr i8, ptr %32, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %33) #14, !srcloc !185
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_handle = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 11
  %34 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_handle, align 4
  %base_addr_y = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 12
  %36 = ptrtoint ptr %base_addr_y to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %base_addr_y, align 4
  %xres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 17
  %37 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 19
  %39 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %yres_virtual, align 4
  %mul13 = mul i32 %40, %38
  %add14 = add i32 %mul13, %35
  %base_addr_c = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 13
  %41 = ptrtoint ptr %base_addr_c to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add14, ptr %base_addr_c, align 4
  %mode = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 6
  %42 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %43, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %alpha = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 7
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rop3 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb
  %rop3.sink = phi ptr [ %rop3, %sw.bb17 ], [ %alpha, %sw.bb ]
  %.sink = phi i32 [ -1879048192, %sw.bb17 ], [ -2147483648, %sw.bb ]
  %45 = ptrtoint ptr %rop3.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rop3.sink, align 4
  %shl18 = shl i32 %46, 16
  %or19 = or i32 %shl18, %.sink
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %format.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %or19, %sw.epilog.sink.split ]
  %format20 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 15
  %47 = ptrtoint ptr %format20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %format20, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %50, label %sw.default [
    i32 1346520914, label %sw.epilog.sw.epilog27_crit_edge
    i32 825382478, label %sw.epilog.sw.epilog27_crit_edge165
    i32 825644622, label %sw.epilog.sw.epilog27_crit_edge166
    i32 842290766, label %sw.epilog.sw.epilog27_crit_edge167
    i32 861030210, label %sw.epilog.sw.bb23_crit_edge
    i32 842094158, label %sw.epilog.sw.bb23_crit_edge168
    i32 909203022, label %sw.epilog.sw.bb23_crit_edge169
    i32 875714126, label %sw.epilog.sw.bb23_crit_edge170
  ]

sw.epilog.sw.bb23_crit_edge170:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

sw.epilog.sw.bb23_crit_edge169:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

sw.epilog.sw.bb23_crit_edge168:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

sw.epilog.sw.bb23_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

sw.epilog.sw.epilog27_crit_edge167:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog27

sw.epilog.sw.epilog27_crit_edge166:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog27

sw.epilog.sw.epilog27_crit_edge165:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog27

sw.epilog.sw.epilog27_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog27

sw.bb23:                                          ; preds = %sw.epilog.sw.bb23_crit_edge, %sw.epilog.sw.bb23_crit_edge168, %sw.epilog.sw.bb23_crit_edge169, %sw.epilog.sw.bb23_crit_edge170
  br label %sw.epilog27

sw.default:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.default, %sw.bb23, %sw.epilog.sw.epilog27_crit_edge, %sw.epilog.sw.epilog27_crit_edge165, %sw.epilog.sw.epilog27_crit_edge166, %sw.epilog.sw.epilog27_crit_edge167
  %.sink164 = phi i32 [ 1024, %sw.default ], [ 1792, %sw.bb23 ], [ 1536, %sw.epilog.sw.epilog27_crit_edge ], [ 1536, %sw.epilog.sw.epilog27_crit_edge165 ], [ 1536, %sw.epilog.sw.epilog27_crit_edge166 ], [ 1536, %sw.epilog.sw.epilog27_crit_edge167 ]
  %or26 = or i32 %format.0, %.sink164
  %52 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %50, label %sw.epilog27.sw.epilog42_crit_edge [
    i32 1346520914, label %sw.bb30
    i32 861030210, label %sw.bb32
    i32 877807426, label %sw.bb34
    i32 842094158, label %sw.epilog27.sw.bb36_crit_edge
    i32 825382478, label %sw.epilog27.sw.bb36_crit_edge171
    i32 909203022, label %sw.epilog27.sw.bb38_crit_edge
    i32 825644622, label %sw.epilog27.sw.bb38_crit_edge172
  ]

sw.epilog27.sw.bb38_crit_edge172:                 ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

sw.epilog27.sw.bb38_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

sw.epilog27.sw.bb36_crit_edge171:                 ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb36

sw.epilog27.sw.bb36_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb36

sw.epilog27.sw.epilog42_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog42

sw.bb30:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  %or31 = or i32 %or26, 131
  br label %sw.epilog42

sw.bb32:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  %or33 = or i32 %or26, 139
  br label %sw.epilog42

sw.bb34:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #16
  %or35 = or i32 %or26, 16512
  br label %sw.epilog42

sw.bb36:                                          ; preds = %sw.epilog27.sw.bb36_crit_edge, %sw.epilog27.sw.bb36_crit_edge171
  %or37 = or i32 %or26, 2
  br label %sw.epilog42

sw.bb38:                                          ; preds = %sw.epilog27.sw.bb38_crit_edge, %sw.epilog27.sw.bb38_crit_edge172
  %or39 = or i32 %or26, 1
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.epilog27.sw.epilog42_crit_edge
  %format.2 = phi i32 [ %or39, %sw.bb38 ], [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ %or26, %sw.epilog27.sw.epilog42_crit_edge ]
  %53 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ovl, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %index45 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 3
  %57 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index45, align 4
  %add46 = add i32 %58, 16
  %shl47 = shl nuw i32 1, %add46
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %add.ptr.i143 = getelementptr i8, ptr %60, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %61 = tail call i32 @llvm.bswap.i32(i32 %shl47) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %61) #14, !srcloc !185
  %62 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %index45, align 4
  %mul49 = shl i32 %63, 5
  %add50 = add i32 %mul49, 2848
  %64 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ovl, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %add.ptr.i144 = getelementptr i8, ptr %69, i32 %add50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %70 = tail call i32 @llvm.bswap.i32(i32 %format.2) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %70) #14, !srcloc !185
  %71 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ovl, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %add.ptr4.i145 = getelementptr i8, ptr %76, i32 %add50
  %add.ptr5.i146 = getelementptr i8, ptr %add.ptr4.i145, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i146, i32 %70) #14, !srcloc !185
  %77 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %index45, align 4
  %mul53 = shl i32 %78, 5
  %add55 = add i32 %mul53, 2852
  %yres = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 18
  %79 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %yres, align 4
  %shl56 = shl i32 %80, 16
  %xres = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 16
  %81 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xres, align 4
  %or58 = or i32 %shl56, %82
  %83 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ovl, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %add.ptr.i147 = getelementptr i8, ptr %88, i32 %add55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %89 = tail call i32 @llvm.bswap.i32(i32 %or58) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %89) #14, !srcloc !185
  %90 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ovl, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %add.ptr4.i148 = getelementptr i8, ptr %95, i32 %add55
  %add.ptr5.i149 = getelementptr i8, ptr %add.ptr4.i148, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i149, i32 %89) #14, !srcloc !185
  %96 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index45, align 4
  %mul60 = shl i32 %97, 5
  %add62 = add i32 %mul60, 2856
  %pos_y = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 22
  %98 = ptrtoint ptr %pos_y to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pos_y, align 4
  %shl63 = shl i32 %99, 16
  %pos_x = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 21
  %100 = ptrtoint ptr %pos_x to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pos_x, align 4
  %or65 = or i32 %shl63, %101
  %102 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ovl, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %add.ptr.i150 = getelementptr i8, ptr %107, i32 %add62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %108 = tail call i32 @llvm.bswap.i32(i32 %or65) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %108) #14, !srcloc !185
  %109 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ovl, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %add.ptr4.i151 = getelementptr i8, ptr %114, i32 %add62
  %add.ptr5.i152 = getelementptr i8, ptr %add.ptr4.i151, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i152, i32 %108) #14, !srcloc !185
  %115 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %index45, align 4
  %mul67 = shl i32 %116, 5
  %add69 = add i32 %mul67, 2860
  %pitch = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %ovl, i32 0, i32 20
  %117 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pitch, align 4
  %119 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ovl, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %add.ptr.i153 = getelementptr i8, ptr %124, i32 %add69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %125 = tail call i32 @llvm.bswap.i32(i32 %118) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %125) #14, !srcloc !185
  %126 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ovl, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %add.ptr4.i154 = getelementptr i8, ptr %131, i32 %add69
  %add.ptr5.i155 = getelementptr i8, ptr %add.ptr4.i154, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i155, i32 %125) #14, !srcloc !185
  %132 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %index45, align 4
  %mul72 = shl i32 %133, 5
  %add74 = add i32 %mul72, 2864
  %134 = ptrtoint ptr %base_addr_y to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %base_addr_y, align 4
  %136 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ovl, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %add.ptr.i156 = getelementptr i8, ptr %141, i32 %add74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %142 = tail call i32 @llvm.bswap.i32(i32 %135) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %142) #14, !srcloc !185
  %143 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ovl, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %add.ptr4.i157 = getelementptr i8, ptr %148, i32 %add74
  %add.ptr5.i158 = getelementptr i8, ptr %add.ptr4.i157, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i158, i32 %142) #14, !srcloc !185
  %149 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %index45, align 4
  %mul77 = shl i32 %150, 5
  %add79 = add i32 %mul77, 2868
  %151 = ptrtoint ptr %base_addr_c to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %base_addr_c, align 4
  %153 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ovl, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %add.ptr.i159 = getelementptr i8, ptr %158, i32 %add79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %159 = tail call i32 @llvm.bswap.i32(i32 %152) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %159) #14, !srcloc !185
  %160 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ovl, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %add.ptr4.i160 = getelementptr i8, ptr %165, i32 %add79
  %add.ptr5.i161 = getelementptr i8, ptr %add.ptr4.i160, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i161, i32 %159) #14, !srcloc !185
  %166 = ptrtoint ptr %ovl to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ovl, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %index45, align 4
  %add84 = add i32 %171, 8
  %shl85 = shl nuw i32 1, %add84
  %shl88 = shl nuw i32 1, %171
  %or89 = or i32 %shl85, %shl88
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %169, align 4
  %add.ptr.i162 = getelementptr i8, ptr %173, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %174 = tail call i32 @llvm.bswap.i32(i32 %or89) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %174) #14, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog42, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sh_mobile_lcdc_start(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  %enabled4 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 5
  %2 = ptrtoint ptr %enabled4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled4, align 4
  %or = or i32 %3, %1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #14, !srcloc !185
  tail call fastcc void @sh_mobile_lcdc_start_stop(ptr noundef %priv, i32 noundef 0)
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %add.ptr.i104 = getelementptr i8, ptr %8, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 0) #14, !srcloc !185
  %lddckr = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 5
  %9 = ptrtoint ptr %lddckr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lddckr, align 4
  %arrayidx6 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %reg_offs.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 3
  %17 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %18, i32 15
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 0) #14, !srcloc !185
  %cfg = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg, align 4
  %clock_divider = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %clock_divider to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx6, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_offs.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add.ptr.i107 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #14, !srcloc !185
  %div = sdiv i32 %24, 2
  %notmask = shl nsw i32 -1, %div
  %sub = xor i32 %notmask, -1
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx6, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i109 = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %41) #14, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp11 = icmp eq i32 %24, 1
  %spec.store.select = select i1 %cmp11, i32 64, i32 %24
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i.not = icmp eq i32 %45, 2
  %cond = select i1 %cmp.i.not, i32 8, i32 0
  %shl15 = shl i32 %spec.store.select, %cond
  %or16 = or i32 %shl15, %10
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %tmp.1 = phi i32 [ %or16, %if.end10 ], [ %10, %if.end.for.inc_crit_edge ], [ %10, %entry.for.inc_crit_edge ]
  %arrayidx6.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %enabled4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %enabled4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.1 = icmp eq i32 %47, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %48 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx6.1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %reg_offs.i.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 3
  %52 = ptrtoint ptr %reg_offs.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offs.i.1, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %53, i32 15
  %54 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.1, align 4
  %add.ptr.i105.1 = getelementptr i8, ptr %51, i32 %55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.1, i32 0) #14, !srcloc !185
  %cfg.1 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 1, i32 2
  %56 = ptrtoint ptr %cfg.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.1, align 4
  %clock_divider.1 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %clock_divider.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clock_divider.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool8.not.1 = icmp eq i32 %59, 0
  br i1 %tobool8.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end10.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end10.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx6.1, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %reg_offs.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_offs.i.1, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add.ptr.i107.1 = getelementptr i8, ptr %63, i32 %67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.1, i32 0) #14, !srcloc !185
  %div.1 = sdiv i32 %59, 2
  %notmask.1 = shl nsw i32 -1, %div.1
  %sub.1 = xor i32 %notmask.1, -1
  %68 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx6.1, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %reg_offs.i.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_offs.i.1, align 4
  %arrayidx.i109.1 = getelementptr i32, ptr %73, i32 1
  %74 = ptrtoint ptr %arrayidx.i109.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i109.1, align 4
  %add.ptr.i110.1 = getelementptr i8, ptr %71, i32 %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %76 = tail call i32 @llvm.bswap.i32(i32 %sub.1) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.1, i32 %76) #14, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp11.1 = icmp eq i32 %59, 1
  %spec.store.select.1 = select i1 %cmp11.1, i32 64, i32 %59
  %77 = ptrtoint ptr %cfg.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.1, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp.i.not.1 = icmp eq i32 %80, 2
  %cond.1 = select i1 %cmp.i.not.1, i32 8, i32 0
  %shl15.1 = shl i32 %spec.store.select.1, %cond.1
  %or16.1 = or i32 %shl15.1, %tmp.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end10.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %tmp.1.1 = phi i32 [ %or16.1, %if.end10.1 ], [ %tmp.1, %if.end.1.for.inc.1_crit_edge ], [ %tmp.1, %for.inc.for.inc.1_crit_edge ]
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 4
  %add.ptr.i111 = getelementptr i8, ptr %82, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %83 = tail call i32 @llvm.bswap.i32(i32 %tmp.1.1) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %83) #14, !srcloc !185
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 4
  %add.ptr.i112 = getelementptr i8, ptr %85, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #14, !srcloc !185
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %87, i32 1044
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.not3.i = icmp eq i32 %88, 0
  br i1 %cmp.not3.i, label %for.inc.1.for.body19.preheader_crit_edge, label %for.inc.1.do.end.i_crit_edge

for.inc.1.do.end.i_crit_edge:                     ; preds = %for.inc.1
  br label %do.end.i

for.inc.1.for.body19.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.preheader

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %for.inc.1.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 1044
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %cmp.not.i = icmp eq i32 %91, 0
  br i1 %cmp.not.i, label %do.end.i.for.body19.preheader_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.for.body19.preheader_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.preheader

for.body19.preheader:                             ; preds = %do.end.i.for.body19.preheader_crit_edge, %for.inc.1.for.body19.preheader_crit_edge
  br label %for.body19

for.body19:                                       ; preds = %for.inc43.for.body19_crit_edge, %for.body19.preheader
  %cmp18 = phi i1 [ false, %for.inc43.for.body19_crit_edge ], [ true, %for.body19.preheader ]
  %k.1154 = phi i32 [ 1, %for.inc43.for.body19_crit_edge ], [ 0, %for.body19.preheader ]
  %arrayidx21 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154
  %enabled22 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 5
  %92 = ptrtoint ptr %enabled22 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %enabled22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool23.not = icmp eq i32 %93, 0
  br i1 %tobool23.not, label %for.body19.for.inc43_crit_edge, label %if.end25

for.body19.for.inc43_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc43

if.end25:                                         ; preds = %for.body19
  %info.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 27
  %94 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %info.i, align 4
  %ldmt1r_value.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 4
  %96 = ptrtoint ptr %ldmt1r_value.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ldmt1r_value.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_info, ptr %95, i32 0, i32 6, i32 24
  %98 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sync.i, align 4
  %and.i = shl i32 %99, 27
  %100 = and i32 %and.i, 268435456
  %101 = xor i32 %100, 268435456
  %or.i = or i32 %101, %97
  %102 = and i32 %and.i, 134217728
  %103 = xor i32 %102, 134217728
  %or7.i = or i32 %or.i, %103
  %cfg.i113 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 2
  %104 = ptrtoint ptr %cfg.i113 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i113, align 4
  %flags.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i, align 4
  %and8.i = shl i32 %107, 26
  %108 = and i32 %and8.i, 67108864
  %or11.i = or i32 %or7.i, %108
  %and14.i = shl i32 %107, 24
  %109 = and i32 %and14.i, 33554432
  %or17.i = or i32 %or11.i, %109
  %and20.i = shl i32 %107, 22
  %110 = and i32 %and20.i, 16777216
  %or23.i = or i32 %or17.i, %110
  %and26.i = shl i32 %107, 14
  %111 = and i32 %and26.i, 131072
  %or29.i = or i32 %or23.i, %111
  %and32.i = shl i32 %107, 12
  %112 = and i32 %and32.i, 65536
  %or35.i = or i32 %or29.i, %112
  %113 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx21, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %reg_offs.i.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 3
  %117 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %118, i32 2
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %116, i32 %120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %121 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114, i32 %121) #14, !srcloc !185
  %122 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx21, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %126 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %127, i32 2
  %128 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %125, i32 4096
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %121) #14, !srcloc !185
  %130 = ptrtoint ptr %cfg.i113 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cfg.i113, align 4
  %sys_bus_cfg.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %sys_bus_cfg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sys_bus_cfg.i, align 4
  %134 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx21, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i165.i = getelementptr i32, ptr %139, i32 3
  %140 = ptrtoint ptr %arrayidx.i165.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i165.i, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %137, i32 %141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %142 = tail call i32 @llvm.bswap.i32(i32 %133) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 %142) #14, !srcloc !185
  %143 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx21, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %147 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i167.i = getelementptr i32, ptr %148, i32 3
  %149 = ptrtoint ptr %arrayidx4.i167.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx4.i167.i, align 4
  %add.ptr5.i168.i = getelementptr i8, ptr %146, i32 4096
  %add.ptr6.i169.i = getelementptr i8, ptr %add.ptr5.i168.i, i32 %150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i169.i, i32 %142) #14, !srcloc !185
  %151 = ptrtoint ptr %cfg.i113 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i113, align 4
  %ldmt3r.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %152, i32 0, i32 10, i32 1
  %153 = ptrtoint ptr %ldmt3r.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ldmt3r.i, align 4
  %155 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx21, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %159 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i171.i = getelementptr i32, ptr %160, i32 4
  %161 = ptrtoint ptr %arrayidx.i171.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i171.i, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %158, i32 %162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %163 = tail call i32 @llvm.bswap.i32(i32 %154) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 %163) #14, !srcloc !185
  %164 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx21, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i173.i = getelementptr i32, ptr %169, i32 4
  %170 = ptrtoint ptr %arrayidx4.i173.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx4.i173.i, align 4
  %add.ptr5.i174.i = getelementptr i8, ptr %167, i32 4096
  %add.ptr6.i175.i = getelementptr i8, ptr %add.ptr5.i174.i, i32 %171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i175.i, i32 %163) #14, !srcloc !185
  %xres.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 2
  %172 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %xres.i, align 4
  %hsync_len.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 9
  %174 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %hsync_len.i, align 4
  %add.i = add i32 %175, %173
  %left_margin.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 5
  %176 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %left_margin.i, align 4
  %add39.i = add i32 %add.i, %177
  %right_margin.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 6
  %178 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %right_margin.i, align 4
  %add40.i = add i32 %add39.i, %179
  %div160.i = lshr i32 %add40.i, 3
  %xres42.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 17
  %180 = ptrtoint ptr %xres42.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %xres42.i, align 4
  %182 = tail call i32 @llvm.umin.i32(i32 %173, i32 %181) #14
  %183 = shl i32 %182, 13
  %shl.i = and i32 %183, -65536
  %or46.i = or i32 %shl.i, %div160.i
  %184 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx21, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %188 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i177.i = getelementptr i32, ptr %189, i32 11
  %190 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx.i177.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %187, i32 %191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %192 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %192) #14, !srcloc !185
  %193 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx21, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %197 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i179.i = getelementptr i32, ptr %198, i32 11
  %199 = ptrtoint ptr %arrayidx4.i179.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx4.i179.i, align 4
  %add.ptr5.i180.i = getelementptr i8, ptr %196, i32 4096
  %add.ptr6.i181.i = getelementptr i8, ptr %add.ptr5.i180.i, i32 %200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i181.i, i32 %192) #14, !srcloc !185
  %201 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %xres.i, align 4
  %203 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %right_margin.i, align 4
  %add49.i = add i32 %204, %202
  %div50162.i = lshr i32 %add49.i, 3
  %205 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %hsync_len.i, align 4
  %207 = shl i32 %206, 13
  %shl53.i = and i32 %207, -65536
  %or54.i = or i32 %shl53.i, %div50162.i
  %208 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx21, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %212 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i183.i = getelementptr i32, ptr %213, i32 12
  %214 = ptrtoint ptr %arrayidx.i183.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i183.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %211, i32 %215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %216 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %216) #14, !srcloc !185
  %217 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx21, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %221 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i185.i = getelementptr i32, ptr %222, i32 12
  %223 = ptrtoint ptr %arrayidx4.i185.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx4.i185.i, align 4
  %add.ptr5.i186.i = getelementptr i8, ptr %220, i32 4096
  %add.ptr6.i187.i = getelementptr i8, ptr %add.ptr5.i186.i, i32 %224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i187.i, i32 %216) #14, !srcloc !185
  %yres.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 3
  %225 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %yres.i, align 4
  %vsync_len.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 10
  %227 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %vsync_len.i, align 4
  %upper_margin.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 7
  %229 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %upper_margin.i, align 4
  %lower_margin.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 29, i32 2, i32 8
  %231 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %lower_margin.i, align 4
  %yres59.i = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 19
  %233 = ptrtoint ptr %yres59.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %yres59.i, align 4
  %235 = tail call i32 @llvm.umin.i32(i32 %226, i32 %234) #14
  %add55.i = add i32 %228, %226
  %add56.i = add i32 %add55.i, %230
  %add57.i = add i32 %add56.i, %232
  %shl66.i = shl i32 %235, 16
  %or67.i = or i32 %shl66.i, %add57.i
  %236 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx21, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %240 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i189.i = getelementptr i32, ptr %241, i32 13
  %242 = ptrtoint ptr %arrayidx.i189.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx.i189.i, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %239, i32 %243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %244 = tail call i32 @llvm.bswap.i32(i32 %or67.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %244) #14, !srcloc !185
  %245 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx21, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %249 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i191.i = getelementptr i32, ptr %250, i32 13
  %251 = ptrtoint ptr %arrayidx4.i191.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx4.i191.i, align 4
  %add.ptr5.i192.i = getelementptr i8, ptr %248, i32 4096
  %add.ptr6.i193.i = getelementptr i8, ptr %add.ptr5.i192.i, i32 %252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i193.i, i32 %244) #14, !srcloc !185
  %253 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %yres.i, align 4
  %255 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %lower_margin.i, align 4
  %add70.i = add i32 %256, %254
  %257 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %vsync_len.i, align 4
  %shl72.i = shl i32 %258, 16
  %or73.i = or i32 %shl72.i, %add70.i
  %259 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx21, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %263 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i195.i = getelementptr i32, ptr %264, i32 14
  %265 = ptrtoint ptr %arrayidx.i195.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx.i195.i, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %262, i32 %266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %267 = tail call i32 @llvm.bswap.i32(i32 %or73.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196.i, i32 %267) #14, !srcloc !185
  %268 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx21, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  %272 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i197.i = getelementptr i32, ptr %273, i32 14
  %274 = ptrtoint ptr %arrayidx4.i197.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx4.i197.i, align 4
  %add.ptr5.i198.i = getelementptr i8, ptr %271, i32 4096
  %add.ptr6.i199.i = getelementptr i8, ptr %add.ptr5.i198.i, i32 %275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i199.i, i32 %267) #14, !srcloc !185
  %276 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %xres.i, align 4
  %278 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %hsync_len.i, align 4
  %add76.i = add i32 %279, %277
  %280 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %left_margin.i, align 4
  %add78.i = add i32 %add76.i, %281
  %282 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %right_margin.i, align 4
  %add80.i = add i32 %add78.i, %283
  %and82.i = shl i32 %277, 24
  %shl83.i = and i32 %and82.i, 117440512
  %and84.i = shl i32 %add80.i, 16
  %shl85.i = and i32 %and84.i, 458752
  %and88.i = shl i32 %279, 8
  %shl89.i = and i32 %and88.i, 1792
  %and91.i = and i32 %add49.i, 7
  %or86.i = or i32 %shl83.i, %and91.i
  %or90.i = or i32 %or86.i, %shl89.i
  %or92.i = or i32 %or90.i, %shl85.i
  %284 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx21, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %288 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i201.i = getelementptr i32, ptr %289, i32 16
  %290 = ptrtoint ptr %arrayidx.i201.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx.i201.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %287, i32 %291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %292 = tail call i32 @llvm.bswap.i32(i32 %or92.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 %292) #14, !srcloc !185
  %293 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx21, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 4
  %297 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i204.i = getelementptr i32, ptr %298, i32 16
  %299 = ptrtoint ptr %arrayidx.i204.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx.i204.i, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %296, i32 8192
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i205.i, i32 %300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %292) #14, !srcloc !185
  %format = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 15
  %301 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %format, align 4
  %lddfr = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %302, i32 0, i32 3
  %303 = ptrtoint ptr %lddfr to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %lddfr, align 4
  %yuv = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %302, i32 0, i32 2
  %305 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %yuv, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool27.not = icmp eq i8 %306, 0
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  %colorspace = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 16
  %307 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %colorspace, align 4
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %308, label %if.then28.if.end32_crit_edge [
    i32 3, label %sw.bb
    i32 7, label %sw.bb30
  ]

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

sw.bb:                                            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %or29 = or i32 %304, 262144
  br label %if.end32

sw.bb30:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %or31 = or i32 %304, 131072
  br label %if.end32

if.end32:                                         ; preds = %sw.bb30, %sw.bb, %if.then28.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %tmp.2 = phi i32 [ %304, %if.then28.if.end32_crit_edge ], [ %or31, %sw.bb30 ], [ %or29, %sw.bb ], [ %304, %if.end25.if.end32_crit_edge ]
  %310 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx21, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %314 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i116 = getelementptr i32, ptr %315, i32 5
  %316 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %313, i32 %317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %318 = tail call i32 @llvm.bswap.i32(i32 %tmp.2) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %318) #14, !srcloc !185
  %319 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %arrayidx21, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 4
  %323 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %324, i32 5
  %325 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %322, i32 4096
  %add.ptr6.i = getelementptr i8, ptr %add.ptr5.i, i32 %326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %318) #14, !srcloc !185
  %line_size = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 24
  %327 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %line_size, align 4
  %329 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx21, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %330, align 4
  %333 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i119 = getelementptr i32, ptr %334, i32 10
  %335 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx.i119, align 4
  %add.ptr.i120 = getelementptr i8, ptr %332, i32 %336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %337 = tail call i32 @llvm.bswap.i32(i32 %328) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %337) #14, !srcloc !185
  %338 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx21, align 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 4
  %342 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i121 = getelementptr i32, ptr %343, i32 10
  %344 = ptrtoint ptr %arrayidx4.i121 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx4.i121, align 4
  %add.ptr5.i122 = getelementptr i8, ptr %341, i32 4096
  %add.ptr6.i123 = getelementptr i8, ptr %add.ptr5.i122, i32 %345
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i123, i32 %337) #14, !srcloc !185
  %base_addr_y = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 22
  %346 = ptrtoint ptr %base_addr_y to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %base_addr_y, align 4
  %348 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx21, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 4
  %352 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i125 = getelementptr i32, ptr %353, i32 8
  %354 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx.i125, align 4
  %add.ptr.i126 = getelementptr i8, ptr %351, i32 %355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %356 = tail call i32 @llvm.bswap.i32(i32 %347) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %356) #14, !srcloc !185
  %357 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %arrayidx21, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 4
  %361 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i127 = getelementptr i32, ptr %362, i32 8
  %363 = ptrtoint ptr %arrayidx4.i127 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx4.i127, align 4
  %add.ptr5.i128 = getelementptr i8, ptr %360, i32 4096
  %add.ptr6.i129 = getelementptr i8, ptr %add.ptr5.i128, i32 %364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i129, i32 %356) #14, !srcloc !185
  %365 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %format, align 4
  %yuv34 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %366, i32 0, i32 2
  %367 = ptrtoint ptr %yuv34 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %yuv34, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool35.not = icmp eq i8 %368, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %base_addr_c = getelementptr %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 %k.1154, i32 23
  %369 = ptrtoint ptr %base_addr_c to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %base_addr_c, align 4
  %371 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %arrayidx21, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %372, align 4
  %375 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i131 = getelementptr i32, ptr %376, i32 9
  %377 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx.i131, align 4
  %add.ptr.i132 = getelementptr i8, ptr %374, i32 %378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %379 = tail call i32 @llvm.bswap.i32(i32 %370) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %379) #14, !srcloc !185
  %380 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx21, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %381, align 4
  %384 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i133 = getelementptr i32, ptr %385, i32 9
  %386 = ptrtoint ptr %arrayidx4.i133 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx4.i133, align 4
  %add.ptr5.i134 = getelementptr i8, ptr %383, i32 4096
  %add.ptr6.i135 = getelementptr i8, ptr %add.ptr5.i134, i32 %387
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i135, i32 %379) #14, !srcloc !185
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %388 = ptrtoint ptr %ldmt1r_value.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %ldmt1r_value.i, align 4
  %and = and i32 %389, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end37.if.else_crit_edge, label %land.lhs.true

if.end37.if.else_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end37
  %390 = ptrtoint ptr %cfg.i113 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %cfg.i113, align 4
  %deferred_io_msec = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %391, i32 0, i32 10, i32 2
  %392 = ptrtoint ptr %deferred_io_msec to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %deferred_io_msec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool40.not = icmp eq i32 %393, 0
  br i1 %tobool40.not, label %land.lhs.true.if.else_crit_edge, label %if.then41

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %394 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx21, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %398 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i137 = getelementptr i32, ptr %399, i32 6
  %400 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx.i137, align 4
  %add.ptr.i138 = getelementptr i8, ptr %397, i32 %401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 16777216) #14, !srcloc !185
  %402 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx21, align 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %403, align 4
  %406 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i139 = getelementptr i32, ptr %407, i32 6
  %408 = ptrtoint ptr %arrayidx4.i139 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx4.i139, align 4
  %add.ptr5.i140 = getelementptr i8, ptr %405, i32 4096
  %add.ptr6.i141 = getelementptr i8, ptr %add.ptr5.i140, i32 %409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i141, i32 16777216) #14, !srcloc !185
  %410 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %priv, align 4
  %add.ptr.i142 = getelementptr i8, ptr %411, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 262144) #14, !srcloc !185
  br label %for.inc43

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end37.if.else_crit_edge
  %412 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx21, align 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %413, align 4
  %416 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx.i144 = getelementptr i32, ptr %417, i32 6
  %418 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %415, i32 %419
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 0) #14, !srcloc !185
  %420 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx21, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %421, align 4
  %424 = ptrtoint ptr %reg_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %reg_offs.i.i, align 4
  %arrayidx4.i146 = getelementptr i32, ptr %425, i32 6
  %426 = ptrtoint ptr %arrayidx4.i146 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx4.i146, align 4
  %add.ptr5.i147 = getelementptr i8, ptr %423, i32 4096
  %add.ptr6.i148 = getelementptr i8, ptr %add.ptr5.i147, i32 %427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i148, i32 0) #14, !srcloc !185
  br label %for.inc43

for.inc43:                                        ; preds = %if.else, %if.then41, %for.body19.for.inc43_crit_edge
  br i1 %cmp18, label %for.inc43.for.body19_crit_edge, label %for.end45

for.inc43.for.body19_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.end45:                                        ; preds = %for.inc43
  %format48 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 6, i32 0, i32 15
  %428 = ptrtoint ptr %format48 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %format48, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 4
  %432 = zext i32 %431 to i64
  call void @__sanitizer_cov_trace_switch(i64 %432, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %431, label %sw.default [
    i32 1346520914, label %for.end45.sw.epilog52_crit_edge
    i32 825382478, label %for.end45.sw.epilog52_crit_edge159
    i32 825644622, label %for.end45.sw.epilog52_crit_edge160
    i32 842290766, label %for.end45.sw.epilog52_crit_edge161
    i32 861030210, label %for.end45.sw.bb50_crit_edge
    i32 842094158, label %for.end45.sw.bb50_crit_edge162
    i32 909203022, label %for.end45.sw.bb50_crit_edge163
    i32 875714126, label %for.end45.sw.bb50_crit_edge164
  ]

for.end45.sw.bb50_crit_edge164:                   ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

for.end45.sw.bb50_crit_edge163:                   ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

for.end45.sw.bb50_crit_edge162:                   ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

for.end45.sw.bb50_crit_edge:                      ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

for.end45.sw.epilog52_crit_edge161:               ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

for.end45.sw.epilog52_crit_edge160:               ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

for.end45.sw.epilog52_crit_edge159:               ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

for.end45.sw.epilog52_crit_edge:                  ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb50:                                          ; preds = %for.end45.sw.bb50_crit_edge, %for.end45.sw.bb50_crit_edge162, %for.end45.sw.bb50_crit_edge163, %for.end45.sw.bb50_crit_edge164
  br label %sw.epilog52

sw.default:                                       ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.default, %sw.bb50, %for.end45.sw.epilog52_crit_edge, %for.end45.sw.epilog52_crit_edge159, %for.end45.sw.epilog52_crit_edge160, %for.end45.sw.epilog52_crit_edge161
  %tmp.3 = phi i32 [ 67108864, %sw.default ], [ 117440512, %sw.bb50 ], [ 100663296, %for.end45.sw.epilog52_crit_edge ], [ 100663296, %for.end45.sw.epilog52_crit_edge159 ], [ 100663296, %for.end45.sw.epilog52_crit_edge160 ], [ 100663296, %for.end45.sw.epilog52_crit_edge161 ]
  %433 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %priv, align 4
  %add.ptr.i149 = getelementptr i8, ptr %434, i32 1148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %tmp.3) #14, !srcloc !185
  %435 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %priv, align 4
  %add.ptr.i150 = getelementptr i8, ptr %436, i32 1136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 16777216) #14, !srcloc !185
  tail call fastcc void @sh_mobile_lcdc_start_stop(ptr noundef %priv, i32 noundef 1)
  %started = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %priv, i32 0, i32 8
  %437 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 1, ptr %started, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_deferred_io(ptr nocapture noundef readonly %info, ptr noundef %pagelist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %cfg = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call fastcc void @sh_mobile_lcdc_clk_on(ptr noundef %5)
  %6 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pagelist, align 4
  %cmp.i.not = icmp eq ptr %7, %pagelist
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  %fb_size.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %fb_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fb_size.i, align 4
  %shr.i = lshr i32 %11, 12
  %sglist.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %9, i32 0, i32 31
  %12 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sglist.i, align 4
  tail call void @sg_init_table(ptr noundef %13, i32 noundef %shr.i) #14
  %14 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn15.i = load ptr, ptr %pagelist, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %pagelist
  br i1 %cmp.not16.i, label %if.then.sh_mobile_lcdc_sginit.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.sh_mobile_lcdc_sginit.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_sginit.exit

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %.pn15.i, %if.then.for.body.i_crit_edge ]
  %nr_pages.017.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %page.0.i = getelementptr i8, ptr %.pn18.i, i32 -4
  %15 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sglist.i, align 4
  %inc.i = add i32 %nr_pages.017.i, 1
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %16, i32 %nr_pages.017.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %page.0.i to i32
  %and2.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !194

do.body5.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !195
  unreachable

do.body11.i.i.i:                                  ; preds = %for.body.i
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !194

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !196
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %18, 3
  %or.i.i.i = or i32 %and.i.i.i, %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %16, i32 %nr_pages.017.i, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %16, i32 %nr_pages.017.i, i32 2
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %length.i.i, align 4
  %23 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pagelist
  br i1 %cmp.not.i, label %sg_set_page.exit.i.sh_mobile_lcdc_sginit.exit_crit_edge, label %sg_set_page.exit.i.for.body.i_crit_edge

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

sg_set_page.exit.i.sh_mobile_lcdc_sginit.exit_crit_edge: ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sh_mobile_lcdc_sginit.exit

sh_mobile_lcdc_sginit.exit:                       ; preds = %sg_set_page.exit.i.sh_mobile_lcdc_sginit.exit_crit_edge, %if.then.sh_mobile_lcdc_sginit.exit_crit_edge
  %nr_pages.0.lcssa.i = phi i32 [ 0, %if.then.sh_mobile_lcdc_sginit.exit_crit_edge ], [ %inc.i, %sg_set_page.exit.i.sh_mobile_lcdc_sginit.exit_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %sglist = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 31
  %28 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sglist, align 4
  %call3 = tail call i32 @dma_map_sg_attrs(ptr noundef %27, ptr noundef %29, i32 noundef %nr_pages.0.lcssa.i, i32 noundef 1, i32 noundef 0) #14
  %start_transfer = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %3, i32 0, i32 8, i32 3
  %30 = ptrtoint ptr %start_transfer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %start_transfer, align 4
  %tobool4.not = icmp eq ptr %31, null
  br i1 %tobool4.not, label %sh_mobile_lcdc_sginit.exit.if.end_crit_edge, label %if.then5

sh_mobile_lcdc_sginit.exit.if.end_crit_edge:      ; preds = %sh_mobile_lcdc_sginit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then5:                                         ; preds = %sh_mobile_lcdc_sginit.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %31(ptr noundef %1, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #14
  br label %if.end

if.end:                                           ; preds = %if.then5, %sh_mobile_lcdc_sginit.exit.if.end_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %reg_offs.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_offs.i, align 4
  %arrayidx.i32 = getelementptr i32, ptr %37, i32 7
  %38 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i32, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #14, !srcloc !185
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %dev8 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev8, align 4
  %44 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sglist, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %43, ptr noundef %45, i32 noundef %nr_pages.0.lcssa.i, i32 noundef 1, i32 noundef 0) #14
  br label %if.end15

if.else:                                          ; preds = %entry
  %start_transfer10 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %3, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %start_transfer10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %start_transfer10, align 4
  %tobool11.not = icmp eq ptr %47, null
  br i1 %tobool11.not, label %if.else.if.end14_crit_edge, label %if.then12

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %47(ptr noundef %1, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %reg_offs.i33 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %reg_offs.i33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offs.i33, align 4
  %arrayidx.i34 = getelementptr i32, ptr %53, i32 7
  %54 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i34, align 4
  %add.ptr.i35 = getelementptr i8, ptr %51, i32 %55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 16777216) #14, !srcloc !185
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcdc_sys_write_index(ptr nocapture noundef readonly %handle, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %or = or i32 %data, 268435456
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #14, !srcloc !185
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handle, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %8, i32 1132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %10 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not3.i = icmp eq i32 %10, 0
  br i1 %cmp.not3.i, label %entry.lcdc_wait_bit.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.lcdc_wait_bit.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1132
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %14 = and i32 %13, 33554432
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %do.end.i.lcdc_wait_bit.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.lcdc_wait_bit.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

lcdc_wait_bit.exit:                               ; preds = %do.end.i.lcdc_wait_bit.exit_crit_edge, %entry.lcdc_wait_bit.exit_crit_edge
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %cfg.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %handle, i32 0, i32 2
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i.not = icmp eq i32 %20, 2
  %or3 = select i1 %cmp.i.not, i32 50331648, i32 16777216
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %add.ptr.i9 = getelementptr i8, ptr %22, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %or3) #14, !srcloc !185
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i1.i10 = getelementptr i8, ptr %26, i32 1132
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i10) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not3.i12 = icmp eq i32 %28, 0
  br i1 %cmp.not3.i12, label %lcdc_wait_bit.exit.lcdc_wait_bit.exit17_crit_edge, label %lcdc_wait_bit.exit.do.end.i16_crit_edge

lcdc_wait_bit.exit.do.end.i16_crit_edge:          ; preds = %lcdc_wait_bit.exit
  br label %do.end.i16

lcdc_wait_bit.exit.lcdc_wait_bit.exit17_crit_edge: ; preds = %lcdc_wait_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit17

do.end.i16:                                       ; preds = %do.end.i16.do.end.i16_crit_edge, %lcdc_wait_bit.exit.do.end.i16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %30, i32 1132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %32 = and i32 %31, 33554432
  %cmp.not.i15 = icmp eq i32 %32, 0
  br i1 %cmp.not.i15, label %do.end.i16.lcdc_wait_bit.exit17_crit_edge, label %do.end.i16.do.end.i16_crit_edge

do.end.i16.do.end.i16_crit_edge:                  ; preds = %do.end.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i16

do.end.i16.lcdc_wait_bit.exit17_crit_edge:        ; preds = %do.end.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit17

lcdc_wait_bit.exit17:                             ; preds = %do.end.i16.lcdc_wait_bit.exit17_crit_edge, %lcdc_wait_bit.exit.lcdc_wait_bit.exit17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcdc_sys_write_data(ptr nocapture noundef readonly %handle, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %or1 = or i32 %data, 285212672
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  %4 = tail call i32 @llvm.bswap.i32(i32 %or1) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #14, !srcloc !185
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handle, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %8, i32 1132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %10 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not3.i = icmp eq i32 %10, 0
  br i1 %cmp.not3.i, label %entry.lcdc_wait_bit.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.lcdc_wait_bit.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1132
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %14 = and i32 %13, 33554432
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %do.end.i.lcdc_wait_bit.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.lcdc_wait_bit.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

lcdc_wait_bit.exit:                               ; preds = %do.end.i.lcdc_wait_bit.exit_crit_edge, %entry.lcdc_wait_bit.exit_crit_edge
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %cfg.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %handle, i32 0, i32 2
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i.not = icmp eq i32 %20, 2
  %or4 = select i1 %cmp.i.not, i32 50331648, i32 16777216
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %add.ptr.i10 = getelementptr i8, ptr %22, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %or4) #14, !srcloc !185
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i1.i11 = getelementptr i8, ptr %26, i32 1132
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i11) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not3.i13 = icmp eq i32 %28, 0
  br i1 %cmp.not3.i13, label %lcdc_wait_bit.exit.lcdc_wait_bit.exit18_crit_edge, label %lcdc_wait_bit.exit.do.end.i17_crit_edge

lcdc_wait_bit.exit.do.end.i17_crit_edge:          ; preds = %lcdc_wait_bit.exit
  br label %do.end.i17

lcdc_wait_bit.exit.lcdc_wait_bit.exit18_crit_edge: ; preds = %lcdc_wait_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit18

do.end.i17:                                       ; preds = %do.end.i17.do.end.i17_crit_edge, %lcdc_wait_bit.exit.do.end.i17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %30, i32 1132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %32 = and i32 %31, 33554432
  %cmp.not.i16 = icmp eq i32 %32, 0
  br i1 %cmp.not.i16, label %do.end.i17.lcdc_wait_bit.exit18_crit_edge, label %do.end.i17.do.end.i17_crit_edge

do.end.i17.do.end.i17_crit_edge:                  ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i17

do.end.i17.lcdc_wait_bit.exit18_crit_edge:        ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit18

lcdc_wait_bit.exit18:                             ; preds = %do.end.i17.lcdc_wait_bit.exit18_crit_edge, %lcdc_wait_bit.exit.lcdc_wait_bit.exit18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcdc_sys_read_data(ptr nocapture noundef readonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #14, !srcloc !185
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %7, i32 1132
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not3.i = icmp eq i32 %9, 0
  br i1 %cmp.not3.i, label %entry.lcdc_wait_bit.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.lcdc_wait_bit.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1132
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %13 = and i32 %12, 33554432
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %do.end.i.lcdc_wait_bit.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.lcdc_wait_bit.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit

lcdc_wait_bit.exit:                               ; preds = %do.end.i.lcdc_wait_bit.exit_crit_edge, %entry.lcdc_wait_bit.exit_crit_edge
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 4
  %cfg.i = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %handle, i32 0, i32 2
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i.not = icmp eq i32 %19, 2
  %or = select i1 %cmp.i.not, i32 50331648, i32 16777216
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %add.ptr.i11 = getelementptr i8, ptr %21, i32 2308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %or) #14, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #14
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i1.i12 = getelementptr i8, ptr %26, i32 1132
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i12) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not3.i14 = icmp eq i32 %28, 0
  br i1 %cmp.not3.i14, label %lcdc_wait_bit.exit.lcdc_wait_bit.exit19_crit_edge, label %lcdc_wait_bit.exit.do.end.i18_crit_edge

lcdc_wait_bit.exit.do.end.i18_crit_edge:          ; preds = %lcdc_wait_bit.exit
  br label %do.end.i18

lcdc_wait_bit.exit.lcdc_wait_bit.exit19_crit_edge: ; preds = %lcdc_wait_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit19

do.end.i18:                                       ; preds = %do.end.i18.do.end.i18_crit_edge, %lcdc_wait_bit.exit.do.end.i18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !188
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %30, i32 1132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %32 = and i32 %31, 33554432
  %cmp.not.i17 = icmp eq i32 %32, 0
  br i1 %cmp.not.i17, label %do.end.i18.lcdc_wait_bit.exit19_crit_edge, label %do.end.i18.do.end.i18_crit_edge

do.end.i18.do.end.i18_crit_edge:                  ; preds = %do.end.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i18

do.end.i18.lcdc_wait_bit.exit19_crit_edge:        ; preds = %do.end.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %lcdc_wait_bit.exit19

lcdc_wait_bit.exit19:                             ; preds = %do.end.i18.lcdc_wait_bit.exit19_crit_edge, %lcdc_wait_bit.exit.lcdc_wait_bit.exit19_crit_edge
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %add.ptr.i20 = getelementptr i8, ptr %36, i32 2112
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #14, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %38 = and i32 %37, -64768
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_alpha_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %alpha = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alpha, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.72, i32 noundef %5) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_alpha_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #14
  %4 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !197
  %call1 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %endp, i32 noundef 10) #14
  %5 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv = zext i8 %8 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  %12 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr, ptr %endp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp4.not = icmp ne i32 %sub.ptr.sub, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1)
  %cmp8 = icmp ugt i32 %call1, 255
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %alpha12 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %alpha12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alpha12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call1)
  %cmp13.not = icmp eq i32 %16, %call1
  br i1 %cmp13.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  %17 = ptrtoint ptr %alpha12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1, ptr %alpha12, align 4
  %mode = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %land.lhs.true, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then15
  %enabled = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.then15.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.then20 ], [ %count, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %mode = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.72, i32 noundef %5) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #14
  %4 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !197
  %call1 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %endp, i32 noundef 10) #14
  %5 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv = zext i8 %8 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  %12 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr, ptr %endp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp4.not = icmp eq i32 %sub.ptr.sub, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %switch = icmp ult i32 %call1, 2
  %or.cond = select i1 %cmp4.not, i1 %switch, i1 false
  br i1 %or.cond, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %mode14 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %mode14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call1)
  %cmp15.not = icmp eq i32 %16, %call1
  br i1 %cmp15.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  %17 = ptrtoint ptr %mode14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1, ptr %mode14, align 4
  %enabled = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.then17.cleanup_crit_edge, label %if.then19

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.then17.cleanup_crit_edge ], [ %count, %if.then19 ], [ %count, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_position_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %pos_x = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %pos_x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos_x, align 4
  %pos_y = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %pos_y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos_y, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.73, i32 noundef %5, i32 noundef %7) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_position_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #14
  %4 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !197
  %call1 = call i32 @simple_strtol(ptr noundef %buf, ptr noundef nonnull %endp, i32 noundef 10) #14
  %5 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %8)
  %cmp.not = icmp eq i8 %8, 44
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %6, i32 1
  %call3 = call i32 @simple_strtol(ptr noundef %add.ptr, ptr noundef nonnull %endp, i32 noundef 10) #14
  %9 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endp, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv4 = zext i8 %12 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp6.not = icmp eq i8 %15, 0
  br i1 %cmp6.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %10, i32 1
  %16 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr, ptr %endp, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %17 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp10.not = icmp eq i32 %sub.ptr.sub, %count
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %pos_x14 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 21
  %19 = ptrtoint ptr %pos_x14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos_x14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %call1)
  %cmp15.not = icmp eq i32 %20, %call1
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end13.if.then20_crit_edge

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end13
  %pos_y17 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 22
  %21 = ptrtoint ptr %pos_y17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos_y17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call3)
  %cmp18.not = icmp eq i32 %22, %call3
  br i1 %cmp18.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end13.if.then20_crit_edge
  %23 = ptrtoint ptr %pos_x14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call1, ptr %pos_x14, align 4
  %pos_y22 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 22
  %24 = ptrtoint ptr %pos_y22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3, ptr %pos_y22, align 4
  %enabled = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.then20.cleanup_crit_edge, label %if.then23

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %count, %if.then20.cleanup_crit_edge ], [ %count, %if.then23 ], [ %count, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_rop3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %rop3 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %rop3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rop3, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.72, i32 noundef %5) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_rop3_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #14
  %4 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !197
  %call1 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %endp, i32 noundef 10) #14
  %5 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv = zext i8 %8 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  %12 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr, ptr %endp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp4.not = icmp ne i32 %sub.ptr.sub, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1)
  %cmp8 = icmp ugt i32 %call1, 255
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %rop312 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %rop312 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rop312, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call1)
  %cmp13.not = icmp eq i32 %16, %call1
  br i1 %cmp13.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  %17 = ptrtoint ptr %rop312 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1, ptr %rop312, align 4
  %mode = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp17 = icmp eq i32 %19, 1
  br i1 %cmp17, label %land.lhs.true, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then15
  %enabled = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.then15.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.then20 ], [ %count, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sh_mobile_lcdc_stop(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @sh_mobile_lcdc_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !185
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @__sh_mobile_lcdc_start(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !134, !136, !138, !140, !142, !143, !144, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__initcall__kmod_sh_mobile_lcdcfb__315_2660_sh_mobile_lcdc_driver_init6, !1, !"__initcall__kmod_sh_mobile_lcdcfb__315_2660_sh_mobile_lcdc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2660, i32 1}
!2 = !{ptr @__exitcall_sh_mobile_lcdc_driver_exit, !1, !"__exitcall_sh_mobile_lcdc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description316, !4, !"__UNIQUE_ID_description316", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2662, i32 1}
!5 = !{ptr @__UNIQUE_ID_author317, !6, !"__UNIQUE_ID_author317", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2663, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2664, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2653, i32 12}
!12 = !{ptr @sh_mobile_lcdc_driver, !13, !"sh_mobile_lcdc_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2651, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2515, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sh_mobile_lcdc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sh_mobile_lcdc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2522, i32 3}
!24 = !{ptr @sh_mobile_lcdc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sh_mobile_lcdc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sh_mobile_lcdc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2533, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2539, i32 3}
!31 = !{ptr @sh_mobile_lcdc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sh_mobile_lcdc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2554, i32 4}
!35 = !{ptr @sh_mobile_lcdc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sh_mobile_lcdc_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @sh_mobile_lcdc_probe.__key.16, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2557, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2579, i32 3}
!42 = !{ptr @sh_mobile_lcdc_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sh_mobile_lcdc_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2596, i32 3}
!46 = !{ptr @sh_mobile_lcdc_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sh_mobile_lcdc_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2624, i32 3}
!50 = !{ptr @sh_mobile_lcdc_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sh_mobile_lcdc_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @init_completion.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/completion.h", i32 87, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2162, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sh_mobile_lcdc_bl_probe._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sh_mobile_lcdc_bl_probe._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @sh_mobile_lcdc_bl_ops, !61, !"sh_mobile_lcdc_bl_ops", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2147, i32 35}
!62 = !{ptr @lcdc_offs_mainlcd, !63, !"lcdc_offs_mainlcd", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 224, i32 22}
!64 = !{ptr @lcdc_offs_sublcd, !65, !"lcdc_offs_sublcd", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 244, i32 22}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 364, i32 9}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 368, i32 9}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 384, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sh_mobile_lcdc_setup_clocks._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sh_mobile_lcdc_setup_clocks._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2419, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sh_mobile_lcdc_channel_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sh_mobile_lcdc_channel_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2435, i32 4}
!82 = !{ptr @sh_mobile_lcdc_channel_init._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sh_mobile_lcdc_channel_init._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2449, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @sh_mobile_lcdc_channel_init.__UNIQUE_ID_ddebug314, !85, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2486, i32 3}
!90 = !{ptr @sh_mobile_lcdc_channel_init._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sh_mobile_lcdc_channel_init._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2494, i32 4}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sh_mobile_lcdc_channel_init._entry.44, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sh_mobile_lcdc_channel_init._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sh_mobile_format_infos, !98, !"sh_mobile_format_infos", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 548, i32 48}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2233, i32 10}
!101 = !{ptr @default_720p, !102, !"default_720p", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2232, i32 34}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2064, i32 3}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sh_mobile_lcdc_channel_fb_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @sh_mobile_lcdc_channel_fb_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @sh_mobile_lcdc_ops, !109, !"sh_mobile_lcdc_ops", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1964, i32 28}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1813, i32 2}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sh_mobile_lcdc_open.__UNIQUE_ID_ddebug309, !111, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1790, i32 2}
!116 = !{ptr @sh_mobile_lcdc_release.__UNIQUE_ID_ddebug308, !115, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1897, i32 3}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @sh_mobile_lcdc_set_par._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @sh_mobile_lcdc_set_par._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @sh_mobile_lcdc_fix, !123, !"sh_mobile_lcdc_fix", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1648, i32 39}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2362, i32 3}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sh_mobile_lcdc_overlay_init._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @sh_mobile_lcdc_overlay_init._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @sh_mobile_lcdc_overlay_init._entry.58, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2393, i32 3}
!131 = !{ptr @sh_mobile_lcdc_overlay_init._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1580, i32 4}
!134 = !{ptr @sh_mobile_lcdc_overlay_ops, !135, !"sh_mobile_lcdc_overlay_ops", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1490, i32 28}
!136 = !{ptr @sh_mobile_lcdc_overlay_fix, !137, !"sh_mobile_lcdc_overlay_fix", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1356, i32 39}
!138 = !{ptr @sh_mobile_lcdc_sys_bus_ops, !139, !"sh_mobile_lcdc_sys_bus_ops", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 432, i32 42}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2008, i32 2}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sh_mobile_lcdc_channel_fb_register._entry, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @sh_mobile_lcdc_channel_fb_register._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1531, i32 2}
!150 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @sh_mobile_lcdc_overlay_fb_register._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @sh_mobile_lcdc_overlay_fb_register._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1346, i32 2}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1348, i32 2}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1350, i32 2}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1352, i32 2}
!161 = !{ptr @overlay_sysfs_attrs, !162, !"overlay_sysfs_attrs", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1345, i32 38}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1195, i32 35}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 1272, i32 35}
!167 = !{ptr @sh_mobile_lcdc_dev_pm_ops, !168, !"sh_mobile_lcdc_dev_pm_ops", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/sh_mobile_lcdcfb.c", i32 2217, i32 32}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i8 0, i8 2}
!179 = !{i64 2148272408}
!180 = !{i64 2148187141, i64 2148187173, i64 2148187202, i64 2148187236, i64 2148187267, i64 2148187290}
!181 = !{i64 2148272637}
!182 = !{i64 5036893}
!183 = !{i64 2152577242}
!184 = !{i64 2152578597}
!185 = !{i64 5036475}
!186 = !{i64 2148773659, i64 2148773664, i64 2148773677, i64 2148773721, i64 2148773755, i64 2148773776}
!187 = !{i64 2156233981}
!188 = !{i64 2156233823}
!189 = !{i64 2148269367}
!190 = !{i64 2148184676, i64 2148184708, i64 2148184737, i64 2148184771, i64 2148184802, i64 2148184825}
!191 = !{i64 2148269596}
!192 = !{i64 2156243163}
!193 = !{i64 2156243005}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{i64 2155949430, i64 2155949922, i64 2155949467, i64 2155949523, i64 2155949557, i64 2155949581, i64 2155949622, i64 2155949643, i64 2155949671, i64 2155949705}
!196 = !{i64 2155951040, i64 2155951532, i64 2155951077, i64 2155951133, i64 2155951167, i64 2155951191, i64 2155951232, i64 2155951253, i64 2155951281, i64 2155951315}
!197 = !{!"auto-init"}
