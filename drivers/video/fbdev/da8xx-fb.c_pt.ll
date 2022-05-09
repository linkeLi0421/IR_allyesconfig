; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/da8xx-fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/da8xx-fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da8xx_lcdc_platform_data = type { [10 x i8], ptr, [25 x i8] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.da8xx_fb_par = type { ptr, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.wait_queue_head, i32, i32, %struct.spinlock, i32, %struct.notifier_block, i32, ptr, [16 x i32], %struct.fb_videomode, %struct.lcd_ctrl_config }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lcd_ctrl_config = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.lcd_sync_arg = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_da8xx_fb__316_1663_da8xx_fb_driver_init6 = internal global ptr @da8xx_fb_driver_init, section ".initcall6.init", align 4
@da8xx_fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fb_probe, ptr @fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da8xx_fb_driver_exit = internal global ptr @da8xx_fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description317 = internal constant [63 x i8] c"da8xx_fb.description=Framebuffer driver for TI da8xx/omap-l1xx\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [34 x i8] c"da8xx_fb.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [43 x i8] c"da8xx_fb.file=drivers/video/fbdev/da8xx-fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [21 x i8] c"da8xx_fb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da8xx_lcdc\00", [21 x i8] zeroinitializer }, align 32
@fb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fb_suspend, ptr @fb_resume, ptr @fb_suspend, ptr @fb_resume, ptr @fb_suspend, ptr @fb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can not get platform data\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fb_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/da8xx-fb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr = internal global ptr @fb_probe._entry, section ".printk_index", align 4
@da8xx_fb_reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@fb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can not get device clock\0A\00", [38 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr.9 = internal global ptr @fb_probe._entry.7, section ".printk_index", align 4
@lcd_revision = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1377, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unknown PID Reg value 0x%x, defaulting to LCD revision 1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr.13 = internal global ptr @fb_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@da8xx_fb_var = internal global { %struct.fb_var_screeninfo, [32 x i8] } zeroinitializer, align 32
@fb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GLCD: kmalloc for frame buffer failed\0A\00", [57 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr.17 = internal global ptr @fb_probe._entry.15, section ".printk_index", align 4
@da8xx_fb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"DA8xx FB Drv\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 0, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@fb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GLCD: kmalloc for palette buffer failed\0A\00", [55 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr.20 = internal global ptr @fb_probe._entry.18, section ".printk_index", align 4
@da8xx_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fb_check_var, ptr @da8xxfb_set_par, ptr @fb_setcolreg, ptr null, ptr @cfb_blank, ptr @da8xx_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @fb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&par->vsync_wait\00", [47 x i8] zeroinitializer }, align 32
@fb_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&par->lock_for_chan_update\00", [37 x i8] zeroinitializer }, align 32
@fb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GLCD: Frame Buffer Registration Failed!\0A\00", [55 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr.26 = internal global ptr @fb_probe._entry.24, section ".printk_index", align 4
@fb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register cpufreq\0A\00", [36 x i8] zeroinitializer }, align 32
@fb_probe._entry_ptr.29 = internal global ptr @fb_probe._entry.27, section ".printk_index", align 4
@lcdc_irq_handler = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fb_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@frame_done_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&frame_done_wq\00", [17 x i8] zeroinitializer }, align 32
@known_lcd_panels = internal global { [4 x %struct.fb_videomode], [32 x i8] } { [4 x %struct.fb_videomode] [%struct.fb_videomode { ptr @.str.38, i32 0, i32 320, i32 240, i32 217060, i32 6, i32 8, i32 2, i32 2, i32 0, i32 0, i32 1073741824, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.39, i32 0, i32 480, i32 272, i32 127665, i32 2, i32 2, i32 2, i32 2, i32 41, i32 10, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.40, i32 0, i32 320, i32 240, i32 127665, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.41, i32 0, i32 320, i32 240, i32 156250, i32 0, i32 0, i32 0, i32 0, i32 30, i32 3, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@da8xx_fb_get_videomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no panel found\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da8xx_fb_get_videomode\00", [41 x i8] zeroinitializer }, align 32
@da8xx_fb_get_videomode._entry_ptr = internal global ptr @da8xx_fb_get_videomode._entry, section ".printk_index", align 4
@da8xx_fb_get_videomode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 1326, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"found %s panel\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@da8xx_fb_get_videomode._entry_ptr.37 = internal global ptr @da8xx_fb_get_videomode._entry.34, section ".printk_index", align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sharp_LCD035Q3DG01\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Sharp_LK043T1DG01\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SP10Q010\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Densitron_84-0023-001T\00", [41 x i8] zeroinitializer }, align 32
@da8xxfb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lcd init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da8xxfb_set_par\00", [16 x i8] zeroinitializer }, align 32
@da8xxfb_set_par._entry_ptr = internal global ptr @da8xxfb_set_par._entry, section ".printk_index", align 4
@frame_done_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@lcd_disable_raster._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013LCD Controller timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lcd_disable_raster\00", [45 x i8] zeroinitializer }, align 32
@lcd_disable_raster._entry_ptr = internal global ptr @lcd_disable_raster._entry, section ".printk_index", align 4
@lcd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 776, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to configure clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_init\00", [23 x i8] zeroinitializer }, align 32
@lcd_init._entry_ptr = internal global ptr @lcd_init._entry, section ".printk_index", align 4
@da8xx_fb_config_clk_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to set clock rate at %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da8xx_fb_config_clk_divider\00", [36 x i8] zeroinitializer }, align 32
@da8xx_fb_config_clk_divider._entry_ptr = internal global ptr @da8xx_fb_config_clk_divider._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@reg_context.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.7 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.8 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.9 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.10 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_context.11 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1276117250, i64 1327499264, i64 1327501312]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 4, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [11 x i64] [i64 9, i64 32, i64 1074021890, i64 1074021891, i64 1074021894, i64 1074021897, i64 1074021898, i64 1074021920, i64 2147763713, i64 2147763715, i64 2147763717]
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"da8xx_fb_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1655, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1659, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"fb_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1653, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1344, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"da8xx_fb_reg_base\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 125, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1356, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1358, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"lcd_revision\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 126, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1375, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1401, i32 62 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"da8xx_fb_var\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 174, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1431, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"da8xx_fb_fix\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 176, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1451, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"da8xx_fb_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1297, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1488, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1491, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1495, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1504, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"lcdc_irq_handler\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 127, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"frame_done_wq\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 128, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1512, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"known_lcd_panels\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 187, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1323, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1326, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 190, i32 21 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 204, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 219, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 21 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1276, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"frame_done_flag\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 295, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 776, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private constant [34 x i8] c"../drivers/video/fbdev/da8xx-fb.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 705, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 156, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"reg_context.0\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"reg_context.1\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"reg_context.2\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [14 x i8] c"reg_context.3\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [14 x i8] c"reg_context.4\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [14 x i8] c"reg_context.5\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"reg_context.6\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [14 x i8] c"reg_context.7\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [14 x i8] c"reg_context.8\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [14 x i8] c"reg_context.9\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [15 x i8] c"reg_context.10\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [15 x i8] c"reg_context.11\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_da8xx_fb_driver_exit, ptr @__initcall__kmod_da8xx_fb__316_1663_da8xx_fb_driver_init6, ptr @da8xx_fb_config_clk_divider._entry, ptr @da8xx_fb_config_clk_divider._entry_ptr, ptr @da8xx_fb_driver_exit, ptr @da8xx_fb_get_videomode._entry, ptr @da8xx_fb_get_videomode._entry.34, ptr @da8xx_fb_get_videomode._entry_ptr, ptr @da8xx_fb_get_videomode._entry_ptr.37, ptr @da8xxfb_set_par._entry, ptr @da8xxfb_set_par._entry_ptr, ptr @fb_probe._entry, ptr @fb_probe._entry.10, ptr @fb_probe._entry.15, ptr @fb_probe._entry.18, ptr @fb_probe._entry.24, ptr @fb_probe._entry.27, ptr @fb_probe._entry.7, ptr @fb_probe._entry_ptr, ptr @fb_probe._entry_ptr.13, ptr @fb_probe._entry_ptr.17, ptr @fb_probe._entry_ptr.20, ptr @fb_probe._entry_ptr.26, ptr @fb_probe._entry_ptr.29, ptr @fb_probe._entry_ptr.9, ptr @lcd_disable_raster._entry, ptr @lcd_disable_raster._entry_ptr, ptr @lcd_init._entry, ptr @lcd_init._entry_ptr, ptr @da8xx_fb_driver, ptr @.str, ptr @fb_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da8xx_fb_reg_base, ptr @.str.6, ptr @.str.8, ptr @lcd_revision, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @da8xx_fb_var, ptr @.str.16, ptr @da8xx_fb_fix, ptr @.str.19, ptr @da8xx_fb_ops, ptr @fb_probe.__key, ptr @.str.21, ptr @fb_probe.__key.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @lcdc_irq_handler, ptr @fb_probe.__key.30, ptr @frame_done_wq, ptr @.str.31, ptr @known_lcd_panels, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @frame_done_flag, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @reg_context.0, ptr @reg_context.1, ptr @reg_context.2, ptr @reg_context.3, ptr @reg_context.4, ptr @reg_context.5, ptr @reg_context.6, ptr @reg_context.7, ptr @reg_context.8, ptr @reg_context.9, ptr @reg_context.10, ptr @reg_context.11], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_revision to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdc_irq_handler to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_done_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @known_lcd_panels to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_get_videomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_get_videomode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xxfb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_done_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_disable_raster._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_fb_config_clk_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_context.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da8xx_fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da8xx_fb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da8xx_fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @da8xx_fb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_probe(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %device, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %device, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %type.i = getelementptr inbounds %struct.da8xx_lcdc_platform_data, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr @known_lcd_panels, align 4
  %call2.i = tail call i32 @strcmp(ptr noundef %type.i, ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.if.end5_crit_edge, label %for.inc.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.i:                                        ; preds = %if.end
  %5 = load ptr, ptr getelementptr inbounds ([4 x %struct.fb_videomode], ptr @known_lcd_panels, i32 0, i32 1), align 4
  %call2.1.i = tail call i32 @strcmp(ptr noundef %type.i, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %cmp3.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %cmp3.1.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.1.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.1.i:                                      ; preds = %for.inc.i
  %6 = load ptr, ptr getelementptr inbounds ([4 x %struct.fb_videomode], ptr @known_lcd_panels, i32 0, i32 2), align 4
  %call2.2.i = tail call i32 @strcmp(ptr noundef %type.i, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %cmp3.2.i = icmp eq i32 %call2.2.i, 0
  br i1 %cmp3.2.i, label %for.inc.1.i.if.end5_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end5_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %7 = load ptr, ptr getelementptr inbounds ([4 x %struct.fb_videomode], ptr @known_lcd_panels, i32 0, i32 3), align 4
  %call2.3.i = tail call i32 @strcmp(ptr noundef %type.i, ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3.i)
  %cmp3.3.i = icmp eq i32 %call2.3.i, 0
  br i1 %cmp3.3.i, label %for.inc.2.i.if.end5_crit_edge, label %da8xx_fb_get_videomode.exit.thread

for.inc.2.i.if.end5_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

da8xx_fb_get_videomode.exit.thread:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end5:                                          ; preds = %for.inc.2.i.if.end5_crit_edge, %for.inc.1.i.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %lcdc_info.026.lcssa.i = phi ptr [ @known_lcd_panels, %if.end.if.end5_crit_edge ], [ getelementptr inbounds ([4 x %struct.fb_videomode], ptr @known_lcd_panels, i32 0, i32 1), %for.inc.i.if.end5_crit_edge ], [ getelementptr inbounds ([4 x %struct.fb_videomode], ptr @known_lcd_panels, i32 0, i32 2), %for.inc.1.i.if.end5_crit_edge ], [ getelementptr inbounds ([4 x %struct.fb_videomode], ptr @known_lcd_panels, i32 0, i32 3), %for.inc.2.i.if.end5_crit_edge ]
  %8 = ptrtoint ptr %lcdc_info.026.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcdc_info.026.lcssa.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %9) #11
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %device, i32 noundef 0) #8
  store ptr %call6, ptr @da8xx_fb_reg_base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %cmp.i275 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %12 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !137
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end28 [
    i32 1276117250, label %if.end20.sw.epilog_crit_edge
    i32 1327499264, label %if.end20.sw.bb25_crit_edge
    i32 1327501312, label %if.end20.sw.bb25_crit_edge287
  ]

if.end20.sw.bb25_crit_edge287:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end20.sw.bb25_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end20.sw.bb25_crit_edge, %if.end20.sw.bb25_crit_edge287
  br label %sw.epilog

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !137
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %16) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %sw.bb25, %if.end20.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %do.end28 ], [ 2, %sw.bb25 ], [ 1, %if.end20.sw.epilog_crit_edge ]
  store i32 %.sink, ptr @lcd_revision, align 4
  %controller_data = getelementptr inbounds %struct.da8xx_lcdc_platform_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controller_data, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %sw.epilog.err_pm_runtime_disable_crit_edge, label %if.end32

sw.epilog.err_pm_runtime_disable_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_runtime_disable

if.end32:                                         ; preds = %sw.epilog
  %call34 = tail call ptr @framebuffer_alloc(i32 noundef 332, ptr noundef %dev) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end32.err_pm_runtime_disable_crit_edge, label %if.end37

if.end32.err_pm_runtime_disable_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_runtime_disable

if.end37:                                         ; preds = %if.end32
  %par38 = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 30
  %19 = ptrtoint ptr %par38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %par38, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %20, align 4
  %lcdc_clk = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 8
  %22 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %lcdc_clk, align 4
  %call42 = tail call i32 @clk_get_rate(ptr noundef %call12) #8
  %lcdc_clk_rate = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 18
  %23 = ptrtoint ptr %lcdc_clk_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call42, ptr %lcdc_clk_rate, align 4
  %call44 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  %lcd_supply = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 19
  %24 = ptrtoint ptr %lcd_supply to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call44, ptr %lcd_supply, align 4
  %cmp.i276 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end37
  %cmp50 = icmp eq ptr %call44, inttoptr (i32 -517 to ptr)
  br i1 %cmp50, label %if.then47.err_release_fb_crit_edge, label %if.end52

if.then47.err_release_fb_crit_edge:               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_fb

if.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %lcd_supply to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %lcd_supply, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end37
  %call55 = tail call i32 @regulator_enable(ptr noundef %call44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else.if.end59_crit_edge, label %if.else.err_release_fb_crit_edge

if.else.err_release_fb_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_fb

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.else.if.end59_crit_edge, %if.end52
  tail call void @fb_videomode_to_var(ptr noundef nonnull @da8xx_fb_var, ptr noundef nonnull %lcdc_info.026.lcssa.i) #8
  %cfg = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 22
  %26 = call ptr @memcpy(ptr %cfg, ptr %18, i32 36)
  %27 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !138
  %28 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #8, !srcloc !138
  %29 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i277 = icmp eq i32 %29, 2
  br i1 %cmp.i277, label %if.then.i, label %if.end59.da8xx_fb_lcd_reset.exit_crit_edge

if.end59.da8xx_fb_lcd_reset.exit_crit_edge:       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %da8xx_fb_lcd_reset.exit

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %30 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %30, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #8, !srcloc !138
  %31 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 8) #8, !srcloc !138
  %32 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %32, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #8, !srcloc !138
  br label %da8xx_fb_lcd_reset.exit

da8xx_fb_lcd_reset.exit:                          ; preds = %if.then.i, %if.end59.da8xx_fb_lcd_reset.exit_crit_edge
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %lcdc_info.026.lcssa.i, i32 0, i32 2
  %33 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %lcdc_info.026.lcssa.i, i32 0, i32 3
  %35 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres, align 4
  %mul = mul i32 %36, %34
  %bpp = getelementptr inbounds %struct.lcd_ctrl_config, ptr %18, i32 0, i32 4
  %37 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bpp, align 4
  %mul60 = mul i32 %mul, %38
  %vram_size = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 4
  %39 = ptrtoint ptr %vram_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul60, ptr %vram_size, align 4
  %40 = load i32, ptr %xres, align 4
  %41 = load i32, ptr %bpp, align 4
  %mul63 = mul i32 %41, %40
  %div272 = lshr i32 %mul63, 3
  %call64 = tail call i32 @lcm(i32 noundef %div272, i32 noundef 4096) #13
  %div66273 = lshr i32 %mul60, 3
  %sub = add nsw i32 %div66273, -1
  %add = add i32 %sub, %call64
  %42 = urem i32 %add, %call64
  %mul68 = sub i32 %add, %42
  %mul71 = shl i32 %mul68, 1
  %43 = ptrtoint ptr %vram_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul71, ptr %vram_size, align 4
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %20, align 4
  %vram_phys = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 3
  %call.i278 = tail call ptr @dmam_alloc_attrs(ptr noundef %45, i32 noundef %mul71, ptr noundef %vram_phys, i32 noundef 3265, i32 noundef 0) #8
  %vram_virt = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 5
  %46 = ptrtoint ptr %vram_virt to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i278, ptr %vram_virt, align 4
  %tobool77.not = icmp eq ptr %call.i278, null
  br i1 %tobool77.not, label %do.end81, label %if.end83

do.end81:                                         ; preds = %da8xx_fb_lcd_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %err_release_fb

if.end83:                                         ; preds = %da8xx_fb_lcd_reset.exit
  %47 = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 25
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i278, ptr %47, align 4
  %49 = ptrtoint ptr %vram_phys to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vram_phys, align 4
  store i32 %50, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @da8xx_fb_fix, i32 0, i32 1), align 4
  %51 = ptrtoint ptr %vram_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vram_size, align 4
  store i32 %52, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @da8xx_fb_fix, i32 0, i32 2), align 4
  %53 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xres, align 4
  %55 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bpp, align 4
  %mul89 = mul i32 %56, %54
  %div90274 = lshr i32 %mul89, 3
  store i32 %div90274, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @da8xx_fb_fix, i32 0, i32 9), align 4
  %57 = load i32, ptr %vram_phys, align 4
  %dma_start = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 6
  %58 = ptrtoint ptr %dma_start to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dma_start, align 4
  %59 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %yres, align 4
  %61 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @da8xx_fb_fix, i32 0, i32 9), align 4
  %mul94 = mul i32 %61, %60
  %add95 = add i32 %57, -1
  %sub96 = add i32 %add95, %mul94
  %dma_end = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 7
  %62 = ptrtoint ptr %dma_end to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub96, ptr %dma_end, align 4
  %63 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %20, align 4
  %p_palette_base = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 1
  %call.i279 = tail call ptr @dmam_alloc_attrs(ptr noundef %64, i32 noundef 256, ptr noundef %p_palette_base, i32 noundef 3265, i32 noundef 0) #8
  %v_palette_base = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 2
  %65 = ptrtoint ptr %v_palette_base to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i279, ptr %v_palette_base, align 4
  %tobool100.not = icmp eq ptr %call.i279, null
  br i1 %tobool100.not, label %do.end104, label %if.end106

