; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/atmel_lcdfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/atmel_lcdfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_lcdfb_config = type { i8, i8, i8 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.atmel_lcdfb_info = type { %struct.spinlock, ptr, ptr, i32, %struct.work_struct, i32, ptr, ptr, ptr, ptr, i8, i8, [16 x i32], i8, %struct.atmel_lcdfb_pdata, ptr, ptr }
%struct.atmel_lcdfb_pdata = type { i32, i8, i8, i8, i8, i32, i32, ptr, ptr, %struct.list_head }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atmel_lcdfb_power_ctrl_gpio = type { ptr, %struct.list_head }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }

@iomem_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_atmel_lcdfb__343_1334_atmel_lcdfb_driver_init6 = internal global ptr @atmel_lcdfb_driver_init, section ".initcall6.init", align 4
@atmel_lcdfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr @atmel_lcdfb_suspend, ptr @atmel_lcdfb_resume, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_lcdfb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_lcdfb_driver_exit = internal global ptr @atmel_lcdfb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description344 = internal constant [63 x i8] c"atmel_lcdfb.description=AT91 LCD Controller framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author345 = internal constant [59 x i8] c"atmel_lcdfb.author=Nicolas Ferre <nicolas.ferre@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [49 x i8] c"atmel_lcdfb.file=drivers/video/fbdev/atmel_lcdfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [24 x i8] c"atmel_lcdfb.license=GPL\00", section ".modinfo", align 1
@atmel_lcdfb_power_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lcd regulator enable failed:\09%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel_lcdfb_power_control\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/atmel_lcdfb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_lcdfb_power_control._entry_ptr = internal global ptr @atmel_lcdfb_power_control._entry, section ".printk_index", align 4
@atmel_lcdfb_power_control._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lcd regulator disable failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@atmel_lcdfb_power_control._entry_ptr.7 = internal global ptr @atmel_lcdfb_power_control._entry.5, section ".printk_index", align 4
@atmel_lcdfb_probe.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel_lcdfb\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_lcdfb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s BEGIN\0A\00", [22 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 1070, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot get default configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr = internal global ptr @atmel_lcdfb_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@atmel_lcdfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_lcdfb_check_var, ptr @atmel_lcdfb_set_par, ptr @atmel_lcdfb_setcolreg, ptr null, ptr @atmel_lcdfb_blank, ptr @atmel_lcdfb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_lcdfb_fix = internal unnamed_addr constant %struct.fb_fix_screeninfo { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, section ".init.rodata", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcdc_clk\00", [23 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 1110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resources unusable\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.17 = internal global ptr @atmel_lcdfb_probe._entry.15, section ".printk_index", align 4
@atmel_lcdfb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.2, i32 1148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot allocate framebuffer: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.20 = internal global ptr @atmel_lcdfb_probe._entry.18, section ".printk_index", align 4
@atmel_lcdfb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.2, i32 1165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot map LCDC registers\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.23 = internal global ptr @atmel_lcdfb_probe._entry.21, section ".printk_index", align 4
@atmel_lcdfb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.2, i32 1176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.26 = internal global ptr @atmel_lcdfb_probe._entry.24, section ".printk_index", align 4
@atmel_lcdfb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&sinfo->task)\00", [32 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.2, i32 1186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"init fbinfo failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.30 = internal global ptr @atmel_lcdfb_probe._entry.28, section ".printk_index", align 4
@atmel_lcdfb_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.2, i32 1192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set par failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.33 = internal global ptr @atmel_lcdfb_probe._entry.31, section ".printk_index", align 4
@atmel_lcdfb_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str.2, i32 1203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register framebuffer device: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.36 = internal global ptr @atmel_lcdfb_probe._entry.34, section ".printk_index", align 4
@atmel_lcdfb_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.9, ptr @.str.2, i32 1211, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fb%d: Atmel LCDC at 0x%08lx (mapped at %p), irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_lcdfb_probe._entry_ptr.40 = internal global ptr @atmel_lcdfb_probe._entry.37, section ".printk_index", align 4
@atmel_lcdfb_probe.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.41, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s FAILED\0A\00", [21 x i8] zeroinitializer }, align 32
@atmel_lcdfb_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-lcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-lcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g10-lcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g10_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-lcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45es-lcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45es_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-lcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_config }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 961, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find display phandle\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_lcdfb_of_init\00", [44 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr = internal global ptr @atmel_lcdfb_of_init._entry, section ".printk_index", align 4
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bits-per-pixel\00", [17 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 967, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get property bits-per-pixel\0A\00", [57 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.48 = internal global ptr @atmel_lcdfb_of_init._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,guard-time\00", [47 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get property atmel,guard-time\0A\00", [55 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.52 = internal global ptr @atmel_lcdfb_of_init._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel,lcdcon2\00", [18 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 979, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get property atmel,lcdcon2\0A\00", [58 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.56 = internal global ptr @atmel_lcdfb_of_init._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel,dmacon\00", [19 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 985, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.59 = internal global ptr @atmel_lcdfb_of_init._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,power-control\00", [44 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.44, ptr @.str.2, i32 1006, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"set direction output gpio atmel,power-control[%d] failed\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.63 = internal global ptr @atmel_lcdfb_of_init._entry.61, section ".printk_index", align 4
@atmel_lcdfb_of_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.44, ptr @.str.2, i32 1017, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid atmel,lcd-wiring-mode\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.66 = internal global ptr @atmel_lcdfb_of_init._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,lcdcon-backlight\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel,lcdcon-backlight-inverted\00", [32 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.44, ptr @.str.2, i32 1027, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get videomode from DT\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_lcdfb_of_init._entry_ptr.71 = internal global ptr @atmel_lcdfb_of_init._entry.69, section ".printk_index", align 4
@at91sam9261_config = internal global { %struct.atmel_lcdfb_config, [29 x i8] } { %struct.atmel_lcdfb_config { i8 0, i8 1, i8 1 }, [29 x i8] zeroinitializer }, align 32
@at91sam9263_config = internal global { %struct.atmel_lcdfb_config, [29 x i8] } { %struct.atmel_lcdfb_config { i8 0, i8 0, i8 1 }, [29 x i8] zeroinitializer }, align 32
@at91sam9g10_config = internal global { %struct.atmel_lcdfb_config, [29 x i8] } { %struct.atmel_lcdfb_config { i8 0, i8 1, i8 0 }, [29 x i8] zeroinitializer }, align 32
@at91sam9g45_config = internal global { %struct.atmel_lcdfb_config, [29 x i8] } { %struct.atmel_lcdfb_config { i8 1, i8 0, i8 0 }, [29 x i8] zeroinitializer }, align 32
@at91sam9g45es_config = internal global { %struct.atmel_lcdfb_config, [29 x i8] } zeroinitializer, align 32
@at91sam9rl_config = internal global { %struct.atmel_lcdfb_config, [29 x i8] } { %struct.atmel_lcdfb_config { i8 0, i8 0, i8 1 }, [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,lcd-wiring-mode\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BRG\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@atmel_lcdfb_pan_display.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_lcdfb_pan_display\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_lcdfb_check_var\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"needed value not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var._entry_ptr = internal global ptr @atmel_lcdfb_check_var._entry, section ".printk_index", align 4
@atmel_lcdfb_check_var.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.77, ptr @.str.2, ptr @.str.80, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  resolution: %ux%u\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.77, ptr @.str.2, ptr @.str.81, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  pixclk:     %lu KHz\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.77, ptr @.str.2, ptr @.str.82, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  bpp:        %u\0A\00", [46 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.77, ptr @.str.2, ptr @.str.83, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  clk:        %lu KHz\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.2, i32 430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%lu KHz pixel clock is too fast\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var._entry_ptr.86 = internal global ptr @atmel_lcdfb_check_var._entry.84, section ".printk_index", align 4
@atmel_lcdfb_check_var._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.2, i32 455, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Frame buffer is too small (%u) for screen size (need at least %u)\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var._entry_ptr.89 = internal global ptr @atmel_lcdfb_check_var._entry.87, section ".printk_index", align 4
@atmel_lcdfb_check_var._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.77, ptr @.str.2, i32 527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"color depth %d not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_lcdfb_check_var._entry_ptr.92 = internal global ptr @atmel_lcdfb_check_var._entry.90, section ".printk_index", align 4
@contrast_ctr = internal global { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@atmel_lcdc_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @atmel_bl_update_status, ptr @atmel_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@init_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %ld on backlight register\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_backlight\00", [17 x i8] zeroinitializer }, align 32
@init_backlight._entry_ptr = internal global ptr @init_backlight._entry, section ".printk_index", align 4
@atmel_lcdfb_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 847, ptr @.str.98, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FIFO underflow %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_lcdfb_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_lcdfb_interrupt._entry_ptr = internal global ptr @atmel_lcdfb_interrupt._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@atmel_lcdfb_init_fbinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 877, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%luKiB frame buffer at %08lx (mapped at %p)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_lcdfb_init_fbinfo\00", [40 x i8] zeroinitializer }, align 32
@atmel_lcdfb_init_fbinfo._entry_ptr = internal global ptr @atmel_lcdfb_init_fbinfo._entry, section ".printk_index", align 4
@atmel_lcdfb_init_fbinfo._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Alloc color map failed\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_lcdfb_init_fbinfo._entry_ptr.103 = internal global ptr @atmel_lcdfb_init_fbinfo._entry.101, section ".printk_index", align 4
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.78, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_lcdfb_set_par\00", [44 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"  * resolution: %ux%u (%ux%u virtual)\0A\00", [57 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.106, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  * update DMA engine\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.104, ptr @.str.2, i32 608, ptr @.str.108, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bypassing pixel clock divider\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par._entry_ptr = internal global ptr @atmel_lcdfb_set_par._entry, section ".printk_index", align 4
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.109, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  * programming CLKVAL = 0x%08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.110, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  updated pixclk:     %lu KHz\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.111, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  * LCDCON2 = %08lx\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.112, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  * LCDTIM1 = %08lx\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.113, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  * LCDTIM2 = %08lx\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.114, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  * LCDFRMCFG = %08lx\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_lcdfb_set_par.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.104, ptr @.str.2, ptr @.str.115, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  * DONE\0A\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.116 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"atmel_lcdfb_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1324, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 232, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 237, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1052, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1070, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1077, i32 50 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"atmel_lcdfb_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 827, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1090, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1095, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1110, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1148, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1165, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1176, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1182, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1186, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1192, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1203, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1210, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1243, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c"atmel_lcdfb_dt_ids\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 899, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 959, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 961, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 965, i32 41 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 967, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 971, i32 41 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 973, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 977, i32 41 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 979, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 983, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 985, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 990, i32 35 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1006, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1017, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1022, i32 65 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1023, i32 65 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 1027, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [19 x i8] c"at91sam9261_config\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 78, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant [19 x i8] c"at91sam9263_config\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 83, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c"at91sam9g10_config\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 87, i32 34 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"at91sam9g45_config\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 91, i32 34 }
@___asan_gen_.322 = private unnamed_addr constant [21 x i8] c"at91sam9g45es_config\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 95, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"at91sam9rl_config\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 98, i32 34 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 921, i32 36 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 912, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 913, i32 28 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 797, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 414, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 419, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 424, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 425, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 426, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 427, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 430, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 454, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 526, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant [13 x i8] c"contrast_ctr\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 102, i32 12 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 166, i32 33 }
@___asan_gen_.391 = private unnamed_addr constant [18 x i8] c"atmel_lcdc_bl_ops\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 148, i32 35 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 169, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 847, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 873, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 882, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 571, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 572, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 589, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 608, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 612, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 618, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 642, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 649, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 656, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 665, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.467 = private constant [37 x i8] c"../drivers/video/fbdev/atmel_lcdfb.c\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 686, i32 2 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_atmel_lcdfb_driver_exit, ptr @__initcall__kmod_atmel_lcdfb__343_1334_atmel_lcdfb_driver_init6, ptr @atmel_lcdfb_check_var._entry, ptr @atmel_lcdfb_check_var._entry.84, ptr @atmel_lcdfb_check_var._entry.87, ptr @atmel_lcdfb_check_var._entry.90, ptr @atmel_lcdfb_check_var._entry_ptr, ptr @atmel_lcdfb_check_var._entry_ptr.86, ptr @atmel_lcdfb_check_var._entry_ptr.89, ptr @atmel_lcdfb_check_var._entry_ptr.92, ptr @atmel_lcdfb_driver_exit, ptr @atmel_lcdfb_init_fbinfo._entry, ptr @atmel_lcdfb_init_fbinfo._entry.101, ptr @atmel_lcdfb_init_fbinfo._entry_ptr, ptr @atmel_lcdfb_init_fbinfo._entry_ptr.103, ptr @atmel_lcdfb_interrupt._entry, ptr @atmel_lcdfb_interrupt._entry_ptr, ptr @atmel_lcdfb_of_init._entry, ptr @atmel_lcdfb_of_init._entry.46, ptr @atmel_lcdfb_of_init._entry.50, ptr @atmel_lcdfb_of_init._entry.54, ptr @atmel_lcdfb_of_init._entry.58, ptr @atmel_lcdfb_of_init._entry.61, ptr @atmel_lcdfb_of_init._entry.64, ptr @atmel_lcdfb_of_init._entry.69, ptr @atmel_lcdfb_of_init._entry_ptr, ptr @atmel_lcdfb_of_init._entry_ptr.48, ptr @atmel_lcdfb_of_init._entry_ptr.52, ptr @atmel_lcdfb_of_init._entry_ptr.56, ptr @atmel_lcdfb_of_init._entry_ptr.59, ptr @atmel_lcdfb_of_init._entry_ptr.63, ptr @atmel_lcdfb_of_init._entry_ptr.66, ptr @atmel_lcdfb_of_init._entry_ptr.71, ptr @atmel_lcdfb_power_control._entry, ptr @atmel_lcdfb_power_control._entry.5, ptr @atmel_lcdfb_power_control._entry_ptr, ptr @atmel_lcdfb_power_control._entry_ptr.7, ptr @atmel_lcdfb_probe._entry, ptr @atmel_lcdfb_probe._entry.15, ptr @atmel_lcdfb_probe._entry.18, ptr @atmel_lcdfb_probe._entry.21, ptr @atmel_lcdfb_probe._entry.24, ptr @atmel_lcdfb_probe._entry.28, ptr @atmel_lcdfb_probe._entry.31, ptr @atmel_lcdfb_probe._entry.34, ptr @atmel_lcdfb_probe._entry.37, ptr @atmel_lcdfb_probe._entry_ptr, ptr @atmel_lcdfb_probe._entry_ptr.17, ptr @atmel_lcdfb_probe._entry_ptr.20, ptr @atmel_lcdfb_probe._entry_ptr.23, ptr @atmel_lcdfb_probe._entry_ptr.26, ptr @atmel_lcdfb_probe._entry_ptr.30, ptr @atmel_lcdfb_probe._entry_ptr.33, ptr @atmel_lcdfb_probe._entry_ptr.36, ptr @atmel_lcdfb_probe._entry_ptr.40, ptr @atmel_lcdfb_remove, ptr @atmel_lcdfb_set_par._entry, ptr @atmel_lcdfb_set_par._entry_ptr, ptr @init_backlight._entry, ptr @init_backlight._entry_ptr, ptr @atmel_lcdfb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @atmel_lcdfb_ops, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @atmel_lcdfb_probe.__key, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @atmel_lcdfb_dt_ids, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @at91sam9261_config, ptr @at91sam9263_config, ptr @at91sam9g10_config, ptr @at91sam9g45_config, ptr @at91sam9g45es_config, ptr @at91sam9rl_config, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @contrast_ctr, ptr @.str.93, ptr @atmel_lcdc_bl_ops, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_power_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_power_control._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_of_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9261_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9263_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g10_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45es_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_check_var._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_check_var._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_check_var._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @contrast_ctr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdc_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_init_fbinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_init_fbinfo._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_lcdfb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_remove(ptr noundef %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %task = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 4
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %task) #9
  tail call fastcc void @exit_backlight(ptr noundef nonnull %3)
  %atmel_lcdfb_power_control.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %atmel_lcdfb_power_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atmel_lcdfb_power_control.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdata1.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14
  tail call void %5(ptr noundef %pdata1.i, i32 noundef 0) #9
  br label %atmel_lcdfb_power_control.exit

if.else.i:                                        ; preds = %if.end
  %reg_lcd.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %reg_lcd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_lcd.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.else.i.atmel_lcdfb_power_control.exit_crit_edge, label %if.then4.i

if.else.i.atmel_lcdfb_power_control.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_power_control.exit

if.then4.i:                                       ; preds = %if.else.i
  %call12.i = tail call i32 @regulator_disable(ptr noundef nonnull %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then4.i.atmel_lcdfb_power_control.exit_crit_edge, label %do.end17.i

if.then4.i.atmel_lcdfb_power_control.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_power_control.exit

do.end17.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev18.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %pdev18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev18.i, align 4
  %dev19.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.6, i32 noundef %call12.i) #12
  br label %atmel_lcdfb_power_control.exit

atmel_lcdfb_power_control.exit:                   ; preds = %do.end17.i, %if.then4.i.atmel_lcdfb_power_control.exit_crit_edge, %if.else.i.atmel_lcdfb_power_control.exit_crit_edge, %if.then.i
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #9
  tail call fastcc void @atmel_lcdfb_stop_clock(ptr noundef nonnull %3)
  %lcdc_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lcdc_clk, align 4
  tail call void @clk_put(ptr noundef %11) #9
  %bus_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_put(ptr noundef %13) #9
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  %irq_base = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_base, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %15, ptr noundef nonnull %1) #9
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %17) #9
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 10
  %18 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %20 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mmio_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %21) #9
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %atmel_lcdfb_power_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @iounmap(ptr noundef %24) #9
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %smem_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %28) #9
  br label %if.end12

if.else:                                          ; preds = %atmel_lcdfb_power_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  %info1.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info1.i, align 4
  %device.i = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smem_len.i, align 4
  %35 = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 25
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %smem_start.i, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef %37, i32 noundef %39, i32 noundef 4) #9
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  tail call void @framebuffer_release(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exit_backlight(ptr nocapture noundef readonly %sinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %backlight = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 9
  %0 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlight, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %power = getelementptr inbounds %struct.backlight_properties, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power, align 8
  %5 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %backlight, align 4
  %ops6 = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops6, align 4
  %update_status = getelementptr inbounds %struct.backlight_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %update_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_status, align 4
  %call = tail call i32 %10(ptr noundef %6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %11 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %backlight, align 4
  tail call void @backlight_device_unregister(ptr noundef %12) #9
  br label %return

return:                                           ; preds = %if.end8, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_lcdfb_power_control(ptr noundef %sinfo, i32 noundef %on) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %atmel_lcdfb_power_control = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %atmel_lcdfb_power_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atmel_lcdfb_power_control, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdata1 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 14
  tail call void %1(ptr noundef %pdata1, i32 noundef %on) #9
  br label %if.end23

if.else:                                          ; preds = %entry
  %reg_lcd = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 16
  %2 = ptrtoint ptr %reg_lcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_lcd, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else.if.end23_crit_edge, label %if.then4

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.then4
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then6.if.end23_crit_edge, label %do.end

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #12
  br label %if.end23

if.else10:                                        ; preds = %if.then4
  %call12 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else10.if.end23_crit_edge, label %do.end17

if.else10.if.end23_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end17:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  %pdev18 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 6
  %6 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev18, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.6, i32 noundef %call12) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.else10.if.end23_crit_edge, %do.end, %if.then6.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_lcdfb_stop_clock(ptr nocapture noundef readonly %sinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 7
  %0 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  %lcdc_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 8
  %2 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcdc_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_lcdfb_free_video_memory(ptr nocapture noundef readonly %sinfo) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %info1 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_len, align 4
  %6 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_start, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %8, i32 noundef %10, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @atmel_lcdfb_driver, ptr noundef nonnull @atmel_lcdfb_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_lcdfb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_lcdfb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %mode.i.i = alloca ptr, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %fb_vm.i = alloca %struct.fb_videomode, align 4
  %vm.i = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_probe.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_probe.__UNIQUE_ID_ddebug341, ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @framebuffer_alloc(i32 noundef 232, ptr noundef %dev1) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.do.body191_crit_edge, label %if.end7

do.end.do.body191_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body191

if.end7:                                          ; preds = %do.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %pdev8 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev8, align 4
  %info9 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %info9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %info9, align 4
  %modelist10 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 13
  %4 = ptrtoint ptr %modelist10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %modelist10, ptr %modelist10, align 4
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %modelist10, ptr %prev.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %do.end20, label %if.then13

if.then13:                                        ; preds = %if.end7
  %8 = ptrtoint ptr %info9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info9, align 4
  %pdata2.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev8, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fb_vm.i) #9
  %14 = call ptr @memset(ptr %fb_vm.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i) #9
  %15 = call ptr @memset(ptr %vm.i, i32 255, i32 40)
  %call.i = tail call ptr @of_match_device(ptr noundef nonnull @atmel_lcdfb_dt_ids, ptr noundef %dev4.i) #9
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %config.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %config.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %19 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %atmel_lcdfb_of_init.exit.thread

of_parse_phandle.exit.i:                          ; preds = %if.then13
  %20 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.atmel_lcdfb_of_init.exit.thread_crit_edge, label %if.end.i

of_parse_phandle.exit.i.atmel_lcdfb_of_init.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_of_init.exit.thread

atmel_lcdfb_of_init.exit.thread:                  ; preds = %of_parse_phandle.exit.i.atmel_lcdfb_of_init.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.43) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fb_vm.i) #9
  br label %free_info

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.45, ptr noundef %bits_per_pixel.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end10.i, label %if.end11.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.47) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end11.i:                                       ; preds = %if.end.i
  %call.i.i142.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.49, ptr noundef %pdata2.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142.i)
  %cmp13.i = icmp slt i32 %call.i.i142.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end18.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.51) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end18.i:                                       ; preds = %if.end11.i
  %default_lcdcon2.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 5
  %call.i.i143.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.53, ptr noundef %default_lcdcon2.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143.i)
  %cmp20.i = icmp slt i32 %call.i.i143.i, 0
  br i1 %cmp20.i, label %do.end24.i, label %if.end25.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.55) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end25.i:                                       ; preds = %if.end18.i
  %default_dmacon.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 6
  %call.i.i144.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.57, ptr noundef %default_dmacon.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144.i)
  %cmp27.i = icmp slt i32 %call.i.i144.i, 0
  br i1 %cmp27.i, label %do.end31.i, label %if.end32.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.47) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end32.i:                                       ; preds = %if.end25.i
  %pwr_gpios.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 9
  %22 = ptrtoint ptr %pwr_gpios.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pwr_gpios.i, ptr %pwr_gpios.i, align 4
  %prev.i.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 9, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pwr_gpios.i, ptr %prev.i.i, align 4
  %call33164.i = call i32 @gpiod_count(ptr noundef %dev4.i, ptr noundef nonnull @.str.60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33164.i)
  %cmp34165.i = icmp sgt i32 %call33164.i, 0
  br i1 %cmp34165.i, label %if.end32.i.for.body.i_crit_edge, label %if.end32.i.if.end55.i_crit_edge

