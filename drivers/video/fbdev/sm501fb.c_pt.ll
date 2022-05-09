; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/sm501fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/sm501fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.79 }
%union.anon.79 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sm501_platdata_fb = type { i32, i32, ptr, ptr }
%struct.sm501_platdata_fbsub = type { ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.sm501_platdata = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.sm501fb_info = type { ptr, [2 x ptr], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.87, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.sm501fb_par = type { [16 x i32], i32, %struct.sm501_mem, %struct.sm501_mem, %struct.fb_ops, ptr, ptr, ptr, ptr }
%struct.sm501_mem = type { i32, i32, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__initcall__kmod_sm501fb__321_2221_sm501fb_driver_init6 = internal global ptr @sm501fb_driver_init, section ".initcall6.init", align 4
@sm501fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sm501fb_probe, ptr @sm501fb_remove, ptr null, ptr @sm501fb_suspend, ptr @sm501fb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm501fb_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sm501fb_driver_exit = internal global ptr @sm501fb_driver_exit, section ".exitcall.exit", align 4
@__param_str_mode = internal constant [13 x i8] c"sm501fb.mode\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fb_mode = internal global { ptr, [28 x i8] } { ptr @.str.144, [28 x i8] zeroinitializer }, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.79 { ptr @fb_mode } }, section "__param", align 4
@__UNIQUE_ID_modetype322 = internal constant [28 x i8] c"sm501fb.parmtype=mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode323 = internal constant [77 x i8] c"sm501fb.parm=mode:Specify resolution as \22<xres>x<yres>[-<bpp>][@<refresh>]\22 \00", section ".modinfo", align 1
@__param_str_bpp = internal constant [12 x i8] c"sm501fb.bpp\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@default_bpp = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_bpp = internal constant %struct.kernel_param { ptr @__param_str_bpp, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.79 { ptr @default_bpp } }, section "__param", align 4
@__UNIQUE_ID_bpptype324 = internal constant [27 x i8] c"sm501fb.parmtype=bpp:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_bpp325 = internal constant [61 x i8] c"sm501fb.parm=bpp:Specify bit-per-pixel if not specified mode\00", section ".modinfo", align 1
@__UNIQUE_ID_author326 = internal constant [42 x i8] c"sm501fb.author=Ben Dooks, Vincent Sanders\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [45 x i8] c"sm501fb.description=SM501 Framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [41 x i8] c"sm501fb.file=drivers/video/fbdev/sm501fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [23 x i8] c"sm501fb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sm501-fb\00", [23 x i8] zeroinitializer }, align 32
@sm501fb_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sm501fb_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1940, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to allocate state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sm501fb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/fbdev/sm501fb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr = internal global ptr @sm501fb_probe._entry, section ".printk_index", align 4
@sm501fb_def_pdata = internal global { %struct.sm501_platdata_fb, [16 x i8] } { %struct.sm501_platdata_fb { i32 0, i32 0, ptr @sm501fb_pdata_crt, ptr @sm501fb_pdata_pnl }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1976, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"using default configuration data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.11 = internal global ptr @sm501fb_probe._entry.8, section ".printk_index", align 4
@sm501fb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1985, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to probe CRT\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.14 = internal global ptr @sm501fb_probe._entry.12, section ".printk_index", align 4
@sm501fb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to probe PANEL\0A\00", [41 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.17 = internal global ptr @sm501fb_probe._entry.15, section ".printk_index", align 4
@sm501fb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no framebuffers found\0A\00", [41 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.20 = internal global ptr @sm501fb_probe._entry.18, section ".printk_index", align 4
@sm501fb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot initialise SM501\0A\00", [39 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.23 = internal global ptr @sm501fb_probe._entry.21, section ".printk_index", align 4
@driver_name_crt = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"sm501fb-crt\00", [20 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2012, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to start CRT\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.26 = internal global ptr @sm501fb_probe._entry.24, section ".printk_index", align 4
@driver_name_pnl = internal global { [14 x i8], [18 x i8] } { [14 x i8] c"sm501fb-panel\00", [18 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 2018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to start Panel\0A\00", [41 x i8] zeroinitializer }, align 32
@sm501fb_probe._entry_ptr.29 = internal global ptr @sm501fb_probe._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sm501fb_pdata_crt = internal global { %struct.sm501_platdata_fbsub, [16 x i8] } { %struct.sm501_platdata_fbsub { ptr null, i32 0, i32 0, i32 15 }, [16 x i8] zeroinitializer }, align 32
@sm501fb_pdata_pnl = internal global { %struct.sm501_platdata_fbsub, [16 x i8] } { %struct.sm501_platdata_fbsub { ptr null, i32 0, i32 0, i32 15 }, [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crt\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panel\00", [26 x i8] zeroinitializer }, align 32
@sm501fb_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1871, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no data for fb %s (disabled)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501fb_probe_one\00", [46 x i8] zeroinitializer }, align 32
@sm501fb_probe_one._entry_ptr = internal global ptr @sm501fb_probe_one._entry, section ".printk_index", align 4
@sm501fb_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1534, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no irq for device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sm501fb_start\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr = internal global ptr @sm501fb_start._entry, section ".printk_index", align 4
@sm501fb_start._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 1541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no resource definition for registers\0A\00", [58 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.39 = internal global ptr @sm501fb_start._entry.37, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@sm501fb_start._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.3, i32 1551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot claim registers\0A\00", [40 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.42 = internal global ptr @sm501fb_start._entry.40, section ".printk_index", align 4
@sm501fb_start._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.3, i32 1558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot remap registers\0A\00", [40 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.45 = internal global ptr @sm501fb_start._entry.43, section ".printk_index", align 4
@sm501fb_start._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.3, i32 1567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no resource definition for 2d registers\0A\00", [55 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.48 = internal global ptr @sm501fb_start._entry.46, section ".printk_index", align 4
@sm501fb_start._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.3, i32 1577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.50 = internal global ptr @sm501fb_start._entry.49, section ".printk_index", align 4
@sm501fb_start._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.3, i32 1584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.52 = internal global ptr @sm501fb_start._entry.51, section ".printk_index", align 4
@sm501fb_start._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.3, i32 1592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory resource defined\0A\00", [36 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.55 = internal global ptr @sm501fb_start._entry.53, section ".printk_index", align 4
@sm501fb_start._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.35, ptr @.str.3, i32 1601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot claim framebuffer\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.58 = internal global ptr @sm501fb_start._entry.56, section ".printk_index", align 4
@sm501fb_start._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.35, ptr @.str.3, i32 1608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot remap framebuffer\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501fb_start._entry_ptr.61 = internal global ptr @sm501fb_start._entry.59, section ".printk_index", align 4
@sm501_alloc_mem.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm501fb\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm501_alloc_mem\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: result %08lx, %p - %u, %zd\0A\00", [32 x i8] zeroinitializer }, align 32
@sm501fb_start_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&info->fb[head]->mm_lock\00", [39 x i8] zeroinitializer }, align 32
@sm501fb_start_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot initialise fb %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501fb_start_one\00", [46 x i8] zeroinitializer }, align 32
@sm501fb_start_one._entry_ptr = internal global ptr @sm501fb_start_one._entry, section ".printk_index", align 4
@sm501fb_start_one._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 1921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register fb %s\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501fb_start_one._entry_ptr.70 = internal global ptr @sm501fb_start_one._entry.68, section ".printk_index", align 4
@sm501fb_start_one._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 1926, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: %s frame buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@sm501fb_start_one._entry_ptr.73 = internal global ptr @sm501fb_start_one._entry.71, section ".printk_index", align 4
@sm501fb_init_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1712, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fb %s %sabled at start\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm501fb_init_fb\00", [16 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr = internal global ptr @sm501fb_init_fb._entry, section ".printk_index", align 4
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@sm501fb_ops_crt = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm501fb_check_var_crt, ptr @sm501fb_set_par_crt, ptr @sm501fb_setcolreg, ptr null, ptr @sm501fb_blank_crt, ptr @sm501fb_pan_crt, ptr @sm501fb_fillrect, ptr @sm501fb_copyarea, ptr @cfb_imageblit, ptr @sm501fb_cursor, ptr @sm501fb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sm501fb_ops_pnl = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm501fb_check_var_pnl, ptr @sm501fb_set_par_pnl, ptr @sm501fb_setcolreg, ptr null, ptr @sm501fb_blank_pnl, ptr @sm501fb_pan_pnl, ptr @sm501fb_fillrect, ptr @sm501fb_copyarea, ptr @cfb_imageblit, ptr @sm501fb_cursor, ptr @sm501fb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.3, i32 1776, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using supplied mode\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.81 = internal global ptr @sm501fb_init_fb._entry.79, section ".printk_index", align 4
@sm501_default_mode = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 20833, i32 142, i32 13, i32 21, i32 1, i32 69, i32 3, i32 3, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.3, i32 1798, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using mode specified in @mode\0A\00", [33 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.84 = internal global ptr @sm501fb_init_fb._entry.82, section ".printk_index", align 4
@sm501fb_init_fb._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.3, i32 1802, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"using mode specified in @mode with ignored refresh rate\0A\00", [39 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.87 = internal global ptr @sm501fb_init_fb._entry.85, section ".printk_index", align 4
@sm501fb_init_fb._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.3, i32 1806, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using mode default mode\0A\00", [39 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.90 = internal global ptr @sm501fb_init_fb._entry.88, section ".printk_index", align 4
@sm501fb_init_fb._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.75, ptr @.str.3, i32 1809, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using mode from list\0A\00", [42 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.93 = internal global ptr @sm501fb_init_fb._entry.91, section ".printk_index", align 4
@sm501fb_init_fb._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.75, ptr @.str.3, i32 1812, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ret = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.96 = internal global ptr @sm501fb_init_fb._entry.94, section ".printk_index", align 4
@sm501fb_init_fb._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.75, ptr @.str.3, i32 1813, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to find mode\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.99 = internal global ptr @sm501fb_init_fb._entry.97, section ".printk_index", align 4
@sm501fb_init_fb._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.75, ptr @.str.3, i32 1821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate cmap memory\0A\00", [32 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.102 = internal global ptr @sm501fb_init_fb._entry.100, section ".printk_index", align 4
@sm501fb_init_fb._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.75, ptr @.str.3, i32 1828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"check_var() failed on initial setup?\0A\00", [58 x i8] zeroinitializer }, align 32
@sm501fb_init_fb._entry_ptr.105 = internal global ptr @sm501fb_init_fb._entry.103, section ".printk_index", align 4
@sm501fb_set_par_crt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm501fb_set_par_crt\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%p)\0A\00", [24 x i8] zeroinitializer }, align 32
@sm501fb_set_par_crt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set common parameters\0A\00", [63 x i8] zeroinitializer }, align 32
@sm501fb_set_par_crt._entry_ptr = internal global ptr @sm501fb_set_par_crt._entry, section ".printk_index", align 4
@sm501fb_set_par_crt.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.106, ptr @.str.3, ptr @.str.109, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"new control is %08lx\0A\00", [42 x i8] zeroinitializer }, align 32
@sm501fb_set_par_common.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.110, ptr @.str.3, ptr @.str.111, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sm501fb_set_par_common\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: %dx%d, bpp = %d, virtual %dx%d\0A\00", [60 x i8] zeroinitializer }, align 32
@sm501fb_set_par_common.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.110, ptr @.str.3, ptr @.str.112, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: line length = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@sm501fb_set_par_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.110, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no memory available\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501fb_set_par_common._entry_ptr = internal global ptr @sm501fb_set_par_common._entry, section ".printk_index", align 4
@sm501fb_set_par_common.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.110, ptr @.str.3, ptr @.str.114, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: pixclock(ps) = %u, pixclock(Hz)  = %lu, sm501pixclock = %lu,  error = %ld%%\0A\00", [47 x i8] zeroinitializer }, align 32
@sm501fb_blank_crt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501fb_blank_crt\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(mode=%d, %p)\0A\00", [47 x i8] zeroinitializer }, align 32
@sm501fb_cursor.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm501fb_cursor\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s(%p,%p)\0A\00", [21 x i8] zeroinitializer }, align 32
@sm501fb_cursor.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.117, ptr @.str.3, ptr @.str.119, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set position %d,%d\0A\00", [44 x i8] zeroinitializer }, align 32
@sm501fb_cursor.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.117, ptr @.str.3, ptr @.str.120, i8 1, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: update cmap (%08x,%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@sm501fb_cursor.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.117, ptr @.str.3, ptr @.str.121, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fgcol %08lx, bgcol %08lx\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501fb_cursor.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.117, ptr @.str.3, ptr @.str.122, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: setting shape (%d,%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@sm501fb_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout waiting for 2d engine sync\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sm501fb_sync\00", [19 x i8] zeroinitializer }, align 32
@sm501fb_sync._entry_ptr = internal global ptr @sm501fb_sync._entry, section ".printk_index", align 4
@sm501fb_set_par_pnl.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.125, ptr @.str.3, ptr @.str.107, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm501fb_set_par_pnl\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sm501fb_blank_pnl.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.126, ptr @.str.3, ptr @.str.116, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501fb_blank_pnl\00", [46 x i8] zeroinitializer }, align 32
@sm501fb_suspend_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 2099, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no memory to store screen\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sm501fb_suspend_fb\00", [45 x i8] zeroinitializer }, align 32
@sm501fb_suspend_fb._entry_ptr = internal global ptr @sm501fb_suspend_fb._entry, section ".printk_index", align 4
@sm501fb_suspend_fb._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.3, i32 2105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no memory to store cursor\0A\00", [37 x i8] zeroinitializer }, align 32
@sm501fb_suspend_fb._entry_ptr.131 = internal global ptr @sm501fb_suspend_fb._entry.129, section ".printk_index", align 4
@sm501fb_suspend_fb.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.128, ptr @.str.3, ptr @.str.132, i8 2, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"suspending screen to %p\0A\00", [39 x i8] zeroinitializer }, align 32
@sm501fb_suspend_fb.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.128, ptr @.str.3, ptr @.str.133, i8 2, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"suspending cursor to %p\0A\00", [39 x i8] zeroinitializer }, align 32
@sm501fb_resume_fb.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.134, ptr @.str.3, ptr @.str.135, i8 2, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501fb_resume_fb\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"restoring screen from %p\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501fb_resume_fb.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.134, ptr @.str.3, ptr @.str.136, i8 2, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"restoring cursor from %p\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501fb_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sm501fb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sm501fb_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_crt_src, ptr @dev_attr_fbregs_pnl, ptr @dev_attr_fbregs_crt, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_crt_src = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sm501fb_crtsrc_show, ptr @sm501fb_crtsrc_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fbregs_pnl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sm501fb_debug_show_pnl, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fbregs_crt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sm501fb_debug_show_crt, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crt_src\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sm501fb_crtsrc_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 1195, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting crt source to head %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sm501fb_crtsrc_store\00", [43 x i8] zeroinitializer }, align 32
@sm501fb_crtsrc_store._entry_ptr = internal global ptr @sm501fb_crtsrc_store._entry, section ".printk_index", align 4
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fbregs_pnl\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%08x = %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fbregs_crt\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"640x480-16@60\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"sm501fb_driver\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2210, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"fb_mode\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 43, i32 14 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"default_bpp\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 44, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2216, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"sm501fb_groups\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1940, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [18 x i8] c"sm501fb_def_pdata\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1850, i32 33 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1963, i32 29 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1966, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1976, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1985, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1991, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1997, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2006, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"driver_name_crt\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1856, i32 13 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2012, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"driver_name_pnl\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1857, i32 13 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2018, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"sm501fb_pdata_crt\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1835, i32 36 }
@___asan_gen_.253 = private unnamed_addr constant [18 x i8] c"sm501fb_pdata_pnl\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1843, i32 36 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1862, i32 45 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1862, i32 53 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1871, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1534, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1541, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1551, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1558, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1567, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1577, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1584, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1592, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1601, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1608, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 242, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1911, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1915, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1921, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1926, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1711, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [16 x i8] c"sm501fb_ops_crt\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1453, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"sm501fb_ops_pnl\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1467, i32 22 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1740, i32 50 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1776, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant [19 x i8] c"sm501_default_mode\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 46, i32 34 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1797, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1801, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1805, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1809, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1812, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1813, i32 5 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1821, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1828, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 639, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 671, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 704, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 438, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 479, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 483, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 510, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1000, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1046, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1081, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1092, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1103, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1123, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1296, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 808, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 968, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2099, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2105, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2109, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2110, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2143, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2144, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [14 x i8] c"sm501fb_group\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1280, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [14 x i8] c"sm501fb_attrs\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1274, i32 26 }
@___asan_gen_.556 = private unnamed_addr constant [17 x i8] c"dev_attr_crt_src\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c"dev_attr_fbregs_pnl\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c"dev_attr_fbregs_crt\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1216, i32 8 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1169, i32 34 }
@___asan_gen_.571 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1195, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1272, i32 8 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1230, i32 23 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1253, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.590 = private constant [33 x i8] c"../drivers/video/fbdev/sm501fb.c\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 43, i32 24 }
@llvm.compiler.used = appending global [196 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_bpp325, ptr @__UNIQUE_ID_bpptype324, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__UNIQUE_ID_mode323, ptr @__UNIQUE_ID_modetype322, ptr @__exitcall_sm501fb_driver_exit, ptr @__initcall__kmod_sm501fb__321_2221_sm501fb_driver_init6, ptr @__param_bpp, ptr @__param_mode, ptr @sm501fb_crtsrc_store._entry, ptr @sm501fb_crtsrc_store._entry_ptr, ptr @sm501fb_driver_exit, ptr @sm501fb_init_fb._entry, ptr @sm501fb_init_fb._entry.100, ptr @sm501fb_init_fb._entry.103, ptr @sm501fb_init_fb._entry.79, ptr @sm501fb_init_fb._entry.82, ptr @sm501fb_init_fb._entry.85, ptr @sm501fb_init_fb._entry.88, ptr @sm501fb_init_fb._entry.91, ptr @sm501fb_init_fb._entry.94, ptr @sm501fb_init_fb._entry.97, ptr @sm501fb_init_fb._entry_ptr, ptr @sm501fb_init_fb._entry_ptr.102, ptr @sm501fb_init_fb._entry_ptr.105, ptr @sm501fb_init_fb._entry_ptr.81, ptr @sm501fb_init_fb._entry_ptr.84, ptr @sm501fb_init_fb._entry_ptr.87, ptr @sm501fb_init_fb._entry_ptr.90, ptr @sm501fb_init_fb._entry_ptr.93, ptr @sm501fb_init_fb._entry_ptr.96, ptr @sm501fb_init_fb._entry_ptr.99, ptr @sm501fb_probe._entry, ptr @sm501fb_probe._entry.12, ptr @sm501fb_probe._entry.15, ptr @sm501fb_probe._entry.18, ptr @sm501fb_probe._entry.21, ptr @sm501fb_probe._entry.24, ptr @sm501fb_probe._entry.27, ptr @sm501fb_probe._entry.8, ptr @sm501fb_probe._entry_ptr, ptr @sm501fb_probe._entry_ptr.11, ptr @sm501fb_probe._entry_ptr.14, ptr @sm501fb_probe._entry_ptr.17, ptr @sm501fb_probe._entry_ptr.20, ptr @sm501fb_probe._entry_ptr.23, ptr @sm501fb_probe._entry_ptr.26, ptr @sm501fb_probe._entry_ptr.29, ptr @sm501fb_probe_one._entry, ptr @sm501fb_probe_one._entry_ptr, ptr @sm501fb_set_par_common._entry, ptr @sm501fb_set_par_common._entry_ptr, ptr @sm501fb_set_par_crt._entry, ptr @sm501fb_set_par_crt._entry_ptr, ptr @sm501fb_start._entry, ptr @sm501fb_start._entry.37, ptr @sm501fb_start._entry.40, ptr @sm501fb_start._entry.43, ptr @sm501fb_start._entry.46, ptr @sm501fb_start._entry.49, ptr @sm501fb_start._entry.51, ptr @sm501fb_start._entry.53, ptr @sm501fb_start._entry.56, ptr @sm501fb_start._entry.59, ptr @sm501fb_start._entry_ptr, ptr @sm501fb_start._entry_ptr.39, ptr @sm501fb_start._entry_ptr.42, ptr @sm501fb_start._entry_ptr.45, ptr @sm501fb_start._entry_ptr.48, ptr @sm501fb_start._entry_ptr.50, ptr @sm501fb_start._entry_ptr.52, ptr @sm501fb_start._entry_ptr.55, ptr @sm501fb_start._entry_ptr.58, ptr @sm501fb_start._entry_ptr.61, ptr @sm501fb_start_one._entry, ptr @sm501fb_start_one._entry.68, ptr @sm501fb_start_one._entry.71, ptr @sm501fb_start_one._entry_ptr, ptr @sm501fb_start_one._entry_ptr.70, ptr @sm501fb_start_one._entry_ptr.73, ptr @sm501fb_suspend_fb._entry, ptr @sm501fb_suspend_fb._entry.129, ptr @sm501fb_suspend_fb._entry_ptr, ptr @sm501fb_suspend_fb._entry_ptr.131, ptr @sm501fb_sync._entry, ptr @sm501fb_sync._entry_ptr, ptr @sm501fb_driver, ptr @fb_mode, ptr @default_bpp, ptr @.str, ptr @sm501fb_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sm501fb_def_pdata, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @driver_name_crt, ptr @.str.25, ptr @driver_name_pnl, ptr @.str.28, ptr @sm501fb_pdata_crt, ptr @sm501fb_pdata_pnl, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @sm501fb_start_one.__key, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @sm501fb_ops_crt, ptr @sm501fb_ops_pnl, ptr @.str.78, ptr @.str.80, ptr @sm501_default_mode, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @sm501fb_group, ptr @sm501fb_attrs, ptr @dev_attr_crt_src, ptr @dev_attr_fbregs_pnl, ptr @dev_attr_fbregs_crt, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_def_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name_crt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name_pnl to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_pdata_crt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_pdata_pnl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start_one._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_start_one._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_ops_crt to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_ops_pnl to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_default_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_init_fb._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_set_par_crt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_set_par_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_suspend_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_suspend_fb._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_crt_src to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fbregs_pnl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fbregs_crt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501fb_crtsrc_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sm501fb_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm501fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @sm501fb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %platform_data = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fb = getelementptr inbounds %struct.sm501_platdata, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  %pdata = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pdata, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %pdata9 = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %pdata9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata9, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then10, label %if.end8.if.end39_crit_edge

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then10:                                        ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %len, align 4, !annotation !314
  %15 = ptrtoint ptr %pdata9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sm501fb_def_pdata, ptr %pdata9, align 8
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.then10.do.end36_crit_edge, label %if.then15

if.then10.do.end36_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

if.then15:                                        ; preds = %if.then10
  %call16 = call ptr @of_get_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %len) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then18

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %16 = load ptr, ptr @fb_mode, align 4
  %call19 = call ptr @strcpy(ptr noundef %16, ptr noundef nonnull %call16) #18
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge
  %call21 = call ptr @of_get_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.7, ptr noundef nonnull %len) #13
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.do.end36_crit_edge, label %land.lhs.true

if.end20.do.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

land.lhs.true:                                    ; preds = %if.end20
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp23 = icmp eq i32 %18, 128
  br i1 %cmp23, label %if.then24, label %land.lhs.true.do.end36_crit_edge

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

if.then24:                                        ; preds = %land.lhs.true
  %call25 = call ptr @kmemdup(ptr noundef nonnull %call21, i32 noundef 128, i32 noundef 3264) #13
  %edid_data = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %edid_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call25, ptr %edid_data, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.then24.do.end36_crit_edge, label %if.then24.if.end38_crit_edge

if.then24.if.end38_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then24.do.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

do.end36:                                         ; preds = %if.then24.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %if.end20.do.end36_crit_edge, %if.then10.do.end36_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #17
  %20 = ptrtoint ptr %pdata9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sm501fb_def_pdata, ptr %pdata9, align 8
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.then24.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end8.if.end39_crit_edge
  %21 = ptrtoint ptr %pdata9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata9, align 8
  %fb_crt.i = getelementptr inbounds %struct.sm501_platdata_fb, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %fb_crt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond3.i = load ptr, ptr %fb_crt.i, align 4
  %cmp4.i = icmp eq ptr %cond3.i, null
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  br i1 %cmp4.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #17
  br label %if.end46

if.end.i:                                         ; preds = %if.end39
  %call.i = call ptr @framebuffer_alloc(i32 noundef 200, ptr noundef %25) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end45, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %par8.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 30
  %26 = ptrtoint ptr %par8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %par8.i, align 4
  %info9.i = getelementptr inbounds %struct.sm501fb_par, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %info9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %info9.i, align 4
  %head10.i = getelementptr inbounds %struct.sm501fb_par, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %head10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %head10.i, align 4
  %pseudo_palette11.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 27
  %30 = ptrtoint ptr %pseudo_palette11.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %pseudo_palette11.i, align 4
  %arrayidx.i = getelementptr %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 1, i32 0
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx.i, align 4
  br label %if.end46

do.end45:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #17
  br label %err_alloc

if.end46:                                         ; preds = %if.end7.i, %do.end.i
  %32 = ptrtoint ptr %pdata9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata9, align 8
  %fb_pnl.i142 = getelementptr inbounds %struct.sm501_platdata_fb, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %fb_pnl.i142 to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond3.i143 = load ptr, ptr %fb_pnl.i142, align 4
  %cmp4.i144 = icmp eq ptr %cond3.i143, null
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  br i1 %cmp4.i144, label %do.end.i145, label %if.end.i148

do.end.i145:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #17
  br label %if.end53

if.end.i148:                                      ; preds = %if.end46
  %call.i146 = call ptr @framebuffer_alloc(i32 noundef 200, ptr noundef %36) #13
  %tobool.not.i147 = icmp eq ptr %call.i146, null
  br i1 %tobool.not.i147, label %do.end52, label %if.end7.i154

if.end7.i154:                                     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #15
  %par8.i149 = getelementptr inbounds %struct.fb_info, ptr %call.i146, i32 0, i32 30
  %37 = ptrtoint ptr %par8.i149 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %par8.i149, align 4
  %info9.i150 = getelementptr inbounds %struct.sm501fb_par, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %info9.i150 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %info9.i150, align 4
  %head10.i151 = getelementptr inbounds %struct.sm501fb_par, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %head10.i151 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %head10.i151, align 4
  %pseudo_palette11.i152 = getelementptr inbounds %struct.fb_info, ptr %call.i146, i32 0, i32 27
  %41 = ptrtoint ptr %pseudo_palette11.i152 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %pseudo_palette11.i152, align 4
  %arrayidx.i153 = getelementptr %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i146, ptr %arrayidx.i153, align 8
  br label %if.end53

do.end52:                                         ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #17
  br label %err_probed_crt

if.end53:                                         ; preds = %if.end7.i154, %do.end.i145
  %fb54 = getelementptr %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 1
  %arrayidx = getelementptr %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 8
  %cmp55 = icmp eq ptr %44, null
  br i1 %cmp55, label %land.lhs.true56, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true56:                                  ; preds = %if.end53
  %45 = ptrtoint ptr %fb54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fb54, align 4
  %cmp59 = icmp eq ptr %46, null
  br i1 %cmp59, label %do.end63, label %land.lhs.true56.if.end64_crit_edge

land.lhs.true56.if.end64_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

do.end63:                                         ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #17
  br label %err_alloc

if.end64:                                         ; preds = %land.lhs.true56.if.end64_crit_edge, %if.end53.if.end64_crit_edge
  %call.i157 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  %irq.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i157, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp.i = icmp slt i32 %call.i157, 0
  br i1 %cmp.i, label %do.end.i158, label %if.end64.if.end.i159_crit_edge

if.end64.if.end.i159_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i159

do.end.i158:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.34) #17
  br label %if.end.i159

if.end.i159:                                      ; preds = %do.end.i158, %if.end64.if.end.i159_crit_edge
  %call2.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %do.end7.i, label %if.end8.i

do.end7.i:                                        ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #17
  br label %do.end70

if.end8.i:                                        ; preds = %if.end.i159
  %48 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call2.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call2.i, i32 0, i32 1
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %49
  %add.i.i = add i32 %sub.i.i, %51
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 8
  %call10.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %49, i32 noundef %add.i.i, ptr noundef %53, i32 noundef 0) #13
  %regs_res.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %regs_res.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call10.i, ptr %regs_res.i, align 8
  %cmp12.i = icmp eq ptr %call10.i, null
  br i1 %cmp12.i, label %do.end16.i, label %if.end17.i

do.end16.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #17
  br label %do.end70

if.end17.i:                                       ; preds = %if.end8.i
  %55 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call2.i, align 4
  %57 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end.i.i, align 4
  %sub.i180.i = sub i32 1, %56
  %add.i181.i = add i32 %sub.i180.i, %58
  %call20.i = call ptr @ioremap(i32 noundef %56, i32 noundef %add.i181.i) #13
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call20.i, ptr %regs.i, align 8
  %cmp22.i = icmp eq ptr %call20.i, null
  br i1 %cmp22.i, label %do.end26.i, label %if.end27.i

do.end26.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #17
  br label %err_regs_res.i

if.end27.i:                                       ; preds = %if.end17.i
  %call28.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #13
  %cmp29.i = icmp eq ptr %call28.i, null
  br i1 %cmp29.i, label %do.end33.i, label %if.end34.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47) #17
  br label %err_regs_map.i

if.end34.i:                                       ; preds = %if.end27.i
  %60 = ptrtoint ptr %call28.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call28.i, align 4
  %end.i182.i = getelementptr inbounds %struct.resource, ptr %call28.i, i32 0, i32 1
  %62 = ptrtoint ptr %end.i182.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %end.i182.i, align 4
  %sub.i183.i = sub i32 1, %61
  %add.i184.i = add i32 %sub.i183.i, %63
  %64 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev, align 8
  %call38.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %61, i32 noundef %add.i184.i, ptr noundef %65, i32 noundef 0) #13
  %regs2d_res.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %regs2d_res.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call38.i, ptr %regs2d_res.i, align 4
  %cmp40.i = icmp eq ptr %call38.i, null
  br i1 %cmp40.i, label %do.end44.i, label %if.end45.i

do.end44.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #17
  br label %err_regs_map.i

if.end45.i:                                       ; preds = %if.end34.i
  %67 = ptrtoint ptr %call28.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call28.i, align 4
  %69 = ptrtoint ptr %end.i182.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %end.i182.i, align 4
  %sub.i186.i = sub i32 1, %68
  %add.i187.i = add i32 %sub.i186.i, %70
  %call48.i = call ptr @ioremap(i32 noundef %68, i32 noundef %add.i187.i) #13
  %regs2d.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %regs2d.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call48.i, ptr %regs2d.i, align 4
  %cmp50.i = icmp eq ptr %call48.i, null
  br i1 %cmp50.i, label %do.end54.i, label %if.end55.i

do.end54.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #17
  br label %err_regs2d_res.i

if.end55.i:                                       ; preds = %if.end45.i
  %call56.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #13
  %cmp57.i = icmp eq ptr %call56.i, null
  br i1 %cmp57.i, label %do.end61.i, label %if.end62.i

do.end61.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #17
  br label %err_regs2d_map.i

if.end62.i:                                       ; preds = %if.end55.i
  %72 = ptrtoint ptr %call56.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call56.i, align 4
  %end.i188.i = getelementptr inbounds %struct.resource, ptr %call56.i, i32 0, i32 1
  %74 = ptrtoint ptr %end.i188.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %end.i188.i, align 4
  %sub.i189.i = sub i32 1, %73
  %add.i190.i = add i32 %sub.i189.i, %75
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 8
  %call66.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %73, i32 noundef %add.i190.i, ptr noundef %77, i32 noundef 0) #13
  %fbmem_res.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %fbmem_res.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call66.i, ptr %fbmem_res.i, align 4
  %cmp68.i = icmp eq ptr %call66.i, null
  br i1 %cmp68.i, label %do.end72.i, label %if.end73.i

do.end72.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57) #17
  br label %err_regs2d_map.i