do.end104:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %err_release_fb

if.end106:                                        ; preds = %if.end83
  %call107 = tail call i32 @platform_get_irq(ptr noundef %device, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 9
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call107, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp109 = icmp slt i32 %call107, 0
  br i1 %cmp109, label %if.end106.err_release_fb_crit_edge, label %if.end111

if.end106.err_release_fb_crit_edge:               ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_fb

if.end111:                                        ; preds = %if.end106
  %67 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp112 = icmp eq i32 %68, 0
  %cond = zext i1 %cmp112 to i32
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @da8xx_fb_var, i32 0, i32 7), align 4
  %69 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bpp, align 4
  store i32 %70, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @da8xx_fb_var, i32 0, i32 6), align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 2
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %flags, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 7
  %72 = call ptr @memcpy(ptr %fix, ptr @da8xx_fb_fix, i32 68)
  %var = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 6
  %73 = call ptr @memcpy(ptr %var, ptr @da8xx_fb_var, i32 160)
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 20
  %74 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @da8xx_fb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 20
  %pseudo_palette114 = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 27
  %75 = ptrtoint ptr %pseudo_palette114 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %pseudo_palette, ptr %pseudo_palette114, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 6, i32 6
  %76 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %77)
  %cmp116 = icmp ult i32 %77, 9
  %cond117 = select i1 %cmp116, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 7, i32 5
  %78 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond117, ptr %visual, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 12
  %call119 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end111.err_release_fb_crit_edge

if.end111.err_release_fb_crit_edge:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_fb

if.end122:                                        ; preds = %if.end111
  %palette_sz = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 10
  %79 = ptrtoint ptr %palette_sz to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %palette_sz, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %call34, i32 0, i32 12, i32 1
  %81 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %len, align 4
  store i32 128, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @da8xx_fb_var, i32 0, i32 13), align 4
  %call124 = tail call i32 @fb_set_var(ptr noundef nonnull %call34, ptr noundef nonnull @da8xx_fb_var) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %device, i32 0, i32 3, i32 8
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call34, ptr %driver_data.i.i, align 4
  %vsync_wait = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %vsync_wait, ptr noundef nonnull @.str.21, ptr noundef nonnull @fb_probe.__key) #8
  %vsync_timeout = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 14
  %83 = ptrtoint ptr %vsync_timeout to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 20, ptr %vsync_timeout, align 4
  %which_dma_channel_done = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 16
  %84 = ptrtoint ptr %which_dma_channel_done to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %which_dma_channel_done, align 4
  %lock_for_chan_update = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock_for_chan_update, ptr noundef nonnull @.str.23, ptr noundef nonnull @fb_probe.__key.22, i16 noundef signext 3) #8
  %call132 = tail call i32 @register_framebuffer(ptr noundef nonnull %call34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %do.end137, label %if.end139

do.end137:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  br label %err_dealloc_cmap

if.end139:                                        ; preds = %if.end122
  %freq_transition.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %20, i32 0, i32 17
  %85 = ptrtoint ptr %freq_transition.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @lcd_da8xx_cpufreq_transition, ptr %freq_transition.i, align 4
  %call.i280 = tail call i32 @cpufreq_register_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool141.not = icmp eq i32 %call.i280, 0
  br i1 %tobool141.not, label %if.end147, label %do.end145

do.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %err_cpu_freq

if.end147:                                        ; preds = %if.end139
  %86 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp148 = icmp eq i32 %86, 1
  br i1 %cmp148, label %if.end147.if.end154_crit_edge, label %do.body151

if.end147.if.end154_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

do.body151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__init_waitqueue_head(ptr noundef nonnull @frame_done_wq, ptr noundef nonnull @.str.31, ptr noundef nonnull @fb_probe.__key.30) #8
  br label %if.end154

if.end154:                                        ; preds = %do.body151, %if.end147.if.end154_crit_edge
  %storemerge = phi ptr [ @lcdc_irq_handler_rev02, %do.body151 ], [ @lcdc_irq_handler_rev01, %if.end147.if.end154_crit_edge ]
  store ptr %storemerge, ptr @lcdc_irq_handler, align 4
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %call.i281 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %88, ptr noundef nonnull %storemerge, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool158.not = icmp eq i32 %call.i281, 0
  br i1 %tobool158.not, label %if.end154.cleanup_crit_edge, label %irq_freq

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

irq_freq:                                         ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %call.i283 = tail call i32 @cpufreq_unregister_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #8
  br label %err_cpu_freq

err_cpu_freq:                                     ; preds = %irq_freq, %do.end145
  %ret.0 = phi i32 [ %call.i280, %do.end145 ], [ %call.i281, %irq_freq ]
  tail call void @unregister_framebuffer(ptr noundef nonnull %call34) #8
  br label %err_dealloc_cmap

err_dealloc_cmap:                                 ; preds = %err_cpu_freq, %do.end137
  %ret.1 = phi i32 [ -22, %do.end137 ], [ %ret.0, %err_cpu_freq ]
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_release_fb

err_release_fb:                                   ; preds = %err_dealloc_cmap, %if.end111.err_release_fb_crit_edge, %if.end106.err_release_fb_crit_edge, %do.end104, %do.end81, %if.else.err_release_fb_crit_edge, %if.then47.err_release_fb_crit_edge
  %ret.2 = phi i32 [ %call119, %if.end111.err_release_fb_crit_edge ], [ %ret.1, %err_dealloc_cmap ], [ -22, %do.end104 ], [ -22, %do.end81 ], [ %call55, %if.else.err_release_fb_crit_edge ], [ -517, %if.then47.err_release_fb_crit_edge ], [ -2, %if.end106.err_release_fb_crit_edge ]
  tail call void @framebuffer_release(ptr noundef nonnull %call34) #8
  br label %err_pm_runtime_disable

err_pm_runtime_disable:                           ; preds = %err_release_fb, %if.end32.err_pm_runtime_disable_crit_edge, %sw.epilog.err_pm_runtime_disable_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_release_fb ], [ -22, %sw.epilog.err_pm_runtime_disable_crit_edge ], [ -12, %if.end32.err_pm_runtime_disable_crit_edge ]
  %call.i284 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pm_runtime_disable, %if.end154.cleanup_crit_edge, %do.end17, %if.then8, %da8xx_fb_get_videomode.exit.thread, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %10, %if.then8 ], [ %11, %do.end17 ], [ %ret.3, %err_pm_runtime_disable ], [ 0, %if.end154.cleanup_crit_edge ], [ -19, %da8xx_fb_get_videomode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %freq_transition.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @cpufreq_unregister_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #8
  %lcd_supply = getelementptr inbounds %struct.da8xx_fb_par, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %lcd_supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_supply, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @lcd_disable_raster(i32 noundef 0)
  %6 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !138
  %7 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i20 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #8, !srcloc !138
  tail call void @unregister_framebuffer(ptr noundef %1) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %dev7, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev7, i1 noundef zeroext true) #8
  tail call void @framebuffer_release(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcdc_irq_handler_rev01(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !137
  %2 = and i32 %1, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %2)
  %.not = icmp eq i32 %2, 36
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !137
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.lcd_disable_raster.exit_crit_edge, label %if.then.i

if.then.lcd_disable_raster.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_disable_raster.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %4, -2
  %5 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %and1.i) #8, !srcloc !138
  br label %lcd_disable_raster.exit

lcd_disable_raster.exit:                          ; preds = %if.then.i, %if.then.lcd_disable_raster.exit_crit_edge
  %6 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i41 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %1) #8, !srcloc !138
  %7 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.then.i43, label %lcd_disable_raster.exit.if.end.i_crit_edge