if.end32.i.if.end55.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.end32.i.for.body.i_crit_edge:                  ; preds = %if.end32.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end32.i.for.body.i_crit_edge
  %i.0167.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end32.i.for.body.i_crit_edge ]
  %is_gpio_power.0.off0166.i = phi i1 [ %is_gpio_power.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end32.i.for.body.i_crit_edge ]
  %call35.i = call ptr @devm_gpiod_get_index(ptr noundef %dev4.i, ptr noundef nonnull @.str.60, i32 noundef %i.0167.i, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end38.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end38.i:                                       ; preds = %for.body.i
  %call.i145.i = call noalias ptr @devm_kmalloc(ptr noundef %dev4.i, i32 noundef 12, i32 noundef 3520) #9
  %tobool40.not.i = icmp eq ptr %call.i145.i, null
  br i1 %tobool40.not.i, label %if.end38.i.atmel_lcdfb_of_init.exit.thread350_crit_edge, label %if.end42.i

if.end38.i.atmel_lcdfb_of_init.exit.thread350_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_of_init.exit.thread350

if.end42.i:                                       ; preds = %if.end38.i
  %24 = ptrtoint ptr %call.i145.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call35.i, ptr %call.i145.i, align 4
  %call44.i = call i32 @gpiod_is_active_low(ptr noundef %call35.i) #9
  %call45.i = call i32 @gpiod_direction_output(ptr noundef %call35.i, i32 noundef %call44.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end51.i, label %do.end50.i

do.end50.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.62, i32 noundef %i.0167.i) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end51.i:                                       ; preds = %if.end42.i
  %list.i = getelementptr inbounds %struct.atmel_lcdfb_power_ctrl_gpio, ptr %call.i145.i, i32 0, i32 1
  %25 = ptrtoint ptr %pwr_gpios.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwr_gpios.i, align 4
  %call.i.i146.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %pwr_gpios.i, ptr noundef %26) #9
  br i1 %call.i.i146.i, label %if.end.i.i.i, label %if.end51.i.for.inc.i_crit_edge