if.end73.i:                                       ; preds = %if.end62.i
  %79 = ptrtoint ptr %call56.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call56.i, align 4
  %81 = ptrtoint ptr %end.i188.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %end.i188.i, align 4
  %sub.i192.i = sub i32 1, %80
  %add.i193.i = add i32 %sub.i192.i, %82
  %call76.i = call ptr @ioremap(i32 noundef %80, i32 noundef %add.i193.i) #13
  %fbmem.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 11
  %83 = ptrtoint ptr %fbmem.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call76.i, ptr %fbmem.i, align 8
  %cmp78.i = icmp eq ptr %call76.i, null
  br i1 %cmp78.i, label %do.end82.i, label %if.end83.i

do.end82.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #17
  %84 = ptrtoint ptr %fbmem_res.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fbmem_res.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %end.i194.i = getelementptr inbounds %struct.resource, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %end.i194.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %end.i194.i, align 4
  %sub.i195.i = sub i32 1, %87
  %add.i196.i = add i32 %sub.i195.i, %89
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %87, i32 noundef %add.i196.i) #13
  br label %err_regs2d_map.i

if.end83.i:                                       ; preds = %if.end73.i
  %90 = ptrtoint ptr %end.i188.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %end.i188.i, align 4
  %92 = ptrtoint ptr %call56.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call56.i, align 4
  %sub.i198.i = add i32 %91, 1
  %add.i199.i = sub i32 %sub.i198.i, %93
  %fbmem_len.i = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 12
  %94 = ptrtoint ptr %fbmem_len.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i199.i, ptr %fbmem_len.i, align 4
  call void @mmioset(ptr noundef nonnull %call76.i, i32 noundef 0, i32 noundef %add.i199.i) #13
  br label %do.body88.i

do.body88.i:                                      ; preds = %do.body88.i.do.body88.i_crit_edge, %if.end83.i
  %k.0215.i = phi i32 [ 0, %if.end83.i ], [ %inc.i, %do.body88.i.do.body88.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !315
  call void @arm_heavy_mb() #13
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %96, i32 1024
  %mul.i = shl i32 %k.0215.i, 2
  %add.ptr92.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 0) #13, !srcloc !316
  %inc.i = add nuw nsw i32 %k.0215.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 768
  br i1 %exitcond.not.i, label %if.end71, label %do.body88.i.do.body88.i_crit_edge

do.body88.i.do.body88.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body88.i

err_regs2d_map.i:                                 ; preds = %do.end82.i, %do.end72.i, %do.end61.i
  %97 = ptrtoint ptr %regs2d.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs2d.i, align 4
  call void @iounmap(ptr noundef %98) #13
  br label %err_regs2d_res.i

err_regs2d_res.i:                                 ; preds = %err_regs2d_map.i, %do.end54.i
  %99 = ptrtoint ptr %regs2d_res.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs2d_res.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %end.i200.i = getelementptr inbounds %struct.resource, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %end.i200.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %end.i200.i, align 4
  %sub.i201.i = sub i32 1, %102
  %add.i202.i = add i32 %sub.i201.i, %104
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %102, i32 noundef %add.i202.i) #13
  br label %err_regs_map.i

err_regs_map.i:                                   ; preds = %err_regs2d_res.i, %do.end44.i, %do.end33.i
  %ret.2.i = phi i32 [ -2, %do.end33.i ], [ -6, %do.end44.i ], [ -6, %err_regs2d_res.i ]
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 8
  call void @iounmap(ptr noundef %106) #13
  br label %err_regs_res.i

err_regs_res.i:                                   ; preds = %err_regs_map.i, %do.end26.i
  %ret.3.i = phi i32 [ -6, %do.end26.i ], [ %ret.2.i, %err_regs_map.i ]
  %107 = ptrtoint ptr %regs_res.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs_res.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %end.i203.i = getelementptr inbounds %struct.resource, ptr %108, i32 0, i32 1
  %111 = ptrtoint ptr %end.i203.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %end.i203.i, align 4
  %sub.i204.i = sub i32 1, %110
  %add.i205.i = add i32 %sub.i204.i, %112
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %110, i32 noundef %add.i205.i) #13
  br label %do.end70