lcd_disable_raster.exit.if.end.i_crit_edge:       ; preds = %lcd_disable_raster.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i43:                                      ; preds = %lcd_disable_raster.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 8) #8, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i43, %lcd_disable_raster.exit.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  %10 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1.i = icmp eq i32 %10, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  %13 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !137
  %and.i44 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %if.then4.i, label %if.end3.i.if.end22_crit_edge

if.end3.i.if.end22_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %14, 1
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or.i) #8, !srcloc !138
  br label %if.end22

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %16 = load ptr, ptr @da8xx_fb_reg_base, align 4
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  %add.ptr.i.i46 = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #8, !srcloc !137
  %and.i47 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %if.then5.lcd_disable_raster.exit52_crit_edge, label %if.then.i51

if.then5.lcd_disable_raster.exit52_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_disable_raster.exit52

if.then.i51:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i49 = and i32 %17, -2
  %18 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70.i50 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i50, i32 %and1.i49) #8, !srcloc !138
  br label %lcd_disable_raster.exit52

lcd_disable_raster.exit52:                        ; preds = %if.then.i51, %if.then5.lcd_disable_raster.exit52_crit_edge
  %19 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %1) #8, !srcloc !138
  %20 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i54 = getelementptr i8, ptr %20, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #8, !srcloc !137
  %and7 = and i32 %21, -17
  %22 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i55 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %and7) #8, !srcloc !138
  tail call fastcc void @lcd_blit(i32 noundef 1, ptr noundef %arg)
  br label %if.end22

if.else8:                                         ; preds = %if.else
  %add.ptr.i56 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %1) #8, !srcloc !138
  %and9 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else8.if.end_crit_edge, label %if.then11

if.else8.if.end_crit_edge:                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  %which_dma_channel_done = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 16
  %23 = ptrtoint ptr %which_dma_channel_done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %which_dma_channel_done, align 4
  %dma_start = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 6
  %24 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_start, align 4
  %26 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i57 = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %25) #8, !srcloc !138
  %dma_end = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 7
  %27 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_end, align 4
  %29 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i58 = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %28) #8, !srcloc !138
  %vsync_flag = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 13
  %30 = ptrtoint ptr %vsync_flag to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %vsync_flag, align 4
  %vsync_wait = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %vsync_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else8.if.end_crit_edge
  %and12 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end22_crit_edge, label %if.then14

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %which_dma_channel_done15 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 16
  %31 = ptrtoint ptr %which_dma_channel_done15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %which_dma_channel_done15, align 4
  %dma_start16 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 6
  %32 = ptrtoint ptr %dma_start16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_start16, align 4
  %34 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i59 = getelementptr i8, ptr %34, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %33) #8, !srcloc !138
  %dma_end17 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 7
  %35 = ptrtoint ptr %dma_end17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_end17, align 4
  %37 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i60 = getelementptr i8, ptr %37, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %36) #8, !srcloc !138
  %vsync_flag18 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 13
  %38 = ptrtoint ptr %vsync_flag18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %vsync_flag18, align 4
  %vsync_wait19 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %vsync_wait19, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end.if.end22_crit_edge, %lcd_disable_raster.exit52, %if.then4.i, %if.end3.i.if.end22_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcdc_irq_handler_rev02(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 92
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !137
  %2 = and i32 %1, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %2)
  %.not = icmp eq i32 %2, 36
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !137
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.lcd_disable_raster.exit_crit_edge, label %if.then.i

if.then.lcd_disable_raster.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_disable_raster.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %4, -2
  %5 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %and1.i) #8, !srcloc !138
  br label %lcd_disable_raster.exit

lcd_disable_raster.exit:                          ; preds = %if.then.i, %if.then.lcd_disable_raster.exit_crit_edge
  %6 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i43 = getelementptr i8, ptr %6, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %1) #8, !srcloc !138
  %7 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.then.i45, label %lcd_disable_raster.exit.if.end.i_crit_edge

lcd_disable_raster.exit.if.end.i_crit_edge:       ; preds = %lcd_disable_raster.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i45:                                      ; preds = %lcd_disable_raster.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44, i32 8) #8, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i45, %lcd_disable_raster.exit.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  %10 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1.i = icmp eq i32 %10, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  %13 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !137
  %and.i46 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %if.then4.i, label %if.end3.i.if.end24_crit_edge

if.end3.i.if.end24_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %14, 1
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or.i) #8, !srcloc !138
  br label %if.end24

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %16 = load ptr, ptr @da8xx_fb_reg_base, align 4
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  %add.ptr.i.i48 = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #8, !srcloc !137
  %and.i49 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %if.then5.lcd_disable_raster.exit54_crit_edge, label %if.then.i53

if.then5.lcd_disable_raster.exit54_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_disable_raster.exit54

if.then.i53:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i51 = and i32 %17, -2
  %18 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70.i52 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i52, i32 %and1.i51) #8, !srcloc !138
  br label %lcd_disable_raster.exit54

lcd_disable_raster.exit54:                        ; preds = %if.then.i53, %if.then5.lcd_disable_raster.exit54_crit_edge
  %19 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i55 = getelementptr i8, ptr %19, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %1) #8, !srcloc !138
  %20 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i56 = getelementptr i8, ptr %20, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 64) #8, !srcloc !138
  tail call fastcc void @lcd_blit(i32 noundef 1, ptr noundef %arg)
  br label %if.end24

if.else6:                                         ; preds = %if.else
  %add.ptr.i57 = getelementptr i8, ptr %16, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %1) #8, !srcloc !138
  %and7 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else6.if.end_crit_edge, label %if.then9

if.else6.if.end_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %which_dma_channel_done = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 16
  %21 = ptrtoint ptr %which_dma_channel_done to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %which_dma_channel_done, align 4
  %dma_start = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 6
  %22 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_start, align 4
  %24 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i58 = getelementptr i8, ptr %24, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %23) #8, !srcloc !138
  %dma_end = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 7
  %25 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_end, align 4
  %27 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %26) #8, !srcloc !138
  %vsync_flag = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 13
  %28 = ptrtoint ptr %vsync_flag to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %vsync_flag, align 4
  %vsync_wait = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %vsync_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else6.if.end_crit_edge
  %and10 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end18_crit_edge, label %if.then12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %which_dma_channel_done13 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 16
  %29 = ptrtoint ptr %which_dma_channel_done13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %which_dma_channel_done13, align 4
  %dma_start14 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 6
  %30 = ptrtoint ptr %dma_start14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_start14, align 4
  %32 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i60 = getelementptr i8, ptr %32, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %31) #8, !srcloc !138
  %dma_end15 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 7
  %33 = ptrtoint ptr %dma_end15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_end15, align 4
  %35 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i61 = getelementptr i8, ptr %35, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %34) #8, !srcloc !138
  %vsync_flag16 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 13
  %36 = ptrtoint ptr %vsync_flag16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %vsync_flag16, align 4
  %vsync_wait17 = getelementptr inbounds %struct.da8xx_fb_par, ptr %arg, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %vsync_wait17, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end.if.end18_crit_edge
  %and19 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @frame_done_flag, align 4
  tail call void @__wake_up(ptr noundef nonnull @frame_done_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge, %lcd_disable_raster.exit54, %if.then4.i, %if.end3.i.if.end24_crit_edge
  %37 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i62 = getelementptr i8, ptr %37, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #8, !srcloc !138
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %3, 3
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %5, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 8, label %if.end.sw.bb_crit_edge211
    i32 4, label %sw.bb15
    i32 16, label %sw.bb33
    i32 24, label %sw.bb51
    i32 32, label %sw.bb65
  ]

if.end.sw.bb_crit_edge211:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge211
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %8 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %10 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %green, align 4
  %length8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %length8, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %12 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %blue, align 4
  %length11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %length11, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %14 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %transp, align 4
  %length14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %length14, align 4
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %red16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %16 = ptrtoint ptr %red16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %red16, align 4
  %length19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %length19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %length19, align 4
  %green20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %18 = ptrtoint ptr %green20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %green20, align 4
  %length23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %length23, align 4
  %blue24 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %20 = ptrtoint ptr %blue24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %blue24, align 4
  %length27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %length27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %length27, align 4
  %transp28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %22 = ptrtoint ptr %transp28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %transp28, align 4
  %length31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %length31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %length31, align 4
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %red34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %24 = ptrtoint ptr %red34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %red34, align 4
  %length37 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %length37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %length37, align 4
  %green38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %26 = ptrtoint ptr %green38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %green38, align 4
  %length41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %length41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %length41, align 4
  %blue42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %28 = ptrtoint ptr %blue42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue42, align 4
  %length45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %length45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %length45, align 4
  %transp46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %30 = ptrtoint ptr %transp46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %transp46, align 4
  %length49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %length49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %length49, align 4
  br label %sw.epilog.sink.split

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %red52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %32 = ptrtoint ptr %red52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %red52, align 4
  %length55 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %length55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length55, align 4
  %green56 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %34 = ptrtoint ptr %green56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %green56, align 4
  %length59 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %length59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %length59, align 4
  %blue60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %36 = ptrtoint ptr %blue60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %blue60, align 4
  %length63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %length63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %length63, align 4
  br label %sw.epilog.sink.split

sw.bb65:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %transp66 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %38 = ptrtoint ptr %transp66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 24, ptr %transp66, align 4
  %length69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %length69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length69, align 4
  %red70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %40 = ptrtoint ptr %red70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %red70, align 4
  %length73 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %length73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %length73, align 4
  %green74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %42 = ptrtoint ptr %green74 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %green74, align 4
  %length77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %length77 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %length77, align 4
  %blue78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %44 = ptrtoint ptr %blue78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %blue78, align 4
  %length81 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %length81 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %length81, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb65, %sw.bb51, %sw.bb33, %sw.bb15, %sw.bb
  %.sink = phi i32 [ 0, %sw.bb65 ], [ 0, %sw.bb51 ], [ 0, %sw.bb33 ], [ 2, %sw.bb15 ], [ 0, %sw.bb ]
  %nonstd82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %46 = ptrtoint ptr %nonstd82 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %nonstd82, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %msb_right, align 4
  %msb_right85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %48 = ptrtoint ptr %msb_right85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %msb_right85, align 4
  %msb_right87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %49 = ptrtoint ptr %msb_right87 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %msb_right87, align 4
  %msb_right89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %50 = ptrtoint ptr %msb_right89 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %msb_right89, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %51 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %yres_virtual, align 4
  %mul90 = mul i32 %52, %mul
  %vram_size = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %vram_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vram_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul90, i32 %54)
  %cmp91 = icmp ugt i32 %mul90, %54
  br i1 %cmp91, label %if.then92, label %sw.epilog.if.end95_crit_edge

sw.epilog.if.end95_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then92:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %54, %mul
  %55 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div, ptr %yres_virtual, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %sw.epilog.if.end95_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %56 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %yres, align 4
  %58 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp97 = icmp ugt i32 %57, %59
  br i1 %cmp97, label %if.then98, label %if.end95.if.end101_crit_edge

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %yres, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end95.if.end101_crit_edge
  %61 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %5)
  %cmp103 = icmp ugt i32 %62, %5
  br i1 %cmp103, label %if.then104, label %if.end101.if.end107_crit_edge

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %5, ptr %var, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end101.if.end107_crit_edge
  %64 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %var, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %66 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xoffset, align 4
  %add = add i32 %67, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp110 = icmp ugt i32 %add, %5
  br i1 %cmp110, label %if.then111, label %if.end107.if.end115_crit_edge

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %5, %65
  %68 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub, ptr %xoffset, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end107.if.end115_crit_edge
  %69 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %yres, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %71 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %yoffset, align 4
  %add117 = add i32 %72, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %add117, i32 %59)
  %cmp119 = icmp ugt i32 %add117, %59
  br i1 %cmp119, label %if.then120, label %if.end115.if.end125_crit_edge

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %sub123 = sub i32 %59, %70
  %73 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub123, ptr %yoffset, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end115.if.end125_crit_edge
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %74 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pixclock, align 4
  %div.i.i = udiv i32 1000000000, %75
  %mul.i.i = mul i32 %div.i.i, 1000
  %lcdc_clk_rate1.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 18
  %76 = ptrtoint ptr %lcdc_clk_rate1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lcdc_clk_rate1.i.i, align 4
  %div2.i.i = udiv i32 %77, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %div2.i.i)
  %cmp.i.i = icmp ult i32 %mul.i.i, %div2.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %lcdc_clk.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 8
  %78 = ptrtoint ptr %lcdc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lcdc_clk.i.i, align 4
  %mul3.i.i = mul i32 %div.i.i, 255000
  %call.i.i = tail call i32 @clk_round_rate(ptr noundef %79, i32 noundef %mul3.i.i) #8
  br label %da8xx_fb_round_clk.exit

if.else.i.i:                                      ; preds = %if.end125
  %div425.i.i = lshr i32 %77, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %div425.i.i)
  %cmp5.i.i = icmp ugt i32 %mul.i.i, %div425.i.i
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else10.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %lcdc_clk7.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %lcdc_clk7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lcdc_clk7.i.i, align 4
  %mul8.i.i = mul i32 %div.i.i, 2000
  %call9.i.i = tail call i32 @clk_round_rate(ptr noundef %81, i32 noundef %mul8.i.i) #8
  br label %da8xx_fb_round_clk.exit