if.end51.i.for.inc.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.atmel_lcdfb_power_ctrl_gpio, ptr %call.i145.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pwr_gpios.i, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %pwr_gpios.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list.i, ptr %pwr_gpios.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.end51.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %is_gpio_power.1.off0.i = phi i1 [ %is_gpio_power.0.off0166.i, %for.body.i.for.inc.i_crit_edge ], [ true, %if.end51.i.for.inc.i_crit_edge ], [ true, %if.end.i.i.i ]
  %inc.i = add nuw nsw i32 %i.0167.i, 1
  %call33.i = call i32 @gpiod_count(ptr noundef %dev4.i, ptr noundef nonnull @.str.60) #9
  %cmp34.i = icmp slt i32 %inc.i, %call33.i
  br i1 %cmp34.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %is_gpio_power.1.off0.i, label %if.then54.i, label %for.end.i.if.end55.i_crit_edge

for.end.i.if.end55.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then54.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %atmel_lcdfb_power_control.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 7
  %31 = ptrtoint ptr %atmel_lcdfb_power_control.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @atmel_lcdfb_power_control_gpio, ptr %atmel_lcdfb_power_control.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %for.end.i.if.end55.i_crit_edge, %if.end32.i.if.end55.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i.i) #9
  %32 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode.i.i, align 4, !annotation !259
  %call.i147.i = call i32 @of_property_read_string(ptr noundef nonnull %21, ptr noundef nonnull @.str.72, ptr noundef nonnull %mode.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %cmp.i148.i = icmp slt i32 %call.i147.i, 0
  br i1 %cmp.i148.i, label %if.end55.i.if.end62.i_crit_edge, label %for.cond.preheader.i.i

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

for.cond.preheader.i.i:                           ; preds = %if.end55.i
  %33 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mode.i.i, align 4
  %call2.i.i = call i32 @strcasecmp(ptr noundef %34, ptr noundef nonnull @.str.73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i149.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i149.i, label %for.cond.preheader.i.i.if.end62.i_crit_edge, label %for.inc.i.i

for.cond.preheader.i.i.if.end62.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

for.inc.i.i:                                      ; preds = %for.cond.preheader.i.i
  %call2.1.i.i = call i32 @strcasecmp(ptr noundef %34, ptr noundef nonnull @.str.74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call2.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.end62.i_crit_edge, label %do.end61.i

for.inc.i.i.if.end62.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

do.end61.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.65) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end62.i:                                       ; preds = %for.inc.i.i.if.end62.i_crit_edge, %for.cond.preheader.i.i.if.end62.i_crit_edge, %if.end55.i.if.end62.i_crit_edge
  %retval.0.i150.ph.i = phi i8 [ 0, %for.cond.preheader.i.i.if.end62.i_crit_edge ], [ 0, %if.end55.i.if.end62.i_crit_edge ], [ 1, %for.inc.i.i.if.end62.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i.i) #9
  %lcd_wiring_mode.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 4
  %35 = ptrtoint ptr %lcd_wiring_mode.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %retval.0.i150.ph.i, ptr %lcd_wiring_mode.i, align 1
  %call.i151.i = call ptr @of_find_property(ptr noundef nonnull %21, ptr noundef nonnull @.str.67, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i151.i, null
  %lcdcon_is_backlight.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 1
  %frombool.i = zext i1 %tobool.i.i to i8
  %36 = ptrtoint ptr %lcdcon_is_backlight.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i, ptr %lcdcon_is_backlight.i, align 4
  %call.i152.i = call ptr @of_find_property(ptr noundef nonnull %21, ptr noundef nonnull @.str.68, ptr noundef null) #9
  %tobool.i153.i = icmp ne ptr %call.i152.i, null
  %lcdcon_pol_negative.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 2
  %frombool65.i = zext i1 %tobool.i153.i to i8
  %37 = ptrtoint ptr %lcdcon_pol_negative.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool65.i, ptr %lcdcon_pol_negative.i, align 1
  %call66.i = call i32 @of_get_videomode(ptr noundef nonnull %21, ptr noundef nonnull %vm.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end72.i, label %do.end71.i

do.end71.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.70) #12
  br label %atmel_lcdfb_of_init.exit.thread350

if.end72.i:                                       ; preds = %if.end62.i
  %call73.i = call i32 @fb_videomode_from_videomode(ptr noundef nonnull %vm.i, ptr noundef nonnull %fb_vm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.end72.i.atmel_lcdfb_of_init.exit.thread350_crit_edge, label %atmel_lcdfb_of_init.exit

if.end72.i.atmel_lcdfb_of_init.exit.thread350_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_of_init.exit.thread350

atmel_lcdfb_of_init.exit.thread350:               ; preds = %if.end72.i.atmel_lcdfb_of_init.exit.thread350_crit_edge, %do.end71.i, %do.end61.i, %do.end50.i, %if.end38.i.atmel_lcdfb_of_init.exit.thread350_crit_edge, %do.end31.i, %do.end24.i, %do.end17.i, %do.end10.i
  %ret.0.i.ph = phi i32 [ %call73.i, %if.end72.i.atmel_lcdfb_of_init.exit.thread350_crit_edge ], [ %call66.i, %do.end71.i ], [ -19, %do.end61.i ], [ %call45.i, %do.end50.i ], [ %call.i.i144.i, %do.end31.i ], [ %call.i.i143.i, %do.end24.i ], [ %call.i.i142.i, %do.end17.i ], [ %call.i.i.i, %do.end10.i ], [ -12, %if.end38.i.atmel_lcdfb_of_init.exit.thread350_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fb_vm.i) #9
  br label %free_info

atmel_lcdfb_of_init.exit:                         ; preds = %if.end72.i
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 13
  %call78.i = call i32 @fb_add_videomode(ptr noundef nonnull %fb_vm.i, ptr noundef %modelist.i) #9
  call void @of_node_put(ptr noundef nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fb_vm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool15.not = icmp eq i32 %call73.i, 0
  br i1 %tobool15.not, label %if.end21, label %atmel_lcdfb_of_init.exit.free_info_crit_edge

atmel_lcdfb_of_init.exit.free_info_crit_edge:     ; preds = %atmel_lcdfb_of_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_info

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %free_info

if.end21:                                         ; preds = %atmel_lcdfb_of_init.exit
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %tobool22.not = icmp eq ptr %39, null
  br i1 %tobool22.not, label %if.end21.free_info_crit_edge, label %if.end24

if.end21.free_info_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_info

if.end24:                                         ; preds = %if.end21
  %call26 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  %reg_lcd = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 16
  %cmp.i338 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i338, ptr null, ptr %call26
  %40 = ptrtoint ptr %reg_lcd to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spec.store.select, ptr %reg_lcd, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 2
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8256, ptr %flags, align 4
  %pseudo_palette = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 12
  %pseudo_palette32 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 27
  %42 = ptrtoint ptr %pseudo_palette32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pseudo_palette, ptr %pseudo_palette32, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 20
  %43 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @atmel_lcdfb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7
  %44 = call ptr @memcpy(ptr %fix, ptr @atmel_lcdfb_fix, i32 68)
  %45 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev8, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %call36 = call ptr @strcpy(ptr noundef %fix, ptr noundef %48) #13
  %call37 = call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %bus_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call37, ptr %bus_clk, align 4
  %cmp.i339 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call37 to i32
  br label %free_info

if.end43:                                         ; preds = %if.end24
  %call44 = call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  %lcdc_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call44, ptr %lcdc_clk, align 4
  %cmp.i340 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call44 to i32
  br label %put_bus_clk

if.end50:                                         ; preds = %if.end43
  call fastcc void @atmel_lcdfb_start_clock(ptr noundef %1)
  %53 = ptrtoint ptr %modelist10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %modelist10, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 6
  %mode = getelementptr inbounds %struct.fb_modelist, ptr %54, i32 0, i32 1
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef %mode) #9
  %call54 = call i32 @atmel_lcdfb_check_var(ptr noundef %var, ptr noundef nonnull %call4)
  %call55 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %do.end60, label %if.end61

do.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %stop_clk

if.end61:                                         ; preds = %if.end50
  %call62 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq_base = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %irq_base to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call62, ptr %irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp = icmp slt i32 %call62, 0
  br i1 %cmp, label %if.end61.stop_clk_crit_edge, label %if.end66

if.end61.stop_clk_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_clk

if.end66:                                         ; preds = %if.end61
  %call67 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.else90, label %if.then69

if.then69:                                        ; preds = %if.end66
  %56 = ptrtoint ptr %call67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call67, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %smem_start, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call67, i32 0, i32 1
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %end.i, align 4
  %61 = load i32, ptr %call67, align 4
  %sub.i = add i32 %60, 1
  %add.i = sub i32 %sub.i, %61
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %smem_len, align 4
  %63 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev, align 8
  %call78 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %57, i32 noundef %add.i, ptr noundef %64, i32 noundef 0) #9
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.then69.stop_clk_crit_edge, label %if.end81

if.then69.stop_clk_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_clk

if.end81:                                         ; preds = %if.then69
  %65 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smem_start, align 4
  %67 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %smem_len, align 4
  %call86 = call ptr @ioremap_wc(i32 noundef %66, i32 noundef %68) #9
  %69 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 25
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call86, ptr %69, align 4
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end81.if.then183_crit_edge, label %if.end81.if.end98_crit_edge

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end81.if.then183_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then183

if.else90:                                        ; preds = %if.end66
  %call91 = call fastcc i32 @atmel_lcdfb_alloc_video_memory(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %if.else90.if.end98_crit_edge

if.else90.if.end98_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end96:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call91) #12
  br label %stop_clk

if.end98:                                         ; preds = %if.else90.if.end98_crit_edge, %if.end81.if.end98_crit_edge
  %71 = ptrtoint ptr %call55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %call55, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7, i32 10
  %73 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %mmio_start, align 4
  %end.i341 = getelementptr inbounds %struct.resource, ptr %call55, i32 0, i32 1
  %74 = ptrtoint ptr %end.i341 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %end.i341, align 4
  %76 = load i32, ptr %call55, align 4
  %sub.i342 = add i32 %75, 1
  %add.i343 = sub i32 %sub.i342, %76
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7, i32 11
  %77 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i343, ptr %mmio_len, align 4
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 8
  %call108 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %72, i32 noundef %add.i343, ptr noundef %79, i32 noundef 0) #9
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %if.end98.free_fb_crit_edge, label %if.end111

if.end98.free_fb_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_fb

if.end111:                                        ; preds = %if.end98
  %80 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mmio_start, align 4
  %82 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mmio_len, align 4
  %call116 = call ptr @ioremap(i32 noundef %81, i32 noundef %83) #9
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call116, ptr %mmio, align 4
  %tobool118.not = icmp eq ptr %call116, null
  br i1 %tobool118.not, label %do.end122, label %if.end123

do.end122:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #12
  br label %release_mem

if.end123:                                        ; preds = %if.end111
  call fastcc void @init_contrast(ptr noundef %1)
  %85 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq_base, align 4
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 8
  %call.i344 = call i32 @request_threaded_irq(i32 noundef %86, ptr noundef nonnull @atmel_lcdfb_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %88, ptr noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool127.not = icmp eq i32 %call.i344, 0
  br i1 %tobool127.not, label %do.body133, label %do.end131

do.end131:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call.i344) #12
  br label %unmap_mmio

do.body133:                                       ; preds = %if.end123
  %task = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 4
  call void @__init_work(ptr noundef %task, i32 noundef 0) #9
  %89 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -64, ptr %task, align 4
  %lockdep_map = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @atmel_lcdfb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry137 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %entry137 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %entry137, ptr %entry137, align 4
  %prev.i345 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 4, i32 1, i32 1
  %91 = ptrtoint ptr %prev.i345 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %entry137, ptr %prev.i345, align 4
  %func = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 4, i32 2
  %92 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @atmel_lcdfb_task, ptr %func, align 4
  %call141 = call fastcc i32 @atmel_lcdfb_init_fbinfo(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %do.end146, label %if.end147

do.end146:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call141) #12
  br label %unregister_irqs

if.end147:                                        ; preds = %do.body133
  %call148 = call i32 @atmel_lcdfb_set_par(ptr noundef %call4)
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call4, ptr %driver_data.i, align 4
  %call155 = call i32 @register_framebuffer(ptr noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %do.end160, label %if.end161

do.end160:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call155) #12
  %94 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %driver_data.i, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %unregister_irqs

if.end161:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @atmel_lcdfb_power_control(ptr noundef %1, i32 noundef 1)
  %node = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 1
  %95 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %node, align 4
  %97 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mmio_start, align 4
  %99 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio, align 4
  %101 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irq_base, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %96, i32 noundef %98, ptr noundef %100, i32 noundef %102) #12
  br label %cleanup

unregister_irqs:                                  ; preds = %do.end160, %do.end146
  %ret.0 = phi i32 [ %call141, %do.end146 ], [ %call155, %do.end160 ]
  %call170 = call zeroext i1 @cancel_work_sync(ptr noundef %task) #9
  %103 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq_base, align 4
  %call172 = call ptr @free_irq(i32 noundef %104, ptr noundef %call4) #9
  br label %unmap_mmio

unmap_mmio:                                       ; preds = %unregister_irqs, %do.end131
  %ret.1 = phi i32 [ %call.i344, %do.end131 ], [ %ret.0, %unregister_irqs ]
  call fastcc void @exit_backlight(ptr noundef %1)
  %105 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio, align 4
  call void @iounmap(ptr noundef %106) #9
  br label %release_mem

release_mem:                                      ; preds = %unmap_mmio, %do.end122
  %ret.2 = phi i32 [ %ret.1, %unmap_mmio ], [ -12, %do.end122 ]
  %107 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mmio_start, align 4
  %109 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mmio_len, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %108, i32 noundef %110) #9
  br label %free_fb