do.end70:                                         ; preds = %err_regs_res.i, %do.end16.i, %do.end7.i
  %retval.0.i160.ph = phi i32 [ %ret.3.i, %err_regs_res.i ], [ -6, %do.end16.i ], [ -2, %do.end7.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #17
  br label %err_probed_panel

if.end71:                                         ; preds = %do.body88.i
  %113 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %parent, align 8
  %call93.i = call i32 @sm501_unit_power(ptr noundef %114, i32 noundef 2, i32 noundef 1) #13
  %115 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %parent, align 8
  %call95.i = call i32 @sm501_unit_power(ptr noundef %116, i32 noundef 3, i32 noundef 1) #13
  %117 = ptrtoint ptr %fb54 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fb54, align 4
  call fastcc void @sm501_init_cursor(ptr noundef %118, i32 noundef 560) #13
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx, align 8
  call fastcc void @sm501_init_cursor(ptr noundef %120, i32 noundef 240) #13
  %call72 = call fastcc i32 @sm501fb_start_one(ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef nonnull @driver_name_crt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #17
  br label %err_started

if.end78:                                         ; preds = %if.end71
  %call79 = call fastcc i32 @sm501fb_start_one(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull @driver_name_pnl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %do.end84

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end84:                                         ; preds = %if.end78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #17
  %121 = ptrtoint ptr %fb54 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fb54, align 4
  call void @unregister_framebuffer(ptr noundef %122) #13
  %123 = ptrtoint ptr %fb54 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fb54, align 4
  %tobool.not.i162 = icmp eq ptr %124, null
  br i1 %tobool.not.i162, label %do.end84.err_started_crit_edge, label %if.end.i163

do.end84.err_started_crit_edge:                   ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_started

if.end.i163:                                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #15
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %124, i32 0, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap.i) #13
  br label %err_started

err_started:                                      ; preds = %if.end.i163, %do.end84.err_started_crit_edge, %do.end77
  %ret.0 = phi i32 [ %call72, %do.end77 ], [ %call79, %do.end84.err_started_crit_edge ], [ %call79, %if.end.i163 ]
  call fastcc void @sm501fb_stop(ptr noundef nonnull %call7.i.i)
  br label %err_probed_panel

err_probed_panel:                                 ; preds = %err_started, %do.end70
  %ret.1 = phi i32 [ %retval.0.i160.ph, %do.end70 ], [ %ret.0, %err_started ]
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx, align 8
  call void @framebuffer_release(ptr noundef %126) #13
  br label %err_probed_crt

err_probed_crt:                                   ; preds = %err_probed_panel, %do.end52
  %ret.2 = phi i32 [ -12, %do.end52 ], [ %ret.1, %err_probed_panel ]
  %fb90 = getelementptr inbounds %struct.sm501fb_info, ptr %call7.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %fb90 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fb90, align 4
  call void @framebuffer_release(ptr noundef %128) #13
  br label %err_alloc

err_alloc:                                        ; preds = %err_probed_crt, %do.end63, %do.end45
  %ret.3 = phi i32 [ -12, %do.end45 ], [ %ret.2, %err_probed_crt ], [ -19, %do.end63 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end78.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.3, %err_alloc ], [ -12, %do.end ], [ 0, %if.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fb = getelementptr %struct.sm501fb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %arrayidx2 = getelementptr %struct.sm501fb_info, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.sm501_free_init_fb.exit_crit_edge, label %if.end.i

entry.sm501_free_init_fb.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm501_free_init_fb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #13
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %arrayidx2, align 4
  br label %sm501_free_init_fb.exit

sm501_free_init_fb.exit:                          ; preds = %if.end.i, %entry.sm501_free_init_fb.exit_crit_edge
  %7 = phi ptr [ %5, %entry.sm501_free_init_fb.exit_crit_edge ], [ %.pr, %if.end.i ]
  %tobool.not.i17 = icmp eq ptr %7, null
  br i1 %tobool.not.i17, label %sm501_free_init_fb.exit.sm501_free_init_fb.exit20_crit_edge, label %if.end.i19

sm501_free_init_fb.exit.sm501_free_init_fb.exit20_crit_edge: ; preds = %sm501_free_init_fb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm501_free_init_fb.exit20

if.end.i19:                                       ; preds = %sm501_free_init_fb.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cmap.i18 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i18) #13
  br label %sm501_free_init_fb.exit20

sm501_free_init_fb.exit20:                        ; preds = %if.end.i19, %sm501_free_init_fb.exit.sm501_free_init_fb.exit20_crit_edge
  br i1 %tobool.not.i, label %sm501_free_init_fb.exit20.if.end_crit_edge, label %if.then

sm501_free_init_fb.exit20.if.end_crit_edge:       ; preds = %sm501_free_init_fb.exit20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %sm501_free_init_fb.exit20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_framebuffer(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %sm501_free_init_fb.exit20.if.end_crit_edge
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_framebuffer(ptr noundef nonnull %5) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call fastcc void @sm501fb_stop(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #13
  tail call void @framebuffer_release(ptr noundef %5) #13
  tail call void @framebuffer_release(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  %pm_crt_ctrl = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pm_crt_ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pm_crt_ctrl, align 4
  tail call fastcc void @sm501fb_suspend_fb(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @sm501fb_suspend_fb(ptr noundef %1, i32 noundef 1)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call5 = tail call i32 @sm501_unit_power(ptr noundef %10, i32 noundef 2, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @sm501_unit_power(ptr noundef %5, i32 noundef 2, i32 noundef 1) #13
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 512
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !319
  %9 = and i32 %8, -8519681
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %pm_crt_ctrl = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %pm_crt_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pm_crt_ctrl, align 4
  %and4 = and i32 %12, 33280
  %or = or i32 %and4, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %13) #13, !srcloc !316
  tail call fastcc void @sm501fb_resume_fb(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @sm501fb_resume_fb(ptr noundef %1, i32 noundef 1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm501fb_start_one(ptr nocapture noundef readonly %info, i32 noundef %head, ptr noundef %drvname) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sm501fb_info, ptr %info, i32 0, i32 1, i32 %head
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %mm_lock = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @sm501fb_start_one.__key) #13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par1.i, align 4
  %info2.i = getelementptr inbounds %struct.sm501fb_par, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info2.i, align 4
  %8 = zext i32 %head to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %head, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %do.body
  %pdata.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata.i, align 4
  %fb_crt.i = getelementptr inbounds %struct.sm501_platdata_fb, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %fb_crt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb_crt.i, align 4
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 9
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 512
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !317
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !321
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1
  br i1 %cmp.not.i, label %sw.bb.i.do.end27.i_crit_edge, label %if.then.i

sw.bb.i.do.end27.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %16, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %23, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %21) #13, !srcloc !316
  br label %do.end27.i

sw.bb7.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %pdata8.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 5
  %24 = ptrtoint ptr %pdata8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata8.i, align 4
  %fb_pnl.i = getelementptr inbounds %struct.sm501_platdata_fb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %fb_pnl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fb_pnl.i, align 4
  %regs11.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 9
  %28 = ptrtoint ptr %regs11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs11.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #13, !srcloc !317
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  br label %do.end27.i

sw.default.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/sm501fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1708, 0\0A.popsection", ""() #13, !srcloc !324
  unreachable

do.end27.i:                                       ; preds = %sw.bb7.i, %if.then.i, %sw.bb.i.do.end27.i_crit_edge
  %enable.0.in.in.i = phi i32 [ %31, %sw.bb7.i ], [ %16, %if.then.i ], [ %16, %sw.bb.i.do.end27.i_crit_edge ]
  %ctrl.0.i = phi i32 [ %31, %sw.bb7.i ], [ %or.i, %if.then.i ], [ %16, %sw.bb.i.do.end27.i_crit_edge ]
  %pd.0.i = phi ptr [ %27, %sw.bb7.i ], [ %12, %if.then.i ], [ %12, %sw.bb.i.do.end27.i_crit_edge ]
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %34 = and i32 %enable.0.in.in.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool28.not.i = icmp eq i32 %34, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.77, ptr @.str.76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.74, ptr noundef %drvname, ptr noundef nonnull %cond29.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %cmp30.i = icmp eq i32 %head, 0
  br i1 %cmp30.i, label %land.lhs.true.i, label %do.end27.i.if.end41.i_crit_edge

do.end27.i.if.end41.i_crit_edge:                  ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %do.end27.i
  %pdata31.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 5
  %35 = ptrtoint ptr %pdata31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata31.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp33.i = icmp eq i32 %38, 1
  br i1 %cmp33.i, label %if.then34.i, label %land.lhs.true.i.if.end41.i_crit_edge

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %and35.i = and i32 %ctrl.0.i, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %39 = tail call i32 @llvm.bswap.i32(i32 %and35.i) #13
  %regs39.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 9
  %40 = ptrtoint ptr %regs39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs39.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %41, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %39) #13, !srcloc !316
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %land.lhs.true.i.if.end41.i_crit_edge, %do.end27.i.if.end41.i_crit_edge
  %cond44.i = phi ptr [ @sm501fb_ops_crt, %if.then34.i ], [ @sm501fb_ops_crt, %land.lhs.true.i.if.end41.i_crit_edge ], [ @sm501fb_ops_pnl, %do.end27.i.if.end41.i_crit_edge ]
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7
  %call42.i = tail call i32 @strlcpy(ptr noundef %fix.i, ptr noundef %drvname, i32 noundef 16) #13
  %ops.i = getelementptr inbounds %struct.sm501fb_par, ptr %5, i32 0, i32 4
  %42 = call ptr @memcpy(ptr %ops.i, ptr %cond44.i, i32 92)
  %flags.i = getelementptr inbounds %struct.sm501_platdata_fbsub, ptr %pd.0.i, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and45.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp46.i = icmp eq i32 %and45.i, 0
  br i1 %cmp46.i, label %if.then47.i, label %if.end41.i.if.end49.i_crit_edge

if.end41.i.if.end49.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then47.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %fb_cursor.i = getelementptr inbounds %struct.sm501fb_par, ptr %5, i32 0, i32 4, i32 14
  %45 = ptrtoint ptr %fb_cursor.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %fb_cursor.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %if.end41.i.if.end49.i_crit_edge
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 20
  %46 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ops.i, ptr %fbops.i, align 4
  %flags51.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %flags51.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 13184, ptr %flags51.i, align 4
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %7, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node.i, align 8
  %call53.i = tail call ptr @of_get_property(ptr noundef %53, ptr noundef nonnull @.str.78, ptr noundef null) #13
  %tobool54.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool54.not.i, label %if.end49.i.if.end58.i_crit_edge, label %if.then55.i

if.end49.i.if.end58.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.then55.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %flags51.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags51.i, align 4
  %or57.i = or i32 %55, 1048576
  store i32 %or57.i, ptr %flags51.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then55.i, %if.end49.i.if.end58.i_crit_edge
  %type.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 3
  %56 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %type.i, align 4
  %type_aux.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 4
  %57 = ptrtoint ptr %type_aux.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %type_aux.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 6
  %58 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 7
  %59 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 8
  %60 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %ywrapstep.i, align 4
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 12
  %61 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %accel.i, align 4
  %var.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 12
  %62 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %nonstd.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 13
  %63 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %activate.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 16
  %64 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %accel_flags.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 25
  %65 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %vmode.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 6
  %66 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %edid_data.i = getelementptr inbounds %struct.sm501fb_info, ptr %7, i32 0, i32 13
  %67 = ptrtoint ptr %edid_data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %edid_data.i, align 4
  %tobool69.not.i = icmp eq ptr %68, null
  br i1 %tobool69.not.i, label %if.end58.i.if.end74.i_crit_edge, label %if.then70.i

if.end58.i.if.end74.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

if.then70.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  %monspecs.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %68, ptr noundef %monspecs.i) #13
  %modedb.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %modedb.i, align 4
  %modedb_len.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 6
  %71 = ptrtoint ptr %modedb_len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %modedb_len.i, align 4
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef %70, i32 noundef %72, ptr noundef %modelist.i) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then70.i, %if.end58.i.if.end74.i_crit_edge
  %73 = ptrtoint ptr %pd.0.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pd.0.i, align 4
  %tobool82.not.i = icmp eq ptr %74, null
  br i1 %tobool82.not.i, label %if.else99.i, label %do.end86.i

do.end86.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.80) #17
  %77 = ptrtoint ptr %pd.0.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pd.0.i, align 4
  tail call void @fb_videomode_to_var(ptr noundef %var.i, ptr noundef %78) #13
  %def_bpp.i = getelementptr inbounds %struct.sm501_platdata_fbsub, ptr %pd.0.i, i32 0, i32 1
  %79 = ptrtoint ptr %def_bpp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %def_bpp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool90.not.i = icmp eq i32 %80, 0
  %spec.select.i = select i1 %tobool90.not.i, i32 8, i32 %80
  %81 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select.i, ptr %bits_per_pixel.i, align 4
  %82 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %var.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 2
  %84 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %xres_virtual.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 1
  %85 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %yres.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 3
  %87 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %yres_virtual.i, align 4
  br label %if.end145.i

if.else99.i:                                      ; preds = %if.end74.i
  %88 = ptrtoint ptr %edid_data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %edid_data.i, align 4
  %tobool101.not.i = icmp eq ptr %89, null
  br i1 %tobool101.not.i, label %if.else110.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = load ptr, ptr @fb_mode, align 4
  %modedb105.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 1
  %91 = ptrtoint ptr %modedb105.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %modedb105.i, align 4
  %modedb_len107.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 8, i32 6
  %93 = ptrtoint ptr %modedb_len107.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %modedb_len107.i, align 4
  %95 = load i32, ptr @default_bpp, align 4
  %call108.i = tail call i32 @fb_find_mode(ptr noundef %var.i, ptr noundef %3, ptr noundef %90, ptr noundef %92, i32 noundef %94, ptr noundef nonnull @sm501_default_mode, i32 noundef %95) #13
  %96 = ptrtoint ptr %edid_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %edid_data.i, align 4
  tail call void @kfree(ptr noundef %97) #13
  br label %if.end113.i

if.else110.i:                                     ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #15
  %call112.i = tail call i32 @fb_find_mode(ptr noundef %var.i, ptr noundef %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #13
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else110.i, %if.then102.i
  %ret.0.i = phi i32 [ %call108.i, %if.then102.i ], [ %call112.i, %if.else110.i ]
  %98 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %ret.0.i, label %do.end137.i [
    i32 1, label %do.end117.i
    i32 2, label %do.end122.i
    i32 3, label %do.end127.i
    i32 4, label %do.end132.i
  ]

do.end117.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.83) #17
  br label %if.end145.i

do.end122.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.86) #17
  br label %if.end145.i

do.end127.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.89) #17
  br label %if.end145.i

do.end132.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.92) #17
  br label %if.end145.i

do.end137.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.95, i32 noundef %ret.0.i) #17
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.98) #17
  br label %do.end9

if.end145.i:                                      ; preds = %do.end132.i, %do.end127.i, %do.end122.i, %do.end117.i, %do.end86.i
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 12
  %call146.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %if.end153.i, label %do.end151.i

do.end151.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.101) #17
  br label %do.end9

if.end153.i:                                      ; preds = %if.end145.i
  %call155.i = tail call i32 @fb_set_cmap(ptr noundef %cmap.i, ptr noundef %3) #13
  %113 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fbops.i, align 4
  %fb_check_var.i = getelementptr inbounds %struct.fb_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %fb_check_var.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fb_check_var.i, align 4
  %call158.i = tail call i32 %116(ptr noundef %var.i, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %tobool159.not.i = icmp eq i32 %call158.i, 0
  br i1 %tobool159.not.i, label %if.end153.i.if.end10_crit_edge, label %do.end163.i

if.end153.i.if.end10_crit_edge:                   ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end163.i:                                      ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.104) #17
  br label %if.end10

do.end9:                                          ; preds = %do.end151.i, %do.end137.i
  %retval.0.i = phi i32 [ -12, %do.end151.i ], [ -22, %do.end137.i ]
  %119 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.66, ptr noundef %drvname) #17
  br label %cleanup

if.end10:                                         ; preds = %do.end163.i, %if.end153.i.if.end10_crit_edge
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx, align 4
  %call13 = tail call i32 @register_framebuffer(ptr noundef %122) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %123 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %info, align 4
  br i1 %tobool14.not, label %do.end23, label %do.end18

do.end18:                                         ; preds = %if.end10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.69, ptr noundef %drvname) #17
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %126, null
  br i1 %tobool.not.i, label %do.end18.cleanup_crit_edge, label %if.end.i

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  %cmap.i45 = getelementptr inbounds %struct.fb_info, ptr %126, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i45) #13
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %node = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 1
  %127 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %node, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.72, i32 noundef %128, ptr noundef %fix) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end.i, %do.end18.cleanup_crit_edge, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end9 ], [ 0, %do.end23 ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %do.end18.cleanup_crit_edge ], [ %call13, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501fb_stop(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call = tail call i32 @sm501_unit_power(ptr noundef %3, i32 noundef 2, i32 noundef 0) #13
  %fbmem = getelementptr inbounds %struct.sm501fb_info, ptr %info, i32 0, i32 11
  %4 = ptrtoint ptr %fbmem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbmem, align 4
  tail call void @iounmap(ptr noundef %5) #13
  %fbmem_res = getelementptr inbounds %struct.sm501fb_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %fbmem_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbmem_res, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %add.i) #13
  %regs2d = getelementptr inbounds %struct.sm501fb_info, ptr %info, i32 0, i32 10
  %12 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs2d, align 4
  tail call void @iounmap(ptr noundef %13) #13
  %regs2d_res = getelementptr inbounds %struct.sm501fb_info, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %regs2d_res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs2d_res, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %end.i18 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %end.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i18, align 4
  %sub.i19 = sub i32 1, %17
  %add.i20 = add i32 %sub.i19, %19
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %add.i20) #13
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %info, i32 0, i32 9
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %21) #13
  %regs_res = getelementptr inbounds %struct.sm501fb_info, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %regs_res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_res, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %end.i21 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %end.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i21, align 4
  %sub.i22 = sub i32 1, %25
  %add.i23 = add i32 %sub.i22, %27
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %25, i32 noundef %add.i23) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm501_unit_power(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501_init_cursor(ptr noundef readonly %fbi, i32 noundef %reg_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fbi, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %reg_base
  %cursor_regs = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %cursor_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %cursor_regs, align 4
  %cursor = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 2
  %fbmem_len.i = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %fbmem_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fbmem_len.i, align 4
  %sub.i = add i32 %8, -1024
  store i32 %sub.i, ptr %fbmem_len.i, align 4
  %9 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %cursor, align 4
  %sm_addr49.i = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %sm_addr49.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i, ptr %sm_addr49.i, align 4
  %fbmem.i = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %fbmem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbmem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %sub.i
  %k_addr50.i = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %k_addr50.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %k_addr50.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_alloc_mem.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_init_cursor, %if.then54.i)) #13
          to label %do.body [label %if.then54.i], !srcloc !326

if.then54.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %sm_addr49.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sm_addr49.i, align 4
  %18 = ptrtoint ptr %k_addr50.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %k_addr50.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_alloc_mem.__UNIQUE_ID_ddebug303, ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %17, ptr noundef %19, i32 noundef 1, i32 noundef 1024) #13
  br label %do.body