if.else10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div11.i.i = udiv i32 %77, %mul.i.i
  %phi.bo.i = mul i32 %div11.i.i, 1000
  br label %da8xx_fb_round_clk.exit

da8xx_fb_round_clk.exit:                          ; preds = %if.else10.i.i, %if.then6.i.i, %if.then.i.i
  %lcdc_clk_rate.0.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call9.i.i, %if.then6.i.i ], [ %77, %if.else10.i.i ]
  %lcdc_clk_div.0.i.i = phi i32 [ 255000, %if.then.i.i ], [ 2000, %if.then6.i.i ], [ %phi.bo.i, %if.else10.i.i ]
  %div.i = udiv i32 %lcdc_clk_rate.0.i, %lcdc_clk_div.0.i.i
  %div1.i = udiv i32 1000000000, %div.i
  %82 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div1.i, ptr %pixclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %da8xx_fb_round_clk.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %da8xx_fb_round_clk.exit ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da8xxfb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !137
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lcd_disable_raster(i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  tail call void @fb_var_to_videomode(ptr noundef %mode, ptr noundef %var) #8
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %cfg = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22
  %bpp = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 4
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp = icmp slt i32 %5, 9
  %cond = select i1 %cmp, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %visual, align 4
  %xres = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres, align 4
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpp, align 4
  %mul = mul i32 %11, %9
  %div69 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div69, ptr %line_length, align 4
  %call.i = tail call fastcc i32 @da8xx_fb_calc_config_clk_divider(ptr noundef %1, ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lcd_init.exit

if.end.i:                                         ; preds = %if.end
  %sync.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 11
  %13 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync.i, align 4
  %and.i71 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool1.not.i = icmp eq i32 %and.i71, 0
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %15, i32 52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #8
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %16, 4194304
  %17 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %or.i) #8, !srcloc !138
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %16, -4194305
  %18 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %and5.i) #8, !srcloc !138
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then2.i
  %dma_burst_sz.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 3
  %19 = ptrtoint ptr %dma_burst_sz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_burst_sz.i, align 4
  %fifo_th.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 11
  %21 = ptrtoint ptr %fifo_th.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifo_th.i, align 4
  %23 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !137
  %and.i.i = and i32 %24, 1
  %25 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %20, label %sw.default.i.i [
    i32 1, label %if.end6.i.lcd_cfg_dma.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb3.i.i
    i32 8, label %sw.bb5.i.i
  ]

if.end6.i.lcd_cfg_dma.exit.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_cfg_dma.exit.i

sw.bb1.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %or2.i.i = or i32 %and.i.i, 16
  br label %lcd_cfg_dma.exit.i

sw.bb3.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %or4.i.i = or i32 %and.i.i, 32
  br label %lcd_cfg_dma.exit.i

sw.bb5.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i.i = or i32 %and.i.i, 48
  br label %lcd_cfg_dma.exit.i

sw.default.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %or8.i.i = or i32 %and.i.i, 64
  br label %lcd_cfg_dma.exit.i

lcd_cfg_dma.exit.i:                               ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %if.end6.i.lcd_cfg_dma.exit.i_crit_edge
  %reg.0.i.i = phi i32 [ %or8.i.i, %sw.default.i.i ], [ %or6.i.i, %sw.bb5.i.i ], [ %or4.i.i, %sw.bb3.i.i ], [ %or2.i.i, %sw.bb1.i.i ], [ %and.i.i, %if.end6.i.lcd_cfg_dma.exit.i_crit_edge ]
  %shl.i.i = shl i32 %22, 8
  %or9.i.i = or i32 %reg.0.i.i, %shl.i.i
  %26 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %or9.i.i) #8, !srcloc !138
  %upper_margin.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 7
  %27 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %upper_margin.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 10
  %29 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vsync_len.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 8
  %31 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_margin.i, align 4
  %33 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i55.i = getelementptr i8, ptr %33, i32 48
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i) #8, !srcloc !137
  %and.i56.i = and i32 %34, 1023
  %shl.i57.i = shl i32 %28, 24
  %and2.i.i = shl i32 %32, 16
  %shl3.i.i = and i32 %and2.i.i, 16711680
  %or.i.i = or i32 %shl3.i.i, %shl.i57.i
  %sub.i.i = shl i32 %30, 10
  %and4.i.i = add i32 %sub.i.i, 64512
  %shl5.i.i = and i32 %and4.i.i, 64512
  %or6.i58.i = or i32 %or.i.i, %shl5.i.i
  %or7.i.i = or i32 %or6.i58.i, %and.i56.i
  %35 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %or7.i.i) #8, !srcloc !138
  %left_margin.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 5
  %36 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %left_margin.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 9
  %38 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hsync_len.i, align 4
  %right_margin.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 6
  %40 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %right_margin.i, align 4
  %42 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i59.i = getelementptr i8, ptr %42, i32 44
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59.i) #8, !srcloc !137
  %and.i60.i = and i32 %43, 1023
  %sub.i61.i = add i32 %37, -1
  %shl.i62.i = shl i32 %sub.i61.i, 24
  %sub2.i.i = add i32 %41, -1
  %and3.i.i = shl i32 %sub2.i.i, 16
  %shl4.i.i = and i32 %and3.i.i, 16711680
  %or.i63.i = or i32 %shl4.i.i, %shl.i62.i
  %sub5.i.i = add i32 %39, -1
  %and6.i.i = shl i32 %sub5.i.i, 10
  %shl7.i.i = and i32 %and6.i.i, 64512
  %or8.i64.i = or i32 %or.i63.i, %shl7.i.i
  %or9.i65.i = or i32 %or8.i64.i, %and.i60.i
  %44 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %44, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %or9.i65.i) #8, !srcloc !138
  %45 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i.i = icmp eq i32 %45, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %lcd_cfg_dma.exit.i.lcd_cfg_horizontal_sync.exit.i_crit_edge

lcd_cfg_dma.exit.i.lcd_cfg_horizontal_sync.exit.i_crit_edge: ; preds = %lcd_cfg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_cfg_horizontal_sync.exit.i

if.then.i.i:                                      ; preds = %lcd_cfg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %46, i32 52
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i) #8, !srcloc !137
  %and11.i.i = and i32 %47, -2013266176
  %and13.i.i = lshr i32 %sub2.i.i, 8
  %48 = and i32 %and13.i.i, 3
  %and16.i.i = lshr i32 %sub.i61.i, 4
  %49 = and i32 %and16.i.i, 48
  %and20.i.i = shl i32 %sub5.i.i, 21
  %shl21.i.i = and i32 %and20.i.i, 2013265920
  %or14.i.i = or i32 %shl21.i.i, %49
  %or18.i.i = or i32 %or14.i.i, %48
  %or22.i.i = or i32 %or18.i.i, %and11.i.i
  %50 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %50, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 %or22.i.i) #8, !srcloc !138
  br label %lcd_cfg_horizontal_sync.exit.i

lcd_cfg_horizontal_sync.exit.i:                   ; preds = %if.then.i.i, %lcd_cfg_dma.exit.i.lcd_cfg_horizontal_sync.exit.i_crit_edge
  %51 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i66.i = getelementptr i8, ptr %51, i32 40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66.i) #8, !srcloc !137
  %and.i67.i = and i32 %52, -643
  %53 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cfg, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %54, label %lcd_cfg_horizontal_sync.exit.i.do.end_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb8.i.i
  ]

lcd_cfg_horizontal_sync.exit.i.do.end_crit_edge:  ; preds = %lcd_cfg_horizontal_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb.i.i:                                        ; preds = %lcd_cfg_horizontal_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %mono_8bit_mode.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 8
  %56 = ptrtoint ptr %mono_8bit_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mono_8bit_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 2, i32 514
  %spec.select.i.i = or i32 %spec.select.v.i.i, %and.i67.i
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %lcd_cfg_horizontal_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %tft_alt_mode.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 6
  %58 = ptrtoint ptr %tft_alt_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tft_alt_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool4.not.i.i = icmp eq i8 %59, 0
  %spec.select68.v.i.i = select i1 %tobool4.not.i.i, i32 128, i32 8388736
  %spec.select68.i.i = or i32 %spec.select68.v.i.i, %and.i67.i
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %lcd_cfg_horizontal_sync.exit.i
  %ac_bias.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 1
  %60 = ptrtoint ptr %ac_bias.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ac_bias.i.i, align 4
  %ac_bias_intrpt.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 2
  %62 = ptrtoint ptr %ac_bias_intrpt.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ac_bias_intrpt.i.i, align 4
  %64 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %64, i32 52
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !137
  %and.i.i.i = and i32 %65, -1048576
  %shl.i.i.i = shl i32 %61, 8
  %shl1.i.i.i = shl i32 %63, 16
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or2.i.i.i = or i32 %or.i.i.i, %and.i.i.i
  %66 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %66, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %or2.i.i.i) #8, !srcloc !138
  %67 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %68)
  %cmp.i68.i = icmp eq i32 %68, 12
  br i1 %cmp.i68.i, label %land.lhs.true.i.i, label %sw.bb8.i.i.sw.epilog.i.i_crit_edge

sw.bb8.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %stn_565_mode.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 7
  %69 = ptrtoint ptr %stn_565_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %stn_565_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool9.not.i.i = icmp eq i8 %70, 0
  %or11.i.i = or i32 %and.i67.i, 16777216
  %spec.select69.i.i = select i1 %tobool9.not.i.i, i32 %and.i67.i, i32 %or11.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %land.lhs.true.i.i, %sw.bb8.i.i.sw.epilog.i.i_crit_edge, %sw.bb2.i.i, %sw.bb.i.i
  %reg.0.i69.i = phi i32 [ %and.i67.i, %sw.bb8.i.i.sw.epilog.i.i_crit_edge ], [ %spec.select.i.i, %sw.bb.i.i ], [ %spec.select68.i.i, %sw.bb2.i.i ], [ %spec.select69.i.i, %land.lhs.true.i.i ]
  %71 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp13.i.i = icmp eq i32 %71, 1
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.else.i.i

if.then15.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or16.i.i = or i32 %reg.0.i69.i, 64
  br label %if.end13.i

if.else.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70.i.i = getelementptr i8, ptr %72, i32 96
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i.i) #8, !srcloc !137
  %or18.i70.i = or i32 %73, 32
  %74 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i71.i.i = getelementptr i8, ptr %74, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i.i, i32 %or18.i70.i) #8, !srcloc !138
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i.i, %if.then15.i.i
  %reg.1.i.i = phi i32 [ %or16.i.i, %if.then15.i.i ], [ %reg.0.i69.i, %if.else.i.i ]
  %75 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i72.i.i = getelementptr i8, ptr %75, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i.i, i32 %reg.1.i.i) #8, !srcloc !138
  %76 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i73.i.i = getelementptr i8, ptr %76, i32 52
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i.i) #8, !srcloc !137
  %sync_edge.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 9
  %78 = ptrtoint ptr %sync_edge.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sync_edge.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool22.not.i.i = icmp eq i8 %79, 0
  %or24.i.i = or i32 %77, 50331648
  %or21.i.i = and i32 %77, -53477377
  %and26.i.i = or i32 %or21.i.i, 33554432
  %reg.2.i.i = select i1 %tobool22.not.i.i, i32 %and26.i.i, i32 %or24.i.i
  %80 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sync.i, align 4
  %and34.i.i = and i32 %reg.2.i.i, -3145729
  %and28.i.i = shl i32 %81, 21
  %82 = and i32 %and28.i.i, 2097152
  %83 = or i32 %82, %and34.i.i
  %and37.i.i = shl i32 %81, 19
  %84 = and i32 %and37.i.i, 1048576
  %85 = or i32 %83, %84
  %reg.4.i.i = xor i32 %85, 3145728
  %86 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i74.i.i = getelementptr i8, ptr %86, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i.i, i32 %reg.4.i.i) #8, !srcloc !138
  %87 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %88)
  %cmp15.i = icmp eq i32 %88, 12
  %spec.store.select.i = select i1 %cmp15.i, i32 16, i32 %88
  %89 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %xres, align 4
  %yres.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 21, i32 3
  %91 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %yres.i, align 4
  %raster_order.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 10
  %93 = ptrtoint ptr %raster_order.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %raster_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.store.select.i)
  %cmp.i71.i = icmp ugt i32 %spec.store.select.i, 16
  br i1 %cmp.i71.i, label %land.lhs.true.i72.i, label %if.end13.i.if.end.i.i_crit_edge

if.end13.i.if.end.i.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i72.i:                              ; preds = %if.end13.i
  %95 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp1.i.i = icmp eq i32 %95, 1
  br i1 %cmp1.i.i, label %land.lhs.true.i72.i.do.end_crit_edge, label %land.lhs.true.i72.i.if.end.i.i_crit_edge

land.lhs.true.i72.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i72.i.do.end_crit_edge:             ; preds = %land.lhs.true.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i.i:                                       ; preds = %land.lhs.true.i72.i.if.end.i.i_crit_edge, %if.end13.i.if.end.i.i_crit_edge
  %96 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp2.i.i = icmp eq i32 %96, 1
  %width.addr.0.v.i.i = select i1 %cmp2.i.i, i32 1008, i32 2032
  %width.addr.0.i.i = and i32 %width.addr.0.v.i.i, %90
  %97 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %97, i32 44
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.i) #8, !srcloc !137
  %and6.i74.i = and i32 %98, -1024
  %99 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp7.i.i = icmp eq i32 %99, 1
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else9.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i75.i = add nsw i32 %width.addr.0.i.i, -16
  br label %if.end18.i.i