free_fb:                                          ; preds = %release_mem, %if.end98.free_fb_crit_edge
  %ret.3 = phi i32 [ %ret.2, %release_mem ], [ -16, %if.end98.free_fb_crit_edge ]
  br i1 %tobool68.not, label %release_intmem, label %if.then179

if.then179:                                       ; preds = %free_fb
  call void @__sanitizer_cov_trace_pc() #11
  %111 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 25
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  call void @iounmap(ptr noundef %113) #9
  br label %if.then183

release_intmem:                                   ; preds = %free_fb
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @atmel_lcdfb_free_video_memory(ptr noundef %1)
  br label %stop_clk

if.then183:                                       ; preds = %if.then179, %if.end81.if.then183_crit_edge
  %ret.4.ph = phi i32 [ -12, %if.end81.if.then183_crit_edge ], [ %ret.3, %if.then179 ]
  %smem_start185 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7, i32 1
  %114 = ptrtoint ptr %smem_start185 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %smem_start185, align 4
  %smem_len187 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7, i32 2
  %116 = ptrtoint ptr %smem_len187 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %smem_len187, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %115, i32 noundef %117) #9
  br label %stop_clk

stop_clk:                                         ; preds = %if.then183, %release_intmem, %do.end96, %if.then69.stop_clk_crit_edge, %if.end61.stop_clk_crit_edge, %do.end60
  %ret.5 = phi i32 [ %ret.4.ph, %if.then183 ], [ %ret.3, %release_intmem ], [ %call91, %do.end96 ], [ -6, %do.end60 ], [ %call62, %if.end61.stop_clk_crit_edge ], [ -16, %if.then69.stop_clk_crit_edge ]
  call fastcc void @atmel_lcdfb_stop_clock(ptr noundef %1)
  %118 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %lcdc_clk, align 4
  call void @clk_put(ptr noundef %119) #9
  br label %put_bus_clk

put_bus_clk:                                      ; preds = %stop_clk, %if.then47
  %ret.6 = phi i32 [ %52, %if.then47 ], [ %ret.5, %stop_clk ]
  %120 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus_clk, align 4
  call void @clk_put(ptr noundef %121) #9
  br label %free_info

free_info:                                        ; preds = %put_bus_clk, %if.then40, %if.end21.free_info_crit_edge, %do.end20, %atmel_lcdfb_of_init.exit.free_info_crit_edge, %atmel_lcdfb_of_init.exit.thread350, %atmel_lcdfb_of_init.exit.thread
  %ret.7 = phi i32 [ %call73.i, %atmel_lcdfb_of_init.exit.free_info_crit_edge ], [ %50, %if.then40 ], [ %ret.6, %put_bus_clk ], [ 0, %if.end21.free_info_crit_edge ], [ -12, %do.end20 ], [ -2, %atmel_lcdfb_of_init.exit.thread ], [ %ret.0.i.ph, %atmel_lcdfb_of_init.exit.thread350 ]
  call void @framebuffer_release(ptr noundef nonnull %call4) #9
  br label %do.body191

do.body191:                                       ; preds = %free_info, %do.end.do.body191_crit_edge
  %ret.8 = phi i32 [ %ret.7, %free_info ], [ -12, %do.end.do.body191_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_probe.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_probe, %if.then203)) #9
          to label %cleanup [label %if.then203], !srcloc !258

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_probe.__UNIQUE_ID_ddebug342, ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then203, %do.body191, %if.end161
  %retval.0 = phi i32 [ 0, %if.end161 ], [ %ret.8, %if.then203 ], [ %ret.8, %do.body191 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_lcdfb_start_clock(ptr nocapture noundef readonly %sinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 7
  %0 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %lcdc_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 8
  %2 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcdc_clk, align 4
  %call.i3 = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %if.end.i7, label %clk_prepare_enable.exit.clk_prepare_enable.exit9_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit9_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit9

if.end.i7:                                        ; preds = %clk_prepare_enable.exit
  %call1.i5 = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool2.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool2.not.i6, label %if.end.i7.clk_prepare_enable.exit9_crit_edge, label %if.then3.i8

if.end.i7.clk_prepare_enable.exit9_crit_edge:     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit9

if.then3.i8:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit9

clk_prepare_enable.exit9:                         ; preds = %if.then3.i8, %if.end.i7.clk_prepare_enable.exit9_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_check_var(ptr noundef %var, ptr noundef %info) #3 align 64 {
entry:
  %varfbmode.i = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %lcdc_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcdc_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %5) #9
  %div = udiv i32 %call, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_check_var, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %6 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %do.end.if.then7_crit_edge, label %land.lhs.true

do.end.if.then7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

land.lhs.true:                                    ; preds = %do.end
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.do.body16_crit_edge

land.lhs.true.do.body16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %do.end.if.then7_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %varfbmode.i) #9
  %10 = call ptr @memset(ptr %varfbmode.i, i32 255, i32 56)
  call void @fb_var_to_videomode(ptr noundef nonnull %varfbmode.i, ptr noundef %var) #9
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call.i = call ptr @fb_find_nearest_mode(ptr noundef nonnull %varfbmode.i, ptr noundef %modelist.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end13, label %atmel_lcdfb_choose_mode.exit

atmel_lcdfb_choose_mode.exit:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %varfbmode.i) #9
  br label %do.body16

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %varfbmode.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79) #12
  br label %cleanup285

do.body16:                                        ; preds = %atmel_lcdfb_choose_mode.exit, %land.lhs.true.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_check_var, %if.then28)) #9
          to label %do.body32 [label %if.then28], !srcloc !258

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %13 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %12, i32 noundef %14) #9
  br label %do.body32

do.body32:                                        ; preds = %if.then28, %do.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_check_var, %if.then44)) #9
          to label %do.body50 [label %if.then44], !srcloc !258

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixclock, align 4
  %div46 = udiv i32 1000000000, %16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %div46) #9
  br label %do.body50

do.body50:                                        ; preds = %if.then44, %do.body32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_check_var, %if.then62)) #9
          to label %do.body67 [label %if.then62], !srcloc !258

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %bits_per_pixel63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %17 = ptrtoint ptr %bits_per_pixel63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_per_pixel63, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.82, i32 noundef %18) #9
  br label %do.body67

do.body67:                                        ; preds = %if.then62, %do.body50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_check_var, %if.then79)) #9
          to label %do.end82 [label %if.then79], !srcloc !258

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %div) #9
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body67
  %19 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixclock, align 4
  %div84 = udiv i32 1000000000, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %div84, i32 %div)
  %cmp = icmp ugt i32 %div84, %div
  br i1 %cmp, label %do.end88, label %if.end91

do.end88:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.85, i32 noundef %div84) #12
  br label %cleanup285

if.end91:                                         ; preds = %do.end82
  %21 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %23 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp93 = icmp ugt i32 %22, %24
  br i1 %cmp93, label %if.then94, label %if.end91.if.end97_crit_edge

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %xres_virtual, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end91.if.end97_crit_edge
  %yres98 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %26 = ptrtoint ptr %yres98 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres98, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %28 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp99 = icmp ugt i32 %27, %29
  br i1 %cmp99, label %if.then100, label %if.end97.if.end103_crit_edge

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %yres_virtual, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end97.if.end103_crit_edge
  %add = add i32 %22, 3
  %and = and i32 %add, -4
  %31 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and, ptr %var, align 4
  %32 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xres_virtual, align 4
  %add107 = add i32 %33, 3
  %and108 = and i32 %add107, -4
  store i32 %and108, ptr %xres_virtual, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %msb_right110 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %msb_right110 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %msb_right110, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %msb_right111 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %msb_right111 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msb_right111, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %36 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %37 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xoffset, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %38 = call ptr @memset(ptr %msb_right, i32 0, i32 16)
  %39 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool115.not = icmp eq i32 %40, 0
  br i1 %tobool115.not, label %if.end103.if.end134_crit_edge, label %if.then116

if.end103.if.end134_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then116:                                       ; preds = %if.end103
  %41 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %42, %and108
  %bits_per_pixel120 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %43 = ptrtoint ptr %bits_per_pixel120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bits_per_pixel120, align 4
  %add121 = add i32 %44, 7
  %div122423 = lshr i32 %add121, 3
  %mul123 = mul i32 %mul, %div122423
  call void @__sanitizer_cov_trace_cmp4(i32 %mul123, i32 %40)
  %cmp126 = icmp ugt i32 %mul123, %40
  br i1 %cmp126, label %do.end130, label %if.then116.if.end134_crit_edge

if.then116.if.end134_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

do.end130:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef %40, i32 noundef %mul123) #12
  br label %cleanup285

if.end134:                                        ; preds = %if.then116.if.end134_crit_edge, %if.end103.if.end134_crit_edge
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %45 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vsync_len, align 4
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 64)
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %48 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %upper_margin, align 4
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 255)
  %51 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %upper_margin, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %52 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lower_margin, align 4
  %54 = call i32 @llvm.umin.i32(i32 %53, i32 255)
  %55 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %lower_margin, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %56 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %right_margin, align 4
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 2048)
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %59 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hsync_len, align 4
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 64)
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %62 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %left_margin, align 4
  %64 = call i32 @llvm.umin.i32(i32 %63, i32 256)
  %65 = call i32 @llvm.umax.i32(i32 %47, i32 1)
  %66 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %vsync_len, align 4
  %67 = call i32 @llvm.umax.i32(i32 %58, i32 1)
  %68 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %right_margin, align 4
  %69 = call i32 @llvm.umax.i32(i32 %61, i32 1)
  %70 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %hsync_len, align 4
  %71 = call i32 @llvm.umax.i32(i32 %64, i32 1)
  %72 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %left_margin, align 4
  %bits_per_pixel205 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %73 = ptrtoint ptr %bits_per_pixel205 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bits_per_pixel205, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %74, label %do.end283 [
    i32 1, label %if.end134.sw.bb_crit_edge
    i32 2, label %if.end134.sw.bb_crit_edge443
    i32 4, label %if.end134.sw.bb_crit_edge444
    i32 8, label %if.end134.sw.bb_crit_edge445
    i32 16, label %sw.bb219
    i32 32, label %sw.bb252
    i32 24, label %if.end134.sw.bb257_crit_edge
  ]