do.body:                                          ; preds = %if.then54.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !327
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %sm_addr49.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sm_addr49.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %cursor_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cursor_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %cursor_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cursor_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %cursor_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cursor_regs, align 4
  %add.ptr18 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %cursor_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cursor_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #13, !srcloc !316
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm501_alloc_mem(ptr nocapture noundef %inf, ptr nocapture noundef %mem, i32 noundef %why, i32 noundef %size, i32 noundef %smem_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %why to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %why, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fbmem_len = getelementptr inbounds %struct.sm501fb_info, ptr %inf, i32 0, i32 12
  %1 = ptrtoint ptr %fbmem_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fbmem_len, align 4
  %sub = sub i32 %2, %size
  store i32 %sub, ptr %fbmem_len, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %fbmem_len3 = getelementptr inbounds %struct.sm501fb_info, ptr %inf, i32 0, i32 12
  %3 = ptrtoint ptr %fbmem_len3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fbmem_len3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp = icmp ult i32 %4, %size
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %fb = getelementptr inbounds %struct.sm501fb_info, ptr %inf, i32 0, i32 1
  %5 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp6.not = icmp eq i32 %4, %size
  %sub5 = sub i32 %4, %size
  %and = and i32 %sub5, -4096
  %ptr.0 = select i1 %cmp6.not, i32 0, i32 %and
  %tobool.not = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_cmp4(i32 %ptr.0, i32 %smem_len)
  %cmp9 = icmp ult i32 %ptr.0, %smem_len
  %or.cond = select i1 %tobool.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %arrayidx14 = getelementptr %struct.sm501fb_info, ptr %inf, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  %par17 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 30
  %9 = ptrtoint ptr %par17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par17, align 4
  %k_addr = getelementptr inbounds %struct.sm501fb_par, ptr %10, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %k_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %k_addr, align 4
  %tobool18.not = icmp eq ptr %12, null
  %sm_addr = getelementptr inbounds %struct.sm501fb_par, ptr %10, i32 0, i32 3, i32 1
  %fbmem_len20 = getelementptr inbounds %struct.sm501fb_info, ptr %inf, i32 0, i32 12
  %cond.in = select i1 %tobool18.not, ptr %fbmem_len20, ptr %sm_addr
  br label %if.end22

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  %fbmem_len21 = getelementptr inbounds %struct.sm501fb_info, ptr %inf, i32 0, i32 12
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %end.0.in = phi ptr [ %cond.in, %if.then16 ], [ %fbmem_len21, %if.else ]
  %13 = ptrtoint ptr %end.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %end.0 = load i32, ptr %end.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %size)
  %cmp23 = icmp ult i32 %end.0, %size
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end22.sw.epilog_crit_edge

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end22.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb
  %ptr.1 = phi i32 [ 0, %if.end22.sw.epilog_crit_edge ], [ %ptr.0, %if.end.sw.epilog_crit_edge ], [ %sub, %sw.bb ]
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %mem, align 4
  %sm_addr49 = getelementptr inbounds %struct.sm501_mem, ptr %mem, i32 0, i32 1
  %15 = ptrtoint ptr %sm_addr49 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ptr.1, ptr %sm_addr49, align 4
  %fbmem = getelementptr inbounds %struct.sm501fb_info, ptr %inf, i32 0, i32 11
  %16 = ptrtoint ptr %fbmem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fbmem, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %ptr.1
  %k_addr50 = getelementptr inbounds %struct.sm501_mem, ptr %mem, i32 0, i32 2
  %18 = ptrtoint ptr %k_addr50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %k_addr50, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_alloc_mem.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_alloc_mem, %if.then54)) #13
          to label %cleanup [label %if.then54], !srcloc !326

if.then54:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %inf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inf, align 4
  %21 = ptrtoint ptr %sm_addr49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sm_addr49, align 4
  %23 = ptrtoint ptr %k_addr50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %k_addr50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_alloc_mem.__UNIQUE_ID_ddebug303, ptr noundef %20, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %22, ptr noundef %24, i32 noundef %why, i32 noundef %size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %sw.epilog, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sw.bb2.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm501fb_check_var_crt(ptr noundef %var, ptr nocapture noundef readonly %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sm501fb_check_var(ptr noundef %var, ptr noundef %info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_set_par_crt(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %var3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_set_par_crt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_crt, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !326

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_set_par_crt.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, ptr noundef %info) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call7 = tail call i32 @sm501_misc_control(ptr noundef %9, i32 noundef 0, i32 noundef 4096) #13
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !332
  %13 = and i32 %12, -121241600
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %15 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync, align 4
  %and11 = shl i32 %16, 12
  %17 = and i32 %and11, 4096
  %18 = or i32 %17, %14
  %19 = and i32 %and11, 8192
  %20 = or i32 %18, %19
  %21 = xor i32 %20, 12288
  %and20 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %screen = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %screen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %screen, align 4
  %sm_addr49.i = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %sm_addr49.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sm_addr49.i, align 4
  %fbmem.i = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %fbmem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fbmem.i, align 4
  %k_addr50.i = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %k_addr50.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %k_addr50.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_alloc_mem.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_crt, %if.then54.i)) #13
          to label %do.body49 [label %if.then54.i], !srcloc !326

if.then54.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %29 = ptrtoint ptr %sm_addr49.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm_addr49.i, align 4
  %31 = ptrtoint ptr %k_addr50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %k_addr50.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_alloc_mem.__UNIQUE_ID_ddebug303, ptr noundef %28, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %30, ptr noundef %32, i32 noundef 4, i32 noundef 0) #13
  br label %do.body49

if.end24:                                         ; preds = %do.end
  %call25 = tail call fastcc i32 @sm501fb_set_par_common(ptr noundef %info, ptr noundef %var3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.108) #17
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %35 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %par1, align 4
  %info2.i = getelementptr inbounds %struct.sm501fb_par, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info2.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %39 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bits_per_pixel.i, align 4
  %div29.i = lshr i32 %40, 3
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %41 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xoffset.i, align 4
  %mul.i = mul i32 %42, %div29.i
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %38, i32 0, i32 9
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 512
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  %46 = and i32 %45, 268435455
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #13
  %and5.i = and i32 %mul.i, 15
  %div6.i = udiv i32 %and5.i, %div29.i
  %shl.i = shl nuw nsw i32 %div6.i, 4
  %or.i = or i32 %shl.i, %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  tail call void @arm_heavy_mb() #13
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %50, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %48) #13, !srcloc !316
  %sm_addr.i113 = getelementptr inbounds %struct.sm501fb_par, ptr %36, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %sm_addr.i113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sm_addr.i113, align 4
  %add.i = add i32 %52, %mul.i
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %53 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %yoffset.i, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %55 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %line_length.i, align 4
  %mul9.i = mul i32 %56, %54
  %add10.i = add i32 %add.i, %mul9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  tail call void @arm_heavy_mb() #13
  %or14.i = or i32 %add10.i, -2147483648
  %57 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #13
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %59, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %57) #13, !srcloc !316
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  tail call fastcc void @sm501fb_set_par_geometry(ptr noundef %info, ptr noundef %var3)
  %63 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bits_per_pixel.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %64, label %do.body40 [
    i32 8, label %if.end32.sw.epilog_crit_edge
    i32 16, label %if.end32.do.body.i_crit_edge
    i32 32, label %if.end32.do.body.i125_crit_edge
  ]

if.end32.do.body.i125_crit_edge:                  ; preds = %if.end32
  br label %do.body.i125

if.end32.do.body.i_crit_edge:                     ; preds = %if.end32
  br label %do.body.i

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end32.do.body.i_crit_edge
  %offset.07.i = phi i32 [ %add2.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end32.do.body.i_crit_edge ]
  %value.06.i = phi i32 [ %add.i116, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end32.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @arm_heavy_mb() #13
  %66 = tail call i32 @llvm.bswap.i32(i32 %value.06.i) #13
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr.i115 = getelementptr i8, ptr %68, i32 3072
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i115, i32 %offset.07.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %66) #13, !srcloc !316
  %add.i116 = add nuw nsw i32 %value.06.i, 65793
  %add2.i = add nuw nsw i32 %offset.07.i, 4
  %cmp.i = icmp ult i32 %offset.07.i, 1020
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.sw.epilog_crit_edge

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i125:                                     ; preds = %do.body.i125.do.body.i125_crit_edge, %if.end32.do.body.i125_crit_edge
  %offset.07.i118 = phi i32 [ %add2.i123, %do.body.i125.do.body.i125_crit_edge ], [ 0, %if.end32.do.body.i125_crit_edge ]
  %value.06.i119 = phi i32 [ %add.i122, %do.body.i125.do.body.i125_crit_edge ], [ 0, %if.end32.do.body.i125_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @arm_heavy_mb() #13
  %69 = tail call i32 @llvm.bswap.i32(i32 %value.06.i119) #13
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr.i120 = getelementptr i8, ptr %71, i32 3072
  %add.ptr1.i121 = getelementptr i8, ptr %add.ptr.i120, i32 %offset.07.i118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i121, i32 %69) #13, !srcloc !316
  %add.i122 = add nuw nsw i32 %value.06.i119, 65793
  %add2.i123 = add nuw nsw i32 %offset.07.i118, 4
  %cmp.i124 = icmp ult i32 %offset.07.i118, 1020
  br i1 %cmp.i124, label %do.body.i125.do.body.i125_crit_edge, label %do.body.i125.sw.epilog_crit_edge

do.body.i125.sw.epilog_crit_edge:                 ; preds = %do.body.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body.i125.do.body.i125_crit_edge:              ; preds = %do.body.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i125

do.body40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/sm501fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !337
  unreachable

sw.epilog:                                        ; preds = %do.body.i125.sw.epilog_crit_edge, %do.body.i.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge
  %.sink = phi i32 [ 65536, %if.end32.sw.epilog_crit_edge ], [ 65537, %do.body.i.sw.epilog_crit_edge ], [ 65538, %do.body.i125.sw.epilog_crit_edge ]
  %or39 = or i32 %21, %.sink
  %or48 = or i32 %or39, 772
  br label %do.body49

do.body49:                                        ; preds = %sw.epilog, %if.then54.i, %if.then22
  %control.3 = phi i32 [ %or48, %sw.epilog ], [ %21, %if.then22 ], [ %21, %if.then54.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_set_par_crt.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_crt, %if.then61)) #13
          to label %do.body66 [label %if.then61], !srcloc !326

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_set_par_crt.__UNIQUE_ID_ddebug308, ptr noundef %73, ptr noundef nonnull @.str.109, i32 noundef %control.3) #13
  br label %do.body66

do.body66:                                        ; preds = %if.then61, %do.body49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @arm_heavy_mb() #13
  %74 = tail call i32 @llvm.bswap.i32(i32 %control.3)
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %add.ptr70 = getelementptr i8, ptr %76, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %74) #13, !srcloc !316
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %do.body66, %do.end30
  %retval.0 = phi i32 [ 0, %do.body66 ], [ %call25, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %head = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %. = select i1 %cmp, i32 3072, i32 1024
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %visual, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp4 = icmp ult i32 %regno, 16
  br i1 %cmp4, label %if.then5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %red6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %12
  %shr.i = lshr i32 %and.i, %sub.i
  %13 = ptrtoint ptr %red6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %red6, align 4
  %shl.i = shl i32 %shr.i, %14
  %green8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i47 = and i32 %green, 65535
  %length.i48 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %15 = ptrtoint ptr %length.i48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i48, align 4
  %sub.i49 = sub i32 16, %16
  %shr.i50 = lshr i32 %and.i47, %sub.i49
  %17 = ptrtoint ptr %green8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %green8, align 4
  %shl.i51 = shl i32 %shr.i50, %18
  %or = or i32 %shl.i51, %shl.i
  %blue11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i52 = and i32 %blue, 65535
  %length.i53 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %19 = ptrtoint ptr %length.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i53, align 4
  %sub.i54 = sub i32 16, %20
  %shr.i55 = lshr i32 %and.i52, %sub.i54
  %21 = ptrtoint ptr %blue11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blue11, align 4
  %shl.i56 = shl i32 %shr.i55, %22
  %or13 = or i32 %or, %shl.i56
  %arrayidx = getelementptr i32, ptr %1, i32 %regno
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or13, ptr %arrayidx, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp16 = icmp ult i32 %regno, 256
  br i1 %cmp16, label %if.then17, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  %24 = getelementptr i8, ptr %5, i32 %.
  %25 = shl i32 %red, 8
  %shl = and i32 %25, -65536
  %shr18 = and i32 %green, -256
  %or20 = or i32 %shl, %shr18
  %shr21 = lshr i32 %blue, 8
  %or22 = or i32 %or20, %shr21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  tail call void @arm_heavy_mb() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %mul = shl nuw nsw i32 %regno, 2
  %add.ptr23 = getelementptr i8, ptr %24, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %26) #13, !srcloc !316
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sw.bb15.cleanup_crit_edge, %if.then5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %sw.bb15.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_blank_crt(i32 noundef %blank_mode, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_blank_crt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_blank_crt, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !326

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_blank_crt.__UNIQUE_ID_ddebug311, ptr noundef %5, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115, i32 noundef %blank_mode, ptr noundef %info) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 512
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !340
  %10 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %blank_mode, label %do.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %do.end.sw.bb10_crit_edge
    i32 0, label %sw.bb11
  ]

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %9, -5
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call9 = tail call i32 @sm501_misc_control(ptr noundef %14, i32 noundef 4096, i32 noundef 0) #13
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb, %do.end.sw.bb10_crit_edge
  %ctrl.0 = phi i32 [ %9, %do.end.sw.bb10_crit_edge ], [ %and, %sw.bb ]
  %or = or i32 %ctrl.0, 1024
  br label %do.body18

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %and12 = and i32 %9, -1029
  %or13 = or i32 %and12, 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %parent15 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent15, align 8
  %call16 = tail call i32 @sm501_misc_control(ptr noundef %18, i32 noundef 0, i32 noundef 4096) #13
  br label %do.body18

do.body18:                                        ; preds = %sw.bb11, %sw.bb10
  %ctrl.1 = phi i32 [ %or13, %sw.bb11 ], [ %or, %sw.bb10 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %19) #13, !srcloc !316
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body18 ], [ 1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_pan_crt(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %div29 = lshr i32 %5, 3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  %mul = mul i32 %7, %div29
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  %11 = and i32 %10, 268435455
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %and5 = and i32 %mul, 15
  %div6 = udiv i32 %and5, %div29
  %shl = shl nuw nsw i32 %div6, 4
  %or = or i32 %shl, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %13) #13, !srcloc !316
  %sm_addr = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sm_addr, align 4
  %add = add i32 %17, %mul
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %18 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line_length, align 4
  %mul9 = mul i32 %21, %19
  %add10 = add i32 %add, %mul9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  tail call void @arm_heavy_mb() #13
  %or14 = or i32 %add10, -2147483648
  %22 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %22) #13, !srcloc !316
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm501fb_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %width3 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %4 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width3, align 4
  %height4 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %6 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height4, align 4
  %8 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rect, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not = icmp ugt i32 %11, %9
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %12 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dy, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6.not = icmp ult i32 %13, %15
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp10.not = icmp ult i32 %add, %11
  %16 = xor i32 %9, -1
  %sub15 = add i32 %11, %16
  %width.0 = select i1 %cmp10.not, i32 %5, i32 %sub15
  %add18 = add i32 %13, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %15)
  %cmp21.not = icmp ult i32 %add18, %15
  %17 = xor i32 %13, -1
  %sub27 = add i32 %15, %17
  %height.0 = select i1 %cmp21.not, i32 %7, i32 %sub27
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  br label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %count.012.i, -1
  %cmp.i = icmp ugt i32 %count.012.i, 1
  br i1 %cmp.i, label %while.cond.i.land.rhs.i_crit_edge, label %sm501fb_sync.exit

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %if.end
  %count.012.i = phi i32 [ 1000000, %if.end ], [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ]
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  %21 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp4.not.i = icmp eq i32 %21, 0
  br i1 %cmp4.not.i, label %do.body, label %while.cond.i

sm501fb_sync.exit:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.123) #17
  br label %cleanup

do.body:                                          ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !343
  tail call void @arm_heavy_mb() #13
  %sm_addr = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sm_addr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %regs2d = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs2d, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !344
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm_addr, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs2d, align 4
  %add.ptr37 = getelementptr i8, ptr %33, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %31) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !345
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %var, align 4
  %shl = shl i32 %35, 16
  %or = or i32 %shl, %35
  %36 = tail call i32 @llvm.bswap.i32(i32 %or)
  %37 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs2d, align 4
  %add.ptr45 = getelementptr i8, ptr %38, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %36) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !346
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xres_virtual, align 4
  %shl51 = shl i32 %40, 16
  %or54 = or i32 %shl51, %40
  %41 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %42 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs2d, align 4
  %add.ptr56 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %41) #13, !srcloc !316
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %44 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bits_per_pixel, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %45, label %do.body.do.body75_crit_edge [
    i32 8, label %do.body58
    i32 16, label %do.body64
    i32 32, label %do.body70
  ]

do.body.do.body75_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body75

do.body58:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs2d, align 4
  %add.ptr62 = getelementptr i8, ptr %48, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #13, !srcloc !316
  br label %do.body75

do.body64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs2d, align 4
  %add.ptr68 = getelementptr i8, ptr %50, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 4096) #13, !srcloc !316
  br label %do.body75

do.body70:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs2d, align 4
  %add.ptr74 = getelementptr i8, ptr %52, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 8192) #13, !srcloc !316
  br label %do.body75

do.body75:                                        ; preds = %do.body70, %do.body64, %do.body58, %do.body.do.body75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs2d, align 4
  %add.ptr79 = getelementptr i8, ptr %54, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 -1) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs2d, align 4
  %add.ptr84 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 -1) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !352
  tail call void @arm_heavy_mb() #13
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %57 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %color, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs2d, align 4
  %add.ptr89 = getelementptr i8, ptr %61, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %59) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !353
  tail call void @arm_heavy_mb() #13
  %62 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rect, align 4
  %shl94 = shl i32 %63, 16
  %64 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dy, align 4
  %or96 = or i32 %shl94, %65
  %66 = tail call i32 @llvm.bswap.i32(i32 %or96)
  %67 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs2d, align 4
  %add.ptr98 = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %66) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !354
  tail call void @arm_heavy_mb() #13
  %shl102 = shl i32 %width.0, 16
  %or103 = or i32 %height.0, %shl102
  %69 = tail call i32 @llvm.bswap.i32(i32 %or103)
  %70 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs2d, align 4
  %add.ptr105 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %69) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !355
  tail call void @arm_heavy_mb() #13
  %72 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs2d, align 4
  %add.ptr110 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 -872414848) #13, !srcloc !316
  br label %cleanup

cleanup:                                          ; preds = %do.body75, %sm501fb_sync.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm501fb_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %width3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %4 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width3, align 4
  %height4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %6 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height4, align 4
  %sx5 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %8 = ptrtoint ptr %sx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sx5, align 4
  %sy6 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %10 = ptrtoint ptr %sy6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sy6, align 4
  %12 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %area, align 4
  %dy8 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %14 = ptrtoint ptr %dy8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dy8, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp.not = icmp ugt i32 %17, %9
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %19)
  %cmp10.not = icmp ult i32 %11, %19
  br i1 %cmp10.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp31.not = icmp ugt i32 %17, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp35.not = icmp ult i32 %15, %19
  %or.cond236 = select i1 %cmp31.not, i1 %cmp35.not, i1 false
  br i1 %or.cond236, label %if.end37, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %add19 = add i32 %11, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %19)
  %cmp22.not = icmp ult i32 %add19, %19
  %20 = xor i32 %11, -1
  %sub27 = add i32 %19, %20
  %height.0 = select i1 %cmp22.not, i32 %7, i32 %sub27
  %add = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp13.not = icmp ult i32 %add, %17
  %21 = xor i32 %9, -1
  %sub17 = add i32 %17, %21
  %width.0 = select i1 %cmp13.not, i32 %5, i32 %sub17
  %add38 = add i32 %width.0, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %17)
  %cmp41.not = icmp ult i32 %add38, %17
  %22 = xor i32 %13, -1
  %sub46 = add i32 %17, %22
  %width.1 = select i1 %cmp41.not, i32 %width.0, i32 %sub46
  %add48 = add i32 %height.0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add48, i32 %19)
  %cmp51.not = icmp ult i32 %add48, %19
  %23 = xor i32 %15, -1
  %sub56 = add i32 %19, %23
  %height.1 = select i1 %cmp51.not, i32 %height.0, i32 %sub56
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp58 = icmp slt i32 %9, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp60 = icmp slt i32 %11, %15
  %or.cond = select i1 %cmp58, i1 true, i1 %cmp60
  br i1 %or.cond, label %if.then61, label %if.end37.if.end70_crit_edge