if.else9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr10.i.i = lshr exact i32 %width.addr.0.i.i, 4
  %sub11.i.i = add nsw i32 %shr10.i.i, -1
  %and12.i.i = shl nsw i32 %sub11.i.i, 4
  %shl13.i.i = and i32 %and12.i.i, 1008
  %and14.i.i = lshr i32 %sub11.i.i, 3
  %shr15.i.i = and i32 %and14.i.i, 8
  %or16.i76.i = or i32 %shl13.i.i, %shr15.i.i
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else9.i.i, %if.then8.i.i
  %shl.pn.i.i = phi i32 [ %shl.i75.i, %if.then8.i.i ], [ %or16.i76.i, %if.else9.i.i ]
  %reg.0.i77.i = or i32 %shl.pn.i.i, %and6.i74.i
  %100 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %100, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i.i, i32 %reg.0.i77.i) #8, !srcloc !138
  %101 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %101, i32 48
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i.i) #8, !srcloc !137
  %sub20.i.i = add i32 %92, -1
  %and21.i.i = and i32 %sub20.i.i, 1023
  %and22.i.i = and i32 %102, -1024
  %or23.i.i = or i32 %and22.i.i, %and21.i.i
  %103 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i66.i.i = getelementptr i8, ptr %103, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i.i, i32 %or23.i.i) #8, !srcloc !138
  %104 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp24.i.i = icmp eq i32 %104, 2
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end18.i.i.if.end31.i.i_crit_edge

if.end18.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.then25.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %105, i32 52
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i.i) #8, !srcloc !137
  %and28.i78.i = shl i32 %sub20.i.i, 16
  %shl29.i.i = and i32 %and28.i78.i, 67108864
  %or30.i.i = or i32 %106, %shl29.i.i
  %107 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i68.i.i = getelementptr i8, ptr %107, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i.i, i32 %or30.i.i) #8, !srcloc !138
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then25.i.i, %if.end18.i.i.if.end31.i.i_crit_edge
  %108 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %108, i32 40
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i.i) #8, !srcloc !137
  %and33.i.i = and i32 %109, -257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i79.i = icmp eq i8 %94, 0
  %masksel.i.i = select i1 %tobool.not.i79.i, i32 0, i32 256
  %spec.select.i80.i = or i32 %and33.i.i, %masksel.i.i
  %palette_sz.i.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 10
  %110 = ptrtoint ptr %palette_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 32, ptr %palette_sz.i.i, align 4
  %111 = zext i32 %spec.store.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %spec.store.select.i, label %if.end31.i.i.do.end_crit_edge [
    i32 1, label %if.end31.i.i.lcd_init.exit.thread84_crit_edge
    i32 2, label %if.end31.i.i.lcd_init.exit.thread84_crit_edge87
    i32 4, label %if.end31.i.i.lcd_init.exit.thread84_crit_edge88
    i32 16, label %if.end31.i.i.lcd_init.exit.thread84_crit_edge89
    i32 24, label %sw.bb37.i.i
    i32 32, label %sw.bb39.i.i
    i32 8, label %sw.bb42.i.i
  ]

if.end31.i.i.lcd_init.exit.thread84_crit_edge89:  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_init.exit.thread84

if.end31.i.i.lcd_init.exit.thread84_crit_edge88:  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_init.exit.thread84

if.end31.i.i.lcd_init.exit.thread84_crit_edge87:  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_init.exit.thread84

if.end31.i.i.lcd_init.exit.thread84_crit_edge:    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_init.exit.thread84

if.end31.i.i.do.end_crit_edge:                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb37.i.i:                                      ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or38.i.i = or i32 %spec.select.i80.i, 33554432
  br label %lcd_init.exit.thread84

sw.bb39.i.i:                                      ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or41.i.i = or i32 %spec.select.i80.i, 100663296
  br label %lcd_init.exit.thread84

sw.bb42.i.i:                                      ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %palette_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 512, ptr %palette_sz.i.i, align 4
  br label %lcd_init.exit.thread84

lcd_init.exit.thread84:                           ; preds = %sw.bb42.i.i, %sw.bb39.i.i, %sw.bb37.i.i, %if.end31.i.i.lcd_init.exit.thread84_crit_edge, %if.end31.i.i.lcd_init.exit.thread84_crit_edge87, %if.end31.i.i.lcd_init.exit.thread84_crit_edge88, %if.end31.i.i.lcd_init.exit.thread84_crit_edge89
  %reg.2.i81.i = phi i32 [ %spec.select.i80.i, %sw.bb42.i.i ], [ %or41.i.i, %sw.bb39.i.i ], [ %or38.i.i, %sw.bb37.i.i ], [ %spec.select.i80.i, %if.end31.i.i.lcd_init.exit.thread84_crit_edge ], [ %spec.select.i80.i, %if.end31.i.i.lcd_init.exit.thread84_crit_edge87 ], [ %spec.select.i80.i, %if.end31.i.i.lcd_init.exit.thread84_crit_edge88 ], [ %spec.select.i80.i, %if.end31.i.i.lcd_init.exit.thread84_crit_edge89 ]
  %113 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70.i82.i = getelementptr i8, ptr %113, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i82.i, i32 %reg.2.i81.i) #8, !srcloc !138
  %114 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %114, i32 40
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #8, !srcloc !137
  %and24.i = and i32 %115, -1044481
  %fdd.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 22, i32 5
  %116 = ptrtoint ptr %fdd.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fdd.i, align 4
  %shl.i = shl i32 %117, 12
  %or25.i = or i32 %shl.i, %and24.i
  %118 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %118, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %or25.i) #8, !srcloc !138
  br label %if.end14

lcd_init.exit:                                    ; preds = %if.end
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %lcd_init.exit.do.end_crit_edge, label %lcd_init.exit.if.end14_crit_edge

lcd_init.exit.if.end14_crit_edge:                 ; preds = %lcd_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

lcd_init.exit.do.end_crit_edge:                   ; preds = %lcd_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lcd_init.exit.do.end_crit_edge, %if.end31.i.i.do.end_crit_edge, %land.lhs.true.i72.i.do.end_crit_edge, %lcd_cfg_horizontal_sync.exit.i.do.end_crit_edge
  %retval.0.i83 = phi i32 [ %call.i, %lcd_init.exit.do.end_crit_edge ], [ -22, %lcd_cfg_horizontal_sync.exit.i.do.end_crit_edge ], [ -22, %land.lhs.true.i72.i.do.end_crit_edge ], [ -22, %if.end31.i.i.do.end_crit_edge ]
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end14:                                         ; preds = %lcd_init.exit.if.end14_crit_edge, %lcd_init.exit.thread84
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %123 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %smem_start, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %125 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %yoffset, align 4
  %127 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %line_length, align 4
  %mul19 = mul i32 %128, %126
  %add = add i32 %mul19, %124
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %129 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %xoffset, align 4
  %131 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bits_per_pixel, align 4
  %mul23 = mul i32 %132, %130
  %div2470 = lshr i32 %mul23, 3
  %add25 = add i32 %add, %div2470
  %dma_start = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 6
  %133 = ptrtoint ptr %dma_start to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add25, ptr %dma_start, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %134 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %yres, align 4
  %136 = load i32, ptr %line_length, align 4
  %mul30 = mul i32 %136, %135
  %add31 = add i32 %add25, -1
  %sub = add i32 %add31, %mul30
  %dma_end = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 7
  %137 = ptrtoint ptr %dma_end to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub, ptr %dma_end, align 4
  %138 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %138, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %add25) #8, !srcloc !138
  %139 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dma_end, align 4
  %141 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i72 = getelementptr i8, ptr %141, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %140) #8, !srcloc !138
  %142 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dma_start, align 4
  %144 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i73 = getelementptr i8, ptr %144, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %143) #8, !srcloc !138
  %145 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma_end, align 4
  %147 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i74 = getelementptr i8, ptr %147, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %146) #8, !srcloc !138
  br i1 %tobool.i.not, label %if.end14.cleanup_crit_edge, label %if.then37

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end14
  %148 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp.i = icmp eq i32 %148, 2
  br i1 %cmp.i, label %if.then.i, label %if.then37.if.end.i76_crit_edge

if.then37.if.end.i76_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i76

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %149 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %149, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 8) #8, !srcloc !138
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.then.i, %if.then37.if.end.i76_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #8
  %151 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %cmp1.i = icmp eq i32 %151, 2
  br i1 %cmp1.i, label %if.then2.i77, label %if.end.i76.if.end3.i_crit_edge

if.end.i76.if.end3.i_crit_edge:                   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i77:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  %152 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %152, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i77, %if.end.i76.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #8
  %154 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %154, i32 40
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !137
  %and.i78 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %if.then4.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i80 = or i32 %155, 1
  %156 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %156, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or.i80) #8, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end3.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i83, %do.end ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %v_palette_base = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %v_palette_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v_palette_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup112_crit_edge, label %if.end

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.end:                                           ; preds = %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp2 = icmp eq i32 %5, 4
  br i1 %cmp2, label %if.end.cleanup112_crit_edge, label %if.end4

if.end.cleanup112_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.end4:                                          ; preds = %if.end
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp5 = icmp ugt i32 %7, 16
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %8 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %land.lhs.true.cleanup112_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true.cleanup112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %5, label %if.end8.sw.epilog77_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb27
  ]

if.end8.sw.epilog77_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog77

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %shl = shl i32 %red, %11
  %add = sub i32 32767, %red
  %sub = add i32 %add, %shl
  %shr = lshr i32 %sub, 16
  %length15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %12 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length15, align 4
  %shl16 = shl i32 %green, %13
  %add17 = sub i32 32767, %green
  %sub18 = add i32 %add17, %shl16
  %shr19 = lshr i32 %sub18, 16
  %length22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %14 = ptrtoint ptr %length22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length22, align 4
  %shl23 = shl i32 %blue, %15
  %add24 = sub i32 32767, %blue
  %sub25 = add i32 %add24, %shl23
  %shr26 = lshr i32 %sub25, 16
  br label %sw.epilog77

sw.bb27:                                          ; preds = %if.end8
  %16 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %7, label %sw.bb27.sw.epilog77_crit_edge [
    i32 4, label %sw.bb30
    i32 8, label %sw.bb55
  ]

sw.bb27.sw.epilog77_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog77

sw.bb30:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp31 = icmp ugt i32 %regno, 15
  br i1 %cmp31, label %sw.bb30.cleanup112_crit_edge, label %if.end33

sw.bb30.cleanup112_crit_edge:                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.end33:                                         ; preds = %sw.bb30
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %17 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.else, label %if.end33.if.end47_crit_edge

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %shr36 = lshr i32 %red, 4
  %shr37 = lshr i32 %green, 8
  %shr38 = lshr i32 %blue, 12
  %conv39 = and i32 %shr36, 3840
  %and40 = and i32 %shr37, 240
  %or = or i32 %and40, %conv39
  %and43 = and i32 %shr38, 15
  %or45 = or i32 %or, %and43
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end33.if.end47_crit_edge
  %green.addr.0 = phi i32 [ %shr37, %if.else ], [ %green, %if.end33.if.end47_crit_edge ]
  %blue.addr.0 = phi i32 [ %shr38, %if.else ], [ %blue, %if.end33.if.end47_crit_edge ]
  %red.addr.0 = phi i32 [ %shr36, %if.else ], [ %red, %if.end33.if.end47_crit_edge ]
  %pal.0.in = phi i32 [ %or45, %if.else ], [ %regno, %if.end33.if.end47_crit_edge ]
  %pal.0 = trunc i32 %pal.0.in to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regno)
  %cmp48 = icmp eq i32 %regno, 0
  %conv53 = or i16 %pal.0, 8192
  %pal.1 = select i1 %cmp48, i16 %conv53, i16 %pal.0
  %arrayidx = getelementptr i16, ptr %3, i32 %regno
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %pal.1, ptr %arrayidx, align 2
  br label %sw.epilog77

sw.bb55:                                          ; preds = %sw.bb27
  %shr56 = lshr i32 %red, 4
  %shr57 = lshr i32 %green, 8
  %shr58 = lshr i32 %blue, 12
  %conv60 = and i32 %shr56, 3840
  %and61 = and i32 %shr57, 240
  %or63 = or i32 %and61, %conv60
  %and65 = and i32 %shr58, 15
  %or67 = or i32 %or63, %and65
  %arrayidx69 = getelementptr i16, ptr %3, i32 %regno
  %20 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx69, align 2
  %conv70 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or67, i32 %conv70)
  %cmp72.not = icmp eq i32 %or67, %conv70
  br i1 %cmp72.not, label %sw.bb55.sw.epilog77_crit_edge, label %if.then74

sw.bb55.sw.epilog77_crit_edge:                    ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog77