if.end134.sw.bb257_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb257

if.end134.sw.bb_crit_edge445:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end134.sw.bb_crit_edge444:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end134.sw.bb_crit_edge443:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end134.sw.bb_crit_edge:                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end134.sw.bb_crit_edge, %if.end134.sw.bb_crit_edge443, %if.end134.sw.bb_crit_edge444, %if.end134.sw.bb_crit_edge445
  %76 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %blue, align 4
  %77 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %green, align 4
  %78 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %red, align 4
  %length214 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %79 = ptrtoint ptr %length214 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %74, ptr %length214, align 4
  %length216 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %80 = ptrtoint ptr %length216 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %74, ptr %length216, align 4
  %length218 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %81 = ptrtoint ptr %length218 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %74, ptr %length218, align 4
  br label %cleanup285

sw.bb219:                                         ; preds = %if.end134
  %config = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 15
  %82 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config, align 4
  %have_intensity_bit = getelementptr inbounds %struct.atmel_lcdfb_config, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %have_intensity_bit to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %have_intensity_bit, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool220.not = icmp eq i8 %85, 0
  %spec.select = select i1 %tobool220.not, i32 6, i32 5
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select, ptr %86, align 4
  %lcd_wiring_mode = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14, i32 4
  %88 = ptrtoint ptr %lcd_wiring_mode to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %lcd_wiring_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp227 = icmp eq i8 %89, 1
  br i1 %cmp227, label %if.then229, label %if.else237

if.then229:                                       ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %86, align 4
  %add232 = add i32 %91, 5
  %92 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add232, ptr %red, align 4
  br label %if.end245

if.else237:                                       ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %red, align 4
  %94 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %86, align 4
  %add242 = add i32 %95, 5
  br label %if.end245

if.end245:                                        ; preds = %if.else237, %if.then229
  %storemerge422 = phi i32 [ %add242, %if.else237 ], [ 0, %if.then229 ]
  %96 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %storemerge422, ptr %blue, align 4
  %97 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 5, ptr %green, align 4
  %length249 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %length249 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 5, ptr %length249, align 4
  %length251 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %length251 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 5, ptr %length251, align 4
  br label %cleanup285

sw.bb252:                                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 24, ptr %transp, align 4
  %101 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 8, ptr %length, align 4
  br label %sw.bb257

sw.bb257:                                         ; preds = %sw.bb252, %if.end134.sw.bb257_crit_edge
  %lcd_wiring_mode258 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14, i32 4
  %102 = ptrtoint ptr %lcd_wiring_mode258 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %lcd_wiring_mode258, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %103)
  %cmp260 = icmp eq i8 %103, 1
  %.424 = select i1 %cmp260, i32 16, i32 0
  %.425 = select i1 %cmp260, i32 0, i32 16
  %104 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.424, ptr %red, align 4
  %105 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.425, ptr %blue, align 4
  %106 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8, ptr %green, align 4
  %length276 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %107 = ptrtoint ptr %length276 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 8, ptr %length276, align 4
  %length278 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %108 = ptrtoint ptr %length278 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 8, ptr %length278, align 4
  %length280 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %109 = ptrtoint ptr %length280 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 8, ptr %length280, align 4
  br label %cleanup285

do.end283:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef %74) #12
  br label %cleanup285

cleanup285:                                       ; preds = %do.end283, %sw.bb257, %if.end245, %sw.bb, %do.end130, %do.end88, %do.end13
  %retval.1 = phi i32 [ -22, %do.end88 ], [ -22, %do.end283 ], [ -22, %do.end13 ], [ -22, %do.end130 ], [ 0, %sw.bb257 ], [ 0, %if.end245 ], [ 0, %sw.bb ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_lcdfb_alloc_video_memory(ptr nocapture noundef readonly %sinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %5, %3
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  %add = add i32 %7, 7
  %div26 = lshr i32 %add, 3
  %mul3 = mul i32 %mul, %div26
  %smem_len4 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 5
  %8 = ptrtoint ptr %smem_len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_len4, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %mul3, i32 %9)
  %smem_len5 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %smem_len5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %smem_len5, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef %10, ptr noundef %smem_start, i32 noundef 3264, i32 noundef 4) #9
  %14 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %14, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %smem_len5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smem_len5, align 4
  %18 = call ptr @memset(ptr %call.i, i32 0, i32 %17)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_contrast(ptr noundef %sinfo) unnamed_addr #3 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lcdcon_pol_negative = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %lcdcon_pol_negative to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lcdcon_pol_negative, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load i32, ptr @contrast_ctr, align 4
  %and = and i32 %2, -5
  store i32 %and, ptr @contrast_ctr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i32, ptr @contrast_ctr, align 4
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 2
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !261
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 200) #9, !srcloc !261
  %lcdcon_is_backlight = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %lcdcon_is_backlight to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lcdcon_is_backlight, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #9
  %bl_power.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 10
  %10 = ptrtoint ptr %bl_power.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bl_power.i, align 4
  %backlight.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 9
  %11 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %backlight.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.init_backlight.exit_crit_edge

if.then5.init_backlight.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_backlight.exit

if.end.i:                                         ; preds = %if.then5
  %13 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %14 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %15 = call ptr @memset(ptr %props.i, i32 0, i32 28)
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 255, ptr %14, align 4
  %pdev.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 6
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %call.i = call ptr @backlight_device_register(ptr noundef nonnull @.str.93, ptr noundef %dev.i, ptr noundef %sinfo, ptr noundef nonnull @atmel_lcdc_bl_ops, ptr noundef nonnull %props.i) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %call.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.94, i32 noundef %22) #12
  br label %init_backlight.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %backlight.i, align 4
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %fb_blank.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call.i, i32 0, i32 6, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %mmio.i.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 2116
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !262
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call.i, align 8
  br label %init_backlight.exit

init_backlight.exit:                              ; preds = %if.end6.i, %do.end.i, %if.then5.init_backlight.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #9
  br label %if.end6

if.end6:                                          ; preds = %init_backlight.exit, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %dev_id, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2132
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !262
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %dev_id, i32 0, i32 21
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.96, i32 noundef %4) #12
  %task = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %task) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #9, !srcloc !261
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_lcdfb_task(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 539) #9
  %pdata1.i.i.i = getelementptr i8, ptr %work, i32 136
  %0 = ptrtoint ptr %pdata1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdata1.i.i.i, align 4
  %shl.i.i.i = shl i32 %1, 1
  %mmio.i.i.i = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i.i.i) #9, !srcloc !261
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr39.i.i.i = getelementptr i8, ptr %5, i32 2108
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i.i.i) #9, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not10.i.i.i = icmp sgt i32 %6, -1
  br i1 %tobool.not10.i.i.i, label %entry.atmel_lcdfb_stop_nowait.exit.i.i_crit_edge, label %entry.while.body.i.i.i_crit_edge

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

entry.atmel_lcdfb_stop_nowait.exit.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %7 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %8, i32 2108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #9, !srcloc !262
  %tobool.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.atmel_lcdfb_stop_nowait.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.body.i.i.i.atmel_lcdfb_stop_nowait.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit.i.i

atmel_lcdfb_stop_nowait.exit.i.i:                 ; preds = %while.body.i.i.i.atmel_lcdfb_stop_nowait.exit.i.i_crit_edge, %entry.atmel_lcdfb_stop_nowait.exit.i.i_crit_edge
  %10 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 0) #9, !srcloc !261
  %12 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !262
  %and3.i.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not4.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not4.i.i, label %atmel_lcdfb_stop_nowait.exit.i.i.atmel_lcdfb_reset.exit_crit_edge, label %atmel_lcdfb_stop_nowait.exit.i.i.while.body.i.i_crit_edge

atmel_lcdfb_stop_nowait.exit.i.i.while.body.i.i_crit_edge: ; preds = %atmel_lcdfb_stop_nowait.exit.i.i
  br label %while.body.i.i

atmel_lcdfb_stop_nowait.exit.i.i.atmel_lcdfb_reset.exit_crit_edge: ; preds = %atmel_lcdfb_stop_nowait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_reset.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %atmel_lcdfb_stop_nowait.exit.i.i.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %15 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !262
  %and.i.i = and i32 %17, 4
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.atmel_lcdfb_reset.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.atmel_lcdfb_reset.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_reset.exit

atmel_lcdfb_reset.exit:                           ; preds = %while.body.i.i.atmel_lcdfb_reset.exit_crit_edge, %atmel_lcdfb_stop_nowait.exit.i.i.atmel_lcdfb_reset.exit_crit_edge
  %default_dmacon.i.i = getelementptr i8, ptr %work, i32 148
  %18 = ptrtoint ptr %default_dmacon.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %default_dmacon.i.i, align 4
  %20 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %19) #9, !srcloc !261
  %22 = ptrtoint ptr %pdata1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pdata1.i.i.i, align 4
  %shl.i.i = shl i32 %23, 1
  %or.i.i = or i32 %shl.i.i, 1
  %24 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %25, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %or.i.i) #9, !srcloc !261
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_lcdfb_init_fbinfo(ptr nocapture noundef readonly %sinfo) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %sinfo, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 13
  %2 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %activate, align 4
  %or = or i32 %3, 128
  store i32 %or, ptr %activate, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  %div14 = lshr i32 %7, 10
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_start, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.99, i32 noundef %div14, i32 noundef %9, ptr noundef %12) #12
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %call = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.102) #12
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_set_par(ptr noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 569) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then)) #9
          to label %do.body10 [label %if.then], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug330, ptr noundef %3, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.104) #9
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then22)) #9
          to label %do.end29 [label %if.then22], !srcloc !258

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %device23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %4 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device23, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres_virtual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug331, ptr noundef %5, ptr noundef nonnull @.str.105, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then22, %do.body10
  %pdata1.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pdata1.i, align 4
  %shl.i = shl i32 %15, 1
  %mmio.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl.i) #9, !srcloc !261
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %19, i32 2108
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #9, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool.not10.i = icmp sgt i32 %20, -1
  br i1 %tobool.not10.i, label %do.end29.atmel_lcdfb_stop_nowait.exit_crit_edge, label %do.end29.while.body.i_crit_edge

do.end29.while.body.i_crit_edge:                  ; preds = %do.end29
  br label %while.body.i

do.end29.atmel_lcdfb_stop_nowait.exit_crit_edge:  ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end29.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 2108
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !262
  %tobool.not.i = icmp sgt i32 %23, -1
  br i1 %tobool.not.i, label %while.body.i.atmel_lcdfb_stop_nowait.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.atmel_lcdfb_stop_nowait.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit

atmel_lcdfb_stop_nowait.exit:                     ; preds = %while.body.i.atmel_lcdfb_stop_nowait.exit_crit_edge, %do.end29.atmel_lcdfb_stop_nowait.exit_crit_edge
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #9, !srcloc !261
  %var30 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %atmel_lcdfb_stop_nowait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %visual, align 4
  br label %if.end42

if.else:                                          ; preds = %atmel_lcdfb_stop_nowait.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %27)
  %cmp34 = icmp ult i32 %27, 9
  %visual37 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  br i1 %cmp34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %visual37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %visual37, align 4
  br label %if.end42

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %visual37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %visual37, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then35, %if.then31
  %xres_virtual44 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %xres_virtual44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xres_virtual44, align 4
  %mul = mul i32 %32, %27
  %sub = add i32 %mul, 7
  %div404 = lshr i32 %sub, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %33 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div404, ptr %line_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then60)) #9
          to label %do.end64 [label %if.then60], !srcloc !258