if.end37.if.end70_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then61:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %sub62 = add i32 %width.1, -1
  %add63 = add i32 %sub62, %9
  %add65 = add i32 %sub62, %13
  %sub66 = add i32 %height.1, -1
  %add67 = add i32 %sub66, %11
  %add69 = add i32 %sub66, %15
  br label %if.end70

if.end70:                                         ; preds = %if.then61, %if.end37.if.end70_crit_edge
  %sx.0 = phi i32 [ %add63, %if.then61 ], [ %9, %if.end37.if.end70_crit_edge ]
  %sy.0 = phi i32 [ %add67, %if.then61 ], [ %11, %if.end37.if.end70_crit_edge ]
  %dx.0 = phi i32 [ %add65, %if.then61 ], [ %13, %if.end37.if.end70_crit_edge ]
  %dy.0 = phi i32 [ %add69, %if.then61 ], [ %15, %if.end37.if.end70_crit_edge ]
  %rtl.0 = phi i32 [ -2013265716, %if.then61 ], [ -2147483444, %if.end37.if.end70_crit_edge ]
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  br label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %count.012.i, -1
  %cmp.i = icmp ugt i32 %count.012.i, 1
  br i1 %cmp.i, label %while.cond.i.land.rhs.i_crit_edge, label %sm501fb_sync.exit

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %if.end70
  %count.012.i = phi i32 [ 1000000, %if.end70 ], [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ]
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  %27 = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.not.i = icmp eq i32 %27, 0
  br i1 %cmp4.not.i, label %do.body, label %while.cond.i

sm501fb_sync.exit:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.123) #17
  br label %cleanup

do.body:                                          ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !356
  tail call void @arm_heavy_mb() #13
  %sm_addr = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sm_addr, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %regs2d = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs2d, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !357
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sm_addr, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs2d, align 4
  %add.ptr79 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %37) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %var, align 4
  %shl = shl i32 %41, 16
  %or = or i32 %shl, %41
  %42 = tail call i32 @llvm.bswap.i32(i32 %or)
  %43 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs2d, align 4
  %add.ptr87 = getelementptr i8, ptr %44, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %42) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xres_virtual, align 4
  %shl93 = shl i32 %46, 16
  %or96 = or i32 %shl93, %46
  %47 = tail call i32 @llvm.bswap.i32(i32 %or96)
  %48 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs2d, align 4
  %add.ptr98 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %47) #13, !srcloc !316
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %50 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bits_per_pixel, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %51, label %do.body.do.body117_crit_edge [
    i32 8, label %do.body100
    i32 16, label %do.body106
    i32 32, label %do.body112
  ]

do.body.do.body117_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body117

do.body100:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs2d, align 4
  %add.ptr104 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 0) #13, !srcloc !316
  br label %do.body117

do.body106:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs2d, align 4
  %add.ptr110 = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 4096) #13, !srcloc !316
  br label %do.body117

do.body112:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !362
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs2d, align 4
  %add.ptr116 = getelementptr i8, ptr %58, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 8192) #13, !srcloc !316
  br label %do.body117

do.body117:                                       ; preds = %do.body112, %do.body106, %do.body100, %do.body.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !363
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs2d, align 4
  %add.ptr121 = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 -1) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %61 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs2d, align 4
  %add.ptr126 = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 -1) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !365
  tail call void @arm_heavy_mb() #13
  %shl130 = shl i32 %sx.0, 16
  %or131 = or i32 %shl130, %sy.0
  %63 = tail call i32 @llvm.bswap.i32(i32 %or131)
  %64 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs2d, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  tail call void @arm_heavy_mb() #13
  %shl137 = shl i32 %dx.0, 16
  %or138 = or i32 %shl137, %dy.0
  %66 = tail call i32 @llvm.bswap.i32(i32 %or138)
  %67 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs2d, align 4
  %add.ptr140 = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %66) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  tail call void @arm_heavy_mb() #13
  %shl144 = shl i32 %width.1, 16
  %or145 = or i32 %height.1, %shl144
  %69 = tail call i32 @llvm.bswap.i32(i32 %or145)
  %70 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs2d, align 4
  %add.ptr147 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %69) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %72 = tail call i32 @llvm.bswap.i32(i32 %rtl.0)
  %73 = ptrtoint ptr %regs2d to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs2d, align 4
  %add.ptr153 = getelementptr i8, ptr %74, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %72) #13, !srcloc !316
  br label %cleanup

cleanup:                                          ; preds = %do.body117, %sm501fb_sync.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_cursor(ptr noundef %info, ptr noundef %cursor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_cursor.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_cursor, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !326

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_cursor.__UNIQUE_ID_ddebug312, ptr noundef %7, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, ptr noundef %info, ptr noundef %cursor) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %head = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %base.0.v = select i1 %cmp, i32 560, i32 240
  %base.0 = getelementptr i8, ptr %5, i32 %base.0.v
  %image = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %width = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp8 = icmp ugt i32 %11, 64
  br i1 %cmp8, label %do.end.cleanup252_crit_edge, label %if.end10

do.end.cleanup252_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

if.end10:                                         ; preds = %do.end
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp12 = icmp ugt i32 %13, 64
  br i1 %cmp12, label %if.end10.cleanup252_crit_edge, label %if.end14

if.end10.cleanup252_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

if.end14:                                         ; preds = %if.end10
  %depth = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp16 = icmp ugt i8 %15, 1
  br i1 %cmp16, label %if.end14.cleanup252_crit_edge, label %if.end19

if.end14.cleanup252_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

if.end19:                                         ; preds = %if.end14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base.0) #13, !srcloc !317
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !369
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool24.not = icmp eq i16 %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool24.not, label %do.body31, label %do.body26

do.body26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %17, -2147483648
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base.0, i32 %20) #13, !srcloc !316
  br label %if.end35

do.body31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %17, 2147483647
  %21 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base.0, i32 %21) #13, !srcloc !316
  br label %if.end35

if.end35:                                         ; preds = %do.body31, %do.body26
  %22 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cursor, align 4
  %24 = and i16 %23, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not = icmp eq i16 %24, 0
  br i1 %tobool38.not, label %if.end35.if.end71_crit_edge, label %if.then39

if.end35.if.end71_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then39:                                        ; preds = %if.end35
  %25 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %image, align 4
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %26)
  %cmp42 = icmp ugt i32 %26, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %28)
  %cmp44 = icmp ugt i32 %28, 2047
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp44
  br i1 %or.cond, label %if.then39.cleanup252_crit_edge, label %do.body48

if.then39.cleanup252_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

do.body48:                                        ; preds = %if.then39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_cursor.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_cursor, %if.then60)) #13
          to label %do.body65 [label %if.then60], !srcloc !326

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_cursor.__UNIQUE_ID_ddebug313, ptr noundef %30, ptr noundef nonnull @.str.119, i32 noundef %26, i32 noundef %28) #13
  br label %do.body65

do.body65:                                        ; preds = %if.then60, %do.body48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !370
  tail call void @arm_heavy_mb() #13
  %shl = shl nuw nsw i32 %28, 16
  %or68 = or i32 %shl, %26
  %31 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %add.ptr69 = getelementptr i8, ptr %base.0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %31) #13, !srcloc !316
  br label %if.end71

if.end71:                                         ; preds = %do.body65, %if.end35.if.end71_crit_edge
  %32 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cursor, align 4
  %34 = and i16 %33, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool75.not = icmp eq i16 %34, 0
  br i1 %tobool75.not, label %if.end71.if.end155_crit_edge, label %if.then76

if.end71.if.end155_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then76:                                        ; preds = %if.end71
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bg_color, align 4
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %37 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fg_color, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_cursor.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_cursor, %if.then91)) #13
          to label %do.end95 [label %if.then91], !srcloc !326

if.then91:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_cursor.__UNIQUE_ID_ddebug314, ptr noundef %40, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.117, i32 noundef %36, i32 noundef %38) #13
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %if.then76
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %41 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %red, align 4
  %arrayidx = getelementptr i16, ptr %42, i32 %36
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx, align 2
  %45 = shl i16 %44, 8
  %46 = and i16 %45, -2048
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %47 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %green, align 4
  %arrayidx100 = getelementptr i16, ptr %48, i32 %36
  %49 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx100, align 2
  %51 = shl i16 %50, 3
  %52 = and i16 %51, 2016
  %or104329 = or i16 %52, %46
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %53 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %blue, align 4
  %arrayidx106 = getelementptr i16, ptr %54, i32 %36
  %55 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx106, align 2
  %57 = lshr i16 %56, 3
  %58 = and i16 %57, 31
  %or109330 = or i16 %or104329, %58
  %or109 = zext i16 %or109330 to i32
  %arrayidx112 = getelementptr i16, ptr %42, i32 %38
  %59 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx112, align 2
  %61 = shl i16 %60, 8
  %62 = and i16 %61, -2048
  %arrayidx118 = getelementptr i16, ptr %48, i32 %38
  %63 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx118, align 2
  %65 = shl i16 %64, 3
  %66 = and i16 %65, 2016
  %or122331 = or i16 %66, %62
  %arrayidx125 = getelementptr i16, ptr %54, i32 %38
  %67 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx125, align 2
  %69 = lshr i16 %68, 3
  %70 = and i16 %69, 31
  %or129332 = or i16 %or122331, %70
  %or129 = zext i16 %or129332 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_cursor.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_cursor, %if.then142)) #13
          to label %do.body147 [label %if.then142], !srcloc !326

if.then142:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_cursor.__UNIQUE_ID_ddebug315, ptr noundef %72, ptr noundef nonnull @.str.121, i32 noundef %or129, i32 noundef %or109) #13
  br label %do.body147

do.body147:                                       ; preds = %if.then142, %do.end95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !371
  tail call void @arm_heavy_mb() #13
  %73 = tail call i32 @llvm.bswap.i32(i32 %or109)
  %add.ptr150 = getelementptr i8, ptr %base.0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %73) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  tail call void @arm_heavy_mb() #13
  %74 = tail call i32 @llvm.bswap.i32(i32 %or129)
  %add.ptr154 = getelementptr i8, ptr %base.0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %74) #13, !srcloc !316
  br label %if.end155

if.end155:                                        ; preds = %do.body147, %if.end71.if.end155_crit_edge
  %75 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %cursor, align 4
  %77 = and i16 %76, 49
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %if.end155.if.end251_crit_edge, label %if.then165

if.end155.if.end251_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end251

if.then165:                                       ; preds = %if.end155
  %data = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %81 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mask, align 4
  %k_addr = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %k_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %k_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_cursor.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_cursor, %if.then182)) #13
          to label %do.body193 [label %if.then182], !srcloc !326

if.then182:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %87 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %width, align 4
  %89 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_cursor.__UNIQUE_ID_ddebug316, ptr noundef %86, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.117, i32 noundef %88, i32 noundef %90) #13
  br label %do.body193

for.cond197.preheader:                            ; preds = %do.body193
  %91 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp200362.not = icmp eq i32 %92, 0
  br i1 %cmp200362.not, label %for.cond197.preheader.if.end251_crit_edge, label %for.cond197.preheader.for.cond203.preheader_crit_edge

for.cond197.preheader.for.cond203.preheader_crit_edge: ; preds = %for.cond197.preheader
  br label %for.cond203.preheader

for.cond197.preheader.if.end251_crit_edge:        ; preds = %for.cond197.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end251

do.body193:                                       ; preds = %do.body193.do.body193_crit_edge, %if.then182, %if.then165
  %op.0351 = phi i32 [ %add, %do.body193.do.body193_crit_edge ], [ 0, %if.then165 ], [ 0, %if.then182 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !373
  tail call void @arm_heavy_mb() #13
  %add.ptr196 = getelementptr i8, ptr %84, i32 %op.0351
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 0) #13, !srcloc !316
  %add = add nuw nsw i32 %op.0351, 4
  %cmp191 = icmp ult i32 %op.0351, 1020
  br i1 %cmp191, label %do.body193.do.body193_crit_edge, label %for.cond197.preheader

do.body193.do.body193_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body193

for.cond203.preheader:                            ; preds = %for.end246.for.cond203.preheader_crit_edge, %for.cond197.preheader.for.cond203.preheader_crit_edge
  %dmsk.0368 = phi i8 [ %dmsk.1.lcssa, %for.end246.for.cond203.preheader_crit_edge ], [ 0, %for.cond197.preheader.for.cond203.preheader_crit_edge ]
  %dcol.0367 = phi i8 [ %dcol.1.lcssa, %for.end246.for.cond203.preheader_crit_edge ], [ 0, %for.cond197.preheader.for.cond203.preheader_crit_edge ]
  %dst.0366 = phi ptr [ %add.ptr247, %for.end246.for.cond203.preheader_crit_edge ], [ %84, %for.cond197.preheader.for.cond203.preheader_crit_edge ]
  %pmsk.0365 = phi ptr [ %pmsk.1.lcssa, %for.end246.for.cond203.preheader_crit_edge ], [ %82, %for.cond197.preheader.for.cond203.preheader_crit_edge ]
  %pcol.0364 = phi ptr [ %pcol.1.lcssa, %for.end246.for.cond203.preheader_crit_edge ], [ %80, %for.cond197.preheader.for.cond203.preheader_crit_edge ]
  %y167.0363 = phi i32 [ %inc249, %for.end246.for.cond203.preheader_crit_edge ], [ 0, %for.cond197.preheader.for.cond203.preheader_crit_edge ]
  %93 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp206352.not = icmp eq i32 %94, 0
  br i1 %cmp206352.not, label %for.cond203.preheader.for.end246_crit_edge, label %for.cond203.preheader.for.body208_crit_edge

for.cond203.preheader.for.body208_crit_edge:      ; preds = %for.cond203.preheader
  br label %for.body208

for.cond203.preheader.for.end246_crit_edge:       ; preds = %for.cond203.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end246

for.body208:                                      ; preds = %for.inc245.for.body208_crit_edge, %for.cond203.preheader.for.body208_crit_edge
  %dmsk.1358 = phi i8 [ %dmsk.2, %for.inc245.for.body208_crit_edge ], [ %dmsk.0368, %for.cond203.preheader.for.body208_crit_edge ]
  %dcol.1357 = phi i8 [ %dcol.2, %for.inc245.for.body208_crit_edge ], [ %dcol.0367, %for.cond203.preheader.for.body208_crit_edge ]
  %pmsk.1356 = phi ptr [ %pmsk.2, %for.inc245.for.body208_crit_edge ], [ %pmsk.0365, %for.cond203.preheader.for.body208_crit_edge ]
  %pcol.1355 = phi ptr [ %pcol.2, %for.inc245.for.body208_crit_edge ], [ %pcol.0364, %for.cond203.preheader.for.body208_crit_edge ]
  %x166.0353 = phi i32 [ %inc, %for.inc245.for.body208_crit_edge ], [ 0, %for.cond203.preheader.for.body208_crit_edge ]
  %95 = and i32 %x166.0353, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp209 = icmp eq i32 %95, 0
  br i1 %cmp209, label %if.then211, label %if.else213

if.then211:                                       ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %pcol.1355, i32 1
  %96 = ptrtoint ptr %pcol.1355 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pcol.1355, align 1
  %incdec.ptr212 = getelementptr i8, ptr %pmsk.1356, i32 1
  %98 = ptrtoint ptr %pmsk.1356 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %pmsk.1356, align 1
  br label %if.end220

if.else213:                                       ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #15
  %100 = lshr i8 %dcol.1357, 1
  %101 = lshr i8 %dmsk.1358, 1
  br label %if.end220

if.end220:                                        ; preds = %if.else213, %if.then211
  %pcol.2 = phi ptr [ %incdec.ptr, %if.then211 ], [ %pcol.1355, %if.else213 ]
  %pmsk.2 = phi ptr [ %incdec.ptr212, %if.then211 ], [ %pmsk.1356, %if.else213 ]
  %dcol.2 = phi i8 [ %97, %if.then211 ], [ %100, %if.else213 ]
  %dmsk.2 = phi i8 [ %99, %if.then211 ], [ %101, %if.else213 ]
  %102 = and i8 %dmsk.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool223.not = icmp eq i8 %102, 0
  br i1 %tobool223.not, label %if.end220.for.inc245_crit_edge, label %if.then224

if.end220.for.inc245_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc245

if.then224:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #15
  %103 = and i8 %dcol.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool227.not = icmp eq i8 %103, 0
  %cond = select i1 %tobool227.not, i32 3, i32 1
  %x166.0353.frozen = freeze i32 %x166.0353
  %div = sdiv i32 %x166.0353.frozen, 4
  %104 = mul i32 %div, 4
  %rem228.decomposed = sub i32 %x166.0353.frozen, %104
  %mul = shl nsw i32 %rem228.decomposed, 1
  %shl229 = shl i32 %cond, %mul
  %add.ptr232 = getelementptr i8, ptr %dst.0366, i32 %div
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr232) #13, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !376
  tail call void @arm_heavy_mb() #13
  %106 = trunc i32 %shl229 to i8
  %conv241 = or i8 %105, %106
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr232, i8 %conv241) #13, !srcloc !377
  br label %for.inc245

for.inc245:                                       ; preds = %if.then224, %if.end220.for.inc245_crit_edge
  %inc = add nuw i32 %x166.0353, 1
  %107 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %width, align 4
  %cmp206 = icmp ult i32 %inc, %108
  br i1 %cmp206, label %for.inc245.for.body208_crit_edge, label %for.inc245.for.end246_crit_edge

for.inc245.for.end246_crit_edge:                  ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end246

for.inc245.for.body208_crit_edge:                 ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body208

for.end246:                                       ; preds = %for.inc245.for.end246_crit_edge, %for.cond203.preheader.for.end246_crit_edge
  %pcol.1.lcssa = phi ptr [ %pcol.0364, %for.cond203.preheader.for.end246_crit_edge ], [ %pcol.2, %for.inc245.for.end246_crit_edge ]
  %pmsk.1.lcssa = phi ptr [ %pmsk.0365, %for.cond203.preheader.for.end246_crit_edge ], [ %pmsk.2, %for.inc245.for.end246_crit_edge ]
  %dcol.1.lcssa = phi i8 [ %dcol.0367, %for.cond203.preheader.for.end246_crit_edge ], [ %dcol.2, %for.inc245.for.end246_crit_edge ]
  %dmsk.1.lcssa = phi i8 [ %dmsk.0368, %for.cond203.preheader.for.end246_crit_edge ], [ %dmsk.2, %for.inc245.for.end246_crit_edge ]
  %add.ptr247 = getelementptr i8, ptr %dst.0366, i32 16
  %inc249 = add nuw i32 %y167.0363, 1
  %109 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height, align 4
  %cmp200 = icmp ult i32 %inc249, %110
  br i1 %cmp200, label %for.end246.for.cond203.preheader_crit_edge, label %for.end246.if.end251_crit_edge

for.end246.if.end251_crit_edge:                   ; preds = %for.end246
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end251

for.end246.for.cond203.preheader_crit_edge:       ; preds = %for.end246
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond203.preheader

if.end251:                                        ; preds = %for.end246.if.end251_crit_edge, %for.cond197.preheader.if.end251_crit_edge, %if.end155.if.end251_crit_edge
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %cleanup252