if.then74:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = trunc i32 %or67 to i16
  %22 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv68, ptr %arrayidx69, align 2
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %if.then74, %sw.bb55.sw.epilog77_crit_edge, %if.end47, %sw.bb27.sw.epilog77_crit_edge, %sw.bb, %if.end8.sw.epilog77_crit_edge
  %green.addr.1 = phi i32 [ %green, %if.end8.sw.epilog77_crit_edge ], [ %green, %sw.bb27.sw.epilog77_crit_edge ], [ %shr57, %if.then74 ], [ %shr57, %sw.bb55.sw.epilog77_crit_edge ], [ %green.addr.0, %if.end47 ], [ %shr19, %sw.bb ]
  %blue.addr.1 = phi i32 [ %blue, %if.end8.sw.epilog77_crit_edge ], [ %blue, %sw.bb27.sw.epilog77_crit_edge ], [ %shr58, %if.then74 ], [ %shr58, %sw.bb55.sw.epilog77_crit_edge ], [ %blue.addr.0, %if.end47 ], [ %shr26, %sw.bb ]
  %red.addr.1 = phi i32 [ %red, %if.end8.sw.epilog77_crit_edge ], [ %red, %sw.bb27.sw.epilog77_crit_edge ], [ %shr56, %if.then74 ], [ %shr56, %sw.bb55.sw.epilog77_crit_edge ], [ %red.addr.0, %if.end47 ], [ %shr, %sw.bb ]
  %tobool109.not = phi i1 [ true, %if.end8.sw.epilog77_crit_edge ], [ true, %sw.bb27.sw.epilog77_crit_edge ], [ false, %if.then74 ], [ true, %sw.bb55.sw.epilog77_crit_edge ], [ true, %if.end47 ], [ true, %sw.bb ]
  %23 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp80 = icmp eq i32 %24, 2
  br i1 %cmp80, label %if.then82, label %sw.epilog77.if.end108_crit_edge

sw.epilog77.if.end108_crit_edge:                  ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then82:                                        ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp83 = icmp ugt i32 %regno, 15
  br i1 %cmp83, label %if.then82.cleanup112_crit_edge, label %if.end86

if.then82.cleanup112_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.end86:                                         ; preds = %if.then82
  %red88 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %25 = ptrtoint ptr %red88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %red88, align 4
  %shl89 = shl i32 %red.addr.1, %26
  %green91 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %27 = ptrtoint ptr %green91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %green91, align 4
  %shl93 = shl i32 %green.addr.1, %28
  %or94 = or i32 %shl93, %shl89
  %blue96 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %29 = ptrtoint ptr %blue96 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blue96, align 4
  %shl98 = shl i32 %blue.addr.1, %30
  %or99 = or i32 %or94, %shl98
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %31 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx100 = getelementptr i32, ptr %32, i32 %regno
  %33 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or99, ptr %arrayidx100, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %35)
  %cmp103.not = icmp eq i16 %35, 16384
  br i1 %cmp103.not, label %if.end86.if.end108_crit_edge, label %if.end108.thread

if.end86.if.end108_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.end108.thread:                                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 16384, ptr %3, align 2
  br label %if.then110

if.end108:                                        ; preds = %if.end86.if.end108_crit_edge, %sw.epilog77.if.end108_crit_edge
  br i1 %tobool109.not, label %if.end108.cleanup112_crit_edge, label %if.end108.if.then110_crit_edge

if.end108.if.then110_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

if.end108.cleanup112_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.then110:                                       ; preds = %if.end108.if.then110_crit_edge, %if.end108.thread
  tail call fastcc void @lcd_blit(i32 noundef 2, ptr noundef %1)
  br label %cleanup112

cleanup112:                                       ; preds = %if.then110, %if.end108.cleanup112_crit_edge, %if.then82.cleanup112_crit_edge, %sw.bb30.cleanup112_crit_edge, %land.lhs.true.cleanup112_crit_edge, %if.end.cleanup112_crit_edge, %entry.cleanup112_crit_edge
  %retval.1 = phi i32 [ 1, %entry.cleanup112_crit_edge ], [ 1, %if.end.cleanup112_crit_edge ], [ -22, %land.lhs.true.cleanup112_crit_edge ], [ -22, %sw.bb30.cleanup112_crit_edge ], [ 0, %if.then110 ], [ 0, %if.end108.cleanup112_crit_edge ], [ -22, %if.then82.cleanup112_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %blank2 = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %blank2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blank2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %blank)
  %cmp = icmp eq i32 %3, %blank
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %blank2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %blank, ptr %blank2, align 4
  %5 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %blank, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb10_crit_edge
    i32 2, label %if.end.sw.bb10_crit_edge33
    i32 3, label %if.end.sw.bb10_crit_edge34
    i32 4, label %if.end.sw.bb10_crit_edge35
  ]

if.end.sw.bb10_crit_edge35:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.bb10_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.bb10_crit_edge33:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %6 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8) #8, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  %9 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1.i = icmp eq i32 %9, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  %12 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %12, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !137
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end3.i.lcd_enable_raster.exit_crit_edge

if.end3.i.lcd_enable_raster.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_enable_raster.exit

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %13, 1
  %14 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or.i) #8, !srcloc !138
  br label %lcd_enable_raster.exit

lcd_enable_raster.exit:                           ; preds = %if.then4.i, %if.end3.i.lcd_enable_raster.exit_crit_edge
  %lcd_supply = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %lcd_supply to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lcd_supply, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %lcd_enable_raster.exit.sw.epilog_crit_edge, label %if.then4

lcd_enable_raster.exit.sw.epilog_crit_edge:       ; preds = %lcd_enable_raster.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4:                                         ; preds = %lcd_enable_raster.exit
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then4.sw.epilog_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge33, %if.end.sw.bb10_crit_edge34, %if.end.sw.bb10_crit_edge35
  %lcd_supply11 = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %lcd_supply11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lcd_supply11, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %sw.bb10.if.end19_crit_edge, label %if.then13

sw.bb10.if.end19_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then13:                                        ; preds = %sw.bb10
  %call15 = tail call i32 @regulator_disable(ptr noundef nonnull %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %sw.bb10.if.end19_crit_edge
  tail call fastcc void @lcd_disable_raster(i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end19, %if.then4.sw.epilog_crit_edge, %lcd_enable_raster.exit.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end19 ], [ 0, %if.then4.sw.epilog_crit_edge ], [ 0, %lcd_enable_raster.exit.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then13.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then4.cleanup_crit_edge ], [ %call15, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da8xx_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %fbi) #2 align 64 {
entry:
  %new_var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %new_var) #8
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %var3 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %xoffset4 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %xoffset4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %yoffset6 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 5
  %8 = ptrtoint ptr %yoffset6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7.not = icmp eq i32 %7, %9
  br i1 %cmp7.not, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = call ptr @memcpy(ptr %new_var, ptr %var3, i32 160)
  %xoffset10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %new_var, i32 0, i32 4
  %11 = ptrtoint ptr %xoffset10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %xoffset10, align 4
  %yoffset11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %12 = ptrtoint ptr %yoffset11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yoffset11, align 4
  %yoffset12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %new_var, i32 0, i32 5
  %14 = ptrtoint ptr %yoffset12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %yoffset12, align 4
  %call = call i32 @fb_check_var(ptr noundef nonnull %new_var, ptr noundef %fbi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end45_crit_edge

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else:                                          ; preds = %if.then
  %15 = call ptr @memcpy(ptr %var3, ptr %new_var, i32 160)
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smem_start, align 4
  %18 = ptrtoint ptr %yoffset12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset12, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line_length, align 4
  %mul = mul i32 %21, %19
  %add = add i32 %mul, %17
  %22 = ptrtoint ptr %xoffset10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xoffset10, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_pixel, align 4
  %mul18 = mul i32 %25, %23
  %div69 = lshr i32 %mul18, 3
  %add19 = add i32 %add, %div69
  %yres = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres, align 4
  %mul22 = mul i32 %27, %21
  %add23 = add i32 %mul22, -1
  %sub = add i32 %add23, %add19
  %dma_start = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %dma_start to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add19, ptr %dma_start, align 4
  %dma_end = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %dma_end to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %dma_end, align 4
  %lock_for_chan_update = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 15
  %call27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_for_chan_update) #8
  %which_dma_channel_done = getelementptr inbounds %struct.da8xx_fb_par, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %which_dma_channel_done to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %which_dma_channel_done, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %31, label %if.else.if.end42_crit_edge [
    i32 0, label %if.then32
    i32 1, label %if.then39
  ]

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_start, align 4
  %35 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #8, !srcloc !138
  %36 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_end, align 4
  %38 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70 = getelementptr i8, ptr %38, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %37) #8, !srcloc !138
  br label %if.end42

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_start, align 4
  %41 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i71 = getelementptr i8, ptr %41, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %40) #8, !srcloc !138
  %42 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_end, align 4
  %44 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i72 = getelementptr i8, ptr %44, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %43) #8, !srcloc !138
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then32, %if.else.if.end42_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_for_chan_update, i32 noundef %call27) #8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.then.if.end45_crit_edge, %lor.lhs.false.if.end45_crit_edge
  %ret.0 = phi i32 [ 0, %if.end42 ], [ 0, %lor.lhs.false.if.end45_crit_edge ], [ -22, %if.then.if.end45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %new_var) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %sync_arg = alloca %struct.lcd_sync_arg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sync_arg) #8
  %0 = ptrtoint ptr %sync_arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sync_arg, align 4, !annotation !139
  %1 = getelementptr inbounds %struct.lcd_sync_arg, ptr %sync_arg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !139
  %3 = getelementptr inbounds %struct.lcd_sync_arg, ptr %sync_arg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !139
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %sw.default [
    i32 -2147203583, label %entry.cleanup_crit_edge
    i32 1074021890, label %entry.cleanup_crit_edge51
    i32 -2147203581, label %entry.cleanup_crit_edge52
    i32 1074021891, label %entry.cleanup_crit_edge53
    i32 -2147203579, label %entry.cleanup_crit_edge54
    i32 1074021894, label %entry.cleanup_crit_edge55
    i32 1074021897, label %sw.bb1
    i32 1074021898, label %sw.bb2
    i32 1074021920, label %sw.bb10
  ]

entry.cleanup_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %6 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %sw.bb1.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb1.if.then11.i.i_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb1
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #14, !srcloc !140
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !141

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sync_arg, i32 noundef 12) #8
  %8 = call i32 @llvm.read_register.i32(metadata !127) #8
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !142
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sync_arg, ptr noundef %6, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !141

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb1.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %sw.bb1.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %sync_arg, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %sync_arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_arg, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %18, i32 44
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #8, !srcloc !137
  %and.i = and i32 %19, 1023
  %sub.i = add i32 %13, -1
  %shl.i = shl i32 %sub.i, 24
  %sub2.i = add i32 %17, -1
  %and3.i = shl i32 %sub2.i, 16
  %shl4.i = and i32 %and3.i, 16711680
  %or.i = or i32 %shl4.i, %shl.i
  %sub5.i = add i32 %15, -1
  %and6.i = shl i32 %sub5.i, 10
  %shl7.i = and i32 %and6.i, 64512
  %or8.i = or i32 %or.i, %shl7.i
  %or9.i = or i32 %or8.i, %and.i
  %20 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %20, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %or9.i) #8, !srcloc !138
  %21 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %if.then.i35, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i35:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %22, i32 52
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #8, !srcloc !137
  %and11.i = and i32 %23, -2013266176
  %and13.i = lshr i32 %sub2.i, 8
  %24 = and i32 %and13.i, 3
  %and16.i = lshr i32 %sub.i, 4
  %25 = and i32 %and16.i, 48
  %and20.i = shl i32 %sub5.i, 21
  %shl21.i = and i32 %and20.i, 2013265920
  %or14.i = or i32 %shl21.i, %25
  %or18.i = or i32 %or14.i, %24
  %or22.i = or i32 %or18.i, %and11.i
  %26 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %26, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %or22.i) #8, !srcloc !138
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %27 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #8
  %call.i.i15 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i15, label %sw.bb2.if.then11.i.i31_crit_edge, label %land.lhs.true.i.i19

sw.bb2.if.then11.i.i31_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i31

land.lhs.true.i.i19:                              ; preds = %sw.bb2
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 12, i32 -1226833920) #14, !srcloc !140
  %asmresult.i.i17 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i17)
  %cmp.i.i18 = icmp eq i32 %asmresult.i.i17, 0
  br i1 %cmp.i.i18, label %if.end.i.i27, label %land.lhs.true.i.i19.if.then11.i.i31_crit_edge, !prof !141

land.lhs.true.i.i19.if.then11.i.i31_crit_edge:    ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i31

if.end.i.i27:                                     ; preds = %land.lhs.true.i.i19
  %call.i.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sync_arg, i32 noundef 12) #8
  %29 = call i32 @llvm.read_register.i32(metadata !127) #8
  %and.i.i.i.i.i.i21 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i21 to ptr
  %cpu_domain.i.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i22) #7, !srcloc !142
  %and.i.i.i.i23 = and i32 %31, -13
  %or.i.i.i.i24 = or i32 %and.i.i.i.i23, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i24) #8, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %call1.i.i.i25 = call i32 @arm_copy_from_user(ptr noundef nonnull %sync_arg, ptr noundef %27, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #8, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i25)
  %tobool4.not.i.i26 = icmp eq i32 %call1.i.i.i25, 0
  br i1 %tobool4.not.i.i26, label %if.end6, label %if.end.i.i27.if.then11.i.i31_crit_edge, !prof !141

if.end.i.i27.if.then11.i.i31_crit_edge:           ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i31