if.then60:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %device61 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %34 = ptrtoint ptr %device61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug332, ptr noundef %35, ptr noundef nonnull @.str.106) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %if.end42
  %36 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %par, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %smem_start.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %40 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %yoffset.i, align 4
  %42 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line_length, align 4
  %mul.i = mul i32 %43, %41
  %add.i = add i32 %mul.i, %39
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %44 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xoffset.i, align 4
  %46 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bits_per_pixel, align 4
  %mul3.i = mul i32 %47, %45
  %div10.i = lshr i32 %mul3.i, 3
  %add4.i = add i32 %add.i, %div10.i
  %and.i = and i32 %add4.i, -4
  %mmio.i434 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %37, i32 0, i32 2
  %48 = ptrtoint ptr %mmio.i434 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i434, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %and.i) #9, !srcloc !261
  %yres67 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %yres67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres67, align 4
  %52 = ptrtoint ptr %var30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var30, align 4
  %mul70 = mul i32 %53, %51
  %54 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bits_per_pixel, align 4
  %mul73 = mul i32 %mul70, %55
  %div74405 = lshr i32 %mul73, 5
  %or = or i32 %div74405, 117440512
  %56 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #9, !srcloc !261
  %config = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 15
  %58 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool75.not = icmp eq i8 %61, 0
  %spec.select = select i1 %tobool75.not, i32 2, i32 1
  %lcdc_clk = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 8
  %62 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lcdc_clk, align 4
  %call78 = tail call i32 @clk_get_rate(ptr noundef %63) #9
  %div79 = udiv i32 %call78, 1000
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %64 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pixclock, align 4
  %div81 = udiv i32 1000000000, %65
  %add82 = add nsw i32 %div79, -1
  %sub83 = add nsw i32 %add82, %div81
  %div87 = udiv i32 %sub83, %div81
  call void @__sanitizer_cov_trace_cmp4(i32 %div87, i32 %spec.select)
  %cmp88 = icmp ult i32 %div87, %spec.select
  br i1 %cmp88, label %do.end92, label %if.else96

do.end92:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  %device93 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %66 = ptrtoint ptr %device93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device93, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %67, ptr noundef nonnull @.str.107) #12
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr95 = getelementptr i8, ptr %69, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 1) #9, !srcloc !261
  br label %if.end144

if.else96:                                        ; preds = %do.end64
  %70 = xor i8 %61, 1
  %71 = zext i8 %70 to i32
  %div97456 = lshr i32 %div87, %71
  %sub98 = add i32 %div97456, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then111)) #9
          to label %do.end115 [label %if.then111], !srcloc !258

if.then111:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  %device112 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %72 = ptrtoint ptr %device112 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device112, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug333, ptr noundef %73, ptr noundef nonnull @.str.109, i32 noundef %sub98) #9
  br label %do.end115

do.end115:                                        ; preds = %if.then111, %if.else96
  %shl = shl i32 %sub98, 12
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr117 = getelementptr i8, ptr %75, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %shl) #9, !srcloc !261
  %mul119 = mul i32 %div97456, %spec.select
  %div120 = udiv i32 %div79, %mul119
  %div121 = udiv i32 1000000000, %div120
  %76 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div121, ptr %pixclock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then136)) #9
          to label %if.end144 [label %if.then136], !srcloc !258

if.then136:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  %device137 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %77 = ptrtoint ptr %device137 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device137, align 4
  %79 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pixclock, align 4
  %div140 = udiv i32 1000000000, %80
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug334, ptr noundef %78, ptr noundef nonnull @.str.110, i32 noundef %div140) #9
  br label %if.end144

if.end144:                                        ; preds = %if.then136, %do.end115, %do.end92
  %default_lcdcon2 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 5
  %81 = ptrtoint ptr %default_lcdcon2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %default_lcdcon2, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %83 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sync, align 4
  %and = shl i32 %84, 10
  %85 = and i32 %and, 1024
  %86 = xor i32 %85, 1024
  %87 = or i32 %86, %82
  %and152 = shl i32 %84, 8
  %88 = and i32 %and152, 512
  %89 = xor i32 %88, 512
  %90 = or i32 %87, %89
  %91 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bits_per_pixel, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %92, label %do.body173 [
    i32 1, label %if.end144.do.body179_crit_edge
    i32 2, label %sw.bb160
    i32 4, label %sw.bb162
    i32 8, label %sw.bb164
    i32 15, label %if.end144.sw.bb167_crit_edge
    i32 16, label %if.end144.sw.bb167_crit_edge460
    i32 24, label %sw.bb169
    i32 32, label %sw.bb171
  ]

if.end144.sw.bb167_crit_edge460:                  ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end144.sw.bb167_crit_edge:                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end144.do.body179_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body179

sw.bb160:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %or161 = or i32 %90, 32
  br label %do.body179

sw.bb162:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %or163 = or i32 %90, 64
  br label %do.body179

sw.bb164:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %or165 = or i32 %90, 96
  br label %do.body179

sw.bb167:                                         ; preds = %if.end144.sw.bb167_crit_edge, %if.end144.sw.bb167_crit_edge460
  %or168 = or i32 %90, 128
  br label %do.body179

sw.bb169:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %or170 = or i32 %90, 160
  br label %do.body179

sw.bb171:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %or172 = or i32 %90, 192
  br label %do.body179

do.body173:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/atmel_lcdfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 640, 0\0A.popsection", ""() #9, !srcloc !263
  unreachable

do.body179:                                       ; preds = %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb164, %sw.bb162, %sw.bb160, %if.end144.do.body179_crit_edge
  %value.2 = phi i32 [ %or172, %sw.bb171 ], [ %or170, %sw.bb169 ], [ %or168, %sw.bb167 ], [ %or165, %sw.bb164 ], [ %or163, %sw.bb162 ], [ %or161, %sw.bb160 ], [ %90, %if.end144.do.body179_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then191)) #9
          to label %do.end195 [label %if.then191], !srcloc !258

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #11
  %device192 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %94 = ptrtoint ptr %device192 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device192, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug335, ptr noundef %95, ptr noundef nonnull @.str.111, i32 noundef %value.2) #9
  br label %do.end195

do.end195:                                        ; preds = %if.then191, %do.body179
  %96 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i, align 4
  %add.ptr197 = getelementptr i8, ptr %97, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %value.2) #9, !srcloc !261
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %98 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %vsync_len, align 4
  %sub199 = shl i32 %99, 16
  %shl200 = add i32 %sub199, -65536
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %100 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %upper_margin, align 4
  %shl202 = shl i32 %101, 8
  %or203 = or i32 %shl200, %shl202
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %102 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %lower_margin, align 4
  %or205 = or i32 %or203, %103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then218)) #9
          to label %do.end222 [label %if.then218], !srcloc !258

if.then218:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #11
  %device219 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %104 = ptrtoint ptr %device219 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device219, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug336, ptr noundef %105, ptr noundef nonnull @.str.112, i32 noundef %or205) #9
  br label %do.end222

do.end222:                                        ; preds = %if.then218, %do.end195
  %106 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i, align 4
  %add.ptr224 = getelementptr i8, ptr %107, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %or205) #9, !srcloc !261
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %108 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %right_margin, align 4
  %sub226 = shl i32 %109, 21
  %shl227 = add i32 %sub226, -2097152
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %110 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hsync_len, align 4
  %sub229 = shl i32 %111, 8
  %shl230 = add i32 %sub229, -256
  %or231 = or i32 %shl230, %shl227
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %112 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %left_margin, align 4
  %sub233 = add i32 %113, -1
  %or234 = or i32 %or231, %sub233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then247)) #9
          to label %do.end251 [label %if.then247], !srcloc !258

if.then247:                                       ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #11
  %device248 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %114 = ptrtoint ptr %device248 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device248, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug337, ptr noundef %115, ptr noundef nonnull @.str.113, i32 noundef %or234) #9
  br label %do.end251

do.end251:                                        ; preds = %if.then247, %do.end222
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i, align 4
  %add.ptr253 = getelementptr i8, ptr %117, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %or234) #9, !srcloc !261
  %118 = ptrtoint ptr %var30 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %var30, align 4
  %120 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %config, align 4
  %have_hozval.i = getelementptr inbounds %struct.atmel_lcdfb_config, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %have_hozval.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %have_hozval.i, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i435 = icmp eq i8 %123, 0
  br i1 %tobool.not.i435, label %do.end251.compute_hozval.exit_crit_edge, label %if.end.i

do.end251.compute_hozval.exit_crit_edge:          ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_hozval.exit

if.end.i:                                         ; preds = %do.end251
  %124 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i437 = getelementptr i8, ptr %125, i32 2052
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437) #9, !srcloc !262
  %and.i438 = and i32 %126, 3
  %127 = zext i32 %and.i438 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %and.i438, label %if.end.i.if.end5.i_crit_edge [
    i32 2, label %if.end.i.compute_hozval.exit_crit_edge
    i32 1, label %if.then4.i
  ]

if.end.i.compute_hozval.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_hozval.exit

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i439 = mul i32 %119, 3
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %value.0.i = phi i32 [ %mul.i439, %if.then4.i ], [ %119, %if.end.i.if.end5.i_crit_edge ]
  %and6.i = and i32 %126, 24
  %128 = zext i32 %and6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %and6.i, label %if.end5.i.if.else.i_crit_edge [
    i32 0, label %if.end5.i.if.then12.i_crit_edge
    i32 8, label %land.lhs.true.i
  ]

if.end5.i.if.then12.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %and10.i = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.not.i = icmp eq i32 %and10.i, 0
  br i1 %cmp11.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.then12.i_crit_edge

land.lhs.true.i.if.then12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then12.i:                                      ; preds = %land.lhs.true.i.if.then12.i_crit_edge, %if.end5.i.if.then12.i_crit_edge
  %sub.i = add i32 %value.0.i, 3
  %div29.i = lshr i32 %sub.i, 2
  br label %compute_hozval.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %sub14.i = add i32 %value.0.i, 7
  %div1528.i = lshr i32 %sub14.i, 3
  br label %compute_hozval.exit

compute_hozval.exit:                              ; preds = %if.else.i, %if.then12.i, %if.end.i.compute_hozval.exit_crit_edge, %do.end251.compute_hozval.exit_crit_edge
  %retval.0.i440 = phi i32 [ %119, %do.end251.compute_hozval.exit_crit_edge ], [ %div29.i, %if.then12.i ], [ %div1528.i, %if.else.i ], [ %119, %if.end.i.compute_hozval.exit_crit_edge ]
  %sub257 = shl i32 %retval.0.i440, 21
  %shl258 = add i32 %sub257, -2097152
  %129 = ptrtoint ptr %yres67 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %yres67, align 4
  %sub261 = add i32 %130, -1
  %or262 = or i32 %shl258, %sub261
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then275)) #9
          to label %do.end279 [label %if.then275], !srcloc !258

if.then275:                                       ; preds = %compute_hozval.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device276 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %131 = ptrtoint ptr %device276 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device276, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug338, ptr noundef %132, ptr noundef nonnull @.str.114, i32 noundef %or262) #9
  br label %do.end279

do.end279:                                        ; preds = %if.then275, %compute_hozval.exit
  %133 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i, align 4
  %add.ptr281 = getelementptr i8, ptr %134, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281, i32 %or262) #9, !srcloc !261
  %135 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio.i, align 4
  %add.ptr283 = getelementptr i8, ptr %136, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr283, i32 493) #9, !srcloc !261
  %137 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio.i, align 4
  %add.ptr285 = getelementptr i8, ptr %138, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 0) #9, !srcloc !261
  %139 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i, align 4
  %add.ptr287 = getelementptr i8, ptr %140, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 -1) #9, !srcloc !261
  %141 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i, align 4
  %add.ptr289 = getelementptr i8, ptr %142, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr289, i32 112) #9, !srcloc !261
  %143 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio.i, align 4
  %add.ptr291457 = getelementptr i8, ptr %144, i32 28
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291457) #9, !srcloc !262
  %and293458 = and i32 %145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293458)
  %tobool294.not459 = icmp eq i32 %and293458, 0
  br i1 %tobool294.not459, label %do.end279.while.end_crit_edge, label %do.end279.while.body_crit_edge

do.end279.while.body_crit_edge:                   ; preds = %do.end279
  br label %while.body

do.end279.while.end_crit_edge:                    ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end279.while.body_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %146 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i, align 4
  %add.ptr291 = getelementptr i8, ptr %147, i32 28
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #9, !srcloc !262
  %and293 = and i32 %148, 4
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end279.while.end_crit_edge
  %default_dmacon.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 6
  %149 = ptrtoint ptr %default_dmacon.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %default_dmacon.i, align 4
  %151 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i443 = getelementptr i8, ptr %152, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i443, i32 %150) #9, !srcloc !261
  %153 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pdata1.i, align 4
  %shl.i444 = shl i32 %154, 1
  %or.i = or i32 %shl.i444, 1
  %155 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mmio.i, align 4
  %add.ptr3.i445 = getelementptr i8, ptr %156, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i445, i32 %or.i) #9, !srcloc !261
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_set_par, %if.then307)) #9
          to label %do.end311 [label %if.then307], !srcloc !258