cleanup252:                                       ; preds = %if.end251, %if.then39.cleanup252_crit_edge, %if.end14.cleanup252_crit_edge, %if.end10.cleanup252_crit_edge, %do.end.cleanup252_crit_edge
  %retval.1 = phi i32 [ 0, %if.end251 ], [ -22, %do.end.cleanup252_crit_edge ], [ -22, %if.end10.cleanup252_crit_edge ], [ -22, %if.end14.cleanup252_crit_edge ], [ -22, %if.then39.cleanup252_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_sync(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %dec = add nsw i32 %count.012, -1
  %cmp = icmp ugt i32 %count.012, 1
  br i1 %cmp, label %while.cond.land.rhs_crit_edge, label %do.end

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %entry
  %count.012 = phi i32 [ 1000000, %entry ], [ %dec, %while.cond.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %land.rhs.cleanup_crit_edge, label %while.cond

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.123) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @sm501fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %4 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %6 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %7)
  %cmp3 = icmp ugt i32 %7, 63
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %10 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %right_margin, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp4 = icmp ugt i32 %add, 4096
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %14 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lower_margin, align 4
  %add7 = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add7)
  %cmp8 = icmp ugt i32 %add7, 2048
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %16 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %left_margin.i, align 4
  %add1.i = add nuw nsw i32 %add, %5
  %add2.i = add i32 %add1.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add2.i)
  %cmp11 = icmp sgt i32 %add2.i, 4096
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %lor.lhs.false12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end10
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %18 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upper_margin.i, align 4
  %add1.i173 = add nuw nsw i32 %add7, %7
  %add2.i174 = add i32 %add1.i173, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add2.i174)
  %cmp14 = icmp sgt i32 %add2.i174, 2048
  br i1 %cmp14, label %lor.lhs.false12.cleanup_crit_edge, label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %21, %9
  %22 = and i32 %mul, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18.not = icmp eq i32 %22, 0
  br i1 %cmp18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %23 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %24)
  %cmp21 = icmp ugt i32 %24, 4096
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %lor.lhs.false22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false22:                                  ; preds = %if.end20
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %25 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %cmp23 = icmp ugt i32 %26, 2048
  br i1 %cmp23, label %lor.lhs.false22.cleanup_crit_edge, label %if.end25

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp27 = icmp ult i32 %21, 9
  br i1 %cmp27, label %if.end41.thread, label %if.else

if.end41.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %bits_per_pixel, align 4
  br label %sw.bb

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %21)
  %cmp31 = icmp ult i32 %21, 17
  br i1 %cmp31, label %if.end41.thread175, label %if.else34

if.end41.thread175:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %bits_per_pixel, align 4
  br label %sw.bb56

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp36 = icmp eq i32 %21, 24
  br i1 %cmp36, label %if.end41.thread176, label %if.end41

if.end41.thread176:                               ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %bits_per_pixel, align 4
  br label %sw.bb83

if.end41:                                         ; preds = %if.else34
  %30 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %bits_per_pixel, align 4
  %31 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %.pr, label %if.end41.cleanup_crit_edge [
    i32 8, label %if.end41.sw.bb_crit_edge
    i32 16, label %if.end41.sw.bb56_crit_edge
    i32 32, label %if.end41.sw.bb83_crit_edge
  ]

if.end41.sw.bb83_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb83

if.end41.sw.bb56_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb56

if.end41.sw.bb_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end41.sw.bb_crit_edge, %if.end41.thread
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %length, align 4
  %33 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %red, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %length46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %length46, align 4
  %35 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %green, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %length50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %length50, align 4
  %37 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length53 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %length53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %length53, align 4
  br label %cleanup.sink.split

sw.bb56:                                          ; preds = %if.end41.sw.bb56_crit_edge, %if.end41.thread175
  %pdata = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 4
  %flags = getelementptr inbounds %struct.sm501_platdata_fb, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and57 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool.not = icmp eq i32 %and57, 0
  %spec.select = select i1 %tobool.not, i32 11, i32 0
  %spec.select182 = select i1 %tobool.not, i32 0, i32 11
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select182, ptr %47, align 4
  %transp73 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %49 = ptrtoint ptr %transp73 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %transp73, align 4
  %length76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %length76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %length76, align 4
  %length78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %length78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %length78, align 4
  %length80 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %length80 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %length80, align 4
  %length82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  br label %cleanup.sink.split

sw.bb83:                                          ; preds = %if.end41.sw.bb83_crit_edge, %if.end41.thread176
  %pdata84 = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 5
  %53 = ptrtoint ptr %pdata84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata84, align 4
  %flags85 = getelementptr inbounds %struct.sm501_platdata_fb, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags85, align 4
  %and86 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else97, label %sw.bb83.if.end106_crit_edge

sw.bb83.if.end106_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.else97:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.end106:                                        ; preds = %if.else97, %sw.bb83.if.end106_crit_edge
  %.sink181 = phi i32 [ 24, %if.else97 ], [ 0, %sw.bb83.if.end106_crit_edge ]
  %.sink180 = phi i32 [ 16, %if.else97 ], [ 8, %sw.bb83.if.end106_crit_edge ]
  %.sink179 = phi i32 [ 8, %if.else97 ], [ 16, %sw.bb83.if.end106_crit_edge ]
  %.sink178 = phi i32 [ 0, %if.else97 ], [ 24, %sw.bb83.if.end106_crit_edge ]
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink181, ptr %57, align 4
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink180, ptr %59, align 4
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink179, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink178, ptr %63, align 4
  %length108 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %length108 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8, ptr %length108, align 4
  %length110 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %length110 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %length110, align 4
  %length112 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %67 = ptrtoint ptr %length112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %length112, align 4
  %length114 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end106, %sw.bb56, %sw.bb
  %transp.sink = phi ptr [ %transp, %sw.bb ], [ %length82, %sw.bb56 ], [ %length114, %if.end106 ]
  %68 = ptrtoint ptr %transp.sink to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %transp.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end41.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %lor.lhs.false22.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm501_misc_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm501fb_set_par_common(ptr noundef %info, ptr nocapture noundef %var) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_set_par_common.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_common, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !326

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %14 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres_virtual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_set_par_common.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %head = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %17, label %sw.default [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 1, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %do.end.sw.epilog_crit_edge
  %clock_type.0 = phi i32 [ 0, %sw.default ], [ 24, %sw.bb5 ], [ 16, %do.end.sw.epilog_crit_edge ]
  %head_addr.0 = phi i32 [ 0, %sw.default ], [ 12, %sw.bb5 ], [ 516, %do.end.sw.epilog_crit_edge ]
  %mem_type.0 = phi i32 [ 0, %sw.default ], [ 2, %sw.bb5 ], [ 4, %do.end.sw.epilog_crit_edge ]
  %bits_per_pixel6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %19 = ptrtoint ptr %bits_per_pixel6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits_per_pixel6, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %20, label %sw.epilog.sw.epilog14_crit_edge [
    i32 8, label %sw.epilog.sw.epilog14.sink.split_crit_edge
    i32 16, label %sw.bb8
    i32 32, label %sw.bb11
  ]

sw.epilog.sw.epilog14.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog14.sink.split

sw.epilog.sw.epilog14_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog14

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog14.sink.split

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog14.sink.split

sw.epilog14.sink.split:                           ; preds = %sw.bb11, %sw.bb8, %sw.epilog.sw.epilog14.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb11 ], [ 2, %sw.bb8 ], [ 3, %sw.epilog.sw.epilog14.sink.split_crit_edge ]
  %visual13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %visual13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %visual13, align 4
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.epilog14.sink.split, %sw.epilog.sw.epilog14_crit_edge
  %xres_virtual15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %23 = ptrtoint ptr %xres_virtual15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xres_virtual15, align 4
  %25 = ptrtoint ptr %bits_per_pixel6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel6, align 4
  %mul = mul i32 %26, %24
  %div141 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %27 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div141, ptr %line_length, align 4
  %yres_virtual20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %28 = ptrtoint ptr %yres_virtual20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres_virtual20, align 4
  %mul21 = mul i32 %div141, %29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_set_par_common.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_common, %if.then34)) #13
          to label %do.end40 [label %if.then34], !srcloc !326

if.then34:                                        ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %line_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_set_par_common.__UNIQUE_ID_ddebug305, ptr noundef %31, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, i32 noundef %33) #13
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %sw.epilog14
  %screen = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3
  %call41 = tail call fastcc i32 @sm501_alloc_mem(ptr noundef %3, ptr noundef %screen, i32 noundef %mem_type.0, i32 noundef %mul21, i32 noundef %mul21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.113) #17
  br label %cleanup

if.end48:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  %mm_lock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #13
  %fbmem_res = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %fbmem_res to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fbmem_res, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %sm_addr = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sm_addr, align 4
  %add = add i32 %41, %39
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %smem_start, align 4
  %smem_len52 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %smem_len52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul21, ptr %smem_len52, align 4
  tail call void @mutex_unlock(ptr noundef %mm_lock) #13
  %fbmem = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 11
  %44 = ptrtoint ptr %fbmem to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fbmem, align 4
  %46 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sm_addr, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %47
  %48 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr, ptr %48, align 4
  %50 = ptrtoint ptr %smem_len52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %smem_len52, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %52 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %screen_size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !378
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sm_addr, align 4
  %or = or i32 %54, -2147483648
  %55 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %57, i32 %head_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %55) #13, !srcloc !316
  %pixclock64 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %58 = ptrtoint ptr %pixclock64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pixclock64, align 4
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %59, i64 1000000000000) #19, !srcloc !379
  %asmresult1.i.i = extractvalue { i64, i64 } %60, 1
  %extract.t263 = trunc i64 %asmresult1.i.i to i32
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent, align 8
  %call67 = tail call i32 @sm501_set_clock(ptr noundef %64, i32 noundef %clock_type.0, i32 noundef %extract.t263) #13
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call67, i64 1000000000000) #19, !srcloc !379
  %asmresult1.i.i254 = extractvalue { i64, i64 } %65, 1
  %extract.t266 = trunc i64 %asmresult1.i.i254 to i32
  %66 = ptrtoint ptr %pixclock64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %extract.t266, ptr %pixclock64, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_set_par_common.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_common, %if.then82)) #13
          to label %cleanup [label %if.then82], !srcloc !326

if.then82:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  %69 = ptrtoint ptr %pixclock64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pixclock64, align 4
  %sub = sub i32 %extract.t263, %call67
  %mul85 = mul i32 %sub, 100
  %div86 = udiv i32 %mul85, %extract.t263
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_set_par_common.__UNIQUE_ID_ddebug306, ptr noundef %68, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.110, i32 noundef %70, i32 noundef %extract.t263, i32 noundef %call67, i32 noundef %div86) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end48, %do.end46
  %retval.0 = phi i32 [ -12, %do.end46 ], [ 0, %if.then82 ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501fb_set_par_geometry(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %var) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %head = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %base.0.v = select i1 %cmp, i32 524, i32 36
  %base.0 = getelementptr i8, ptr %5, i32 %base.0.v
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %8 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line_length, align 4
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %12 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel, align 4
  %mul = shl i32 %11, 13
  %14 = mul i32 %mul, %13
  %shl = and i32 %14, -65536
  %or = or i32 %shl, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6 = icmp eq i32 %19, 0
  %cond = select i1 %cmp6, i32 520, i32 16
  %add.ptr7 = getelementptr i8, ptr %17, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %15) #13, !srcloc !316
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %22 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %left_margin.i, align 4
  %add.i = add i32 %23, %21
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %24 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %right_margin.i, align 4
  %add1.i = add i32 %add.i, %25
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %26 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hsync_len.i, align 4
  %add2.i = add i32 %add1.i, %27
  %sub = shl i32 %add2.i, 16
  %shl8 = add i32 %sub, -65536
  %sub10 = add i32 %21, -1
  %or11 = or i32 %shl8, %sub10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !381
  tail call void @arm_heavy_mb() #13
  %28 = tail call i32 @llvm.bswap.i32(i32 %or11)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base.0, i32 %28) #13, !srcloc !316
  %29 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hsync_len.i, align 4
  %shl16 = shl i32 %30, 16
  %31 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %var, align 4
  %33 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %right_margin.i, align 4
  %add = add i32 %32, -1
  %sub18 = add i32 %add, %34
  %or19 = or i32 %sub18, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %35 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %add.ptr23 = getelementptr i8, ptr %base.0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %35) #13, !srcloc !316
  %yres.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %36 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %38 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %upper_margin.i, align 4
  %add.i72 = add i32 %39, %37
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %40 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lower_margin.i, align 4
  %add1.i73 = add i32 %add.i72, %41
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %42 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vsync_len.i, align 4
  %add2.i74 = add i32 %add1.i73, %43
  %sub25 = shl i32 %add2.i74, 16
  %shl26 = add i32 %sub25, -65536
  %sub27 = add i32 %37, -1
  %or28 = or i32 %shl26, %sub27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !383
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %add.ptr32 = getelementptr i8, ptr %base.0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %44) #13, !srcloc !316
  %45 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vsync_len.i, align 4
  %shl33 = shl i32 %46, 16
  %47 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %yres.i, align 4
  %49 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lower_margin.i, align 4
  %add35 = add i32 %48, -1
  %sub36 = add i32 %add35, %50
  %or37 = or i32 %sub36, %shl33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !384
  tail call void @arm_heavy_mb() #13
  %51 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %add.ptr41 = getelementptr i8, ptr %base.0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %51) #13, !srcloc !316
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm501_set_clock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm501fb_check_var_pnl(ptr noundef %var, ptr nocapture noundef readonly %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sm501fb_check_var(ptr noundef %var, ptr noundef %info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_set_par_pnl(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %var3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_set_par_pnl.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_set_par_pnl, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !326

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_set_par_pnl.__UNIQUE_ID_ddebug309, ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.125, ptr noundef %info) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call fastcc i32 @sm501fb_set_par_common(ptr noundef %info, ptr noundef %var3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %6 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par1, align 4
  %info2.i = getelementptr inbounds %struct.sm501fb_par, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info2.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual.i, align 4
  %shl.i = shl i32 %13, 16
  %or.i = or i32 %shl.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !385
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %9, i32 0, i32 9
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #13, !srcloc !316
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %17 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yoffset.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %yres_virtual.i, align 4
  %shl5.i = shl i32 %20, 16
  %or6.i = or i32 %shl5.i, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !386
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #13
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %21) #13, !srcloc !316
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  tail call fastcc void @sm501fb_set_par_geometry(ptr noundef %info, ptr noundef %var3)
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %30 = and i32 %29, -129892337
  %31 = or i32 %30, 256
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %34, label %do.body19 [
    i32 8, label %if.end9.do.body25_crit_edge
    i32 16, label %if.end9.do.body.i_crit_edge
    i32 32, label %if.end9.do.body.i109_crit_edge
  ]

if.end9.do.body.i109_crit_edge:                   ; preds = %if.end9
  br label %do.body.i109

if.end9.do.body.i_crit_edge:                      ; preds = %if.end9
  br label %do.body.i

if.end9.do.body25_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end9.do.body.i_crit_edge
  %offset.07.i = phi i32 [ %add2.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end9.do.body.i_crit_edge ]
  %value.06.i = phi i32 [ %add.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end9.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @arm_heavy_mb() #13
  %36 = tail call i32 @llvm.bswap.i32(i32 %value.06.i) #13
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr.i100 = getelementptr i8, ptr %38, i32 1024
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i100, i32 %offset.07.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %36) #13, !srcloc !316
  %add.i = add nuw nsw i32 %value.06.i, 65793
  %add2.i = add nuw nsw i32 %offset.07.i, 4
  %cmp.i = icmp ult i32 %offset.07.i, 1020
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body25.loopexit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i109:                                     ; preds = %do.body.i109.do.body.i109_crit_edge, %if.end9.do.body.i109_crit_edge
  %offset.07.i102 = phi i32 [ %add2.i107, %do.body.i109.do.body.i109_crit_edge ], [ 0, %if.end9.do.body.i109_crit_edge ]
  %value.06.i103 = phi i32 [ %add.i106, %do.body.i109.do.body.i109_crit_edge ], [ 0, %if.end9.do.body.i109_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @arm_heavy_mb() #13
  %39 = tail call i32 @llvm.bswap.i32(i32 %value.06.i103) #13
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr.i104 = getelementptr i8, ptr %41, i32 1024
  %add.ptr1.i105 = getelementptr i8, ptr %add.ptr.i104, i32 %offset.07.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i105, i32 %39) #13, !srcloc !316
  %add.i106 = add nuw nsw i32 %value.06.i103, 65793
  %add2.i107 = add nuw nsw i32 %offset.07.i102, 4
  %cmp.i108 = icmp ult i32 %offset.07.i102, 1020
  br i1 %cmp.i108, label %do.body.i109.do.body.i109_crit_edge, label %do.body25.loopexit114

do.body.i109.do.body.i109_crit_edge:              ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i109

do.body19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/sm501fb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 852, 0\0A.popsection", ""() #13, !srcloc !388
  unreachable

do.body25.loopexit:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %or16 = or i32 %32, 1
  br label %do.body25

do.body25.loopexit114:                            ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #15
  %or18 = or i32 %32, 2
  br label %do.body25

do.body25:                                        ; preds = %do.body25.loopexit114, %do.body25.loopexit, %if.end9.do.body25_crit_edge
  %control.0 = phi i32 [ %32, %if.end9.do.body25_crit_edge ], [ %or16, %do.body25.loopexit ], [ %or18, %do.body25.loopexit114 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !389
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #13, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  tail call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %45, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #13, !srcloc !316
  %46 = ptrtoint ptr %var3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %var3, align 4
  %sub = add i32 %47, -1
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %yres, align 4
  %sub35 = shl i32 %49, 16
  %shl = add i32 %sub35, -65536
  %or36 = or i32 %shl, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !391
  tail call void @arm_heavy_mb() #13
  %50 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %50) #13, !srcloc !316
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %53 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sync, align 4
  %and44 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp = icmp eq i32 %and44, 0
  %spec.select.v = select i1 %cmp, i32 4356, i32 260
  %spec.select = or i32 %spec.select.v, %control.0
  %and49 = shl i32 %54, 12
  %55 = and i32 %and49, 8192
  %56 = xor i32 %55, 8192
  %57 = or i32 %spec.select, %56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !392
  tail call void @arm_heavy_mb() #13
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #13, !srcloc !316
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent, align 8
  %call60 = tail call i32 @sm501_modify_reg(ptr noundef %67, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  tail call fastcc void @sm501fb_panel_power(ptr noundef %3, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body25 ], [ %call6, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_blank_pnl(i32 noundef %blank_mode, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_blank_pnl.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_blank_pnl, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !326

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_blank_pnl.__UNIQUE_ID_ddebug310, ptr noundef %5, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.126, i32 noundef %blank_mode, ptr noundef %info) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %blank_mode, label %do.end.cleanup_crit_edge [
    i32 4, label %do.end.cleanup.sink.split_crit_edge
    i32 0, label %sw.bb5
  ]

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5, %do.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb5 ], [ 0, %do.end.cleanup.sink.split_crit_edge ]
  tail call fastcc void @sm501fb_panel_power(ptr noundef %3, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_pan_pnl(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %info2 = getelementptr inbounds %struct.sm501fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %shl = shl i32 %7, 16
  %or = or i32 %shl, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !385
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #13, !srcloc !316
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %11 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yoffset, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres_virtual, align 4
  %shl5 = shl i32 %14, 16
  %or6 = or i32 %shl5, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !386
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %15) #13, !srcloc !316
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm501_modify_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501fb_panel_power(ptr nocapture noundef readonly %fbi, i32 noundef %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %fbi, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %pdata = getelementptr inbounds %struct.sm501fb_info, ptr %fbi, i32 0, i32 5
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %fb_pnl = getelementptr inbounds %struct.sm501_platdata_fb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fb_pnl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_pnl, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !317
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to)
  %tobool.not = icmp ne i32 %to, 0
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.else54

if.then:                                          ; preds = %entry
  %or = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %8) #13, !srcloc !316
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #13
  %or3 = or i32 %7, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !395
  tail call void @arm_heavy_mb() #13
  %22 = tail call i32 @llvm.bswap.i32(i32 %or3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %22) #13, !srcloc !316
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #13
  %flags = getelementptr inbounds %struct.sm501_platdata_fbsub, ptr %5, i32 0, i32 3
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and13 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %and17 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %or3, -67108865
  %or21 = or i32 %7, 117440512
  %control.0 = select i1 %tobool18.not, i32 %or21, i32 %and20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !396
  tail call void @arm_heavy_mb() #13
  %38 = tail call i32 @llvm.bswap.i32(i32 %control.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %38) #13, !srcloc !316
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then15, %if.then.if.end31_crit_edge
  %control.1 = phi i32 [ %or3, %if.then.if.end31_crit_edge ], [ %control.0, %if.then15 ]
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and33 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.if.end125_crit_edge

if.end31.if.end125_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %and40 = and i32 %control.1, -134217729
  %and37 = shl i32 %53, 21
  %54 = and i32 %and37, 134217728
  %55 = or i32 %54, %and40
  %control.2 = xor i32 %55, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !397
  tail call void @arm_heavy_mb() #13
  %56 = tail call i32 @llvm.bswap.i32(i32 %control.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %56) #13, !srcloc !316
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %if.end125.sink.split

if.else54:                                        ; preds = %entry
  %or.cond174 = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond174, label %if.else54.if.end125_crit_edge, label %if.then59

if.else54.if.end125_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then59:                                        ; preds = %if.else54
  %flags60 = getelementptr inbounds %struct.sm501_platdata_fbsub, ptr %5, i32 0, i32 3
  %60 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags60, align 4
  %and61 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then63, label %if.then59.if.end81_crit_edge

if.then59.if.end81_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  %and70 = and i32 %7, -134217729
  %and65 = shl i32 %61, 21
  %62 = and i32 %and65, 134217728
  %control.3 = or i32 %62, %and70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %63 = tail call i32 @llvm.bswap.i32(i32 %control.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %63) #13, !srcloc !316
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #13
  br label %if.end81

if.end81:                                         ; preds = %if.then63, %if.then59.if.end81_crit_edge
  %control.4 = phi i32 [ %7, %if.then59.if.end81_crit_edge ], [ %control.3, %if.then63 ]
  %77 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags60, align 4
  %and83 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then85, label %if.end81.if.end103_crit_edge

if.end81.if.end103_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %and92 = and i32 %control.4, -67108865
  %and87 = shl i32 %78, 19
  %79 = and i32 %and87, 67108864
  %control.5 = or i32 %79, %and92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  %80 = tail call i32 @llvm.bswap.i32(i32 %control.5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %80) #13, !srcloc !316
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #13
  br label %if.end103

if.end103:                                        ; preds = %if.then85, %if.end81.if.end103_crit_edge
  %control.6 = phi i32 [ %control.4, %if.end81.if.end103_crit_edge ], [ %control.5, %if.then85 ]
  %and104 = and i32 %control.6, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  %94 = tail call i32 @llvm.bswap.i32(i32 %and104)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %94) #13, !srcloc !316
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #13
  %and114 = and i32 %control.6, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !401
  tail call void @arm_heavy_mb() #13
  %108 = tail call i32 @llvm.bswap.i32(i32 %and114)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %108) #13, !srcloc !316
  %109 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs, align 4
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %if.end125.sink.split

if.end125.sink.split:                             ; preds = %if.end103, %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #13
  br label %if.end125

if.end125:                                        ; preds = %if.end125.sink.split, %if.else54.if.end125_crit_edge, %if.end31.if.end125_crit_edge
  %122 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs, align 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501fb_suspend_fb(ptr nocapture noundef readonly %info, i32 noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sm501fb_info, ptr %info, i32 0, i32 1, i32 %head
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %screen = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %screen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fb_blank = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_blank, align 4
  %call = tail call i32 %7(i32 noundef 4, ptr noundef nonnull %1) #13
  tail call void @console_lock() #13
  tail call void @fb_set_suspend(ptr noundef nonnull %1, i32 noundef 1) #13
  tail call void @console_unlock() #13
  %8 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %screen, align 4
  %call6 = tail call noalias ptr @vmalloc(i32 noundef %9) #20
  %store_fb = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %store_fb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %store_fb, align 4
  %cmp8 = icmp eq ptr %call6, null
  br i1 %cmp8, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.127) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %cursor = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cursor, align 4
  %call12 = tail call noalias ptr @vmalloc(i32 noundef %14) #20
  %store_cursor = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %store_cursor to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %store_cursor, align 4
  %cmp14 = icmp eq ptr %call12, null
  br i1 %cmp14, label %do.end18, label %do.body21

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.130) #17
  %18 = ptrtoint ptr %store_fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %store_fb, align 4
  tail call void @vfree(ptr noundef %19) #13
  %20 = ptrtoint ptr %store_fb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %store_fb, align 4
  br label %cleanup