if.then11.i.i31:                                  ; preds = %if.end.i.i27.if.then11.i.i31_crit_edge, %land.lhs.true.i.i19.if.then11.i.i31_crit_edge, %sw.bb2.if.then11.i.i31_crit_edge
  %res.03.i.i28 = phi i32 [ %call1.i.i.i25, %if.end.i.i27.if.then11.i.i31_crit_edge ], [ 12, %sw.bb2.if.then11.i.i31_crit_edge ], [ 12, %land.lhs.true.i.i19.if.then11.i.i31_crit_edge ]
  %sub.i.i29 = sub i32 12, %res.03.i.i28
  %add.ptr.i.i30 = getelementptr i8, ptr %sync_arg, i32 %sub.i.i29
  %32 = call ptr @memset(ptr %add.ptr.i.i30, i32 0, i32 %res.03.i.i28)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %sync_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sync_arg, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %39 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %39, i32 48
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #8, !srcloc !137
  %and.i37 = and i32 %40, 1023
  %shl.i38 = shl i32 %34, 24
  %and2.i = shl i32 %38, 16
  %shl3.i = and i32 %and2.i, 16711680
  %or.i39 = or i32 %shl3.i, %shl.i38
  %sub.i40 = shl i32 %36, 10
  %and4.i = add i32 %sub.i40, 64512
  %shl5.i = and i32 %and4.i, 64512
  %or6.i = or i32 %or.i39, %shl5.i
  %or7.i = or i32 %or6.i, %and.i37
  %41 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %41, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or7.i) #8, !srcloc !138
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %42 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %par1.i, align 4
  %vsync_flag.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %vsync_flag.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %vsync_flag.i, align 4
  %vsync_timeout.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %43, i32 0, i32 14
  %45 = ptrtoint ptr %vsync_timeout.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vsync_timeout.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1121) #8
  %47 = ptrtoint ptr %vsync_flag.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vsync_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool6.not.i = icmp eq i32 %46, 0
  %spec.store.select.i = select i1 %tobool6.not.i, i32 1, i32 %46
  %__ret.0.i = select i1 %cmp.not.i, i32 %46, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %tobool8.not.i = icmp eq i32 %__ret.0.i, 0
  %not.cmp.not.i = xor i1 %cmp.not.i, true
  %49 = select i1 %not.cmp.not.i, i1 true, i1 %tobool8.not.i
  br i1 %49, label %sw.bb10.fb_wait_for_vsync.exit_crit_edge, label %if.then10.i

sw.bb10.fb_wait_for_vsync.exit_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %fb_wait_for_vsync.exit

if.then10.i:                                      ; preds = %sw.bb10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %50 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  %51 = ptrtoint ptr %vsync_timeout.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vsync_timeout.i, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %vsync_wait.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %43, i32 0, i32 12
  %call75.i = call i32 @prepare_to_wait_event(ptr noundef %vsync_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %53 = ptrtoint ptr %vsync_flag.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vsync_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp15.not76.i = icmp eq i32 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool19.not77.i = icmp eq i32 %52, 0
  %spec.store.select4878.i = select i1 %tobool19.not77.i, i32 1, i32 %52
  %__ret11.179.i = select i1 %cmp15.not76.i, i32 %52, i32 %spec.store.select4878.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.179.i)
  %tobool25.not80.i = icmp eq i32 %__ret11.179.i, 0
  %not.cmp15.not81.i = xor i1 %cmp15.not76.i, true
  %55 = select i1 %not.cmp15.not81.i, i1 true, i1 %tobool25.not80.i
  br i1 %55, label %if.then10.i.for.end.i_crit_edge, label %if.then10.i.if.end31.i_crit_edge

if.then10.i.if.end31.i_crit_edge:                 ; preds = %if.then10.i
  br label %if.end31.i

if.then10.i.for.end.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end31.i:                                       ; preds = %cleanup.i.if.end31.i_crit_edge, %if.then10.i.if.end31.i_crit_edge
  %__ret11.183.i = phi i32 [ %__ret11.1.i, %cleanup.i.if.end31.i_crit_edge ], [ %__ret11.179.i, %if.then10.i.if.end31.i_crit_edge ]
  %call82.i = phi i32 [ %call.i, %cleanup.i.if.end31.i_crit_edge ], [ %call75.i, %if.then10.i.if.end31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool32.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool32.not.i, label %cleanup.i, label %if.end31.i.__out.i_crit_edge

if.end31.i.__out.i_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out.i

cleanup.i:                                        ; preds = %if.end31.i
  %call35.i = call i32 @schedule_timeout(i32 noundef %__ret11.183.i) #8
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %vsync_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %56 = ptrtoint ptr %vsync_flag.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vsync_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp15.not.i = icmp eq i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool19.not.i = icmp eq i32 %call35.i, 0
  %spec.store.select48.i = select i1 %tobool19.not.i, i32 1, i32 %call35.i
  %__ret11.1.i = select i1 %cmp15.not.i, i32 %call35.i, i32 %spec.store.select48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1.i)
  %tobool25.not.i = icmp eq i32 %__ret11.1.i, 0
  %not.cmp15.not.i = xor i1 %cmp15.not.i, true
  %58 = select i1 %not.cmp15.not.i, i1 true, i1 %tobool25.not.i
  br i1 %58, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end31.i_crit_edge

cleanup.i.if.end31.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then10.i.for.end.i_crit_edge
  %__ret11.1.lcssa.i = phi i32 [ %__ret11.179.i, %if.then10.i.for.end.i_crit_edge ], [ %__ret11.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %vsync_wait.i, ptr noundef nonnull %__wq_entry.i) #8
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end31.i.__out.i_crit_edge
  %__ret11.267.i = phi i32 [ %__ret11.1.lcssa.i, %for.end.i ], [ %call82.i, %if.end31.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %fb_wait_for_vsync.exit

fb_wait_for_vsync.exit:                           ; preds = %__out.i, %sw.bb10.fb_wait_for_vsync.exit_crit_edge
  %__ret.1.i = phi i32 [ %__ret.0.i, %sw.bb10.fb_wait_for_vsync.exit_crit_edge ], [ %__ret11.267.i, %__out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i)
  %cmp40.i = icmp slt i32 %__ret.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i)
  %cmp43.i = icmp eq i32 %__ret.1.i, 0
  %..i = select i1 %cmp43.i, i32 -110, i32 0
  %retval.0.i = select i1 %cmp40.i, i32 %__ret.1.i, i32 %..i
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %fb_wait_for_vsync.exit, %if.end6, %if.then11.i.i31, %if.then.i35, %if.end.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge51, %entry.cleanup_crit_edge52, %entry.cleanup_crit_edge53, %entry.cleanup_crit_edge54, %entry.cleanup_crit_edge55
  %retval.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i, %fb_wait_for_vsync.exit ], [ -25, %entry.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge51 ], [ -25, %entry.cleanup_crit_edge52 ], [ -25, %entry.cleanup_crit_edge53 ], [ -25, %entry.cleanup_crit_edge54 ], [ -25, %entry.cleanup_crit_edge55 ], [ 0, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i35 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sync_arg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lcd_disable_raster(i32 noundef %wait_for_frame_done) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 40
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !137
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup55_crit_edge, label %if.then

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.then:                                          ; preds = %entry
  %and1 = and i32 %1, -2
  %2 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i70 = getelementptr i8, ptr %2, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %and1) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_for_frame_done)
  %cmp = icmp eq i32 %wait_for_frame_done, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup55_crit_edge

if.then.cleanup55_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then3, label %land.lhs.true.cleanup55_crit_edge

land.lhs.true.cleanup55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.then3:                                         ; preds = %land.lhs.true
  store i1 false, ptr @frame_done_flag, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 293) #8
  %.b69 = load i1, ptr @frame_done_flag, align 4
  br i1 %.b69, label %if.then3.cleanup55_crit_edge, label %if.then17

if.then3.cleanup55_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.then17:                                        ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call2084 = call i32 @prepare_to_wait_event(ptr noundef nonnull @frame_done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %.b85 = load i1, ptr @frame_done_flag, align 4
  br i1 %.b85, label %if.end44.thread, label %if.then17.if.end38_crit_edge

if.then17.if.end38_crit_edge:                     ; preds = %if.then17
  br label %if.end38

if.end44.thread:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef nonnull @frame_done_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup55

if.end38:                                         ; preds = %cleanup.if.end38_crit_edge, %if.then17.if.end38_crit_edge
  %__ret18.187 = phi i32 [ %__ret18.1, %cleanup.if.end38_crit_edge ], [ 5, %if.then17.if.end38_crit_edge ]
  %call2086 = phi i32 [ %call20, %cleanup.if.end38_crit_edge ], [ %call2084, %if.then17.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2086)
  %tobool39.not = icmp eq i32 %call2086, 0
  br i1 %tobool39.not, label %cleanup, label %if.end44.thread80

if.end44.thread80:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup55

cleanup:                                          ; preds = %if.end38
  %call42 = call i32 @schedule_timeout(i32 noundef %__ret18.187) #8
  %call20 = call i32 @prepare_to_wait_event(ptr noundef nonnull @frame_done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %.b = load i1, ptr @frame_done_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool26.not = icmp eq i32 %call42, 0
  %5 = select i1 %.b, i1 %tobool26.not, i1 false
  %__ret18.1 = select i1 %5, i32 1, i32 %call42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %tobool32.not = icmp eq i32 %__ret18.1, 0
  %6 = select i1 %.b, i1 true, i1 %tobool32.not
  br i1 %6, label %if.end44, label %cleanup.if.end38_crit_edge

cleanup.if.end38_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end44:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %phi.cmp = icmp eq i32 %__ret18.1, 0
  call void @finish_wait(ptr noundef nonnull @frame_done_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %do.end50, label %if.end44.cleanup55_crit_edge

if.end44.cleanup55_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  br label %cleanup55

cleanup55:                                        ; preds = %do.end50, %if.end44.cleanup55_crit_edge, %if.end44.thread80, %if.end44.thread, %if.then3.cleanup55_crit_edge, %land.lhs.true.cleanup55_crit_edge, %if.then.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da8xx_fb_calc_config_clk_divider(ptr nocapture noundef %par, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %0 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixclock, align 4
  %div.i = udiv i32 1000000000, %1
  %mul.i = mul i32 %div.i, 1000
  %lcdc_clk_rate1.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 18
  %2 = ptrtoint ptr %lcdc_clk_rate1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lcdc_clk_rate1.i, align 4
  %div2.i = udiv i32 %3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %div2.i)
  %cmp.i = icmp ult i32 %mul.i, %div2.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lcdc_clk.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 8
  %4 = ptrtoint ptr %lcdc_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcdc_clk.i, align 4
  %mul3.i = mul i32 %div.i, 255000
  %call.i = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %mul3.i) #8
  br label %da8xx_fb_calc_clk_divider.exit

if.else.i:                                        ; preds = %entry
  %div425.i = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %div425.i)
  %cmp5.i = icmp ugt i32 %mul.i, %div425.i
  br i1 %cmp5.i, label %if.then6.i, label %if.else10.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %lcdc_clk7.i = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 8
  %6 = ptrtoint ptr %lcdc_clk7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcdc_clk7.i, align 4
  %mul8.i = mul i32 %div.i, 2000
  %call9.i = tail call i32 @clk_round_rate(ptr noundef %7, i32 noundef %mul8.i) #8
  br label %da8xx_fb_calc_clk_divider.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %div11.i = udiv i32 %3, %mul.i
  %phi.bo = shl i32 %div11.i, 8
  %phi.bo7 = or i32 %phi.bo, 1
  br label %da8xx_fb_calc_clk_divider.exit

da8xx_fb_calc_clk_divider.exit:                   ; preds = %if.else10.i, %if.then6.i, %if.then.i
  %lcdc_clk_rate.0 = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.then6.i ], [ %3, %if.else10.i ]
  %lcdc_clk_div.0.i = phi i32 [ 65281, %if.then.i ], [ 513, %if.then6.i ], [ %phi.bo7, %if.else10.i ]
  %8 = ptrtoint ptr %lcdc_clk_rate1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lcdc_clk_rate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %lcdc_clk_rate.0)
  %cmp.not.i = icmp eq i32 %9, %lcdc_clk_rate.0
  br i1 %cmp.not.i, label %da8xx_fb_calc_clk_divider.exit.if.end6.i_crit_edge, label %if.then.i6

da8xx_fb_calc_clk_divider.exit.if.end6.i_crit_edge: ; preds = %da8xx_fb_calc_clk_divider.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i6:                                       ; preds = %da8xx_fb_calc_clk_divider.exit
  %lcdc_clk.i4 = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 8
  %10 = ptrtoint ptr %lcdc_clk.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lcdc_clk.i4, align 4
  %call.i5 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %lcdc_clk_rate.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.48, i32 noundef %lcdc_clk_rate.0) #11
  br label %da8xx_fb_config_clk_divider.exit

if.end.i:                                         ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %lcdc_clk.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lcdc_clk.i4, align 4
  %call4.i = tail call i32 @clk_get_rate(ptr noundef %15) #8
  %16 = ptrtoint ptr %lcdc_clk_rate1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4.i, ptr %lcdc_clk_rate1.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %da8xx_fb_calc_clk_divider.exit.if.end6.i_crit_edge
  %17 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %lcdc_clk_div.0.i) #8, !srcloc !138
  %18 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp7.i = icmp eq i32 %18, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.da8xx_fb_config_clk_divider.exit_crit_edge

if.end6.i.da8xx_fb_config_clk_divider.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da8xx_fb_config_clk_divider.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %19, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 7) #8, !srcloc !138
  br label %da8xx_fb_config_clk_divider.exit