if.then307:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %device308 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %157 = ptrtoint ptr %device308 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %device308, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug339, ptr noundef %158, ptr noundef nonnull @.str.115) #9
  br label %do.end311

do.end311:                                        ; preds = %if.then307, %while.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_lcdfb_power_control_gpio(ptr noundef readonly %pdata, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_gpios = getelementptr inbounds %struct.atmel_lcdfb_pdata, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %pwr_gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %pwr_gpios, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %pwr_gpios
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %og.0 = getelementptr i8, ptr %.pn12, i32 -4
  %1 = ptrtoint ptr %og.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %og.0, align 4
  tail call void @gpiod_set_value(ptr noundef %2, i32 noundef %on) #9
  %3 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %pwr_gpios
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_videomode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %red, 19595
  %mul2 = mul i32 %green, 38470
  %add = add i32 %mul2, %mul
  %mul3 = mul i32 %blue, 7471
  %add4 = add i32 %add, %mul3
  %shr = lshr i32 %add4, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then ], [ %blue, %entry.if.end_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then ], [ %green, %entry.if.end_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then ], [ %red, %entry.if.end_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb16
    i32 0, label %sw.bb50
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then5, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %7 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pseudo_palette, align 4
  %red7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.0, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %10
  %shr.i = lshr i32 %and.i, %sub.i
  %11 = ptrtoint ptr %red7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %red7, align 4
  %shl.i = shl i32 %shr.i, %12
  %green9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i96 = and i32 %green.addr.0, 65535
  %length.i97 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %13 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i97, align 4
  %sub.i98 = sub i32 16, %14
  %shr.i99 = lshr i32 %and.i96, %sub.i98
  %15 = ptrtoint ptr %green9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %green9, align 4
  %shl.i100 = shl i32 %shr.i99, %16
  %or = or i32 %shl.i100, %shl.i
  %blue12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i101 = and i32 %blue.addr.0, 65535
  %length.i102 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %17 = ptrtoint ptr %length.i102 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i102, align 4
  %sub.i103 = sub i32 16, %18
  %shr.i104 = lshr i32 %and.i101, %sub.i103
  %19 = ptrtoint ptr %blue12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blue12, align 4
  %shl.i105 = shl i32 %shr.i104, %20
  %or14 = or i32 %or, %shl.i105
  %arrayidx = getelementptr i32, ptr %8, i32 %regno
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or14, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp17 = icmp ult i32 %regno, 256
  br i1 %cmp17, label %if.then18, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb16
  %config = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config, align 4
  %have_intensity_bit = getelementptr inbounds %struct.atmel_lcdfb_config, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %have_intensity_bit to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %have_intensity_bit, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %shr21 = lshr i32 %red.addr.0, 11
  %and = and i32 %shr21, 31
  %shr22 = lshr i32 %green.addr.0, 6
  %and23 = and i32 %shr22, 992
  %shr25 = lshr i32 %blue.addr.0, 1
  %and26 = and i32 %shr25, 31744
  %or24 = or i32 %and23, %and26
  %or27 = or i32 %or24, %and
  br label %if.end46

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %lcd_wiring_mode = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 4
  %26 = ptrtoint ptr %lcd_wiring_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lcd_wiring_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp28 = icmp eq i8 %27, 1
  %shr37 = lshr i32 %red.addr.0, 11
  %and38 = and i32 %shr37, 31
  %and40 = and i32 %blue.addr.0, 63488
  %shr31 = lshr i32 %blue.addr.0, 11
  %and32 = and i32 %shr31, 31
  %and34 = and i32 %red.addr.0, 63488
  %28 = or i32 %and34, %and32
  %29 = or i32 %and38, %and40
  %or41 = select i1 %cmp28, i32 %28, i32 %29
  %shr43 = lshr i32 %green.addr.0, 5
  %and44 = and i32 %shr43, 2016
  %or45 = or i32 %or41, %and44
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then20
  %val.1 = phi i32 [ %or27, %if.then20 ], [ %or45, %if.else ]
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %mul47 = shl nuw nsw i32 %regno, 2
  %add48 = add nuw nsw i32 %mul47, 3072
  %add.ptr = getelementptr i8, ptr %31, i32 %add48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val.1) #9, !srcloc !261
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %regno)
  %cmp51 = icmp ult i32 %regno, 2
  br i1 %cmp51, label %if.then53, label %sw.bb50.sw.epilog_crit_edge

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then53:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regno)
  %cmp54 = icmp eq i32 %regno, 0
  %cond = select i1 %cmp54, i32 0, i32 31
  %mmio56 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %mmio56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio56, align 4
  %mul57 = shl nuw nsw i32 %regno, 2
  %add58 = add nuw nsw i32 %mul57, 3072
  %add.ptr59 = getelementptr i8, ptr %33, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %cond) #9, !srcloc !261
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then53, %sw.bb50.sw.epilog_crit_edge, %if.end46, %sw.bb16.sw.epilog_crit_edge, %if.then5, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 1, %if.end.sw.epilog_crit_edge ], [ 0, %if.then53 ], [ 1, %sw.bb50.sw.epilog_crit_edge ], [ 0, %if.end46 ], [ 1, %sw.bb16.sw.epilog_crit_edge ], [ 0, %if.then5 ], [ 1, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %blank_mode, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge6
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge7
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  %pdata1.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14
  %default_dmacon.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14, i32 6
  %3 = ptrtoint ptr %default_dmacon.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_dmacon.i, align 4
  %mmio.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !261
  %7 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdata1.i, align 4
  %shl.i = shl i32 %8, 1
  %or.i = or i32 %shl.i, 1
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i) #9, !srcloc !261
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pdata1.i.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %pdata1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdata1.i.i, align 4
  %shl.i.i = shl i32 %12, 1
  %mmio.i.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i.i) #9, !srcloc !261
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %16, i32 2108
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i.i) #9, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool.not10.i.i = icmp sgt i32 %17, -1
  br i1 %tobool.not10.i.i, label %sw.bb2.atmel_lcdfb_stop_nowait.exit.i_crit_edge, label %sw.bb2.while.body.i.i_crit_edge

sw.bb2.while.body.i.i_crit_edge:                  ; preds = %sw.bb2
  br label %while.body.i.i

sw.bb2.atmel_lcdfb_stop_nowait.exit.i_crit_edge:  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %sw.bb2.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %19, i32 2108
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !262
  %tobool.not.i.i = icmp sgt i32 %20, -1
  br i1 %tobool.not.i.i, label %while.body.i.i.atmel_lcdfb_stop_nowait.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.atmel_lcdfb_stop_nowait.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit.i

atmel_lcdfb_stop_nowait.exit.i:                   ; preds = %while.body.i.i.atmel_lcdfb_stop_nowait.exit.i_crit_edge, %sw.bb2.atmel_lcdfb_stop_nowait.exit.i_crit_edge
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #9, !srcloc !261
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %24, i32 28
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !262
  %and3.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not4.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not4.i, label %atmel_lcdfb_stop_nowait.exit.i.sw.epilog_crit_edge, label %atmel_lcdfb_stop_nowait.exit.i.while.body.i_crit_edge

atmel_lcdfb_stop_nowait.exit.i.while.body.i_crit_edge: ; preds = %atmel_lcdfb_stop_nowait.exit.i
  br label %while.body.i

atmel_lcdfb_stop_nowait.exit.i.sw.epilog_crit_edge: ; preds = %atmel_lcdfb_stop_nowait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %atmel_lcdfb_stop_nowait.exit.i.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #9, !srcloc !262
  %and.i = and i32 %28, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.sw.epilog_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.i.sw.epilog_crit_edge, %atmel_lcdfb_stop_nowait.exit.i.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank_mode)
  %cmp = icmp eq i32 %blank_mode, 1
  %cond = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_lcdfb_pan_display.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_lcdfb_pan_display, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_lcdfb_pan_display.__UNIQUE_ID_ddebug340, ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %par.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par.i, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_start.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset.i, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %8 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line_length.i, align 4
  %mul.i = mul i32 %9, %7
  %add.i = add i32 %mul.i, %5
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %10 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel.i, align 4
  %mul3.i = mul i32 %13, %11
  %div10.i = lshr i32 %mul3.i, 3
  %add4.i = add i32 %add.i, %div10.i
  %and.i = and i32 %add4.i, -4
  %mmio.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %and.i) #9, !srcloc !261
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_nearest_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_bl_get_brightness(ptr nocapture noundef readonly %bl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !262
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_bl_update_status(ptr nocapture noundef %bl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl_power = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bl_power to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bl_power, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bl, align 8
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %6 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp eq i32 %7, %conv
  br i1 %cmp.not, label %if.else, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %power9 = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %8 = ptrtoint ptr %power9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power9, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %entry.if.end17_crit_edge
  %power.0 = phi i32 [ %7, %entry.if.end17_crit_edge ], [ %9, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18 = icmp slt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power.0)
  %cmp20 = icmp eq i32 %power.0, 0
  %or.cond = select i1 %cmp18, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 2116
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !262
  br label %if.end29

if.else24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select66 = select i1 %cmp20, i32 %5, i32 0
  br label %if.end29

if.end29:                                         ; preds = %if.else24, %if.then22
  %brightness.0 = phi i32 [ %12, %if.then22 ], [ %spec.select66, %if.else24 ]
  %mmio30 = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mmio30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio30, align 4
  %add.ptr31 = getelementptr i8, ptr %14, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %brightness.0) #9, !srcloc !261
  %15 = load i32, ptr @contrast_ctr, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else36, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness.0)
  %tobool33.not = icmp eq i32 %brightness.0, 0
  %spec.select67 = select i1 %tobool33.not, i32 0, i32 %15
  %16 = ptrtoint ptr %mmio30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio30, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %spec.select67) #9, !srcloc !261
  br label %if.end39

if.else36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %mmio30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio30, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %15) #9, !srcloc !261
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then32
  %conv40 = trunc i32 %power.0 to i8
  %20 = ptrtoint ptr %bl_power to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv40, ptr %bl_power, align 4
  %conv42 = and i32 %power.0, 255
  %power44 = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %21 = ptrtoint ptr %power44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv42, ptr %power44, align 8
  %22 = ptrtoint ptr %fb_blank to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv42, ptr %fb_blank, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %mesg.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %mmio = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #9, !srcloc !261
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 2112
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !262
  %conv = trunc i32 %8 to i8
  %saved_lcdcon = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %saved_lcdcon to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %saved_lcdcon, align 1
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #9, !srcloc !261
  %atmel_lcdfb_power_control.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14, i32 7
  %12 = ptrtoint ptr %atmel_lcdfb_power_control.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atmel_lcdfb_power_control.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdata1.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14
  tail call void %13(ptr noundef %pdata1.i, i32 noundef 0) #9
  br label %atmel_lcdfb_power_control.exit

if.else.i:                                        ; preds = %entry
  %reg_lcd.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %reg_lcd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_lcd.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.else.i.atmel_lcdfb_power_control.exit_crit_edge, label %if.then4.i

if.else.i.atmel_lcdfb_power_control.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_power_control.exit

if.then4.i:                                       ; preds = %if.else.i
  %call12.i = tail call i32 @regulator_disable(ptr noundef nonnull %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then4.i.atmel_lcdfb_power_control.exit_crit_edge, label %do.end17.i

if.then4.i.atmel_lcdfb_power_control.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_power_control.exit

do.end17.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev18.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %pdev18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev18.i, align 4
  %dev19.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.6, i32 noundef %call12.i) #12
  br label %atmel_lcdfb_power_control.exit

atmel_lcdfb_power_control.exit:                   ; preds = %do.end17.i, %if.then4.i.atmel_lcdfb_power_control.exit_crit_edge, %if.else.i.atmel_lcdfb_power_control.exit_crit_edge, %if.then.i
  %pdata1.i.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %pdata1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdata1.i.i, align 4
  %shl.i.i = shl i32 %19, 1
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i.i) #9, !srcloc !261
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %23, i32 2108
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i.i) #9, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool.not10.i.i = icmp sgt i32 %24, -1
  br i1 %tobool.not10.i.i, label %atmel_lcdfb_power_control.exit.atmel_lcdfb_stop_nowait.exit.i_crit_edge, label %atmel_lcdfb_power_control.exit.while.body.i.i_crit_edge