do.body21:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_suspend_fb.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_suspend_fb, %if.then26)) #13
          to label %do.body32 [label %if.then26], !srcloc !326

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %23 = ptrtoint ptr %store_fb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %store_fb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_suspend_fb.__UNIQUE_ID_ddebug317, ptr noundef %22, ptr noundef nonnull @.str.132, ptr noundef %24) #13
  br label %do.body32

do.body32:                                        ; preds = %if.then26, %do.body21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_suspend_fb.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_suspend_fb, %if.then44)) #13
          to label %do.end49 [label %if.then44], !srcloc !326

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %27 = ptrtoint ptr %store_cursor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %store_cursor, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_suspend_fb.__UNIQUE_ID_ddebug318, ptr noundef %26, ptr noundef nonnull @.str.133, ptr noundef %28) #13
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %29 = ptrtoint ptr %store_fb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %store_fb, align 4
  %k_addr = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %k_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %k_addr, align 4
  %33 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %screen, align 4
  tail call void @mmiocpy(ptr noundef %30, ptr noundef %32, i32 noundef %34) #13
  %35 = ptrtoint ptr %store_cursor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %store_cursor, align 4
  %k_addr56 = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %k_addr56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %k_addr56, align 4
  %39 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cursor, align 4
  tail call void @mmiocpy(ptr noundef %36, ptr noundef %38, i32 noundef %40) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end18, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501fb_resume_fb(ptr nocapture noundef readonly %info, i32 noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sm501fb_info, ptr %info, i32 0, i32 1, i32 %head
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %screen = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %screen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fb_set_par = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_set_par, align 4
  %call = tail call i32 %7(ptr noundef nonnull %1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_resume_fb.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_resume_fb, %if.then8)) #13
          to label %do.body10 [label %if.then8], !srcloc !326

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %store_fb = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %store_fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %store_fb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_resume_fb.__UNIQUE_ID_ddebug319, ptr noundef %9, ptr noundef nonnull @.str.135, ptr noundef %11) #13
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501fb_resume_fb.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501fb_resume_fb, %if.then22)) #13
          to label %do.end26 [label %if.then22], !srcloc !326

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %store_cursor = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %store_cursor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %store_cursor, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501fb_resume_fb.__UNIQUE_ID_ddebug320, ptr noundef %13, ptr noundef nonnull @.str.136, ptr noundef %15) #13
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %store_fb27 = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %store_fb27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %store_fb27, align 4
  %tobool28.not = icmp eq ptr %17, null
  br i1 %tobool28.not, label %do.end26.if.end34_crit_edge, label %if.then29

do.end26.if.end34_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  %k_addr = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %k_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %k_addr, align 4
  %20 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %screen, align 4
  tail call void @mmiocpy(ptr noundef %19, ptr noundef nonnull %17, i32 noundef %21) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %do.end26.if.end34_crit_edge
  %store_cursor35 = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %store_cursor35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %store_cursor35, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %cursor = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 2
  %k_addr38 = getelementptr inbounds %struct.sm501fb_par, ptr %3, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %k_addr38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %k_addr38, align 4
  %26 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cursor, align 4
  tail call void @mmiocpy(ptr noundef %25, ptr noundef nonnull %23, i32 noundef %27) #13
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge
  tail call void @console_lock() #13
  tail call void @fb_set_suspend(ptr noundef nonnull %1, i32 noundef 0) #13
  tail call void @console_unlock() #13
  %28 = ptrtoint ptr %store_fb27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %store_fb27, align 4
  tail call void @vfree(ptr noundef %29) #13
  %30 = ptrtoint ptr %store_cursor35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %store_cursor35, align 4
  tail call void @vfree(ptr noundef %31) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_crtsrc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.31, ptr @.str.30
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_crtsrc_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %if.else

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.do.end_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.else.do.end_crit_edge, %if.end.do.end_crit_edge
  %masksel = phi i32 [ 0, %if.else.do.end_crit_edge ], [ 772, %if.end.do.end_crit_edge ]
  %head.0 = phi i32 [ 1, %if.else.do.end_crit_edge ], [ 0, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %head.0) #17
  %regs = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  %5 = and i32 %4, -67305473
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %ctrl.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %7) #13, !srcloc !316
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #13, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_debug_show_pnl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !317
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef %5) #13
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %call2.i
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #13, !srcloc !317
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i, ptr noundef nonnull @.str.142, i32 noundef 4, i32 noundef %7) #13
  %add.ptr3.i.1 = getelementptr i8, ptr %add.ptr3.i, i32 %call2.i.1
  %add.ptr.i.2 = getelementptr i8, ptr %3, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #13, !srcloc !317
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.1, ptr noundef nonnull @.str.142, i32 noundef 8, i32 noundef %9) #13
  %add.ptr3.i.2 = getelementptr i8, ptr %add.ptr3.i.1, i32 %call2.i.2
  %add.ptr.i.3 = getelementptr i8, ptr %3, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #13, !srcloc !317
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.2, ptr noundef nonnull @.str.142, i32 noundef 12, i32 noundef %11) #13
  %add.ptr3.i.3 = getelementptr i8, ptr %add.ptr3.i.2, i32 %call2.i.3
  %add.ptr.i.4 = getelementptr i8, ptr %3, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #13, !srcloc !317
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.3, ptr noundef nonnull @.str.142, i32 noundef 16, i32 noundef %13) #13
  %add.ptr3.i.4 = getelementptr i8, ptr %add.ptr3.i.3, i32 %call2.i.4
  %add.ptr.i.5 = getelementptr i8, ptr %3, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #13, !srcloc !317
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.4, ptr noundef nonnull @.str.142, i32 noundef 20, i32 noundef %15) #13
  %add.ptr3.i.5 = getelementptr i8, ptr %add.ptr3.i.4, i32 %call2.i.5
  %add.ptr.i.6 = getelementptr i8, ptr %3, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #13, !srcloc !317
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.5, ptr noundef nonnull @.str.142, i32 noundef 24, i32 noundef %17) #13
  %add.ptr3.i.6 = getelementptr i8, ptr %add.ptr3.i.5, i32 %call2.i.6
  %add.ptr.i.7 = getelementptr i8, ptr %3, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #13, !srcloc !317
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.6, ptr noundef nonnull @.str.142, i32 noundef 28, i32 noundef %19) #13
  %add.ptr3.i.7 = getelementptr i8, ptr %add.ptr3.i.6, i32 %call2.i.7
  %add.ptr.i.8 = getelementptr i8, ptr %3, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #13, !srcloc !317
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.7, ptr noundef nonnull @.str.142, i32 noundef 32, i32 noundef %21) #13
  %add.ptr3.i.8 = getelementptr i8, ptr %add.ptr3.i.7, i32 %call2.i.8
  %add.ptr.i.9 = getelementptr i8, ptr %3, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #13, !srcloc !317
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.8, ptr noundef nonnull @.str.142, i32 noundef 36, i32 noundef %23) #13
  %add.ptr3.i.9 = getelementptr i8, ptr %add.ptr3.i.8, i32 %call2.i.9
  %add.ptr.i.10 = getelementptr i8, ptr %3, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #13, !srcloc !317
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.9, ptr noundef nonnull @.str.142, i32 noundef 40, i32 noundef %25) #13
  %add.ptr3.i.10 = getelementptr i8, ptr %add.ptr3.i.9, i32 %call2.i.10
  %add.ptr.i.11 = getelementptr i8, ptr %3, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11) #13, !srcloc !317
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.10, ptr noundef nonnull @.str.142, i32 noundef 44, i32 noundef %27) #13
  %add.ptr3.i.11 = getelementptr i8, ptr %add.ptr3.i.10, i32 %call2.i.11
  %add.ptr.i.12 = getelementptr i8, ptr %3, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.12) #13, !srcloc !317
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.11, ptr noundef nonnull @.str.142, i32 noundef 48, i32 noundef %29) #13
  %add.ptr3.i.12 = getelementptr i8, ptr %add.ptr3.i.11, i32 %call2.i.12
  %add.ptr.i.13 = getelementptr i8, ptr %3, i32 52
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.13) #13, !srcloc !317
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.12, ptr noundef nonnull @.str.142, i32 noundef 52, i32 noundef %31) #13
  %add.ptr3.i.13 = getelementptr i8, ptr %add.ptr3.i.12, i32 %call2.i.13
  %add.ptr.i.14 = getelementptr i8, ptr %3, i32 56
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.14) #13, !srcloc !317
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.13, ptr noundef nonnull @.str.142, i32 noundef 56, i32 noundef %33) #13
  %add.ptr3.i.14 = getelementptr i8, ptr %add.ptr3.i.13, i32 %call2.i.14
  %add.ptr.i.15 = getelementptr i8, ptr %3, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.15) #13, !srcloc !317
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.14, ptr noundef nonnull @.str.142, i32 noundef 60, i32 noundef %35) #13
  %add.ptr3.i.15 = getelementptr i8, ptr %add.ptr3.i.14, i32 %call2.i.15
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr3.i.15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub.i
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %37, i32 240
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #13, !srcloc !317
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.142, i32 noundef 240, i32 noundef %39) #13
  %add.ptr3.i15 = getelementptr i8, ptr %add.ptr, i32 %call2.i14
  %add.ptr.i13.1 = getelementptr i8, ptr %37, i32 244
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.1) #13, !srcloc !317
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i15, ptr noundef nonnull @.str.142, i32 noundef 244, i32 noundef %41) #13
  %add.ptr3.i15.1 = getelementptr i8, ptr %add.ptr3.i15, i32 %call2.i14.1
  %add.ptr.i13.2 = getelementptr i8, ptr %37, i32 248
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.2) #13, !srcloc !317
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i15.1, ptr noundef nonnull @.str.142, i32 noundef 248, i32 noundef %43) #13
  %add.ptr3.i15.2 = getelementptr i8, ptr %add.ptr3.i15.1, i32 %call2.i14.2
  %add.ptr.i13.3 = getelementptr i8, ptr %37, i32 252
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.3) #13, !srcloc !317
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i15.2, ptr noundef nonnull @.str.142, i32 noundef 252, i32 noundef %45) #13
  %add.ptr3.i15.3 = getelementptr i8, ptr %add.ptr3.i15.2, i32 %call2.i14.3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr3.i15.3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501fb_debug_show_crt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.sm501fb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !317
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.142, i32 noundef 512, i32 noundef %5) #13
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %call2.i
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 516
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #13, !srcloc !317
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i, ptr noundef nonnull @.str.142, i32 noundef 516, i32 noundef %7) #13
  %add.ptr3.i.1 = getelementptr i8, ptr %add.ptr3.i, i32 %call2.i.1
  %add.ptr.i.2 = getelementptr i8, ptr %3, i32 520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #13, !srcloc !317
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.1, ptr noundef nonnull @.str.142, i32 noundef 520, i32 noundef %9) #13
  %add.ptr3.i.2 = getelementptr i8, ptr %add.ptr3.i.1, i32 %call2.i.2
  %add.ptr.i.3 = getelementptr i8, ptr %3, i32 524
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #13, !srcloc !317
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.2, ptr noundef nonnull @.str.142, i32 noundef 524, i32 noundef %11) #13
  %add.ptr3.i.3 = getelementptr i8, ptr %add.ptr3.i.2, i32 %call2.i.3
  %add.ptr.i.4 = getelementptr i8, ptr %3, i32 528
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #13, !srcloc !317
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.3, ptr noundef nonnull @.str.142, i32 noundef 528, i32 noundef %13) #13
  %add.ptr3.i.4 = getelementptr i8, ptr %add.ptr3.i.3, i32 %call2.i.4
  %add.ptr.i.5 = getelementptr i8, ptr %3, i32 532
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #13, !srcloc !317
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.4, ptr noundef nonnull @.str.142, i32 noundef 532, i32 noundef %15) #13
  %add.ptr3.i.5 = getelementptr i8, ptr %add.ptr3.i.4, i32 %call2.i.5
  %add.ptr.i.6 = getelementptr i8, ptr %3, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #13, !srcloc !317
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.5, ptr noundef nonnull @.str.142, i32 noundef 536, i32 noundef %17) #13
  %add.ptr3.i.6 = getelementptr i8, ptr %add.ptr3.i.5, i32 %call2.i.6
  %add.ptr.i.7 = getelementptr i8, ptr %3, i32 540
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #13, !srcloc !317
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.6, ptr noundef nonnull @.str.142, i32 noundef 540, i32 noundef %19) #13
  %add.ptr3.i.7 = getelementptr i8, ptr %add.ptr3.i.6, i32 %call2.i.7
  %add.ptr.i.8 = getelementptr i8, ptr %3, i32 544
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #13, !srcloc !317
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.7, ptr noundef nonnull @.str.142, i32 noundef 544, i32 noundef %21) #13
  %add.ptr3.i.8 = getelementptr i8, ptr %add.ptr3.i.7, i32 %call2.i.8
  %add.ptr.i.9 = getelementptr i8, ptr %3, i32 548
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #13, !srcloc !317
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.8, ptr noundef nonnull @.str.142, i32 noundef 548, i32 noundef %23) #13
  %add.ptr3.i.9 = getelementptr i8, ptr %add.ptr3.i.8, i32 %call2.i.9
  %add.ptr.i.10 = getelementptr i8, ptr %3, i32 552
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #13, !srcloc !317
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.9, ptr noundef nonnull @.str.142, i32 noundef 552, i32 noundef %25) #13
  %add.ptr3.i.10 = getelementptr i8, ptr %add.ptr3.i.9, i32 %call2.i.10
  %add.ptr.i.11 = getelementptr i8, ptr %3, i32 556
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11) #13, !srcloc !317
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.10, ptr noundef nonnull @.str.142, i32 noundef 556, i32 noundef %27) #13
  %add.ptr3.i.11 = getelementptr i8, ptr %add.ptr3.i.10, i32 %call2.i.11
  %add.ptr.i.12 = getelementptr i8, ptr %3, i32 560
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.12) #13, !srcloc !317
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.11, ptr noundef nonnull @.str.142, i32 noundef 560, i32 noundef %29) #13
  %add.ptr3.i.12 = getelementptr i8, ptr %add.ptr3.i.11, i32 %call2.i.12
  %add.ptr.i.13 = getelementptr i8, ptr %3, i32 564
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.13) #13, !srcloc !317
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.12, ptr noundef nonnull @.str.142, i32 noundef 564, i32 noundef %31) #13
  %add.ptr3.i.13 = getelementptr i8, ptr %add.ptr3.i.12, i32 %call2.i.13
  %add.ptr.i.14 = getelementptr i8, ptr %3, i32 568
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.14) #13, !srcloc !317
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.13, ptr noundef nonnull @.str.142, i32 noundef 568, i32 noundef %33) #13
  %add.ptr3.i.14 = getelementptr i8, ptr %add.ptr3.i.13, i32 %call2.i.14
  %add.ptr.i.15 = getelementptr i8, ptr %3, i32 572
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.15) #13, !srcloc !317
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i.15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i.14, ptr noundef nonnull @.str.142, i32 noundef 572, i32 noundef %35) #13
  %add.ptr3.i.15 = getelementptr i8, ptr %add.ptr3.i.14, i32 %call2.i.15
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr3.i.15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub.i
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %37, i32 560
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #13, !srcloc !317
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.142, i32 noundef 560, i32 noundef %39) #13
  %add.ptr3.i15 = getelementptr i8, ptr %add.ptr, i32 %call2.i14
  %add.ptr.i13.1 = getelementptr i8, ptr %37, i32 564
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.1) #13, !srcloc !317
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i15, ptr noundef nonnull @.str.142, i32 noundef 564, i32 noundef %41) #13
  %add.ptr3.i15.1 = getelementptr i8, ptr %add.ptr3.i15, i32 %call2.i14.1
  %add.ptr.i13.2 = getelementptr i8, ptr %37, i32 568
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.2) #13, !srcloc !317
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i15.1, ptr noundef nonnull @.str.142, i32 noundef 568, i32 noundef %43) #13
  %add.ptr3.i15.2 = getelementptr i8, ptr %add.ptr3.i15.1, i32 %call2.i14.2
  %add.ptr.i13.3 = getelementptr i8, ptr %37, i32 572
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.3) #13, !srcloc !317
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %call2.i14.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.i15.2, ptr noundef nonnull @.str.142, i32 noundef 572, i32 noundef %45) #13
  %add.ptr3.i15.3 = getelementptr i8, ptr %add.ptr3.i15.2, i32 %call2.i14.3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr3.i15.3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !147, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !237, !238, !240, !242, !243, !245, !246, !248, !250, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !270, !271, !273, !274, !276, !277, !279, !281, !282, !284, !286, !287, !288, !289, !291, !292, !294, !296, !297, !298, !300, !302, !303}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @__initcall__kmod_sm501fb__321_2221_sm501fb_driver_init6, !1, !"__initcall__kmod_sm501fb__321_2221_sm501fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2221, i32 1}