da8xx_fb_config_clk_divider.exit:                 ; preds = %if.then8.i, %if.end6.i.da8xx_fb_config_clk_divider.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i5, %do.end.i ], [ 0, %if.then8.i ], [ 0, %if.end6.i.da8xx_fb_config_clk_divider.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lcd_blit(i32 noundef %load_mode, ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 40
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !137
  %and = and i32 %1, -3145729
  %2 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i40 = getelementptr i8, ptr %2, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #8, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %load_mode)
  %cmp = icmp eq i32 %load_mode, 1
  br i1 %cmp, label %if.then, label %if.then13

if.then:                                          ; preds = %entry
  %dma_start = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 6
  %4 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_start, align 4
  %dma_end = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 7
  %6 = ptrtoint ptr %dma_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_end, align 4
  %or = or i32 %and, 2097152
  %8 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or4 = or i32 %3, 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i41 = getelementptr i8, ptr %9, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !137
  %or9 = or i32 %10, 773
  %11 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i42 = getelementptr i8, ptr %11, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %or9) #8, !srcloc !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %reg_dma.0 = phi i32 [ %or4, %if.then3 ], [ %3, %if.else ]
  %or10 = or i32 %reg_dma.0, 1
  %12 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i43 = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %5) #8, !srcloc !138
  %13 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i44 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %7) #8, !srcloc !138
  %14 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i45 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %5) #8, !srcloc !138
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i46 = getelementptr i8, ptr %15, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %7) #8, !srcloc !138
  br label %if.end23

if.then13:                                        ; preds = %entry
  %p_palette_base = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 1
  %16 = ptrtoint ptr %p_palette_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_palette_base, align 4
  %palette_sz = getelementptr inbounds %struct.da8xx_fb_par, ptr %par, i32 0, i32 10
  %18 = ptrtoint ptr %palette_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %palette_sz, align 4
  %add = add i32 %17, -1
  %sub = add i32 %add, %19
  %20 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp15 = icmp eq i32 %20, 1
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %or17 = or i32 %and, 1048592
  br label %if.end21

if.else18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i32 %and, 1048576
  %21 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i47 = getelementptr i8, ptr %21, i32 96
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #8, !srcloc !137
  %or20 = or i32 %22, 64
  %23 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %or20) #8, !srcloc !138
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16
  %reg_ras.0 = phi i32 [ %or17, %if.then16 ], [ %or14, %if.else18 ]
  %24 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i49 = getelementptr i8, ptr %24, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %17) #8, !srcloc !138
  %25 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %sub) #8, !srcloc !138
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end
  %reg_ras.1 = phi i32 [ %or, %if.end ], [ %reg_ras.0, %if.end21 ]
  %reg_dma.1 = phi i32 [ %or10, %if.end ], [ %3, %if.end21 ]
  %26 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i51 = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %reg_dma.1) #8, !srcloc !138
  %27 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i52 = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %reg_ras.1) #8, !srcloc !138
  %28 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i = icmp eq i32 %28, 2
  br i1 %cmp.i, label %if.then.i, label %if.end23.if.end.i_crit_edge

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8) #8, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end23.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  %31 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp1.i = icmp eq i32 %31, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %32, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  %34 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %34, i32 40
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !137
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end3.i.lcd_enable_raster.exit_crit_edge

if.end3.i.lcd_enable_raster.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_enable_raster.exit

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %35, 1
  %36 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or.i) #8, !srcloc !138
  br label %lcd_enable_raster.exit

lcd_enable_raster.exit:                           ; preds = %if.then4.i, %if.end3.i.lcd_enable_raster.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_da8xx_cpufreq_transition(ptr nocapture noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -156
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp = icmp eq i32 %val, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %lcdc_clk_rate = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %lcdc_clk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lcdc_clk_rate, align 4
  %lcdc_clk = getelementptr i8, ptr %nb, i32 -124
  %2 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcdc_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp1.not = icmp eq i32 %1, %call
  br i1 %cmp1.not, label %if.then.if.end10_crit_edge, label %if.then2

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcdc_clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %6 = ptrtoint ptr %lcdc_clk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %lcdc_clk_rate, align 4
  tail call fastcc void @lcd_disable_raster(i32 noundef 0)
  %mode = getelementptr i8, ptr %nb, i32 84
  %call6 = tail call fastcc i32 @da8xx_fb_calc_config_clk_divider(ptr noundef %add.ptr, ptr noundef %mode)
  %blank = getelementptr i8, ptr %nb, i32 -112
  %7 = ptrtoint ptr %blank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then2
  %9 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.then.i, label %if.then8.if.end.i_crit_edge

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8) #8, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  %12 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp1.i = icmp eq i32 %12, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #8
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !137
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end3.i.if.end10_crit_edge

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %16, 1
  %17 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or.i) #8, !srcloc !138
  br label %if.end10

if.end10:                                         ; preds = %if.then4.i, %if.end3.i.if.end10_crit_edge, %if.then2.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @console_lock() #8
  %lcd_supply = getelementptr inbounds %struct.da8xx_fb_par, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %lcd_supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_supply, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #8
  tail call fastcc void @lcd_disable_raster(i32 noundef 0)
  %6 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then.i, label %if.end6.lcd_context_save.exit_crit_edge

if.end6.lcd_context_save.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_context_save.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !137
  store i32 %8, ptr @reg_context.0, align 4
  %9 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !137
  store i32 %10, ptr @reg_context.6, align 4
  br label %lcd_context_save.exit

lcd_context_save.exit:                            ; preds = %if.then.i, %if.end6.lcd_context_save.exit_crit_edge
  %11 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #8, !srcloc !137
  store i32 %12, ptr @reg_context.1, align 4
  %13 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #8, !srcloc !137
  store i32 %14, ptr @reg_context.2, align 4
  %15 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %15, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #8, !srcloc !137
  store i32 %16, ptr @reg_context.3, align 4
  %17 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #8, !srcloc !137
  store i32 %18, ptr @reg_context.4, align 4
  %19 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #8, !srcloc !137
  store i32 %20, ptr @reg_context.5, align 4
  %21 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %21, i32 68
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #8, !srcloc !137
  store i32 %22, ptr @reg_context.7, align 4
  %23 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %23, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #8, !srcloc !137
  store i32 %24, ptr @reg_context.8, align 4
  %25 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %25, i32 76
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #8, !srcloc !137
  store i32 %26, ptr @reg_context.9, align 4
  %27 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %27, i32 80
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #8, !srcloc !137
  store i32 %28, ptr @reg_context.10, align 4
  %29 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %29, i32 40
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #8, !srcloc !137
  store i32 %30, ptr @reg_context.11, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @console_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %lcd_context_save.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lcd_context_save.exit ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @console_lock() #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %4 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %if.then.i, label %entry.lcd_context_restore.exit_crit_edge

entry.lcd_context_restore.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_context_restore.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @reg_context.0, align 4
  %6 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !138
  %7 = load i32, ptr @reg_context.6, align 4
  %8 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %8, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %7) #8, !srcloc !138
  br label %lcd_context_restore.exit

lcd_context_restore.exit:                         ; preds = %if.then.i, %entry.lcd_context_restore.exit_crit_edge
  %9 = load i32, ptr @reg_context.1, align 4
  %10 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #8, !srcloc !138
  %11 = load i32, ptr @reg_context.2, align 4
  %12 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %11) #8, !srcloc !138
  %13 = load i32, ptr @reg_context.3, align 4
  %14 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %13) #8, !srcloc !138
  %15 = load i32, ptr @reg_context.4, align 4
  %16 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %15) #8, !srcloc !138
  %17 = load i32, ptr @reg_context.5, align 4
  %18 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %17) #8, !srcloc !138
  %19 = load i32, ptr @reg_context.7, align 4
  %20 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %19) #8, !srcloc !138
  %21 = load i32, ptr @reg_context.8, align 4
  %22 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %21) #8, !srcloc !138
  %23 = load i32, ptr @reg_context.9, align 4
  %24 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %24, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %23) #8, !srcloc !138
  %25 = load i32, ptr @reg_context.10, align 4
  %26 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %25) #8, !srcloc !138
  %27 = load i32, ptr @reg_context.11, align 4
  %28 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %27) #8, !srcloc !138
  %blank = getelementptr inbounds %struct.da8xx_fb_par, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %blank to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then, label %lcd_context_restore.exit.if.end9_crit_edge

lcd_context_restore.exit.if.end9_crit_edge:       ; preds = %lcd_context_restore.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %lcd_context_restore.exit
  %31 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i17 = icmp eq i32 %31, 2
  br i1 %cmp.i17, label %if.then.i19, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i19:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %32 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %32, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 8) #8, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i19, %if.then.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  %34 = load i32, ptr @lcd_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp1.i = icmp eq i32 %34, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i7.i20 = getelementptr i8, ptr %35, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i20, i32 0) #8, !srcloc !138
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #8
  %37 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i8.i21 = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i21) #8, !srcloc !137
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end3.i.lcd_enable_raster.exit_crit_edge

if.end3.i.lcd_enable_raster.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lcd_enable_raster.exit

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %38, 1
  %39 = load ptr, ptr @da8xx_fb_reg_base, align 4
  %add.ptr.i9.i22 = getelementptr i8, ptr %39, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i22, i32 %or.i) #8, !srcloc !138
  br label %lcd_enable_raster.exit

lcd_enable_raster.exit:                           ; preds = %if.then4.i, %if.end3.i.lcd_enable_raster.exit_crit_edge
  %lcd_supply = getelementptr inbounds %struct.da8xx_fb_par, ptr %3, i32 0, i32 19
  %40 = ptrtoint ptr %lcd_supply to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lcd_supply, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %lcd_enable_raster.exit.if.end9_crit_edge, label %if.then3

lcd_enable_raster.exit.if.end9_crit_edge:         ; preds = %lcd_enable_raster.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %lcd_enable_raster.exit
  %call5 = tail call i32 @regulator_enable(ptr noundef nonnull %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %lcd_enable_raster.exit.if.end9_crit_edge, %lcd_context_restore.exit.if.end9_crit_edge
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #8
  tail call void @console_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call5, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !117, !119, !121, !123, !125}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_da8xx_fb__316_1663_da8xx_fb_driver_init6, !1, !"__initcall__kmod_da8xx_fb__316_1663_da8xx_fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1663, i32 1}
!2 = !{ptr @__exitcall_da8xx_fb_driver_exit, !1, !"__exitcall_da8xx_fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description317, !4, !"__UNIQUE_ID_description317", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1665, i32 1}
!5 = !{ptr @__UNIQUE_ID_author318, !6, !"__UNIQUE_ID_author318", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1666, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1667, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1659, i32 14}
!12 = !{ptr @da8xx_fb_driver, !13, !"da8xx_fb_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1655, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1344, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @fb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1356, i32 44}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1358, i32 3}
!26 = !{ptr @fb_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fb_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1375, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fb_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @fb_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1401, i32 62}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1431, i32 3}
!37 = !{ptr @fb_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fb_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1451, i32 3}
!41 = !{ptr @fb_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fb_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @fb_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1488, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fb_probe.__key.22, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1491, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1495, i32 3}
!51 = !{ptr @fb_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @fb_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1504, i32 3}
!55 = !{ptr @fb_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @fb_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @fb_probe.__key.30, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1512, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1323, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @da8xx_fb_get_videomode._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @da8xx_fb_get_videomode._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1326, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @da8xx_fb_get_videomode._entry.34, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @da8xx_fb_get_videomode._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 190, i32 21}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 204, i32 21}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 219, i32 21}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 234, i32 21}
!78 = !{ptr @known_lcd_panels, !79, !"known_lcd_panels", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 187, i32 28}
!80 = !{ptr @da8xx_fb_reg_base, !81, !"da8xx_fb_reg_base", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 125, i32 22}
!82 = !{ptr @lcd_revision, !83, !"lcd_revision", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 126, i32 21}
!84 = !{ptr @da8xx_fb_var, !85, !"da8xx_fb_var", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 174, i32 33}
!86 = !{ptr @da8xx_fb_fix, !87, !"da8xx_fb_fix", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 176, i32 33}
!88 = !{ptr @da8xx_fb_ops, !89, !"da8xx_fb_ops", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1297, i32 28}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1276, i32 3}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @da8xxfb_set_par._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @da8xxfb_set_par._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 295, i32 4}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @lcd_disable_raster._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @lcd_disable_raster._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = distinct !{null, !101, !"frame_done_flag", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 129, i32 12}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 776, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @lcd_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @lcd_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 705, i32 4}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @da8xx_fb_config_clk_divider._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @da8xx_fb_config_clk_divider._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!114 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!119 = !{ptr @lcdc_irq_handler, !120, !"lcdc_irq_handler", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 127, i32 22}
!121 = !{ptr @frame_done_wq, !122, !"frame_done_wq", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 128, i32 26}
!123 = !{ptr @fb_pm_ops, !124, !"fb_pm_ops", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1653, i32 8}
!125 = distinct !{null, !126, !"reg_context", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/da8xx-fb.c", i32 1556, i32 3}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 4755568}
!138 = !{i64 4755150}
!139 = !{!"auto-init"}
!140 = !{i64 2153473465, i64 2153473490}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 5969020}
!143 = !{i64 5969217}
!144 = !{i64 2153454450}