atmel_lcdfb_power_control.exit.while.body.i.i_crit_edge: ; preds = %atmel_lcdfb_power_control.exit
  br label %while.body.i.i

atmel_lcdfb_power_control.exit.atmel_lcdfb_stop_nowait.exit.i_crit_edge: ; preds = %atmel_lcdfb_power_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %atmel_lcdfb_power_control.exit.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %26, i32 2108
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !262
  %tobool.not.i.i = icmp sgt i32 %27, -1
  br i1 %tobool.not.i.i, label %while.body.i.i.atmel_lcdfb_stop_nowait.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.atmel_lcdfb_stop_nowait.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop_nowait.exit.i

atmel_lcdfb_stop_nowait.exit.i:                   ; preds = %while.body.i.i.atmel_lcdfb_stop_nowait.exit.i_crit_edge, %atmel_lcdfb_power_control.exit.atmel_lcdfb_stop_nowait.exit.i_crit_edge
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #9, !srcloc !261
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr2.i = getelementptr i8, ptr %31, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !262
  %and3.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not4.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not4.i, label %atmel_lcdfb_stop_nowait.exit.i.atmel_lcdfb_stop.exit_crit_edge, label %atmel_lcdfb_stop_nowait.exit.i.while.body.i_crit_edge

atmel_lcdfb_stop_nowait.exit.i.while.body.i_crit_edge: ; preds = %atmel_lcdfb_stop_nowait.exit.i
  br label %while.body.i

atmel_lcdfb_stop_nowait.exit.i.atmel_lcdfb_stop.exit_crit_edge: ; preds = %atmel_lcdfb_stop_nowait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %atmel_lcdfb_stop_nowait.exit.i.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #9
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !262
  %and.i = and i32 %35, 4
  %tobool.not.i12 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i12, label %while.body.i.atmel_lcdfb_stop.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.atmel_lcdfb_stop.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_stop.exit

atmel_lcdfb_stop.exit:                            ; preds = %while.body.i.atmel_lcdfb_stop.exit_crit_edge, %atmel_lcdfb_stop_nowait.exit.i.atmel_lcdfb_stop.exit_crit_edge
  %bus_clk.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_clk.i, align 4
  tail call void @clk_disable(ptr noundef %37) #9
  tail call void @clk_unprepare(ptr noundef %37) #9
  %lcdc_clk.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %lcdc_clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lcdc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %39) #9
  tail call void @clk_unprepare(ptr noundef %39) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_lcdfb_resume(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  tail call fastcc void @atmel_lcdfb_start_clock(ptr noundef %3)
  %pdata1.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14
  %default_dmacon.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %default_dmacon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %default_dmacon.i, align 4
  %mmio.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !261
  %8 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdata1.i, align 4
  %shl.i = shl i32 %9, 1
  %or.i = or i32 %shl.i, 1
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i) #9, !srcloc !261
  %atmel_lcdfb_power_control.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 14, i32 7
  %12 = ptrtoint ptr %atmel_lcdfb_power_control.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atmel_lcdfb_power_control.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %pdata1.i, i32 noundef 1) #9
  br label %atmel_lcdfb_power_control.exit

if.else.i:                                        ; preds = %entry
  %reg_lcd.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %reg_lcd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_lcd.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.else.i.atmel_lcdfb_power_control.exit_crit_edge, label %if.then4.i

if.else.i.atmel_lcdfb_power_control.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_power_control.exit

if.then4.i:                                       ; preds = %if.else.i
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then4.i.atmel_lcdfb_power_control.exit_crit_edge, label %do.end.i

if.then4.i.atmel_lcdfb_power_control.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_lcdfb_power_control.exit

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call.i) #12
  br label %atmel_lcdfb_power_control.exit

atmel_lcdfb_power_control.exit:                   ; preds = %do.end.i, %if.then4.i.atmel_lcdfb_power_control.exit_crit_edge, %if.else.i.atmel_lcdfb_power_control.exit_crit_edge, %if.then.i
  %saved_lcdcon = getelementptr inbounds %struct.atmel_lcdfb_info, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %saved_lcdcon to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %saved_lcdcon, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #9, !srcloc !261
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr2 = getelementptr i8, ptr %23, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 112) #9, !srcloc !261
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !97, !99, !100, !101, !103, !105, !106, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !190, !192, !193, !194, !195, !197, !199, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__initcall__kmod_atmel_lcdfb__343_1334_atmel_lcdfb_driver_init6, !1, !"__initcall__kmod_atmel_lcdfb__343_1334_atmel_lcdfb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1334, i32 1}
!2 = !{ptr @__exitcall_atmel_lcdfb_driver_exit, !1, !"__exitcall_atmel_lcdfb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description344, !4, !"__UNIQUE_ID_description344", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1336, i32 1}
!5 = !{ptr @__UNIQUE_ID_author345, !6, !"__UNIQUE_ID_author345", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1337, i32 1}
!7 = !{ptr @__UNIQUE_ID_file346, !8, !"__UNIQUE_ID_file346", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1338, i32 1}
!9 = !{ptr @__UNIQUE_ID_license347, !8, !"__UNIQUE_ID_license347", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 232, i32 5}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @atmel_lcdfb_power_control._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @atmel_lcdfb_power_control._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 237, i32 5}
!20 = !{ptr @atmel_lcdfb_power_control._entry.5, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @atmel_lcdfb_power_control._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1052, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @atmel_lcdfb_probe.__UNIQUE_ID_ddebug341, !23, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1070, i32 3}
!29 = !{ptr @atmel_lcdfb_probe._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @atmel_lcdfb_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1077, i32 50}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1090, i32 32}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1095, i32 33}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1110, i32 3}
!39 = !{ptr @atmel_lcdfb_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @atmel_lcdfb_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1148, i32 4}
!43 = !{ptr @atmel_lcdfb_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @atmel_lcdfb_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1165, i32 3}
!47 = !{ptr @atmel_lcdfb_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @atmel_lcdfb_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1176, i32 3}
!51 = !{ptr @atmel_lcdfb_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @atmel_lcdfb_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @atmel_lcdfb_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1182, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1186, i32 3}
!58 = !{ptr @atmel_lcdfb_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @atmel_lcdfb_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1192, i32 3}
!62 = !{ptr @atmel_lcdfb_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @atmel_lcdfb_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1203, i32 3}
!66 = !{ptr @atmel_lcdfb_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @atmel_lcdfb_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1210, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @atmel_lcdfb_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @atmel_lcdfb_probe._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1243, i32 2}
!75 = !{ptr @atmel_lcdfb_probe.__UNIQUE_ID_ddebug342, !74, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 959, i32 36}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 961, i32 3}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @atmel_lcdfb_of_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @atmel_lcdfb_of_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 965, i32 41}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 967, i32 3}
!87 = !{ptr @atmel_lcdfb_of_init._entry.46, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @atmel_lcdfb_of_init._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 971, i32 41}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 973, i32 3}
!93 = !{ptr @atmel_lcdfb_of_init._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @atmel_lcdfb_of_init._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 977, i32 41}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 979, i32 3}
!99 = !{ptr @atmel_lcdfb_of_init._entry.54, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @atmel_lcdfb_of_init._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 983, i32 41}
!103 = !{ptr @atmel_lcdfb_of_init._entry.58, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 985, i32 3}
!105 = !{ptr @atmel_lcdfb_of_init._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 990, i32 35}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1006, i32 4}
!110 = !{ptr @atmel_lcdfb_of_init._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @atmel_lcdfb_of_init._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1017, i32 3}
!114 = !{ptr @atmel_lcdfb_of_init._entry.64, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @atmel_lcdfb_of_init._entry_ptr.66, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1022, i32 65}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1023, i32 65}
!120 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1027, i32 3}
!122 = !{ptr @atmel_lcdfb_of_init._entry.69, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @atmel_lcdfb_of_init._entry_ptr.71, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @atmel_lcdfb_dt_ids, !125, !"atmel_lcdfb_dt_ids", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 899, i32 34}
!126 = !{ptr @at91sam9261_config, !127, !"at91sam9261_config", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 78, i32 34}
!128 = !{ptr @at91sam9263_config, !129, !"at91sam9263_config", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 83, i32 34}
!130 = !{ptr @at91sam9g10_config, !131, !"at91sam9g10_config", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 87, i32 34}
!132 = !{ptr @at91sam9g45_config, !133, !"at91sam9g45_config", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 91, i32 34}
!134 = !{ptr @at91sam9g45es_config, !135, !"at91sam9g45es_config", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 95, i32 34}
!136 = !{ptr @at91sam9rl_config, !137, !"at91sam9rl_config", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 98, i32 34}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 921, i32 36}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 912, i32 28}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 913, i32 28}
!144 = distinct !{null, !145, !"atmel_lcdfb_wiring_modes", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 911, i32 20}
!146 = !{ptr @atmel_lcdfb_ops, !147, !"atmel_lcdfb_ops", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 827, i32 28}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 797, i32 2}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @atmel_lcdfb_pan_display.__UNIQUE_ID_ddebug340, !149, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!152 = !{ptr @atmel_lcdfb_fix, !153, !"atmel_lcdfb_fix", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 243, i32 39}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 414, i32 2}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug305, !155, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 419, i32 4}
!160 = !{ptr @atmel_lcdfb_check_var._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @atmel_lcdfb_check_var._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 424, i32 2}
!164 = !{ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug306, !163, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 425, i32 2}
!167 = !{ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug307, !166, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 426, i32 2}
!170 = !{ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug308, !169, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 427, i32 2}
!173 = !{ptr @atmel_lcdfb_check_var.__UNIQUE_ID_ddebug309, !172, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 430, i32 3}
!176 = !{ptr @atmel_lcdfb_check_var._entry.84, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @atmel_lcdfb_check_var._entry_ptr.86, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 454, i32 4}
!180 = !{ptr @atmel_lcdfb_check_var._entry.87, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @atmel_lcdfb_check_var._entry_ptr.89, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 526, i32 3}
!184 = !{ptr @atmel_lcdfb_check_var._entry.90, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @atmel_lcdfb_check_var._entry_ptr.92, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @contrast_ctr, !187, !"contrast_ctr", i1 false, i1 false}
!187 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 102, i32 12}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 166, i32 33}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 169, i32 3}
!192 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @init_backlight._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @init_backlight._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @atmel_lcdc_bl_ops, !196, !"atmel_lcdc_bl_ops", i1 false, i1 false}
!196 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 148, i32 35}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 847, i32 3}
!199 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @atmel_lcdfb_interrupt._entry, !198, !"_entry", i1 false, i1 false}
!202 = !{ptr @atmel_lcdfb_interrupt._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 873, i32 2}
!205 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @atmel_lcdfb_init_fbinfo._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @atmel_lcdfb_init_fbinfo._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 882, i32 3}
!210 = !{ptr @atmel_lcdfb_init_fbinfo._entry.101, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @atmel_lcdfb_init_fbinfo._entry_ptr.103, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 571, i32 2}
!214 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug330, !213, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 572, i32 2}
!217 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug331, !216, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 589, i32 2}
!220 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug332, !219, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 608, i32 3}
!223 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @atmel_lcdfb_set_par._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @atmel_lcdfb_set_par._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 612, i32 3}
!228 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug333, !227, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 618, i32 3}
!231 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug334, !230, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 642, i32 2}
!234 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug335, !233, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 649, i32 2}
!237 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug336, !236, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 656, i32 2}
!240 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug337, !239, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 665, i32 2}
!243 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug338, !242, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 686, i32 2}
!246 = !{ptr @atmel_lcdfb_set_par.__UNIQUE_ID_ddebug339, !245, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!247 = !{ptr @atmel_lcdfb_driver, !248, !"atmel_lcdfb_driver", i1 false, i1 false}
!248 = !{!"../drivers/video/fbdev/atmel_lcdfb.c", i32 1324, i32 31}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{i64 2148726911, i64 2148726916, i64 2148726929, i64 2148726973, i64 2148727007, i64 2148727028}
!259 = !{!"auto-init"}
!260 = !{i8 0, i8 2}
!261 = !{i64 6265650}
!262 = !{i64 6266068}
!263 = !{i64 2156113478, i64 2156113976, i64 2156113515, i64 2156113571, i64 2156113605, i64 2156113629, i64 2156113670, i64 2156113691, i64 2156113719, i64 2156113753}