!2 = !{ptr @__exitcall_sm501fb_driver_exit, !1, !"__exitcall_sm501fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_mode, !4, !"__param_mode", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2223, i32 1}
!5 = !{ptr @__UNIQUE_ID_modetype322, !4, !"__UNIQUE_ID_modetype322", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_mode323, !7, !"__UNIQUE_ID_mode323", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2224, i32 1}
!8 = !{ptr @__param_bpp, !9, !"__param_bpp", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2226, i32 1}
!10 = !{ptr @__UNIQUE_ID_bpptype324, !9, !"__UNIQUE_ID_bpptype324", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_bpp325, !12, !"__UNIQUE_ID_bpp325", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2227, i32 1}
!13 = !{ptr @__UNIQUE_ID_author326, !14, !"__UNIQUE_ID_author326", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2228, i32 1}
!15 = !{ptr @__UNIQUE_ID_description327, !16, !"__UNIQUE_ID_description327", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2229, i32 1}
!17 = !{ptr @__UNIQUE_ID_file328, !18, !"__UNIQUE_ID_file328", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2230, i32 1}
!19 = !{ptr @__UNIQUE_ID_license329, !18, !"__UNIQUE_ID_license329", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2216, i32 11}
!22 = !{ptr @sm501fb_driver, !23, !"sm501fb_driver", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2210, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1940, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sm501fb_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @sm501fb_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1963, i32 29}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1966, i32 31}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1976, i32 4}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sm501fb_probe._entry.8, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sm501fb_probe._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1985, i32 3}
!43 = !{ptr @sm501fb_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sm501fb_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1991, i32 3}
!47 = !{ptr @sm501fb_probe._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sm501fb_probe._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1997, i32 3}
!51 = !{ptr @sm501fb_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sm501fb_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2006, i32 3}
!55 = !{ptr @sm501fb_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sm501fb_probe._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2012, i32 3}
!59 = !{ptr @sm501fb_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sm501fb_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2018, i32 3}
!63 = !{ptr @sm501fb_probe._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sm501fb_probe._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @sm501fb_def_pdata, !66, !"sm501fb_def_pdata", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1850, i32 33}
!67 = !{ptr @sm501fb_pdata_crt, !68, !"sm501fb_pdata_crt", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1835, i32 36}
!69 = !{ptr @sm501fb_pdata_pnl, !70, !"sm501fb_pdata_pnl", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1843, i32 36}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1862, i32 45}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1862, i32 53}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1871, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sm501fb_probe_one._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sm501fb_probe_one._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1534, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sm501fb_start._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @sm501fb_start._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1541, i32 3}
!88 = !{ptr @sm501fb_start._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sm501fb_start._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1551, i32 3}
!92 = !{ptr @sm501fb_start._entry.40, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sm501fb_start._entry_ptr.42, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1558, i32 3}
!96 = !{ptr @sm501fb_start._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sm501fb_start._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1567, i32 3}
!100 = !{ptr @sm501fb_start._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sm501fb_start._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @sm501fb_start._entry.49, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1577, i32 3}
!104 = !{ptr @sm501fb_start._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @sm501fb_start._entry.51, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1584, i32 3}
!107 = !{ptr @sm501fb_start._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1592, i32 3}
!110 = !{ptr @sm501fb_start._entry.53, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @sm501fb_start._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1601, i32 3}
!114 = !{ptr @sm501fb_start._entry.56, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sm501fb_start._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1608, i32 3}
!118 = !{ptr @sm501fb_start._entry.59, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @sm501fb_start._entry_ptr.61, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/sm501fb.c", i32 242, i32 2}
!122 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sm501_alloc_mem.__UNIQUE_ID_ddebug303, !121, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!125 = !{ptr @sm501fb_start_one.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1911, i32 2}
!127 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1915, i32 3}
!130 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @sm501fb_start_one._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @sm501fb_start_one._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1921, i32 3}
!135 = !{ptr @sm501fb_start_one._entry.68, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sm501fb_start_one._entry_ptr.70, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1926, i32 2}
!139 = !{ptr @sm501fb_start_one._entry.71, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sm501fb_start_one._entry_ptr.73, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1711, i32 2}
!143 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sm501fb_init_fb._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @sm501fb_init_fb._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1740, i32 50}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1776, i32 4}
!152 = !{ptr @sm501fb_init_fb._entry.79, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sm501fb_init_fb._entry_ptr.81, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1797, i32 5}
!156 = !{ptr @sm501fb_init_fb._entry.82, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sm501fb_init_fb._entry_ptr.84, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1801, i32 5}
!160 = !{ptr @sm501fb_init_fb._entry.85, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sm501fb_init_fb._entry_ptr.87, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1805, i32 5}
!164 = !{ptr @sm501fb_init_fb._entry.88, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sm501fb_init_fb._entry_ptr.90, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1809, i32 5}
!168 = !{ptr @sm501fb_init_fb._entry.91, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sm501fb_init_fb._entry_ptr.93, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1812, i32 5}
!172 = !{ptr @sm501fb_init_fb._entry.94, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @sm501fb_init_fb._entry_ptr.96, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1813, i32 5}
!176 = !{ptr @sm501fb_init_fb._entry.97, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @sm501fb_init_fb._entry_ptr.99, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.101, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1821, i32 3}
!180 = !{ptr @sm501fb_init_fb._entry.100, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @sm501fb_init_fb._entry_ptr.102, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1828, i32 3}
!184 = !{ptr @sm501fb_init_fb._entry.103, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sm501fb_init_fb._entry_ptr.105, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @sm501fb_ops_crt, !187, !"sm501fb_ops_crt", i1 false, i1 false}
!187 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1453, i32 22}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/sm501fb.c", i32 639, i32 2}
!190 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @sm501fb_set_par_crt.__UNIQUE_ID_ddebug307, !189, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/sm501fb.c", i32 671, i32 3}
!194 = !{ptr @sm501fb_set_par_crt._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @sm501fb_set_par_crt._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.109, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/video/fbdev/sm501fb.c", i32 704, i32 2}
!198 = !{ptr @sm501fb_set_par_crt.__UNIQUE_ID_ddebug308, !197, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/sm501fb.c", i32 438, i32 2}
!201 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @sm501fb_set_par_common.__UNIQUE_ID_ddebug304, !200, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!203 = !{ptr @.str.112, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/video/fbdev/sm501fb.c", i32 479, i32 2}
!205 = !{ptr @sm501fb_set_par_common.__UNIQUE_ID_ddebug305, !204, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!206 = !{ptr @.str.113, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/sm501fb.c", i32 483, i32 3}
!208 = !{ptr @sm501fb_set_par_common._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @sm501fb_set_par_common._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.114, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/video/fbdev/sm501fb.c", i32 510, i32 2}
!212 = !{ptr @sm501fb_set_par_common.__UNIQUE_ID_ddebug306, !211, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!213 = !{ptr @.str.115, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1000, i32 2}
!215 = !{ptr @.str.116, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @sm501fb_blank_crt.__UNIQUE_ID_ddebug311, !214, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!217 = !{ptr @.str.117, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1046, i32 2}
!219 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @sm501fb_cursor.__UNIQUE_ID_ddebug312, !218, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!221 = !{ptr @.str.119, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1081, i32 3}
!223 = !{ptr @sm501fb_cursor.__UNIQUE_ID_ddebug313, !222, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1092, i32 3}
!226 = !{ptr @sm501fb_cursor.__UNIQUE_ID_ddebug314, !225, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1103, i32 3}
!229 = !{ptr @sm501fb_cursor.__UNIQUE_ID_ddebug315, !228, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!230 = !{ptr @.str.122, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1123, i32 3}
!232 = !{ptr @sm501fb_cursor.__UNIQUE_ID_ddebug316, !231, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!233 = !{ptr @.str.123, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1296, i32 3}
!235 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @sm501fb_sync._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @sm501fb_sync._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @sm501fb_ops_pnl, !239, !"sm501fb_ops_pnl", i1 false, i1 false}
!239 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1467, i32 22}
!240 = !{ptr @.str.125, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/video/fbdev/sm501fb.c", i32 808, i32 2}
!242 = !{ptr @sm501fb_set_par_pnl.__UNIQUE_ID_ddebug309, !241, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!243 = !{ptr @.str.126, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/video/fbdev/sm501fb.c", i32 968, i32 2}
!245 = !{ptr @sm501fb_blank_pnl.__UNIQUE_ID_ddebug310, !244, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!246 = !{ptr @sm501_default_mode, !247, !"sm501_default_mode", i1 false, i1 false}
!247 = !{!"../drivers/video/fbdev/sm501fb.c", i32 46, i32 34}
!248 = !{ptr @driver_name_crt, !249, !"driver_name_crt", i1 false, i1 false}
!249 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1856, i32 13}
!250 = !{ptr @driver_name_pnl, !251, !"driver_name_pnl", i1 false, i1 false}
!251 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1857, i32 13}
!252 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2099, i32 3}
!254 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @sm501fb_suspend_fb._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @sm501fb_suspend_fb._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2105, i32 3}
!259 = !{ptr @sm501fb_suspend_fb._entry.129, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @sm501fb_suspend_fb._entry_ptr.131, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.132, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2109, i32 2}
!263 = !{ptr @sm501fb_suspend_fb.__UNIQUE_ID_ddebug317, !262, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!264 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2110, i32 2}
!266 = !{ptr @sm501fb_suspend_fb.__UNIQUE_ID_ddebug318, !265, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!267 = !{ptr @.str.134, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2143, i32 2}
!269 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @sm501fb_resume_fb.__UNIQUE_ID_ddebug319, !268, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!271 = !{ptr @.str.136, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/video/fbdev/sm501fb.c", i32 2144, i32 2}
!273 = !{ptr @sm501fb_resume_fb.__UNIQUE_ID_ddebug320, !272, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!274 = !{ptr @sm501fb_groups, !275, !"sm501fb_groups", i1 false, i1 false}
!275 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1280, i32 1}
!276 = !{ptr @sm501fb_group, !275, !"sm501fb_group", i1 false, i1 false}
!277 = !{ptr @sm501fb_attrs, !278, !"sm501fb_attrs", i1 false, i1 false}
!278 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1274, i32 26}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1216, i32 8}
!281 = !{ptr @dev_attr_crt_src, !280, !"dev_attr_crt_src", i1 false, i1 false}
!282 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1169, i32 34}
!284 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1195, i32 2}
!286 = !{ptr @.str.140, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @sm501fb_crtsrc_store._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @sm501fb_crtsrc_store._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1272, i32 8}
!291 = !{ptr @dev_attr_fbregs_pnl, !290, !"dev_attr_fbregs_pnl", i1 false, i1 false}
!292 = !{ptr @.str.142, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1230, i32 23}
!294 = !{ptr @.str.143, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/video/fbdev/sm501fb.c", i32 1253, i32 8}
!296 = !{ptr @dev_attr_fbregs_crt, !295, !"dev_attr_fbregs_crt", i1 false, i1 false}
!297 = !{ptr @__param_str_mode, !4, !"__param_str_mode", i1 false, i1 false}
!298 = !{ptr @.str.144, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/video/fbdev/sm501fb.c", i32 43, i32 24}
!300 = !{ptr @fb_mode, !301, !"fb_mode", i1 false, i1 false}
!301 = !{!"../drivers/video/fbdev/sm501fb.c", i32 43, i32 14}
!302 = !{ptr @__param_str_bpp, !9, !"__param_str_bpp", i1 false, i1 false}
!303 = !{ptr @default_bpp, !304, !"default_bpp", i1 false, i1 false}
!304 = !{!"../drivers/video/fbdev/sm501fb.c", i32 44, i32 22}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{!"auto-init"}
!315 = !{i64 2156334002}
!316 = !{i64 6694723}
!317 = !{i64 6695141}
!318 = !{i64 2156392665}
!319 = !{i64 2156393212}
!320 = !{i64 2156393662}
!321 = !{i64 2156335403}
!322 = !{i64 2156335687}
!323 = !{i64 2156336407}
!324 = !{i64 2156336682, i64 2156337177, i64 2156336719, i64 2156336775, i64 2156336809, i64 2156336833, i64 2156336874, i64 2156336895, i64 2156336923, i64 2156336957}
!325 = !{i64 2156339873}
!326 = !{i64 2149005298, i64 2149005303, i64 2149005316, i64 2149005360, i64 2149005394, i64 2149005415}
!327 = !{i64 2156315404}
!328 = !{i64 2156315914}
!329 = !{i64 2156316379}
!330 = !{i64 2156316844}
!331 = !{i64 2156216300}
!332 = !{i64 2156242484}
!333 = !{i64 2156237933}
!334 = !{i64 2156238210}
!335 = !{i64 2156238681}
!336 = !{i64 2156224328}
!337 = !{i64 2156244541, i64 2156245035, i64 2156244578, i64 2156244634, i64 2156244668, i64 2156244692, i64 2156244733, i64 2156244754, i64 2156244782, i64 2156244816}
!338 = !{i64 2156248356}
!339 = !{i64 2156269587}
!340 = !{i64 2156274892}
!341 = !{i64 2156275239}
!342 = !{i64 2156299725}
!343 = !{i64 2156308531}
!344 = !{i64 2156309056}
!345 = !{i64 2156309621}
!346 = !{i64 2156310278}
!347 = !{i64 2156310875}
!348 = !{i64 2156311328}
!349 = !{i64 2156311808}
!350 = !{i64 2156312288}
!351 = !{i64 2156312768}
!352 = !{i64 2156313250}
!353 = !{i64 2156313767}
!354 = !{i64 2156314322}
!355 = !{i64 2156314838}
!356 = !{i64 2156301736}
!357 = !{i64 2156302261}
!358 = !{i64 2156302826}
!359 = !{i64 2156303483}
!360 = !{i64 2156304080}
!361 = !{i64 2156304533}
!362 = !{i64 2156305013}
!363 = !{i64 2156305493}
!364 = !{i64 2156305973}
!365 = !{i64 2156306463}
!366 = !{i64 2156306968}
!367 = !{i64 2156307487}
!368 = !{i64 2156308015}
!369 = !{i64 2156278175}
!370 = !{i64 2156281717}
!371 = !{i64 2156286871}
!372 = !{i64 2156287290}
!373 = !{i64 2156290197}
!374 = !{i64 6694921}
!375 = !{i64 2156290587}
!376 = !{i64 2156290796}
!377 = !{i64 6694526}
!378 = !{i64 2156231626}
!379 = !{i64 2148238345, i64 2148238625, i64 2148238959, i64 2148239293}
!380 = !{i64 2156235473}
!381 = !{i64 2156235943}
!382 = !{i64 2156236371}
!383 = !{i64 2156236799}
!384 = !{i64 2156237227}
!385 = !{i64 2156239154}
!386 = !{i64 2156239597}
!387 = !{i64 2156265654}
!388 = !{i64 2156266039, i64 2156266533, i64 2156266076, i64 2156266132, i64 2156266166, i64 2156266190, i64 2156266231, i64 2156266252, i64 2156266280, i64 2156266314}
!389 = !{i64 2156267559}
!390 = !{i64 2156268004}
!391 = !{i64 2156268450}
!392 = !{i64 2156268935}
!393 = !{i64 2156249024}
!394 = !{i64 2156249284}
!395 = !{i64 2156251012}
!396 = !{i64 2156252762}
!397 = !{i64 2156254512}
!398 = !{i64 2156256270}
!399 = !{i64 2156258020}
!400 = !{i64 2156259748}
!401 = !{i64 2156261476}
!402 = !{i64 2156291383}
!403 = !{i64 2156293655}
!404 = !{i64 2156293967}
!405 = !{i64 2156296003}
