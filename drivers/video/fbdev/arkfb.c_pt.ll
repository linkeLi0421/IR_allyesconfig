; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/arkfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/arkfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.79 }
%union.anon.79 = type { ptr }
%struct.atomic_t = type { i32 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svga_fb_format = type { i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32 }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.svga_timing_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vga_regset = type { i8, i8, i8 }
%struct.fb_tile_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dac_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.svga_pll = type { i16, i16, i16, i16, i16, i16, i32, i32, i32 }
%struct.pci_bus_region = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.89, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.89 = type { ptr }
%struct.arkfb_info = type { i32, i32, ptr, %struct.vgastate, %struct.mutex, i32, [16 x i32] }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dac_info = type { ptr, ptr, ptr, ptr }
%struct.ics5342_info = type { %struct.dac_info, i8 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_tilemap = type { i32, i32, i32, i32, ptr }

@__UNIQUE_ID_author305 = internal constant [62 x i8] c"arkfb.author=(c) 2007 Ondrej Zajicek <santiago@crfreenet.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [37 x i8] c"arkfb.file=drivers/video/fbdev/arkfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [18 x i8] c"arkfb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [46 x i8] c"arkfb.description=fbdev driver for ARK 2000PV\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [18 x i8] c"arkfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } { ptr @.str.4, [28 x i8] zeroinitializer }, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype309 = internal constant [33 x i8] c"arkfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option310 = internal constant [64 x i8] c"arkfb.parm=mode_option:Default video mode ('640x480-8@60', etc)\00", section ".modinfo", align 1
@__param_str_mode = internal constant [11 x i8] c"arkfb.mode\00", align 1
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_modetype311 = internal constant [26 x i8] c"arkfb.parmtype=mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode312 = internal constant [70 x i8] c"arkfb.parm=mode:Default video mode ('640x480-8@60', etc) (deprecated)\00", section ".modinfo", align 1
@__param_str_threshold = internal constant [16 x i8] c"arkfb.threshold\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@threshold = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_threshold = internal constant %struct.kernel_param { ptr @__param_str_threshold, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.79 { ptr @threshold } }, section "__param", align 4
@__UNIQUE_ID_thresholdtype313 = internal constant [29 x i8] c"arkfb.parmtype=threshold:int\00", section ".modinfo", align 1
@__UNIQUE_ID_threshold314 = internal constant [36 x i8] c"arkfb.parm=threshold:FIFO threshold\00", section ".modinfo", align 1
@arkfb_cleanup.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"arkfb\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arkfb_cleanup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/arkfb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arkfb: cleaning up\0A\00", [44 x i8] zeroinitializer }, align 32
@arkfb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ark_devices, ptr @ark_pci_probe, ptr @ark_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ark_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_arkfb__331_1195_arkfb_init6 = internal global ptr @arkfb_init, section ".initcall6.init", align 4
@__exitcall_arkfb_cleanup = internal global ptr @arkfb_cleanup, section ".exitcall.exit", align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"640x480-8@60\00", [19 x i8] zeroinitializer }, align 32
@ark_devices = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 60888, i32 41113, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ark_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ark_pci_suspend, ptr @ark_pci_resume, ptr null, ptr @ark_pci_resume, ptr @ark_pci_suspend, ptr @ark_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 951, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ignoring secondary device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ark_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr = internal global ptr @ark_pci_probe._entry, section ".printk_index", align 4
@ark_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&par->open_lock\00", [16 x i8] zeroinitializer }, align 32
@arkfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @arkfb_open, ptr @arkfb_release, ptr null, ptr null, ptr @arkfb_check_var, ptr @arkfb_set_par, ptr @arkfb_setcolreg, ptr null, ptr @arkfb_blank, ptr @arkfb_pan_display, ptr @arkfb_fillrect, ptr @cfb_copyarea, ptr @arkfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svga_get_caps, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 969, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.13 = internal global ptr @ark_pci_probe._entry.10, section ".printk_index", align 4
@ark_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 975, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot reserve framebuffer region\0A\00", [61 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.16 = internal global ptr @ark_pci_probe._entry.14, section ".printk_index", align 4
@ark_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 982, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RAMDAC initialization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.19 = internal global ptr @ark_pci_probe._entry.17, section ".printk_index", align 4
@ark_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 993, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iomap for framebuffer failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.22 = internal global ptr @ark_pci_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ARK 2000PV\00", [21 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.2, i32 1024, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode %s not found\0A\00", [45 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.26 = internal global ptr @ark_pci_probe._entry.24, section ".printk_index", align 4
@ark_pci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str.2, i32 1030, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot allocate colormap\0A\00", [38 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.29 = internal global ptr @ark_pci_probe._entry.27, section ".printk_index", align 4
@ark_pci_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str.2, i32 1036, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot register framebuffer\0A\00", [35 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.32 = internal global ptr @ark_pci_probe._entry.30, section ".printk_index", align 4
@ark_pci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.6, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016fb%d: %s on %s, %d MB RAM\0A\00", [35 x i8] zeroinitializer }, align 32
@ark_pci_probe._entry_ptr.35 = internal global ptr @ark_pci_probe._entry.33, section ".printk_index", align 4
@arkfb_formats = internal constant { [9 x %struct.svga_fb_format], [180 x i8] } { [9 x %struct.svga_fb_format] [%struct.svga_fb_format { i32 0, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 3, i32 9, i32 3, i32 8, i32 8 }, %struct.svga_fb_format { i32 4, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 8, i32 16 }, %struct.svga_fb_format { i32 4, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 1, i32 2, i32 1, i32 3, i32 8, i32 16 }, %struct.svga_fb_format { i32 8, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 8, i32 8 }, %struct.svga_fb_format { i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 4, i32 4 }, %struct.svga_fb_format { i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 4, i32 4 }, %struct.svga_fb_format { i32 24, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 8, i32 8 }, %struct.svga_fb_format { i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2 }, %struct.svga_fb_format { i32 65535, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [180 x i8] zeroinitializer }, align 32
@arkfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fb%d: unsupported mode requested\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arkfb_check_var\00", [16 x i8] zeroinitializer }, align 32
@arkfb_check_var._entry_ptr = internal global ptr @arkfb_check_var._entry, section ".printk_index", align 4
@arkfb_check_var._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013fb%d: not enough framebuffer memory (%d kB requested, %d kB available)\0A\00", [54 x i8] zeroinitializer }, align 32
@arkfb_check_var._entry_ptr.40 = internal global ptr @arkfb_check_var._entry.38, section ".printk_index", align 4
@ark_timing_regs = internal constant { %struct.svga_timing_regs, [48 x i8] } { %struct.svga_timing_regs { ptr @ark_h_total_regs, ptr @ark_h_display_regs, ptr @ark_h_blank_start_regs, ptr @ark_h_blank_end_regs, ptr @ark_h_sync_start_regs, ptr @ark_h_sync_end_regs, ptr @ark_v_total_regs, ptr @ark_v_display_regs, ptr @ark_v_blank_start_regs, ptr @ark_v_blank_end_regs, ptr @ark_v_sync_start_regs, ptr @ark_v_sync_end_regs }, [48 x i8] zeroinitializer }, align 32
@arkfb_check_var._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013fb%d: invalid timings requested\0A\00", [61 x i8] zeroinitializer }, align 32
@arkfb_check_var._entry_ptr.43 = internal global ptr @arkfb_check_var._entry.41, section ".printk_index", align 4
@ark_h_total_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 0, i8 0, i8 7 }, %struct.vga_regset { i8 65, i8 7, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@ark_h_display_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 1, i8 0, i8 7 }, %struct.vga_regset { i8 65, i8 6, i8 6 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@ark_h_blank_start_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 2, i8 0, i8 7 }, %struct.vga_regset { i8 65, i8 5, i8 5 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@ark_h_blank_end_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 3, i8 0, i8 4 }, %struct.vga_regset { i8 5, i8 7, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@ark_h_sync_start_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 4, i8 0, i8 7 }, %struct.vga_regset { i8 65, i8 4, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@ark_h_sync_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 5, i8 0, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@ark_v_total_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 6, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 0, i8 0 }, %struct.vga_regset { i8 7, i8 5, i8 5 }, %struct.vga_regset { i8 64, i8 7, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@ark_v_display_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 18, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 1, i8 1 }, %struct.vga_regset { i8 7, i8 6, i8 6 }, %struct.vga_regset { i8 64, i8 6, i8 6 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@ark_v_blank_start_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 21, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 3, i8 3 }, %struct.vga_regset { i8 9, i8 5, i8 5 }, %struct.vga_regset { i8 64, i8 5, i8 5 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@ark_v_blank_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 22, i8 0, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@ark_v_sync_start_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 16, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 2, i8 2 }, %struct.vga_regset { i8 7, i8 7, i8 7 }, %struct.vga_regset { i8 64, i8 4, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@ark_v_sync_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 17, i8 0, i8 3 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@arkfb_tile_ops = internal global { %struct.fb_tile_ops, [40 x i8] } { %struct.fb_tile_ops { ptr @arkfb_settile, ptr @svga_tilecopy, ptr @svga_tilefill, ptr @svga_tileblit, ptr @arkfb_tilecursor, ptr @svga_get_tilemax }, [40 x i8] zeroinitializer }, align 32
@ark_line_compare_regs = internal constant { [4 x %struct.vga_regset], [20 x i8] } { [4 x %struct.vga_regset] [%struct.vga_regset { i8 24, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 4, i8 4 }, %struct.vga_regset { i8 9, i8 6, i8 6 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [20 x i8] zeroinitializer }, align 32
@ark_start_address_regs = internal constant { [4 x %struct.vga_regset], [20 x i8] } { [4 x %struct.vga_regset] [%struct.vga_regset { i8 13, i8 0, i8 7 }, %struct.vga_regset { i8 12, i8 0, i8 7 }, %struct.vga_regset { i8 64, i8 0, i8 2 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [20 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arkfb_set_par\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fb%d: offset register       : %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ark_offset_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 19, i8 0, i8 7 }, %struct.vga_regset { i8 65, i8 3, i8 3 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb%d: text mode\0A\00", [47 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 4 bit pseudocolor\0A\00", [39 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.48, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb%d: 4 bit pseudocolor, planar\0A\00", [63 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.49, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 8 bit pseudocolor\0A\00", [39 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.50, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fb%d: not using multiplex\0A\00", [37 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: using multiplex\0A\00", [41 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.52, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 5/5/5 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.53, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 5/6/5 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.54, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 8/8/8 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@arkfb_set_par.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.55, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 8/8/8/8 truecolor\0A\00", [39 x i8] zeroinitializer }, align 32
@arkfb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013fb%d: unsupported mode - bug\0A\00", [32 x i8] zeroinitializer }, align 32
@arkfb_set_par._entry_ptr = internal global ptr @arkfb_set_par._entry, section ".printk_index", align 4
@arkfb_settile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013fb%d: unsupported font parameters: width %d, height %d, depth %d, length %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arkfb_settile\00", [18 x i8] zeroinitializer }, align 32
@arkfb_settile._entry_ptr = internal global ptr @arkfb_settile._entry, section ".printk_index", align 4
@ark_set_pixclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013fb%d: cannot set requested pixclock, keeping old value\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ark_set_pixclock\00", [47 x i8] zeroinitializer }, align 32
@ark_set_pixclock._entry_ptr = internal global ptr @ark_set_pixclock._entry, section ".printk_index", align 4
@arkfb_blank.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arkfb_blank\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb%d: unblank\0A\00", [17 x i8] zeroinitializer }, align 32
@arkfb_blank.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fb%d: blank\0A\00", [19 x i8] zeroinitializer }, align 32
@arkfb_blank.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb%d: sync down\0A\00", [47 x i8] zeroinitializer }, align 32
@ics5342_ops = internal global { %struct.dac_ops, [44 x i8] } { %struct.dac_ops { ptr null, ptr @ics5342_set_mode, ptr null, ptr @ics5342_set_freq, ptr @ics5342_release }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ics5342_mode_table = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01!aA\00\111Q\91q", [22 x i8] zeroinitializer }, align 32
@ics5342_pll_pd4 = internal constant { %struct.svga_pll, [40 x i8] } { %struct.svga_pll { i16 3, i16 129, i16 3, i16 33, i16 2, i16 2, i32 60000, i32 335000, i32 14318 }, [40 x i8] zeroinitializer }, align 32
@ics5342_pll = internal constant { %struct.svga_pll, [40 x i8] } { %struct.svga_pll { i16 3, i16 129, i16 3, i16 33, i16 0, i16 3, i32 60000, i32 250000, i32 14318 }, [40 x i8] zeroinitializer }, align 32
@dac_regs = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 968, i16 969, i16 966, i16 967], [24 x i8] zeroinitializer }, align 32
@ark_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1095, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ark_pci_suspend\00", [16 x i8] zeroinitializer }, align 32
@ark_pci_suspend._entry_ptr = internal global ptr @ark_pci_suspend._entry, section ".printk_index", align 4
@ark_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1122, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ark_pci_resume\00", [17 x i8] zeroinitializer }, align 32
@ark_pci_resume._entry_ptr = internal global ptr @ark_pci_resume._entry, section ".printk_index", align 4
@arkfb_init.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arkfb_init\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arkfb: initializing\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 99, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 110, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1172, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"arkfb_pci_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1160, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 99, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"ark_devices\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1152, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"ark_pci_pm_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1139, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 951, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 961, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"arkfb_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 920, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 969, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 975, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 982, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 993, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1011, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1024, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1030, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1036, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1040, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"arkfb_formats\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 44, i32 36 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 573, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 593, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"ark_timing_regs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 86, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 601, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"ark_h_total_regs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 67, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"ark_h_display_regs\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 68, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant [23 x i8] c"ark_h_blank_start_regs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 69, i32 32 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"ark_h_blank_end_regs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 70, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant [22 x i8] c"ark_h_sync_start_regs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 71, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"ark_h_sync_end_regs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 72, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"ark_v_total_regs\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 74, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"ark_v_display_regs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 75, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"ark_v_blank_start_regs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 76, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"ark_v_blank_end_regs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 78, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant [22 x i8] c"ark_v_sync_start_regs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 79, i32 32 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"ark_v_sync_end_regs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 80, i32 32 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"arkfb_tile_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 154, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"ark_line_compare_regs\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 82, i32 32 }
@___asan_gen_.252 = private unnamed_addr constant [23 x i8] c"ark_start_address_regs\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 83, i32 32 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 683, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"ark_offset_regs\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 84, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 706, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 715, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 723, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 730, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 735, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 739, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 746, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 753, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 760, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 769, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 777, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 127, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 506, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 869, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 874, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 881, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [12 x i8] c"ics5342_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 432, i32 23 }
@___asan_gen_.333 = private unnamed_addr constant [19 x i8] c"ics5342_mode_table\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 374, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant [16 x i8] c"ics5342_pll_pd4\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 402, i32 30 }
@___asan_gen_.339 = private unnamed_addr constant [12 x i8] c"ics5342_pll\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 398, i32 30 }
@___asan_gen_.342 = private unnamed_addr constant [9 x i8] c"dac_regs\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 458, i32 23 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1095, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1122, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private constant [31 x i8] c"../drivers/video/fbdev/arkfb.c\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1191, i32 2 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mode312, ptr @__UNIQUE_ID_mode_option310, ptr @__UNIQUE_ID_mode_optiontype309, ptr @__UNIQUE_ID_modetype311, ptr @__UNIQUE_ID_threshold314, ptr @__UNIQUE_ID_thresholdtype313, ptr @__exitcall_arkfb_cleanup, ptr @__initcall__kmod_arkfb__331_1195_arkfb_init6, ptr @__param_mode, ptr @__param_mode_option, ptr @__param_threshold, ptr @ark_pci_probe._entry, ptr @ark_pci_probe._entry.10, ptr @ark_pci_probe._entry.14, ptr @ark_pci_probe._entry.17, ptr @ark_pci_probe._entry.20, ptr @ark_pci_probe._entry.24, ptr @ark_pci_probe._entry.27, ptr @ark_pci_probe._entry.30, ptr @ark_pci_probe._entry.33, ptr @ark_pci_probe._entry_ptr, ptr @ark_pci_probe._entry_ptr.13, ptr @ark_pci_probe._entry_ptr.16, ptr @ark_pci_probe._entry_ptr.19, ptr @ark_pci_probe._entry_ptr.22, ptr @ark_pci_probe._entry_ptr.26, ptr @ark_pci_probe._entry_ptr.29, ptr @ark_pci_probe._entry_ptr.32, ptr @ark_pci_probe._entry_ptr.35, ptr @ark_pci_resume._entry, ptr @ark_pci_resume._entry_ptr, ptr @ark_pci_suspend._entry, ptr @ark_pci_suspend._entry_ptr, ptr @ark_set_pixclock._entry, ptr @ark_set_pixclock._entry_ptr, ptr @arkfb_check_var._entry, ptr @arkfb_check_var._entry.38, ptr @arkfb_check_var._entry.41, ptr @arkfb_check_var._entry_ptr, ptr @arkfb_check_var._entry_ptr.40, ptr @arkfb_check_var._entry_ptr.43, ptr @arkfb_cleanup, ptr @arkfb_set_par._entry, ptr @arkfb_set_par._entry_ptr, ptr @arkfb_settile._entry, ptr @arkfb_settile._entry_ptr, ptr @mode_option, ptr @threshold, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @arkfb_pci_driver, ptr @.str.4, ptr @ark_devices, ptr @ark_pci_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ark_pci_probe.__key, ptr @.str.9, ptr @arkfb_ops, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @arkfb_formats, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @ark_timing_regs, ptr @.str.42, ptr @ark_h_total_regs, ptr @ark_h_display_regs, ptr @ark_h_blank_start_regs, ptr @ark_h_blank_end_regs, ptr @ark_h_sync_start_regs, ptr @ark_h_sync_end_regs, ptr @ark_v_total_regs, ptr @ark_v_display_regs, ptr @ark_v_blank_start_regs, ptr @ark_v_blank_end_regs, ptr @ark_v_sync_start_regs, ptr @ark_v_sync_end_regs, ptr @arkfb_tile_ops, ptr @ark_line_compare_regs, ptr @ark_start_address_regs, ptr @.str.44, ptr @.str.45, ptr @ark_offset_regs, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @ics5342_ops, ptr @ics5342_mode_table, ptr @ics5342_pll_pd4, ptr @ics5342_pll, ptr @dac_regs, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_formats to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_check_var._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_timing_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_check_var._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_h_total_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_h_display_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_h_blank_start_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_h_blank_end_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_h_sync_start_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_h_sync_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_v_total_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_v_display_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_v_blank_start_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_v_blank_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_v_sync_start_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_v_sync_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_tile_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_line_compare_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_start_address_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_offset_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arkfb_settile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_set_pixclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics5342_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics5342_mode_table to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics5342_pll_pd4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics5342_pll to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arkfb_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_cleanup.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_cleanup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !234

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_cleanup.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pci_unregister_driver(ptr noundef nonnull @arkfb_pci_driver) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #8
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then3

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %2, ptr @mode_option, align 4
  br label %do.body

do.body:                                          ; preds = %if.then3, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_init.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_init, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !234

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_init.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.70) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call11 = call i32 @__pci_register_driver(ptr noundef nonnull @arkfb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ark_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %flags.i = alloca i16, align 2
  %bus_reg = alloca %struct.pci_bus_region, align 4
  %vga_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bus_reg) #8
  %0 = ptrtoint ptr %bus_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_reg, align 4, !annotation !235
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %bus_reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vga_res) #8
  %3 = getelementptr inbounds %struct.resource, ptr %vga_res, i32 0, i32 3
  %4 = call ptr @memset(ptr %vga_res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %flags.i) #8
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %flags.i, align 2, !annotation !235
  %call.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %flags.i) #8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = and i16 %7, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @framebuffer_alloc(i32 noundef 212, ptr noundef %dev1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %par7 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 30
  %9 = ptrtoint ptr %par7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par7, align 4
  %open_lock = getelementptr inbounds %struct.arkfb_info, ptr %10, i32 0, i32 4
  call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ark_pci_probe.__key) #8
  %flags = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8256, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 20
  %12 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @arkfb_ops, ptr %fbops, align 4
  %call11 = call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #11
  br label %err_enable_device

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %device23 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %15 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15) #11
  br label %err_enable_device

if.end24:                                         ; preds = %if.end16
  %call25 = call fastcc ptr @ics5342_init(ptr noundef nonnull %call3)
  %dac = getelementptr inbounds %struct.arkfb_info, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %dac to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call25, ptr %dac, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %device32 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %18 = ptrtoint ptr %device32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18) #11
  br label %err_dac

if.end33:                                         ; preds = %if.end24
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource, align 8
  %fix = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %smem_start, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %23 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36 = icmp eq i32 %24, 0
  br i1 %cmp36, label %if.end33.cond.end_crit_edge, label %cond.false

if.end33.cond.end_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resource, align 8
  %sub = add i32 %24, 1
  %add = sub i32 %sub, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end33.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end33.cond.end_crit_edge ]
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %smem_len, align 4
  %call44 = call ptr @pci_iomap_wc(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 25
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call44, ptr %28, align 4
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %device50 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %30 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21) #11
  br label %err_iomap

if.end51:                                         ; preds = %cond.end
  %32 = ptrtoint ptr %bus_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bus_reg, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65536, ptr %1, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %3, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %36, ptr noundef nonnull %vga_res, ptr noundef nonnull %bus_reg) #8
  %37 = ptrtoint ptr %vga_res to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vga_res, align 4
  %39 = inttoptr i32 %38 to ptr
  %state = getelementptr inbounds %struct.arkfb_info, ptr %10, i32 0, i32 3
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %state, align 4
  %call58 = call fastcc zeroext i8 @vga_rseq(ptr noundef %39, i8 noundef zeroext 16)
  %41 = lshr i8 %call58, 6
  %42 = zext i8 %41 to i32
  %shl59 = shl nuw nsw i32 1048576, %42
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %43 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl59, ptr %screen_size, align 4
  %44 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl59, ptr %smem_len, align 4
  %45 = call ptr @memcpy(ptr %fix, ptr @.str.23, i32 11)
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 10
  %46 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 11
  %47 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %mmio_len, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %type, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 5
  %49 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %visual, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 7
  %50 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %ypanstep, align 2
  %accel = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 12
  %51 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %accel, align 4
  %pseudo_palette = getelementptr inbounds %struct.arkfb_info, ptr %10, i32 0, i32 6
  %pseudo_palette73 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 27
  %52 = ptrtoint ptr %pseudo_palette73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pseudo_palette, ptr %pseudo_palette73, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6
  %53 = load ptr, ptr @mode_option, align 4
  %call74 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call3, ptr noundef %53, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #8
  %call74.off = add i32 %call74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call74.off)
  %switch = icmp ult i32 %call74.off, 2
  br i1 %switch, label %if.end84, label %if.then79

if.then79:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %device83 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %54 = ptrtoint ptr %device83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device83, align 4
  %56 = load ptr, ptr @mode_option, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.25, ptr noundef %56) #11
  br label %err_find_mode

if.end84:                                         ; preds = %if.end51
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 12
  %call85 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %device92 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %57 = ptrtoint ptr %device92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device92, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.28) #11
  br label %err_find_mode

if.end93:                                         ; preds = %if.end84
  %call94 = call i32 @register_framebuffer(ptr noundef nonnull %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end100, label %do.end105

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %device101 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %59 = ptrtoint ptr %device101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device101, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.31) #11
  call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_find_mode

do.end105:                                        ; preds = %if.end93
  %node = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 1
  %61 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %node, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %63 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end105.pci_name.exit_crit_edge

do.end105.pci_name.exit_crit_edge:                ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end105.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %66, %if.end.i.i ], [ %64, %do.end105.pci_name.exit_crit_edge ]
  %67 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %smem_len, align 4
  %shr112 = lshr i32 %68, 20
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %62, ptr noundef %fix, ptr noundef %retval.0.i.i, i32 noundef %shr112) #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %wc_cookie = getelementptr inbounds %struct.arkfb_info, ptr %10, i32 0, i32 1
  %70 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %wc_cookie, align 4
  br label %cleanup

err_find_mode:                                    ; preds = %do.end100, %do.end91, %if.then79
  %rc.0 = phi i32 [ %call85, %do.end91 ], [ %call94, %do.end100 ], [ -22, %if.then79 ]
  %71 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %28, align 4
  call void @pci_iounmap(ptr noundef %dev, ptr noundef %72) #8
  br label %err_iomap

err_iomap:                                        ; preds = %err_find_mode, %if.then46
  %rc.1 = phi i32 [ %rc.0, %err_find_mode ], [ -12, %if.then46 ]
  %73 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dac, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %dac_release.i = getelementptr inbounds %struct.dac_ops, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %dac_release.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dac_release.i, align 4
  call void %78(ptr noundef %74) #8
  br label %err_dac

err_dac:                                          ; preds = %err_iomap, %if.then28
  %rc.2 = phi i32 [ %rc.1, %err_iomap ], [ -12, %if.then28 ]
  call void @pci_release_regions(ptr noundef %dev) #8
  br label %err_enable_device

err_enable_device:                                ; preds = %err_dac, %do.end22, %do.end15
  %rc.3 = phi i32 [ %call11, %do.end15 ], [ %call17, %do.end22 ], [ %rc.2, %err_dac ]
  call void @framebuffer_release(ptr noundef nonnull %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %err_enable_device, %pci_name.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.3, %err_enable_device ], [ 0, %pci_name.exit ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vga_res) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bus_reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark_pci_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %dac = getelementptr inbounds %struct.arkfb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dac, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dac_release.i = getelementptr inbounds %struct.dac_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dac_release.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dac_release.i, align 4
  tail call void %9(ptr noundef %5) #8
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %12) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @framebuffer_release(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @ics5342_init(ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ics5342_ops, ptr %call7.i.i, align 8
  %dac_read_regs = getelementptr inbounds %struct.dac_info, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %dac_read_regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ark_dac_read_regs, ptr %dac_read_regs, align 4
  %dac_write_regs = getelementptr inbounds %struct.dac_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dac_write_regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ark_dac_write_regs, ptr %dac_write_regs, align 8
  %data1 = getelementptr inbounds %struct.dac_info, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %mode = getelementptr inbounds %struct.ics5342_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark_dac_read_regs(ptr nocapture noundef readonly %data, ptr nocapture noundef %code, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %data, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 28) #8, !srcloc !236
  %add.ptr.i.i3.i = getelementptr i8, ptr %3, i32 965
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 28) #8, !srcloc !236
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit

vga_rseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %4, %if.then.i4.i ], [ %5, %if.else.i5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not36 = icmp eq i32 %count, 0
  br i1 %cmp.not36, label %vga_rseq.exit.while.end_crit_edge, label %vga_rseq.exit.while.body_crit_edge

vga_rseq.exit.while.body_crit_edge:               ; preds = %vga_rseq.exit
  br label %while.body

vga_rseq.exit.while.end_crit_edge:                ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %vga_r.exit.while.body_crit_edge, %vga_rseq.exit.while.body_crit_edge
  %code.addr.038 = phi ptr [ %add.ptr, %vga_r.exit.while.body_crit_edge ], [ %code, %vga_rseq.exit.while.body_crit_edge ]
  %count.addr.037 = phi i32 [ %dec, %vga_r.exit.while.body_crit_edge ], [ %count, %vga_rseq.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %8 = ptrtoint ptr %code.addr.038 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code.addr.038, align 1
  %10 = shl i8 %9, 5
  %11 = and i8 %10, -128
  %or24 = or i8 %11, %retval.0.i.i
  %tobool.not.i.i25 = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i25, label %if.else.i5.i29, label %if.then.i4.i28

if.then.i4.i28:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i26 = getelementptr i8, ptr %7, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i26, i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i27 = getelementptr i8, ptr %7, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i27, i8 %or24) #8, !srcloc !236
  br label %vga_wseq.exit

if.else.i5.i29:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or24) #8, !srcloc !236
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i29, %if.then.i4.i28
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %14 = ptrtoint ptr %code.addr.038 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %code.addr.038, align 1
  %16 = and i8 %15, 3
  %and10 = zext i8 %16 to i32
  %arrayidx11 = getelementptr [4 x i16], ptr @dac_regs, i32 0, i32 %and10
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx11, align 2
  %tobool.not.i = icmp eq ptr %13, null
  %conv.i4.i = zext i16 %18 to i32
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i4.i
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_r.exit

if.else.i:                                        ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i.i = or i32 %conv.i4.i, -18874368
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_r.exit

vga_r.exit:                                       ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %19, %if.then.i ], [ %21, %if.else.i ]
  %arrayidx13 = getelementptr i8, ptr %code.addr.038, i32 1
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %retval.0.i, ptr %arrayidx13, align 1
  %dec = add i32 %count.addr.037, -1
  %add.ptr = getelementptr i8, ptr %code.addr.038, i32 2
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %vga_r.exit.while.end_crit_edge, label %vga_r.exit.while.body_crit_edge

vga_r.exit.while.body_crit_edge:                  ; preds = %vga_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

vga_r.exit.while.end_crit_edge:                   ; preds = %vga_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %vga_r.exit.while.end_crit_edge, %vga_rseq.exit.while.end_crit_edge
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %tobool.not.i.i30 = icmp eq ptr %24, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i30, label %if.else.i5.i34, label %if.then.i4.i33

if.then.i4.i33:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i31 = getelementptr i8, ptr %24, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i31, i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i32 = getelementptr i8, ptr %24, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i32, i8 %retval.0.i.i) #8, !srcloc !236
  br label %vga_wseq.exit35

if.else.i5.i34:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i) #8, !srcloc !236
  br label %vga_wseq.exit35

vga_wseq.exit35:                                  ; preds = %if.else.i5.i34, %if.then.i4.i33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark_dac_write_regs(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %code, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %data, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 28) #8, !srcloc !236
  %add.ptr.i.i3.i = getelementptr i8, ptr %3, i32 965
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 28) #8, !srcloc !236
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit

vga_rseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %4, %if.then.i4.i ], [ %5, %if.else.i5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not35 = icmp eq i32 %count, 0
  br i1 %cmp.not35, label %vga_rseq.exit.while.end_crit_edge, label %vga_rseq.exit.while.body_crit_edge

vga_rseq.exit.while.body_crit_edge:               ; preds = %vga_rseq.exit
  br label %while.body

vga_rseq.exit.while.end_crit_edge:                ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %vga_w.exit.while.body_crit_edge, %vga_rseq.exit.while.body_crit_edge
  %code.addr.037 = phi ptr [ %add.ptr, %vga_w.exit.while.body_crit_edge ], [ %code, %vga_rseq.exit.while.body_crit_edge ]
  %count.addr.036 = phi i32 [ %dec, %vga_w.exit.while.body_crit_edge ], [ %count, %vga_rseq.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %8 = ptrtoint ptr %code.addr.037 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code.addr.037, align 1
  %10 = shl i8 %9, 5
  %11 = and i8 %10, -128
  %or23 = or i8 %11, %retval.0.i.i
  %tobool.not.i.i24 = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i24, label %if.else.i5.i28, label %if.then.i4.i27

if.then.i4.i27:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i25 = getelementptr i8, ptr %7, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i25, i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i26 = getelementptr i8, ptr %7, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i26, i8 %or23) #8, !srcloc !236
  br label %vga_wseq.exit

if.else.i5.i28:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or23) #8, !srcloc !236
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i28, %if.then.i4.i27
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %14 = ptrtoint ptr %code.addr.037 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %code.addr.037, align 1
  %16 = and i8 %15, 3
  %and10 = zext i8 %16 to i32
  %arrayidx11 = getelementptr [4 x i16], ptr @dac_regs, i32 0, i32 %and10
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx11, align 2
  %arrayidx12 = getelementptr i8, ptr %code.addr.037, i32 1
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12, align 1
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i16 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %20) #8, !srcloc !236
  br label %vga_w.exit

if.else.i:                                        ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i4.i = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %add.i.i.i = or i32 %conv.i4.i, -18874368
  %21 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %20) #8, !srcloc !236
  br label %vga_w.exit

vga_w.exit:                                       ; preds = %if.else.i, %if.then.i
  %dec = add i32 %count.addr.036, -1
  %add.ptr = getelementptr i8, ptr %code.addr.037, i32 2
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %vga_w.exit.while.end_crit_edge, label %vga_w.exit.while.body_crit_edge

vga_w.exit.while.body_crit_edge:                  ; preds = %vga_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

vga_w.exit.while.end_crit_edge:                   ; preds = %vga_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %vga_w.exit.while.end_crit_edge, %vga_rseq.exit.while.end_crit_edge
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %tobool.not.i.i29 = icmp eq ptr %23, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i29, label %if.else.i5.i33, label %if.then.i4.i32

if.then.i4.i32:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i30 = getelementptr i8, ptr %23, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i30, i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i31 = getelementptr i8, ptr %23, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i31, i8 %retval.0.i.i) #8, !srcloc !236
  br label %vga_wseq.exit34

if.else.i5.i33:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 28) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i) #8, !srcloc !236
  br label %vga_wseq.exit34

vga_wseq.exit34:                                  ; preds = %if.else.i5.i33, %if.then.i4.i32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @vga_rseq(ptr noundef %regbase, i8 noundef zeroext %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %if.else.i5, label %if.then.i4

if.then.i4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %regbase, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %reg) #8, !srcloc !236
  %add.ptr.i.i3 = getelementptr i8, ptr %regbase, i32 965
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_r.exit

if.else.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %reg) #8, !srcloc !236
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_r.exit

vga_r.exit:                                       ; preds = %if.else.i5, %if.then.i4
  %retval.0.i = phi i8 [ %0, %if.then.i4 ], [ %1, %if.else.i5 ]
  ret i8 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %6 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 36)
  store ptr %5, ptr %state, align 4
  %flags = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31, ptr %flags, align 4
  %num_crtc = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 96, ptr %num_crtc, align 4
  %num_seq = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %num_seq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 48, ptr %num_seq, align 4
  %call = tail call i32 @save_vga(ptr noundef %state) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %ref_count, align 4
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end7_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %call = tail call i32 @restore_vga(ptr noundef %state) #8
  %dac = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dac, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dac_set_mode.i = getelementptr inbounds %struct.dac_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dac_set_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dac_set_mode.i, align 4
  %call.i = tail call i32 %10(ptr noundef %6, i32 noundef 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %ref_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @svga_match_format(ptr noundef nonnull @arkfb_formats, ptr noundef %var, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2 = icmp ugt i32 %3, %5
  br i1 %cmp2, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %xres_virtual, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %7 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7 = icmp ugt i32 %8, %10
  br i1 %cmp7, label %if.then8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %yres_virtual, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %xresstep = getelementptr [9 x %struct.svga_fb_format], ptr @arkfb_formats, i32 0, i32 %call, i32 10
  %12 = ptrtoint ptr %xresstep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xresstep, align 4
  %sub = add i32 %13, -1
  %14 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xres_virtual, align 4
  %add = add i32 %sub, %15
  %neg = sub i32 0, %13
  %and = and i32 %add, %neg
  store i32 %and, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %17, %and
  %shr = lshr i32 %mul, 3
  %18 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual, align 4
  %mul16 = mul i32 %shr, %19
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %20 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16, i32 %21)
  %cmp17 = icmp ugt i32 %mul16, %21
  %node23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %node23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node23, align 4
  br i1 %cmp17, label %do.end21, label %if.end28

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %shr24 = ashr i32 %mul16, 10
  %shr26 = lshr i32 %21, 10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %23, i32 noundef %shr24, i32 noundef %shr26) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end11
  %call30 = tail call i32 @svga_check_timings(ptr noundef nonnull @ark_timing_regs, ptr noundef %var, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %node23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node23, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %25) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %26 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vmode, align 4
  %and40 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool.not = icmp eq i32 %and40, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end35, %do.end21, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end21 ], [ %call30, %do.end35 ], [ %., %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_set_par(ptr noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %ypanstep15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ypanstep15 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %ypanstep15, align 2
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %6, %3
  %div520 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %7 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div520, ptr %line_length, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, -131073
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp4 = icmp eq i32 %3, 4
  %cond = select i1 %cmp4, i32 128, i32 -1
  %div9521 = lshr i32 %mul, 6
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  %mul13 = mul i32 %11, %div520
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ypanstep15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %ypanstep15, align 2
  %line_length17 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %13 = ptrtoint ptr %line_length17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %line_length17, align 4
  %flags18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags18, align 4
  %or = or i32 %15, 131072
  store i32 %or, ptr %flags18, align 4
  %xres_virtual25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %xres_virtual25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres_virtual25, align 4
  %div26516 = lshr i32 %17, 4
  %yres_virtual30 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %yres_virtual30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual30, align 4
  %mul31 = mul i32 %19, %17
  %div32517 = lshr i32 %mul31, 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink929 = phi ptr [ @arkfb_tile_ops, %if.else ], [ null, %if.then ]
  %cond.sink = phi i32 [ 128, %if.else ], [ %cond, %if.then ]
  %.sink = phi i32 [ 32768, %if.else ], [ -1, %if.then ]
  %screen_size.0 = phi i32 [ %div32517, %if.else ], [ %mul13, %if.then ]
  %offset_value.0 = phi i32 [ %div26516, %if.else ], [ %div9521, %if.then ]
  %20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.sink929, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond.sink, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %24, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %27 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %yoffset, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %28 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %activate, align 4
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 17) #8, !srcloc !236
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %30, i32 981
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i

if.else.i5.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #8, !srcloc !236
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %31, %if.then.i4.i.i ], [ %32, %if.else.i5.i.i ]
  %and4.i = and i8 %retval.0.i.i.i, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %30, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %30, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %and4.i) #8, !srcloc !236
  br label %svga_wcrt_mask.exit

if.else.i5.i14.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i) #8, !srcloc !236
  br label %svga_wcrt_mask.exit

svga_wcrt_mask.exit:                              ; preds = %if.else.i5.i14.i, %if.then.i4.i13.i
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i552 = icmp eq ptr %34, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i552, label %if.else.i5.i.i556, label %if.then.i4.i.i555

if.then.i4.i.i555:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i553 = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i553, i8 1) #8, !srcloc !236
  %add.ptr.i.i3.i.i554 = getelementptr i8, ptr %34, i32 965
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i554) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i

if.else.i5.i.i556:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i556, %if.then.i4.i.i555
  %retval.0.i.i.i557 = phi i8 [ %35, %if.then.i4.i.i555 ], [ %36, %if.else.i5.i.i556 ]
  %or.i = or i8 %retval.0.i.i.i557, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i552, label %if.else.i5.i14.i562, label %if.then.i4.i13.i561

if.then.i4.i13.i561:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i559 = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i559, i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i560 = getelementptr i8, ptr %34, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i560, i8 %or.i) #8, !srcloc !236
  br label %svga_wseq_mask.exit

if.else.i5.i14.i562:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #8, !srcloc !236
  br label %svga_wseq_mask.exit

svga_wseq_mask.exit:                              ; preds = %if.else.i5.i14.i562, %if.then.i4.i13.i561
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i563 = icmp eq ptr %38, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i563, label %if.else.i5.i.i567, label %if.then.i4.i.i566

if.then.i4.i.i566:                                ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i564 = getelementptr i8, ptr %38, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i564, i8 23) #8, !srcloc !236
  %add.ptr.i.i3.i.i565 = getelementptr i8, ptr %38, i32 981
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i565) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i570

if.else.i5.i.i567:                                ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i570

vga_rcrt.exit.i570:                               ; preds = %if.else.i5.i.i567, %if.then.i4.i.i566
  %retval.0.i.i.i568 = phi i8 [ %39, %if.then.i4.i.i566 ], [ %40, %if.else.i5.i.i567 ]
  %and4.i569 = and i8 %retval.0.i.i.i568, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i563, label %if.else.i5.i14.i574, label %if.then.i4.i13.i573

if.then.i4.i13.i573:                              ; preds = %vga_rcrt.exit.i570
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i571 = getelementptr i8, ptr %38, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i571, i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i572 = getelementptr i8, ptr %38, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i572, i8 %and4.i569) #8, !srcloc !236
  br label %svga_wcrt_mask.exit575

if.else.i5.i14.i574:                              ; preds = %vga_rcrt.exit.i570
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i569) #8, !srcloc !236
  br label %svga_wcrt_mask.exit575

svga_wcrt_mask.exit575:                           ; preds = %if.else.i5.i14.i574, %if.then.i4.i13.i573
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_gfx_regs(ptr noundef %42) #8
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_atc_regs(ptr noundef %44) #8
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_seq_regs(ptr noundef %46) #8
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_crt_regs(ptr noundef %48) #8
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %50, ptr noundef nonnull @ark_line_compare_regs, i32 noundef -1) #8
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %52, ptr noundef nonnull @ark_start_address_regs, i32 noundef 0) #8
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i576 = icmp eq ptr %54, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i576, label %if.else.i5.i.i580, label %if.then.i4.i.i579

if.then.i4.i.i579:                                ; preds = %svga_wcrt_mask.exit575
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i577 = getelementptr i8, ptr %54, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i577, i8 16) #8, !srcloc !236
  %add.ptr.i.i3.i.i578 = getelementptr i8, ptr %54, i32 965
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i578) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i584

if.else.i5.i.i580:                                ; preds = %svga_wcrt_mask.exit575
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 16) #8, !srcloc !236
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i584

vga_rseq.exit.i584:                               ; preds = %if.else.i5.i.i580, %if.then.i4.i.i579
  %retval.0.i.i.i581 = phi i8 [ %55, %if.then.i4.i.i579 ], [ %56, %if.else.i5.i.i580 ]
  %or.i583 = or i8 %retval.0.i.i.i581, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i576, label %if.else.i5.i14.i588, label %if.then.i4.i13.i587

if.then.i4.i13.i587:                              ; preds = %vga_rseq.exit.i584
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i585 = getelementptr i8, ptr %54, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i585, i8 16) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i586 = getelementptr i8, ptr %54, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i586, i8 %or.i583) #8, !srcloc !236
  br label %svga_wseq_mask.exit589

if.else.i5.i14.i588:                              ; preds = %vga_rseq.exit.i584
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 16) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i583) #8, !srcloc !236
  br label %svga_wseq_mask.exit589

svga_wseq_mask.exit589:                           ; preds = %if.else.i5.i14.i588, %if.then.i4.i13.i587
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i590 = icmp eq ptr %58, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i590, label %if.else.i5.i.i594, label %if.then.i4.i.i593

if.then.i4.i.i593:                                ; preds = %svga_wseq_mask.exit589
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i591 = getelementptr i8, ptr %58, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i591, i8 18) #8, !srcloc !236
  %add.ptr.i.i3.i.i592 = getelementptr i8, ptr %58, i32 965
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i592) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i598

if.else.i5.i.i594:                                ; preds = %svga_wseq_mask.exit589
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 18) #8, !srcloc !236
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i598

vga_rseq.exit.i598:                               ; preds = %if.else.i5.i.i594, %if.then.i4.i.i593
  %retval.0.i.i.i595 = phi i8 [ %59, %if.then.i4.i.i593 ], [ %60, %if.else.i5.i.i594 ]
  %or.i597 = or i8 %retval.0.i.i.i595, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i590, label %if.else.i5.i14.i602, label %if.then.i4.i13.i601

if.then.i4.i13.i601:                              ; preds = %vga_rseq.exit.i598
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i599 = getelementptr i8, ptr %58, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i599, i8 18) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i600 = getelementptr i8, ptr %58, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i600, i8 %or.i597) #8, !srcloc !236
  br label %svga_wseq_mask.exit603

if.else.i5.i14.i602:                              ; preds = %vga_rseq.exit.i598
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 18) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i597) #8, !srcloc !236
  br label %svga_wseq_mask.exit603

svga_wseq_mask.exit603:                           ; preds = %if.else.i5.i14.i602, %if.then.i4.i13.i601
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %state, align 4
  %fix58 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %smem_start, align 4
  %shr = lshr i32 %64, 16
  %conv = trunc i32 %shr to i8
  %tobool.not.i.i = icmp eq ptr %62, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %svga_wseq_mask.exit603
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 19) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i = getelementptr i8, ptr %62, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 %conv) #8, !srcloc !236
  br label %vga_wseq.exit

if.else.i5.i:                                     ; preds = %svga_wseq_mask.exit603
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 19) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv) #8, !srcloc !236
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state, align 4
  %67 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %smem_start, align 4
  %shr63 = lshr i32 %68, 24
  %conv64 = trunc i32 %shr63 to i8
  %tobool.not.i.i604 = icmp eq ptr %66, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i604, label %if.else.i5.i608, label %if.then.i4.i607

if.then.i4.i607:                                  ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i605 = getelementptr i8, ptr %66, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i605, i8 20) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i606 = getelementptr i8, ptr %66, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i606, i8 %conv64) #8, !srcloc !236
  br label %vga_wseq.exit609

if.else.i5.i608:                                  ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 20) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv64) #8, !srcloc !236
  br label %vga_wseq.exit609

vga_wseq.exit609:                                 ; preds = %if.else.i5.i608, %if.then.i4.i607
  %69 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %state, align 4
  %tobool.not.i.i610 = icmp eq ptr %70, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i610, label %if.else.i5.i614, label %if.then.i4.i613

if.then.i4.i613:                                  ; preds = %vga_wseq.exit609
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i611 = getelementptr i8, ptr %70, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i611, i8 21) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i612 = getelementptr i8, ptr %70, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i612, i8 0) #8, !srcloc !236
  br label %vga_wseq.exit615

if.else.i5.i614:                                  ; preds = %vga_wseq.exit609
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #8, !srcloc !236
  br label %vga_wseq.exit615

vga_wseq.exit615:                                 ; preds = %if.else.i5.i614, %if.then.i4.i613
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state, align 4
  %tobool.not.i.i616 = icmp eq ptr %72, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i616, label %if.else.i5.i620, label %if.then.i4.i619

if.then.i4.i619:                                  ; preds = %vga_wseq.exit615
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i617 = getelementptr i8, ptr %72, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i617, i8 22) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i618 = getelementptr i8, ptr %72, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i618, i8 0) #8, !srcloc !236
  br label %vga_wseq.exit621

if.else.i5.i620:                                  ; preds = %vga_wseq.exit615
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #8, !srcloc !236
  br label %vga_wseq.exit621

vga_wseq.exit621:                                 ; preds = %if.else.i5.i620, %if.then.i4.i619
  %73 = load i32, ptr @threshold, align 4
  %and69 = lshr i32 %73, 1
  %74 = and i32 %and69, 7
  %and72 = shl i32 %73, 7
  %or71 = or i32 %74, %and72
  %and74 = shl i32 %73, 1
  %shl75 = and i32 %and74, 32
  %or73 = or i32 %or71, %shl75
  %75 = trunc i32 %or73 to i8
  %conv77 = or i8 %75, 16
  %76 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state, align 4
  %tobool.not.i.i622 = icmp eq ptr %77, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i622, label %if.else.i5.i626, label %if.then.i4.i625

if.then.i4.i625:                                  ; preds = %vga_wseq.exit621
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i623 = getelementptr i8, ptr %77, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i623, i8 24) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i624 = getelementptr i8, ptr %77, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i624, i8 %conv77) #8, !srcloc !236
  br label %vga_wseq.exit627

if.else.i5.i626:                                  ; preds = %vga_wseq.exit621
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv77) #8, !srcloc !236
  br label %vga_wseq.exit627

vga_wseq.exit627:                                 ; preds = %if.else.i5.i626, %if.then.i4.i625
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then82)) #8
          to label %do.end [label %if.then82], !srcloc !234

if.then82:                                        ; preds = %vga_wseq.exit627
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %78 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.45, i32 noundef %79, i32 noundef %offset_value.0) #8
  br label %do.end

do.end:                                           ; preds = %if.then82, %vga_wseq.exit627
  %80 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %81, ptr noundef nonnull @ark_offset_regs, i32 noundef %offset_value.0) #8
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i628 = icmp eq ptr %83, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i628, label %if.else.i5.i.i632, label %if.then.i4.i.i631

if.then.i4.i.i631:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i629 = getelementptr i8, ptr %83, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i629, i8 64) #8, !srcloc !236
  %add.ptr.i.i3.i.i630 = getelementptr i8, ptr %83, i32 981
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i630) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i636

if.else.i5.i.i632:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 64) #8, !srcloc !236
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i636

vga_rcrt.exit.i636:                               ; preds = %if.else.i5.i.i632, %if.then.i4.i.i631
  %retval.0.i.i.i633 = phi i8 [ %84, %if.then.i4.i.i631 ], [ %85, %if.else.i5.i.i632 ]
  %or.i635 = or i8 %retval.0.i.i.i633, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i628, label %if.else.i5.i14.i640, label %if.then.i4.i13.i639

if.then.i4.i13.i639:                              ; preds = %vga_rcrt.exit.i636
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i637 = getelementptr i8, ptr %83, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i637, i8 64) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i638 = getelementptr i8, ptr %83, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i638, i8 %or.i635) #8, !srcloc !236
  br label %svga_wcrt_mask.exit641

if.else.i5.i14.i640:                              ; preds = %vga_rcrt.exit.i636
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 64) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i635) #8, !srcloc !236
  br label %svga_wcrt_mask.exit641

svga_wcrt_mask.exit641:                           ; preds = %if.else.i5.i14.i640, %if.then.i4.i13.i639
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %86 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vmode, align 4
  %and89 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %88 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i656 = icmp eq ptr %89, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool90.not, label %if.else94, label %if.then91

if.then91:                                        ; preds = %svga_wcrt_mask.exit641
  br i1 %tobool.not.i.i.i656, label %if.else.i5.i.i646, label %if.then.i4.i.i645

if.then.i4.i.i645:                                ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i643 = getelementptr i8, ptr %89, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i643, i8 9) #8, !srcloc !236
  %add.ptr.i.i3.i.i644 = getelementptr i8, ptr %89, i32 981
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i644) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i650

if.else.i5.i.i646:                                ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #8, !srcloc !236
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i650

vga_rcrt.exit.i650:                               ; preds = %if.else.i5.i.i646, %if.then.i4.i.i645
  %retval.0.i.i.i647 = phi i8 [ %90, %if.then.i4.i.i645 ], [ %91, %if.else.i5.i.i646 ]
  %or.i649 = or i8 %retval.0.i.i.i647, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i656, label %if.else.i5.i14.i654, label %if.then.i4.i13.i653

if.then.i4.i13.i653:                              ; preds = %vga_rcrt.exit.i650
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i651 = getelementptr i8, ptr %89, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i651, i8 9) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i652 = getelementptr i8, ptr %89, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i652, i8 %or.i649) #8, !srcloc !236
  br label %if.end97

if.else.i5.i14.i654:                              ; preds = %vga_rcrt.exit.i650
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i649) #8, !srcloc !236
  br label %if.end97

if.else94:                                        ; preds = %svga_wcrt_mask.exit641
  br i1 %tobool.not.i.i.i656, label %if.else.i5.i.i660, label %if.then.i4.i.i659

if.then.i4.i.i659:                                ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i657 = getelementptr i8, ptr %89, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i657, i8 9) #8, !srcloc !236
  %add.ptr.i.i3.i.i658 = getelementptr i8, ptr %89, i32 981
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i658) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i663

if.else.i5.i.i660:                                ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #8, !srcloc !236
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i663

vga_rcrt.exit.i663:                               ; preds = %if.else.i5.i.i660, %if.then.i4.i.i659
  %retval.0.i.i.i661 = phi i8 [ %92, %if.then.i4.i.i659 ], [ %93, %if.else.i5.i.i660 ]
  %and4.i662 = and i8 %retval.0.i.i.i661, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i656, label %if.else.i5.i14.i667, label %if.then.i4.i13.i666

if.then.i4.i13.i666:                              ; preds = %vga_rcrt.exit.i663
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i664 = getelementptr i8, ptr %89, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i664, i8 9) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i665 = getelementptr i8, ptr %89, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i665, i8 %and4.i662) #8, !srcloc !236
  br label %if.end97

if.else.i5.i14.i667:                              ; preds = %vga_rcrt.exit.i663
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i662) #8, !srcloc !236
  br label %if.end97

if.end97:                                         ; preds = %if.else.i5.i14.i667, %if.then.i4.i13.i666, %if.else.i5.i14.i654, %if.then.i4.i13.i653
  %94 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vmode, align 4
  %and100 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i683 = icmp eq ptr %97, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool101.not, label %if.else105, label %if.then102

if.then102:                                       ; preds = %if.end97
  br i1 %tobool.not.i.i.i683, label %if.else.i5.i.i673, label %if.then.i4.i.i672

if.then.i4.i.i672:                                ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i670 = getelementptr i8, ptr %97, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i670, i8 68) #8, !srcloc !236
  %add.ptr.i.i3.i.i671 = getelementptr i8, ptr %97, i32 981
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i671) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i677

if.else.i5.i.i673:                                ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 68) #8, !srcloc !236
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i677

vga_rcrt.exit.i677:                               ; preds = %if.else.i5.i.i673, %if.then.i4.i.i672
  %retval.0.i.i.i674 = phi i8 [ %98, %if.then.i4.i.i672 ], [ %99, %if.else.i5.i.i673 ]
  %or.i676 = or i8 %retval.0.i.i.i674, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i683, label %if.else.i5.i14.i681, label %if.then.i4.i13.i680

if.then.i4.i13.i680:                              ; preds = %vga_rcrt.exit.i677
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i678 = getelementptr i8, ptr %97, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i678, i8 68) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i679 = getelementptr i8, ptr %97, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i679, i8 %or.i676) #8, !srcloc !236
  br label %if.end108

if.else.i5.i14.i681:                              ; preds = %vga_rcrt.exit.i677
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 68) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i676) #8, !srcloc !236
  br label %if.end108

if.else105:                                       ; preds = %if.end97
  br i1 %tobool.not.i.i.i683, label %if.else.i5.i.i687, label %if.then.i4.i.i686

if.then.i4.i.i686:                                ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i684 = getelementptr i8, ptr %97, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i684, i8 68) #8, !srcloc !236
  %add.ptr.i.i3.i.i685 = getelementptr i8, ptr %97, i32 981
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i685) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i690

if.else.i5.i.i687:                                ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 68) #8, !srcloc !236
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i690

vga_rcrt.exit.i690:                               ; preds = %if.else.i5.i.i687, %if.then.i4.i.i686
  %retval.0.i.i.i688 = phi i8 [ %100, %if.then.i4.i.i686 ], [ %101, %if.else.i5.i.i687 ]
  %and4.i689 = and i8 %retval.0.i.i.i688, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i683, label %if.else.i5.i14.i694, label %if.then.i4.i13.i693

if.then.i4.i13.i693:                              ; preds = %vga_rcrt.exit.i690
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i691 = getelementptr i8, ptr %97, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i691, i8 68) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i692 = getelementptr i8, ptr %97, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i692, i8 %and4.i689) #8, !srcloc !236
  br label %if.end108

if.else.i5.i14.i694:                              ; preds = %vga_rcrt.exit.i690
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 68) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i689) #8, !srcloc !236
  br label %if.end108

if.end108:                                        ; preds = %if.else.i5.i14.i694, %if.then.i4.i13.i693, %if.else.i5.i14.i681, %if.then.i4.i13.i680
  %call111 = tail call i32 @svga_match_format(ptr noundef nonnull @arkfb_formats, ptr noundef %var, ptr noundef %fix58) #8
  %102 = zext i32 %call111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call111, label %do.end352 [
    i32 0, label %do.body112
    i32 1, label %do.body137
    i32 2, label %do.body163
    i32 3, label %do.body187
    i32 4, label %do.body255
    i32 5, label %do.body279
    i32 6, label %do.body303
    i32 7, label %do.body327
  ]

do.body112:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then124)) #8
          to label %do.end128 [label %if.then124], !srcloc !234

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %node125 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %103 = ptrtoint ptr %node125 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %node125, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.46, i32 noundef %104) #8
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.body112
  %105 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %state, align 4
  tail call void @svga_set_textmode_vga_regs(ptr noundef %106) #8
  %107 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %state, align 4
  %tobool.not.i.i696 = icmp eq ptr %108, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i696, label %if.else.i5.i700, label %if.then.i4.i699

if.then.i4.i699:                                  ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i697 = getelementptr i8, ptr %108, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i697, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i698 = getelementptr i8, ptr %108, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i698, i8 16) #8, !srcloc !236
  br label %vga_wseq.exit701

if.else.i5.i700:                                  ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 16) #8, !srcloc !236
  br label %vga_wseq.exit701

vga_wseq.exit701:                                 ; preds = %if.else.i5.i700, %if.then.i4.i699
  %109 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i702 = icmp eq ptr %110, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i702, label %if.else.i5.i.i706, label %if.then.i4.i.i705

if.then.i4.i.i705:                                ; preds = %vga_wseq.exit701
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i703 = getelementptr i8, ptr %110, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i703, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i704 = getelementptr i8, ptr %110, i32 981
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i704) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i709

if.else.i5.i.i706:                                ; preds = %vga_wseq.exit701
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i709

vga_rcrt.exit.i709:                               ; preds = %if.else.i5.i.i706, %if.then.i4.i.i705
  %retval.0.i.i.i707 = phi i8 [ %111, %if.then.i4.i.i705 ], [ %112, %if.else.i5.i.i706 ]
  %and4.i708 = and i8 %retval.0.i.i.i707, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i702, label %if.else.i5.i14.i713, label %if.then.i4.i13.i712

if.then.i4.i13.i712:                              ; preds = %vga_rcrt.exit.i709
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i710 = getelementptr i8, ptr %110, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i710, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i711 = getelementptr i8, ptr %110, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i711, i8 %and4.i708) #8, !srcloc !236
  br label %svga_wcrt_mask.exit714

if.else.i5.i14.i713:                              ; preds = %vga_rcrt.exit.i709
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i708) #8, !srcloc !236
  br label %svga_wcrt_mask.exit714

svga_wcrt_mask.exit714:                           ; preds = %if.else.i5.i14.i713, %if.then.i4.i13.i712
  %dac = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dac, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %dac_set_mode.i = getelementptr inbounds %struct.dac_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %dac_set_mode.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dac_set_mode.i, align 4
  %call.i = tail call i32 %118(ptr noundef %114, i32 noundef 0) #8
  br label %sw.epilog

do.body137:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then149)) #8
          to label %do.end153 [label %if.then149], !srcloc !234

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #10
  %node150 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %119 = ptrtoint ptr %node150 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %node150, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.47, i32 noundef %120) #8
  br label %do.end153

do.end153:                                        ; preds = %if.then149, %do.body137
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state, align 4
  %tobool.not.i.i715 = icmp eq ptr %122, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i715, label %if.else.i4.i, label %if.then.i3.i

if.then.i3.i:                                     ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i716 = getelementptr i8, ptr %122, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i716, i8 5) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i2.i = getelementptr i8, ptr %122, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i, i8 64) #8, !srcloc !236
  br label %vga_wgfx.exit

if.else.i4.i:                                     ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 64) #8, !srcloc !236
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i4.i, %if.then.i3.i
  %123 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %state, align 4
  %tobool.not.i.i717 = icmp eq ptr %124, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i717, label %if.else.i5.i721, label %if.then.i4.i720

if.then.i4.i720:                                  ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i718 = getelementptr i8, ptr %124, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i718, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i719 = getelementptr i8, ptr %124, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i719, i8 16) #8, !srcloc !236
  br label %vga_wseq.exit722

if.else.i5.i721:                                  ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 16) #8, !srcloc !236
  br label %vga_wseq.exit722

vga_wseq.exit722:                                 ; preds = %if.else.i5.i721, %if.then.i4.i720
  %125 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i723 = icmp eq ptr %126, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i723, label %if.else.i5.i.i727, label %if.then.i4.i.i726

if.then.i4.i.i726:                                ; preds = %vga_wseq.exit722
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i724 = getelementptr i8, ptr %126, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i724, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i725 = getelementptr i8, ptr %126, i32 981
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i725) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i730

if.else.i5.i.i727:                                ; preds = %vga_wseq.exit722
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i730

vga_rcrt.exit.i730:                               ; preds = %if.else.i5.i.i727, %if.then.i4.i.i726
  %retval.0.i.i.i728 = phi i8 [ %127, %if.then.i4.i.i726 ], [ %128, %if.else.i5.i.i727 ]
  %and4.i729 = and i8 %retval.0.i.i.i728, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i723, label %if.else.i5.i14.i734, label %if.then.i4.i13.i733

if.then.i4.i13.i733:                              ; preds = %vga_rcrt.exit.i730
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i731 = getelementptr i8, ptr %126, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i731, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i732 = getelementptr i8, ptr %126, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i732, i8 %and4.i729) #8, !srcloc !236
  br label %svga_wcrt_mask.exit735

if.else.i5.i14.i734:                              ; preds = %vga_rcrt.exit.i730
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i729) #8, !srcloc !236
  br label %svga_wcrt_mask.exit735

svga_wcrt_mask.exit735:                           ; preds = %if.else.i5.i14.i734, %if.then.i4.i13.i733
  %dac160 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %129 = ptrtoint ptr %dac160 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dac160, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %dac_set_mode.i736 = getelementptr inbounds %struct.dac_ops, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %dac_set_mode.i736 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dac_set_mode.i736, align 4
  %call.i737 = tail call i32 %134(ptr noundef %130, i32 noundef 0) #8
  br label %sw.epilog

do.body163:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then175)) #8
          to label %do.end179 [label %if.then175], !srcloc !234

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %node176 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %135 = ptrtoint ptr %node176 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %node176, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.48, i32 noundef %136) #8
  br label %do.end179

do.end179:                                        ; preds = %if.then175, %do.body163
  %137 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %state, align 4
  %tobool.not.i.i738 = icmp eq ptr %138, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i738, label %if.else.i5.i742, label %if.then.i4.i741

if.then.i4.i741:                                  ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i739 = getelementptr i8, ptr %138, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i739, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i740 = getelementptr i8, ptr %138, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i740, i8 16) #8, !srcloc !236
  br label %vga_wseq.exit743

if.else.i5.i742:                                  ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 16) #8, !srcloc !236
  br label %vga_wseq.exit743

vga_wseq.exit743:                                 ; preds = %if.else.i5.i742, %if.then.i4.i741
  %139 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i744 = icmp eq ptr %140, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i744, label %if.else.i5.i.i748, label %if.then.i4.i.i747

if.then.i4.i.i747:                                ; preds = %vga_wseq.exit743
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i745 = getelementptr i8, ptr %140, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i745, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i746 = getelementptr i8, ptr %140, i32 981
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i746) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i751

if.else.i5.i.i748:                                ; preds = %vga_wseq.exit743
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i751

vga_rcrt.exit.i751:                               ; preds = %if.else.i5.i.i748, %if.then.i4.i.i747
  %retval.0.i.i.i749 = phi i8 [ %141, %if.then.i4.i.i747 ], [ %142, %if.else.i5.i.i748 ]
  %and4.i750 = and i8 %retval.0.i.i.i749, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i744, label %if.else.i5.i14.i755, label %if.then.i4.i13.i754

if.then.i4.i13.i754:                              ; preds = %vga_rcrt.exit.i751
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i752 = getelementptr i8, ptr %140, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i752, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i753 = getelementptr i8, ptr %140, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i753, i8 %and4.i750) #8, !srcloc !236
  br label %svga_wcrt_mask.exit756

if.else.i5.i14.i755:                              ; preds = %vga_rcrt.exit.i751
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i750) #8, !srcloc !236
  br label %svga_wcrt_mask.exit756

svga_wcrt_mask.exit756:                           ; preds = %if.else.i5.i14.i755, %if.then.i4.i13.i754
  %dac184 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %143 = ptrtoint ptr %dac184 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dac184, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %dac_set_mode.i757 = getelementptr inbounds %struct.dac_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %dac_set_mode.i757 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dac_set_mode.i757, align 4
  %call.i758 = tail call i32 %148(ptr noundef %144, i32 noundef 0) #8
  br label %sw.epilog

do.body187:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then199)) #8
          to label %do.end203 [label %if.then199], !srcloc !234

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  %node200 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %149 = ptrtoint ptr %node200 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %node200, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.49, i32 noundef %150) #8
  br label %do.end203

do.end203:                                        ; preds = %if.then199, %do.body187
  %151 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state, align 4
  %tobool.not.i.i759 = icmp eq ptr %152, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i759, label %if.else.i5.i763, label %if.then.i4.i762

if.then.i4.i762:                                  ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i760 = getelementptr i8, ptr %152, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i760, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i761 = getelementptr i8, ptr %152, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i761, i8 22) #8, !srcloc !236
  br label %vga_wseq.exit764

if.else.i5.i763:                                  ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 22) #8, !srcloc !236
  br label %vga_wseq.exit764

vga_wseq.exit764:                                 ; preds = %if.else.i5.i763, %if.then.i4.i762
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %153 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %154)
  %cmp207 = icmp ugt i32 %154, 20000
  br i1 %cmp207, label %do.body210, label %do.body232

do.body210:                                       ; preds = %vga_wseq.exit764
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then222)) #8
          to label %do.end226 [label %if.then222], !srcloc !234

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #10
  %node223 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %155 = ptrtoint ptr %node223 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %node223, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.50, i32 noundef %156) #8
  br label %do.end226

do.end226:                                        ; preds = %if.then222, %do.body210
  %157 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i765 = icmp eq ptr %158, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i765, label %if.else.i5.i.i769, label %if.then.i4.i.i768

if.then.i4.i.i768:                                ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i766 = getelementptr i8, ptr %158, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i766, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i767 = getelementptr i8, ptr %158, i32 981
  %159 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i767) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i772

if.else.i5.i.i769:                                ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i772

vga_rcrt.exit.i772:                               ; preds = %if.else.i5.i.i769, %if.then.i4.i.i768
  %retval.0.i.i.i770 = phi i8 [ %159, %if.then.i4.i.i768 ], [ %160, %if.else.i5.i.i769 ]
  %and4.i771 = and i8 %retval.0.i.i.i770, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i765, label %if.else.i5.i14.i776, label %if.then.i4.i13.i775

if.then.i4.i13.i775:                              ; preds = %vga_rcrt.exit.i772
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i773 = getelementptr i8, ptr %158, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i773, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i774 = getelementptr i8, ptr %158, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i774, i8 %and4.i771) #8, !srcloc !236
  br label %svga_wcrt_mask.exit777

if.else.i5.i14.i776:                              ; preds = %vga_rcrt.exit.i772
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i771) #8, !srcloc !236
  br label %svga_wcrt_mask.exit777

svga_wcrt_mask.exit777:                           ; preds = %if.else.i5.i14.i776, %if.then.i4.i13.i775
  %dac229 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %161 = ptrtoint ptr %dac229 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dac229, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %dac_set_mode.i778 = getelementptr inbounds %struct.dac_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %dac_set_mode.i778 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dac_set_mode.i778, align 4
  %call.i779 = tail call i32 %166(ptr noundef %162, i32 noundef 0) #8
  br label %sw.epilog

do.body232:                                       ; preds = %vga_wseq.exit764
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then244)) #8
          to label %do.end248 [label %if.then244], !srcloc !234

if.then244:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  %node245 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %167 = ptrtoint ptr %node245 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %node245, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.51, i32 noundef %168) #8
  br label %do.end248

do.end248:                                        ; preds = %if.then244, %do.body232
  %169 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i780 = icmp eq ptr %170, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i780, label %if.else.i5.i.i784, label %if.then.i4.i.i783

if.then.i4.i.i783:                                ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i781 = getelementptr i8, ptr %170, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i781, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i782 = getelementptr i8, ptr %170, i32 981
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i782) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i788

if.else.i5.i.i784:                                ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i788

vga_rcrt.exit.i788:                               ; preds = %if.else.i5.i.i784, %if.then.i4.i.i783
  %retval.0.i.i.i785 = phi i8 [ %171, %if.then.i4.i.i783 ], [ %172, %if.else.i5.i.i784 ]
  %or.i787 = or i8 %retval.0.i.i.i785, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i780, label %if.else.i5.i14.i792, label %if.then.i4.i13.i791

if.then.i4.i13.i791:                              ; preds = %vga_rcrt.exit.i788
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i789 = getelementptr i8, ptr %170, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i789, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i790 = getelementptr i8, ptr %170, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i790, i8 %or.i787) #8, !srcloc !236
  br label %svga_wcrt_mask.exit793

if.else.i5.i14.i792:                              ; preds = %vga_rcrt.exit.i788
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i787) #8, !srcloc !236
  br label %svga_wcrt_mask.exit793

svga_wcrt_mask.exit793:                           ; preds = %if.else.i5.i14.i792, %if.then.i4.i13.i791
  %dac251 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %173 = ptrtoint ptr %dac251 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dac251, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %dac_set_mode.i794 = getelementptr inbounds %struct.dac_ops, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %dac_set_mode.i794 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dac_set_mode.i794, align 4
  %call.i795 = tail call i32 %178(ptr noundef %174, i32 noundef 5) #8
  br label %sw.epilog

do.body255:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then267)) #8
          to label %do.end271 [label %if.then267], !srcloc !234

if.then267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #10
  %node268 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %179 = ptrtoint ptr %node268 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %node268, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.52, i32 noundef %180) #8
  br label %do.end271

do.end271:                                        ; preds = %if.then267, %do.body255
  %181 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %state, align 4
  %tobool.not.i.i796 = icmp eq ptr %182, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i796, label %if.else.i5.i800, label %if.then.i4.i799

if.then.i4.i799:                                  ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i797 = getelementptr i8, ptr %182, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i797, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i798 = getelementptr i8, ptr %182, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i798, i8 26) #8, !srcloc !236
  br label %vga_wseq.exit801

if.else.i5.i800:                                  ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 26) #8, !srcloc !236
  br label %vga_wseq.exit801

vga_wseq.exit801:                                 ; preds = %if.else.i5.i800, %if.then.i4.i799
  %183 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i802 = icmp eq ptr %184, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i802, label %if.else.i5.i.i806, label %if.then.i4.i.i805

if.then.i4.i.i805:                                ; preds = %vga_wseq.exit801
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i803 = getelementptr i8, ptr %184, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i803, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i804 = getelementptr i8, ptr %184, i32 981
  %185 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i804) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i810

if.else.i5.i.i806:                                ; preds = %vga_wseq.exit801
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %186 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i810

vga_rcrt.exit.i810:                               ; preds = %if.else.i5.i.i806, %if.then.i4.i.i805
  %retval.0.i.i.i807 = phi i8 [ %185, %if.then.i4.i.i805 ], [ %186, %if.else.i5.i.i806 ]
  %or.i809 = or i8 %retval.0.i.i.i807, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i802, label %if.else.i5.i14.i814, label %if.then.i4.i13.i813

if.then.i4.i13.i813:                              ; preds = %vga_rcrt.exit.i810
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i811 = getelementptr i8, ptr %184, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i811, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i812 = getelementptr i8, ptr %184, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i812, i8 %or.i809) #8, !srcloc !236
  br label %svga_wcrt_mask.exit815

if.else.i5.i14.i814:                              ; preds = %vga_rcrt.exit.i810
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i809) #8, !srcloc !236
  br label %svga_wcrt_mask.exit815

svga_wcrt_mask.exit815:                           ; preds = %if.else.i5.i14.i814, %if.then.i4.i13.i813
  %dac276 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %187 = ptrtoint ptr %dac276 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dac276, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %dac_set_mode.i816 = getelementptr inbounds %struct.dac_ops, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %dac_set_mode.i816 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dac_set_mode.i816, align 4
  %call.i817 = tail call i32 %192(ptr noundef %188, i32 noundef 6) #8
  br label %sw.epilog

do.body279:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then291)) #8
          to label %do.end295 [label %if.then291], !srcloc !234

if.then291:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #10
  %node292 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %193 = ptrtoint ptr %node292 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %node292, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.53, i32 noundef %194) #8
  br label %do.end295

do.end295:                                        ; preds = %if.then291, %do.body279
  %195 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %state, align 4
  %tobool.not.i.i818 = icmp eq ptr %196, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i818, label %if.else.i5.i822, label %if.then.i4.i821

if.then.i4.i821:                                  ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i819 = getelementptr i8, ptr %196, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i819, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i820 = getelementptr i8, ptr %196, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i820, i8 26) #8, !srcloc !236
  br label %vga_wseq.exit823

if.else.i5.i822:                                  ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 26) #8, !srcloc !236
  br label %vga_wseq.exit823

vga_wseq.exit823:                                 ; preds = %if.else.i5.i822, %if.then.i4.i821
  %197 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i824 = icmp eq ptr %198, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i824, label %if.else.i5.i.i828, label %if.then.i4.i.i827

if.then.i4.i.i827:                                ; preds = %vga_wseq.exit823
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i825 = getelementptr i8, ptr %198, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i825, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i826 = getelementptr i8, ptr %198, i32 981
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i826) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i832

if.else.i5.i.i828:                                ; preds = %vga_wseq.exit823
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %200 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i832

vga_rcrt.exit.i832:                               ; preds = %if.else.i5.i.i828, %if.then.i4.i.i827
  %retval.0.i.i.i829 = phi i8 [ %199, %if.then.i4.i.i827 ], [ %200, %if.else.i5.i.i828 ]
  %or.i831 = or i8 %retval.0.i.i.i829, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i824, label %if.else.i5.i14.i836, label %if.then.i4.i13.i835

if.then.i4.i13.i835:                              ; preds = %vga_rcrt.exit.i832
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i833 = getelementptr i8, ptr %198, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i833, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i834 = getelementptr i8, ptr %198, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i834, i8 %or.i831) #8, !srcloc !236
  br label %svga_wcrt_mask.exit837

if.else.i5.i14.i836:                              ; preds = %vga_rcrt.exit.i832
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i831) #8, !srcloc !236
  br label %svga_wcrt_mask.exit837

svga_wcrt_mask.exit837:                           ; preds = %if.else.i5.i14.i836, %if.then.i4.i13.i835
  %dac300 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %201 = ptrtoint ptr %dac300 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dac300, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %dac_set_mode.i838 = getelementptr inbounds %struct.dac_ops, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %dac_set_mode.i838 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dac_set_mode.i838, align 4
  %call.i839 = tail call i32 %206(ptr noundef %202, i32 noundef 7) #8
  br label %sw.epilog

do.body303:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then315)) #8
          to label %do.end319 [label %if.then315], !srcloc !234

if.then315:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #10
  %node316 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %207 = ptrtoint ptr %node316 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %node316, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.54, i32 noundef %208) #8
  br label %do.end319

do.end319:                                        ; preds = %if.then315, %do.body303
  %209 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %state, align 4
  %tobool.not.i.i840 = icmp eq ptr %210, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i840, label %if.else.i5.i844, label %if.then.i4.i843

if.then.i4.i843:                                  ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i841 = getelementptr i8, ptr %210, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i841, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i842 = getelementptr i8, ptr %210, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i842, i8 22) #8, !srcloc !236
  br label %vga_wseq.exit845

if.else.i5.i844:                                  ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 22) #8, !srcloc !236
  br label %vga_wseq.exit845

vga_wseq.exit845:                                 ; preds = %if.else.i5.i844, %if.then.i4.i843
  %211 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i846 = icmp eq ptr %212, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i846, label %if.else.i5.i.i850, label %if.then.i4.i.i849

if.then.i4.i.i849:                                ; preds = %vga_wseq.exit845
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i847 = getelementptr i8, ptr %212, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i847, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i848 = getelementptr i8, ptr %212, i32 981
  %213 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i848) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i854

if.else.i5.i.i850:                                ; preds = %vga_wseq.exit845
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %214 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i854

vga_rcrt.exit.i854:                               ; preds = %if.else.i5.i.i850, %if.then.i4.i.i849
  %retval.0.i.i.i851 = phi i8 [ %213, %if.then.i4.i.i849 ], [ %214, %if.else.i5.i.i850 ]
  %or.i853 = or i8 %retval.0.i.i.i851, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i846, label %if.else.i5.i14.i858, label %if.then.i4.i13.i857

if.then.i4.i13.i857:                              ; preds = %vga_rcrt.exit.i854
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i855 = getelementptr i8, ptr %212, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i855, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i856 = getelementptr i8, ptr %212, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i856, i8 %or.i853) #8, !srcloc !236
  br label %svga_wcrt_mask.exit859

if.else.i5.i14.i858:                              ; preds = %vga_rcrt.exit.i854
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i853) #8, !srcloc !236
  br label %svga_wcrt_mask.exit859

svga_wcrt_mask.exit859:                           ; preds = %if.else.i5.i14.i858, %if.then.i4.i13.i857
  %dac324 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %215 = ptrtoint ptr %dac324 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dac324, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %dac_set_mode.i860 = getelementptr inbounds %struct.dac_ops, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %dac_set_mode.i860 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dac_set_mode.i860, align 4
  %call.i861 = tail call i32 %220(ptr noundef %216, i32 noundef 8) #8
  br label %sw.epilog

do.body327:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_set_par.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_set_par, %if.then339)) #8
          to label %do.end343 [label %if.then339], !srcloc !234

if.then339:                                       ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #10
  %node340 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %221 = ptrtoint ptr %node340 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %node340, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_set_par.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.55, i32 noundef %222) #8
  br label %do.end343

do.end343:                                        ; preds = %if.then339, %do.body327
  %223 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %state, align 4
  %tobool.not.i.i862 = icmp eq ptr %224, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i862, label %if.else.i5.i866, label %if.then.i4.i865

if.then.i4.i865:                                  ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i863 = getelementptr i8, ptr %224, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i863, i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i864 = getelementptr i8, ptr %224, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i864, i8 30) #8, !srcloc !236
  br label %vga_wseq.exit867

if.else.i5.i866:                                  ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 30) #8, !srcloc !236
  br label %vga_wseq.exit867

vga_wseq.exit867:                                 ; preds = %if.else.i5.i866, %if.then.i4.i865
  %225 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i868 = icmp eq ptr %226, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i868, label %if.else.i5.i.i872, label %if.then.i4.i.i871

if.then.i4.i.i871:                                ; preds = %vga_wseq.exit867
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i869 = getelementptr i8, ptr %226, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i869, i8 70) #8, !srcloc !236
  %add.ptr.i.i3.i.i870 = getelementptr i8, ptr %226, i32 981
  %227 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i870) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i876

if.else.i5.i.i872:                                ; preds = %vga_wseq.exit867
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  %228 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i876

vga_rcrt.exit.i876:                               ; preds = %if.else.i5.i.i872, %if.then.i4.i.i871
  %retval.0.i.i.i873 = phi i8 [ %227, %if.then.i4.i.i871 ], [ %228, %if.else.i5.i.i872 ]
  %or.i875 = or i8 %retval.0.i.i.i873, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i868, label %if.else.i5.i14.i880, label %if.then.i4.i13.i879

if.then.i4.i13.i879:                              ; preds = %vga_rcrt.exit.i876
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i877 = getelementptr i8, ptr %226, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i877, i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i878 = getelementptr i8, ptr %226, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i878, i8 %or.i875) #8, !srcloc !236
  br label %svga_wcrt_mask.exit881

if.else.i5.i14.i880:                              ; preds = %vga_rcrt.exit.i876
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 70) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i875) #8, !srcloc !236
  br label %svga_wcrt_mask.exit881

svga_wcrt_mask.exit881:                           ; preds = %if.else.i5.i14.i880, %if.then.i4.i13.i879
  %dac348 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 2
  %229 = ptrtoint ptr %dac348 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dac348, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %dac_set_mode.i882 = getelementptr inbounds %struct.dac_ops, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %dac_set_mode.i882 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dac_set_mode.i882, align 4
  %call.i883 = tail call i32 %234(ptr noundef %230, i32 noundef 9) #8
  br label %sw.epilog

do.end352:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %node354 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %235 = ptrtoint ptr %node354 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %node354, align 4
  %call355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %236) #11
  br label %cleanup

sw.epilog:                                        ; preds = %svga_wcrt_mask.exit881, %svga_wcrt_mask.exit859, %svga_wcrt_mask.exit837, %svga_wcrt_mask.exit815, %svga_wcrt_mask.exit793, %svga_wcrt_mask.exit777, %svga_wcrt_mask.exit756, %svga_wcrt_mask.exit735, %svga_wcrt_mask.exit714
  %hdiv.0 = phi i32 [ 1, %svga_wcrt_mask.exit881 ], [ 2, %svga_wcrt_mask.exit859 ], [ 1, %svga_wcrt_mask.exit837 ], [ 1, %svga_wcrt_mask.exit815 ], [ 1, %svga_wcrt_mask.exit777 ], [ 2, %svga_wcrt_mask.exit793 ], [ 1, %svga_wcrt_mask.exit756 ], [ 1, %svga_wcrt_mask.exit735 ], [ 1, %svga_wcrt_mask.exit714 ]
  %hmul.0 = phi i32 [ 2, %svga_wcrt_mask.exit881 ], [ 3, %svga_wcrt_mask.exit859 ], [ 1, %svga_wcrt_mask.exit837 ], [ 1, %svga_wcrt_mask.exit815 ], [ 1, %svga_wcrt_mask.exit777 ], [ 1, %svga_wcrt_mask.exit793 ], [ 1, %svga_wcrt_mask.exit756 ], [ 1, %svga_wcrt_mask.exit735 ], [ 1, %svga_wcrt_mask.exit714 ]
  %pixclock357 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %237 = ptrtoint ptr %pixclock357 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pixclock357, align 4
  %mul358 = mul i32 %238, %hdiv.0
  %div359 = udiv i32 %mul358, %hmul.0
  %239 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %par1, align 4
  %dac.i = getelementptr inbounds %struct.arkfb_info, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %dac.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dac.i, align 4
  %div.i = udiv i32 1000000000, %div359
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %dac_set_freq.i.i = getelementptr inbounds %struct.dac_ops, ptr %244, i32 0, i32 3
  %245 = ptrtoint ptr %dac_set_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dac_set_freq.i.i, align 4
  %call.i.i = tail call i32 %246(ptr noundef %242, i32 noundef 0, i32 noundef %div.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %node.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %247 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %node.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %248) #11
  br label %ark_set_pixclock.exit

if.end.i:                                         ; preds = %sw.epilog
  %state.i = getelementptr inbounds %struct.arkfb_info, ptr %240, i32 0, i32 3
  %249 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %state.i, align 4
  %tobool.not.i.i884 = icmp eq ptr %250, null
  br i1 %tobool.not.i.i884, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i885 = getelementptr i8, ptr %250, i32 972
  %251 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i885) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_r.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %252 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_r.exit.i

vga_r.exit.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %251, %if.then.i.i ], [ %252, %if.else.i.i ]
  %253 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %state.i, align 4
  %255 = or i8 %retval.0.i.i, 12
  %tobool.not.i12.i = icmp eq ptr %254, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i12.i, label %if.else.i15.i, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i13.i = getelementptr i8, ptr %254, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i13.i, i8 %255) #8, !srcloc !236
  br label %ark_set_pixclock.exit

if.else.i15.i:                                    ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %255) #8, !srcloc !236
  br label %ark_set_pixclock.exit

ark_set_pixclock.exit:                            ; preds = %if.else.i15.i, %if.then.i14.i, %do.end.i
  %256 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %state, align 4
  %258 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %vmode, align 4
  %and365 = and i32 %259, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365)
  %tobool366.not = icmp eq i32 %and365, 0
  %cond367 = select i1 %tobool366.not, i32 1, i32 2
  %and370 = and i32 %259, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp eq i32 %and370, 0
  %cond372 = select i1 %tobool371.not, i32 1, i32 2
  %node373 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %260 = ptrtoint ptr %node373 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %node373, align 4
  tail call void @svga_set_timings(ptr noundef %257, ptr noundef nonnull @ark_timing_regs, ptr noundef %var, i32 noundef %hmul.0, i32 noundef %hdiv.0, i32 noundef %cond367, i32 noundef %cond372, i32 noundef %hmul.0, i32 noundef %261) #8
  %262 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %var, align 4
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %264 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %left_margin, align 4
  %add = add i32 %265, %263
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %266 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %right_margin, align 4
  %add377 = add i32 %add, %267
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %268 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %hsync_len, align 4
  %add379 = add i32 %add377, %269
  %mul380 = mul i32 %add379, %hmul.0
  %div381 = udiv i32 %mul380, %hdiv.0
  %div382518 = lshr i32 %div381, 3
  %270 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %state, align 4
  %add385 = add nuw nsw i32 %div382518, 508
  %div386519 = lshr i32 %add385, 1
  %conv387 = trunc i32 %div386519 to i8
  %tobool.not.i.i886 = icmp eq ptr %271, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i886, label %if.else.i5.i890, label %if.then.i4.i889

if.then.i4.i889:                                  ; preds = %ark_set_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i887 = getelementptr i8, ptr %271, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i887, i8 66) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i888 = getelementptr i8, ptr %271, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i888, i8 %conv387) #8, !srcloc !236
  br label %vga_wcrt.exit

if.else.i5.i890:                                  ; preds = %ark_set_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 66) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv387) #8, !srcloc !236
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i890, %if.then.i4.i889
  %272 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %272, align 4
  tail call void @mmioset(ptr noundef %274, i32 noundef 0, i32 noundef %screen_size.0) #8
  %275 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i891 = icmp eq ptr %276, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i891, label %if.else.i5.i.i895, label %if.then.i4.i.i894

if.then.i4.i.i894:                                ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i892 = getelementptr i8, ptr %276, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i892, i8 23) #8, !srcloc !236
  %add.ptr.i.i3.i.i893 = getelementptr i8, ptr %276, i32 981
  %277 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i893) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i899

if.else.i5.i.i895:                                ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  %278 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i899

vga_rcrt.exit.i899:                               ; preds = %if.else.i5.i.i895, %if.then.i4.i.i894
  %retval.0.i.i.i896 = phi i8 [ %277, %if.then.i4.i.i894 ], [ %278, %if.else.i5.i.i895 ]
  %or.i898 = or i8 %retval.0.i.i.i896, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i891, label %if.else.i5.i14.i903, label %if.then.i4.i13.i902

if.then.i4.i13.i902:                              ; preds = %vga_rcrt.exit.i899
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i900 = getelementptr i8, ptr %276, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i900, i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i901 = getelementptr i8, ptr %276, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i901, i8 %or.i898) #8, !srcloc !236
  br label %svga_wcrt_mask.exit904

if.else.i5.i14.i903:                              ; preds = %vga_rcrt.exit.i899
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i898) #8, !srcloc !236
  br label %svga_wcrt_mask.exit904

svga_wcrt_mask.exit904:                           ; preds = %if.else.i5.i14.i903, %if.then.i4.i13.i902
  %279 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i905 = icmp eq ptr %280, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i905, label %if.else.i5.i.i909, label %if.then.i4.i.i908

if.then.i4.i.i908:                                ; preds = %svga_wcrt_mask.exit904
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i906 = getelementptr i8, ptr %280, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i906, i8 1) #8, !srcloc !236
  %add.ptr.i.i3.i.i907 = getelementptr i8, ptr %280, i32 965
  %281 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i907) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i912

if.else.i5.i.i909:                                ; preds = %svga_wcrt_mask.exit904
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  %282 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i912

vga_rseq.exit.i912:                               ; preds = %if.else.i5.i.i909, %if.then.i4.i.i908
  %retval.0.i.i.i910 = phi i8 [ %281, %if.then.i4.i.i908 ], [ %282, %if.else.i5.i.i909 ]
  %and4.i911 = and i8 %retval.0.i.i.i910, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i905, label %if.else.i5.i14.i916, label %if.then.i4.i13.i915

if.then.i4.i13.i915:                              ; preds = %vga_rseq.exit.i912
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i913 = getelementptr i8, ptr %280, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i913, i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i914 = getelementptr i8, ptr %280, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i914, i8 %and4.i911) #8, !srcloc !236
  br label %cleanup

if.else.i5.i14.i916:                              ; preds = %vga_rseq.exit.i912
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i911) #8, !srcloc !236
  br label %cleanup

cleanup:                                          ; preds = %if.else.i5.i14.i916, %if.then.i4.i13.i915, %do.end352
  %retval.0 = phi i32 [ -22, %do.end352 ], [ 0, %if.then.i4.i13.i915 ], [ 0, %if.else.i5.i14.i916 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %fb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %2, label %entry.return_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge135
    i32 2, label %sw.bb32
    i32 4, label %sw.bb59
    i32 6, label %entry.sw.bb94_crit_edge
    i32 8, label %entry.sw.bb94_crit_edge136
  ]

entry.sw.bb94_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb94

entry.sw.bb94_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb94

entry.sw.bb_crit_edge135:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge135
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3 = icmp eq i32 %1, 4
  br i1 %cmp3, label %land.lhs.true, label %if.end.do.body10_crit_edge

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

land.lhs.true:                                    ; preds = %if.end
  %nonstd = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %do.body, label %land.lhs.true.do.body10_crit_edge

land.lhs.true.do.body10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -16) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  tail call void @arm_heavy_mb() #8
  %regno.tr = trunc i32 %regno to i8
  %conv = shl nuw i8 %regno.tr, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv) #8, !srcloc !236
  br label %do.body18

do.body10:                                        ; preds = %land.lhs.true.do.body10_crit_edge, %if.end.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 15) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  %conv15 = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv15) #8, !srcloc !236
  br label %do.body18

do.body18:                                        ; preds = %do.body10, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void @arm_heavy_mb() #8
  %shr = lshr i32 %red, 10
  %conv20 = trunc i32 %shr to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv20) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  tail call void @arm_heavy_mb() #8
  %shr24 = lshr i32 %green, 10
  %conv25 = trunc i32 %shr24 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv25) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  tail call void @arm_heavy_mb() #8
  %shr29 = lshr i32 %blue, 10
  %conv30 = trunc i32 %shr29 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv30) #8, !srcloc !236
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp33 = icmp ugt i32 %regno, 255
  br i1 %cmp33, label %sw.bb32.return_crit_edge, label %do.body37

sw.bb32.return_crit_edge:                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  %conv42 = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv42) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  tail call void @arm_heavy_mb() #8
  %shr46 = lshr i32 %red, 10
  %conv47 = trunc i32 %shr46 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv47) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %shr51 = lshr i32 %green, 10
  %conv52 = trunc i32 %shr51 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv52) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %shr56 = lshr i32 %blue, 10
  %conv57 = trunc i32 %shr56 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv57) #8, !srcloc !236
  br label %return

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp60 = icmp ugt i32 %regno, 15
  br i1 %cmp60, label %sw.bb59.return_crit_edge, label %if.end63

sw.bb59.return_crit_edge:                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end63:                                         ; preds = %sw.bb59
  %length = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %7, label %if.end63.return_crit_edge [
    i32 5, label %if.then68
    i32 6, label %if.then81
  ]

if.end63.return_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %and = lshr i32 %red, 1
  %shr69 = and i32 %and, 31744
  %and70 = lshr i32 %green, 6
  %shr71 = and i32 %and70, 992
  %or = or i32 %shr71, %shr69
  %and72 = lshr i32 %blue, 11
  %shr73 = and i32 %and72, 31
  %or74 = or i32 %or, %shr73
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %9 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %regno
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or74, ptr %arrayidx, align 4
  br label %return

if.then81:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %and82 = and i32 %red, 63488
  %and83 = lshr i32 %green, 5
  %shr84 = and i32 %and83, 2016
  %or85 = or i32 %shr84, %and82
  %and86 = lshr i32 %blue, 11
  %shr87 = and i32 %and86, 31
  %or88 = or i32 %or85, %shr87
  %pseudo_palette89 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette89 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pseudo_palette89, align 4
  %arrayidx90 = getelementptr i32, ptr %13, i32 %regno
  %14 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or88, ptr %arrayidx90, align 4
  br label %return

sw.bb94:                                          ; preds = %entry.sw.bb94_crit_edge, %entry.sw.bb94_crit_edge136
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp95 = icmp ugt i32 %regno, 15
  br i1 %cmp95, label %sw.bb94.return_crit_edge, label %if.end98

sw.bb94.return_crit_edge:                         ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end98:                                         ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  %and99 = shl i32 %red, 8
  %shl = and i32 %and99, 16711680
  %and100 = and i32 %green, 65280
  %or101 = or i32 %shl, %and100
  %and102 = lshr i32 %blue, 8
  %shr103 = and i32 %and102, 255
  %or104 = or i32 %or101, %shr103
  %pseudo_palette105 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %15 = ptrtoint ptr %pseudo_palette105 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pseudo_palette105, align 4
  %arrayidx106 = getelementptr i32, ptr %16, i32 %regno
  %17 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or104, ptr %arrayidx106, align 4
  br label %return

return:                                           ; preds = %if.end98, %sw.bb94.return_crit_edge, %if.then81, %if.then68, %if.end63.return_crit_edge, %sw.bb59.return_crit_edge, %do.body37, %sw.bb32.return_crit_edge, %do.body18, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb32.return_crit_edge ], [ 0, %sw.bb59.return_crit_edge ], [ -22, %if.end63.return_crit_edge ], [ 0, %sw.bb94.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.then68 ], [ 0, %if.then81 ], [ 0, %if.end98 ], [ 0, %do.body37 ], [ 0, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %blank_mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body7
    i32 4, label %entry.do.body29_crit_edge
    i32 3, label %entry.do.body29_crit_edge133
    i32 2, label %entry.do.body29_crit_edge134
  ]

entry.do.body29_crit_edge134:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

entry.do.body29_crit_edge133:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_blank.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_blank, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !234

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_blank.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.62, i32 noundef %4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 1) #8, !srcloc !236
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %6, i32 965
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i

if.else.i5.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %7, %if.then.i4.i.i ], [ %8, %if.else.i5.i.i ]
  %and4.i = and i8 %retval.0.i.i.i, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %6, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %6, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %and4.i) #8, !srcloc !236
  br label %svga_wseq_mask.exit

if.else.i5.i14.i:                                 ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i) #8, !srcloc !236
  br label %svga_wseq_mask.exit

svga_wseq_mask.exit:                              ; preds = %if.else.i5.i14.i, %if.then.i4.i13.i
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i64 = icmp eq ptr %10, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i64, label %if.else.i5.i.i68, label %if.then.i4.i.i67

if.then.i4.i.i67:                                 ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i65 = getelementptr i8, ptr %10, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i65, i8 23) #8, !srcloc !236
  %add.ptr.i.i3.i.i66 = getelementptr i8, ptr %10, i32 981
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i66) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i

if.else.i5.i.i68:                                 ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i68, %if.then.i4.i.i67
  %retval.0.i.i.i69 = phi i8 [ %11, %if.then.i4.i.i67 ], [ %12, %if.else.i5.i.i68 ]
  %or.i = or i8 %retval.0.i.i.i69, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i64, label %if.else.i5.i14.i74, label %if.then.i4.i13.i73

if.then.i4.i13.i73:                               ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i71 = getelementptr i8, ptr %10, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i71, i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i72 = getelementptr i8, ptr %10, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i72, i8 %or.i) #8, !srcloc !236
  br label %sw.epilog

if.else.i5.i14.i74:                               ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #8, !srcloc !236
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_blank.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_blank, %if.then19)) #8
          to label %do.end23 [label %if.then19], !srcloc !234

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %node20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %node20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_blank.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.63, i32 noundef %14) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %state24 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state24, align 4
  %tobool.not.i.i.i75 = icmp eq ptr %16, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i75, label %if.else.i5.i.i79, label %if.then.i4.i.i78

if.then.i4.i.i78:                                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i76 = getelementptr i8, ptr %16, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i76, i8 1) #8, !srcloc !236
  %add.ptr.i.i3.i.i77 = getelementptr i8, ptr %16, i32 965
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i77) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i83

if.else.i5.i.i79:                                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i83

vga_rseq.exit.i83:                                ; preds = %if.else.i5.i.i79, %if.then.i4.i.i78
  %retval.0.i.i.i80 = phi i8 [ %17, %if.then.i4.i.i78 ], [ %18, %if.else.i5.i.i79 ]
  %or.i82 = or i8 %retval.0.i.i.i80, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i75, label %if.else.i5.i14.i87, label %if.then.i4.i13.i86

if.then.i4.i13.i86:                               ; preds = %vga_rseq.exit.i83
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i84 = getelementptr i8, ptr %16, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i84, i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i85 = getelementptr i8, ptr %16, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i85, i8 %or.i82) #8, !srcloc !236
  br label %svga_wseq_mask.exit88

if.else.i5.i14.i87:                               ; preds = %vga_rseq.exit.i83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i82) #8, !srcloc !236
  br label %svga_wseq_mask.exit88

svga_wseq_mask.exit88:                            ; preds = %if.else.i5.i14.i87, %if.then.i4.i13.i86
  %19 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state24, align 4
  %tobool.not.i.i.i89 = icmp eq ptr %20, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i89, label %if.else.i5.i.i93, label %if.then.i4.i.i92

if.then.i4.i.i92:                                 ; preds = %svga_wseq_mask.exit88
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i90 = getelementptr i8, ptr %20, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i90, i8 23) #8, !srcloc !236
  %add.ptr.i.i3.i.i91 = getelementptr i8, ptr %20, i32 981
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i91) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i97

if.else.i5.i.i93:                                 ; preds = %svga_wseq_mask.exit88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i97

vga_rcrt.exit.i97:                                ; preds = %if.else.i5.i.i93, %if.then.i4.i.i92
  %retval.0.i.i.i94 = phi i8 [ %21, %if.then.i4.i.i92 ], [ %22, %if.else.i5.i.i93 ]
  %or.i96 = or i8 %retval.0.i.i.i94, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i89, label %if.else.i5.i14.i101, label %if.then.i4.i13.i100

if.then.i4.i13.i100:                              ; preds = %vga_rcrt.exit.i97
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i98 = getelementptr i8, ptr %20, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i98, i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i99 = getelementptr i8, ptr %20, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i99, i8 %or.i96) #8, !srcloc !236
  br label %sw.epilog

if.else.i5.i14.i101:                              ; preds = %vga_rcrt.exit.i97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i96) #8, !srcloc !236
  br label %sw.epilog

do.body29:                                        ; preds = %entry.do.body29_crit_edge, %entry.do.body29_crit_edge133, %entry.do.body29_crit_edge134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arkfb_blank.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arkfb_blank, %if.then41)) #8
          to label %do.end45 [label %if.then41], !srcloc !234

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %node42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %node42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arkfb_blank.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.64, i32 noundef %24) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %state46 = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state46, align 4
  %tobool.not.i.i.i103 = icmp eq ptr %26, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i103, label %if.else.i5.i.i107, label %if.then.i4.i.i106

if.then.i4.i.i106:                                ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i104 = getelementptr i8, ptr %26, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i104, i8 1) #8, !srcloc !236
  %add.ptr.i.i3.i.i105 = getelementptr i8, ptr %26, i32 965
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i105) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rseq.exit.i111

if.else.i5.i.i107:                                ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rseq.exit.i111

vga_rseq.exit.i111:                               ; preds = %if.else.i5.i.i107, %if.then.i4.i.i106
  %retval.0.i.i.i108 = phi i8 [ %27, %if.then.i4.i.i106 ], [ %28, %if.else.i5.i.i107 ]
  %or.i110 = or i8 %retval.0.i.i.i108, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i103, label %if.else.i5.i14.i115, label %if.then.i4.i13.i114

if.then.i4.i13.i114:                              ; preds = %vga_rseq.exit.i111
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i112 = getelementptr i8, ptr %26, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i112, i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i113 = getelementptr i8, ptr %26, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i113, i8 %or.i110) #8, !srcloc !236
  br label %svga_wseq_mask.exit116

if.else.i5.i14.i115:                              ; preds = %vga_rseq.exit.i111
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i110) #8, !srcloc !236
  br label %svga_wseq_mask.exit116

svga_wseq_mask.exit116:                           ; preds = %if.else.i5.i14.i115, %if.then.i4.i13.i114
  %29 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state46, align 4
  %tobool.not.i.i.i117 = icmp eq ptr %30, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i117, label %if.else.i5.i.i121, label %if.then.i4.i.i120

if.then.i4.i.i120:                                ; preds = %svga_wseq_mask.exit116
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i118 = getelementptr i8, ptr %30, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i118, i8 23) #8, !srcloc !236
  %add.ptr.i.i3.i.i119 = getelementptr i8, ptr %30, i32 981
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i119) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %vga_rcrt.exit.i124

if.else.i5.i.i121:                                ; preds = %svga_wseq_mask.exit116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %vga_rcrt.exit.i124

vga_rcrt.exit.i124:                               ; preds = %if.else.i5.i.i121, %if.then.i4.i.i120
  %retval.0.i.i.i122 = phi i8 [ %31, %if.then.i4.i.i120 ], [ %32, %if.else.i5.i.i121 ]
  %and4.i123 = and i8 %retval.0.i.i.i122, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i117, label %if.else.i5.i14.i128, label %if.then.i4.i13.i127

if.then.i4.i13.i127:                              ; preds = %vga_rcrt.exit.i124
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i11.i125 = getelementptr i8, ptr %30, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i125, i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i12.i126 = getelementptr i8, ptr %30, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i126, i8 %and4.i123) #8, !srcloc !236
  br label %sw.epilog

if.else.i5.i14.i128:                              ; preds = %vga_rcrt.exit.i124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i123) #8, !srcloc !236
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i5.i14.i128, %if.then.i4.i13.i127, %if.else.i5.i14.i101, %if.then.i4.i13.i100, %if.else.i5.i14.i74, %if.then.i4.i13.i73, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arkfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div29 = lshr i32 %5, 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %div430 = lshr i32 %7, 1
  %mul = mul i32 %div430, %div29
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %div531 = lshr i32 %9, 1
  %add = add i32 %mul, %div531
  %shr = lshr i32 %add, 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line_length, align 4
  %mul7 = mul i32 %11, %5
  %xoffset8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %12 = ptrtoint ptr %xoffset8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xoffset8, align 4
  %mul11 = mul i32 %13, %3
  %div1228 = lshr i32 %mul11, 3
  %add13 = add i32 %div1228, %mul7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp16 = icmp eq i32 %3, 4
  %cond = select i1 %cmp16, i32 2, i32 3
  %shr17 = lshr i32 %add13, %cond
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.0 = phi i32 [ %shr, %if.then ], [ %shr17, %if.else ]
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %15, ptr noundef nonnull @ark_start_address_regs, i32 noundef %offset.0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arkfb_fillrect(ptr noundef %info, ptr noundef %rect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %rem = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rect, align 4
  %rem3 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3)
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6 = icmp eq i32 %7, 2
  br i1 %cmp6, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  %color.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %8 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %color.i, align 4
  %and.i.i = and i32 %9, 1
  %and1.i.i = shl i32 %9, 7
  %shl.i.i = and i32 %and1.i.i, 256
  %and2.i.i = shl i32 %9, 14
  %shl3.i.i = and i32 %and2.i.i, 65536
  %and5.i.i = shl i32 %9, 21
  %shl6.i.i = and i32 %and5.i.i, 16777216
  %or4.i.i = or i32 %shl.i.i, %and.i.i
  %or.i.i = or i32 %or4.i.i, %shl3.i.i
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %mul.i.i = mul nuw i32 %or7.i.i, 255
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %height.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp24.not.i = icmp eq i32 %11, 0
  br i1 %cmp24.not.i, label %if.then.if.end_crit_edge, label %for.cond3.preheader.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then
  %12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %line_length.i, align 4
  %dy.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %17 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dy.i, align 4
  %mul.i = mul i32 %18, %16
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %19 = lshr i32 %5, 1
  %mul1.i = and i32 %19, 2147483644
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul1.i
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.end.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %y.027.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %inc.i, %for.end.i.for.cond3.preheader.i_crit_edge ]
  %dst1.025.i = phi ptr [ %add.ptr2.i, %for.cond3.preheader.lr.ph.i ], [ %add.ptr8.i, %for.end.i.for.cond3.preheader.i_crit_edge ]
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp421.not.i = icmp eq i32 %21, 0
  br i1 %cmp421.not.i, label %for.cond3.preheader.i.for.end.i_crit_edge, label %for.cond3.preheader.i.for.body5.i_crit_edge

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.cond3.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %x.023.i = phi i32 [ %add.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %dst.022.i = phi ptr [ %incdec.ptr.i, %for.body5.i.for.body5.i_crit_edge ], [ %dst1.025.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %dst.022.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.022.i, i32 %mul.i.i) #8, !srcloc !254
  %add.i = add i32 %x.023.i, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp4.i = icmp ult i32 %add.i, %23
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.end.i_crit_edge

for.body5.i.for.end.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.end.i:                                        ; preds = %for.body5.i.for.end.i_crit_edge, %for.cond3.preheader.i.for.end.i_crit_edge
  %24 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line_length.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %dst1.025.i, i32 %25
  %inc.i = add nuw i32 %y.027.i, 1
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.end.i.for.cond3.preheader.i_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end.i.for.cond3.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arkfb_imageblit(ptr noundef %info, ptr noundef %image) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else13_crit_edge

entry.if.else13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

land.lhs.true:                                    ; preds = %entry
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp1 = icmp eq i8 %3, 1
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.else13_crit_edge

land.lhs.true.if.else13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

land.lhs.true3:                                   ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %rem = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true3.if.else13_crit_edge

land.lhs.true3.if.else13_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %6 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %image, align 4
  %rem7 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7)
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true6.if.else13_crit_edge

land.lhs.true6.if.else13_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

if.then:                                          ; preds = %land.lhs.true6
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10 = icmp eq i32 %9, 2
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @arkfb_iplan_imageblit(ptr noundef %info, ptr noundef %image)
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @arkfb_cfb4_imageblit(ptr noundef %info, ptr noundef %image)
  br label %if.end14

if.else13:                                        ; preds = %land.lhs.true6.if.else13_crit_edge, %land.lhs.true3.if.else13_crit_edge, %land.lhs.true.if.else13_crit_edge, %entry.if.else13_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.else, %if.then12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_get_caps(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @save_vga(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_vga(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_match_format(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_check_timings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_default_gfx_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_default_atc_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_default_seq_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_default_crt_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_wcrt_multi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_textmode_vga_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_timings(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arkfb_settile(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.not = icmp eq i32 %6, 8
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp1.not = icmp eq i32 %8, 16
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %depth = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 2
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3.not = icmp eq i32 %10, 1
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.do.end_crit_edge

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %length = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 3
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %cmp5.not = icmp eq i32 %12, 256
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node, align 4
  %height7 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 1
  %15 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height7, align 4
  %depth8 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 2
  %17 = ptrtoint ptr %depth8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %depth8, align 4
  %length9 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 3
  %19 = ptrtoint ptr %length9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length9, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %14, i32 noundef %6, i32 noundef %16, i32 noundef %18, i32 noundef %20) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1160.not = icmp eq i32 %22, 0
  br i1 %cmp1160.not, label %if.end.cleanup_crit_edge, label %for.cond12.preheader.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond12.preheader.preheader:                   ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %4, i32 2
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.end.for.cond12.preheader_crit_edge, %for.cond12.preheader.preheader
  %font.063 = phi ptr [ %add.ptr26, %for.end.for.cond12.preheader_crit_edge ], [ %1, %for.cond12.preheader.preheader ]
  %c.062 = phi i32 [ %inc28, %for.end.for.cond12.preheader_crit_edge ], [ 0, %for.cond12.preheader.preheader ]
  %fb.061 = phi ptr [ %spec.select, %for.end.for.cond12.preheader_crit_edge ], [ %add.ptr, %for.cond12.preheader.preheader ]
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1458.not = icmp eq i32 %24, 0
  br i1 %cmp1458.not, label %for.cond12.preheader.for.end_crit_edge, label %for.cond12.preheader.for.body15_crit_edge

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

for.cond12.preheader.for.end_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %i.059 = phi i32 [ %inc, %for.body15.for.body15_crit_edge ], [ 0, %for.cond12.preheader.for.body15_crit_edge ]
  %arrayidx = getelementptr i8, ptr %font.063, i32 %i.059
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %mul = shl i32 %i.059, 2
  %arrayidx16 = getelementptr i8, ptr %fb.061, i32 %mul
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx16, i8 %26) #8, !srcloc !236
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %add = add i32 %mul, 1024
  %arrayidx19 = getelementptr i8, ptr %fb.061, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx19, i8 %28) #8, !srcloc !236
  %inc = add nuw i32 %i.059, 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %cmp14 = icmp ult i32 %inc, %30
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.for.end_crit_edge

for.body15.for.end_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.end:                                          ; preds = %for.body15.for.end_crit_edge, %for.cond12.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond12.preheader.for.end_crit_edge ], [ %30, %for.body15.for.end_crit_edge ]
  %31 = and i32 %c.062, -2147483641
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %cmp21 = icmp eq i32 %31, 7
  %spec.select.v = select i1 %cmp21, i32 1152, i32 128
  %spec.select = getelementptr i8, ptr %fb.061, i32 %spec.select.v
  %add.ptr26 = getelementptr i8, ptr %font.063, i32 %.lcssa
  %inc28 = add nuw i32 %c.062, 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  %cmp11 = icmp ult i32 %inc28, %33
  br i1 %cmp11, label %for.end.for.cond12.preheader_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.for.cond12.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilecopy(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilefill(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tileblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arkfb_tilecursor(ptr noundef %info, ptr noundef %cursor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.arkfb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void @svga_tilecursor(ptr noundef %3, ptr noundef %info, ptr noundef %cursor) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_get_tilemax(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilecursor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arkfb_iplan_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %0 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fg_color, align 4
  %and.i = and i32 %1, 1
  %and1.i = shl i32 %1, 7
  %shl.i = and i32 %and1.i, 256
  %and2.i = shl i32 %1, 14
  %shl3.i = and i32 %and2.i, 65536
  %and5.i = shl i32 %1, 21
  %shl6.i = and i32 %and5.i, 16777216
  %or.i = or i32 %shl.i, %and.i
  %or4.i = or i32 %or.i, %shl3.i
  %or7.i = or i32 %or4.i, %shl6.i
  %mul.i = mul nuw i32 %or7.i, 255
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %2 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bg_color, align 4
  %and.i35 = and i32 %3, 1
  %and1.i36 = shl i32 %3, 7
  %shl.i37 = and i32 %and1.i36, 256
  %and2.i38 = shl i32 %3, 14
  %shl3.i39 = and i32 %and2.i38, 65536
  %and5.i40 = shl i32 %3, 21
  %shl6.i41 = and i32 %and5.i40, 16777216
  %or.i43 = or i32 %shl.i37, %and.i35
  %or4.i42 = or i32 %or.i43, %shl3.i39
  %or7.i44 = or i32 %or4.i42, %shl6.i41
  %mul.i45 = mul nuw i32 %or7.i44, 255
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp50.not = icmp eq i32 %5, 0
  br i1 %cmp50.not, label %entry.for.end17_crit_edge, label %for.cond4.preheader.lr.ph

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond4.preheader.lr.ph:                        ; preds = %entry
  %6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %line_length, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %11 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dy, align 4
  %mul = mul i32 %10, %12
  %add.ptr = getelementptr i8, ptr %8, i32 %mul
  %13 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %image, align 4
  %15 = lshr i32 %14, 1
  %mul2 = and i32 %15, 2147483644
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul2
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end.for.cond4.preheader_crit_edge, %for.cond4.preheader.lr.ph
  %y.055 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc, %for.end.for.cond4.preheader_crit_edge ]
  %dst1.053 = phi ptr [ %add.ptr3, %for.cond4.preheader.lr.ph ], [ %add.ptr15, %for.end.for.cond4.preheader_crit_edge ]
  %src1.051 = phi ptr [ %17, %for.cond4.preheader.lr.ph ], [ %add.ptr12, %for.end.for.cond4.preheader_crit_edge ]
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp546.not = icmp eq i32 %19, 0
  br i1 %cmp546.not, label %for.cond4.preheader.for.end_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.end_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %x.049 = phi i32 [ %add, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %dst.048 = phi ptr [ %incdec.ptr9, %for.body6.for.body6_crit_edge ], [ %dst1.053, %for.cond4.preheader.for.body6_crit_edge ]
  %src.047 = phi ptr [ %incdec.ptr, %for.body6.for.body6_crit_edge ], [ %src1.051, %for.cond4.preheader.for.body6_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.047, i32 1
  %20 = ptrtoint ptr %src.047 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src.047, align 1
  %conv = zext i8 %21 to i32
  %mul7 = mul nuw i32 %conv, 16843009
  %and = and i32 %mul7, %mul.i
  %neg = xor i32 %mul7, -1
  %and8 = and i32 %mul.i45, %neg
  %or = or i32 %and, %and8
  %incdec.ptr9 = getelementptr i32, ptr %dst.048, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.048, i32 %or) #8, !srcloc !254
  %add = add i32 %x.049, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp5 = icmp ult i32 %add, %23
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.end:                                          ; preds = %for.body6.for.end_crit_edge, %for.cond4.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond4.preheader.for.end_crit_edge ], [ %23, %for.body6.for.end_crit_edge ]
  %div1134 = lshr i32 %.lcssa, 3
  %add.ptr12 = getelementptr i8, ptr %src1.051, i32 %div1134
  %24 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line_length, align 4
  %add.ptr15 = getelementptr i8, ptr %dst1.053, i32 %25
  %inc = add nuw i32 %y.055, 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.end.for.cond4.preheader_crit_edge, label %for.end.for.end17_crit_edge

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.end.for.cond4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arkfb_cfb4_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %0 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fg_color, align 4
  %mul = mul i32 %1, 286331153
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %2 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bg_color, align 4
  %mul1 = mul i32 %3, 286331153
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39.not = icmp eq i32 %5, 0
  br i1 %cmp39.not, label %entry.for.end17_crit_edge, label %for.cond5.preheader.lr.ph

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond5.preheader.lr.ph:                        ; preds = %entry
  %6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %line_length, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %11 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dy, align 4
  %mul2 = mul i32 %10, %12
  %add.ptr = getelementptr i8, ptr %8, i32 %mul2
  %13 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %image, align 4
  %15 = lshr i32 %14, 1
  %mul3 = and i32 %15, 2147483644
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul3
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.end.for.cond5.preheader_crit_edge, %for.cond5.preheader.lr.ph
  %y.044 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %inc, %for.end.for.cond5.preheader_crit_edge ]
  %dst1.042 = phi ptr [ %add.ptr4, %for.cond5.preheader.lr.ph ], [ %add.ptr15, %for.end.for.cond5.preheader_crit_edge ]
  %src1.040 = phi ptr [ %17, %for.cond5.preheader.lr.ph ], [ %add.ptr12, %for.end.for.cond5.preheader_crit_edge ]
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp635.not = icmp eq i32 %19, 0
  br i1 %cmp635.not, label %for.cond5.preheader.for.end_crit_edge, label %for.cond5.preheader.for.body7_crit_edge

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.cond5.preheader.for.end_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %x.038 = phi i32 [ %add, %for.body7.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %dst.037 = phi ptr [ %incdec.ptr9, %for.body7.for.body7_crit_edge ], [ %dst1.042, %for.cond5.preheader.for.body7_crit_edge ]
  %src.036 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %src1.040, %for.cond5.preheader.for.body7_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.036, i32 1
  %20 = ptrtoint ptr %src.036 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src.036, align 1
  %conv = zext i8 %21 to i32
  %and.i = shl nuw i32 %conv, 24
  %shl.i = and i32 %and.i, 16777216
  %and1.i = shl i32 %conv, 27
  %shl2.i = and i32 %and1.i, 268435456
  %or.i = or i32 %shl.i, %shl2.i
  %and3.i = shl nuw nsw i32 %conv, 14
  %shl4.i = and i32 %and3.i, 65536
  %or5.i = or i32 %or.i, %shl4.i
  %and6.i = shl nuw nsw i32 %conv, 17
  %shl7.i = and i32 %and6.i, 1048576
  %or8.i = or i32 %or5.i, %shl7.i
  %and9.i = shl nuw nsw i32 %conv, 4
  %shl10.i = and i32 %and9.i, 256
  %or11.i = or i32 %or8.i, %shl10.i
  %and12.i = shl nuw nsw i32 %conv, 7
  %shl13.i = and i32 %and12.i, 4096
  %or14.i = or i32 %or11.i, %shl13.i
  %and15.i = lshr i32 %conv, 6
  %shr.i = and i32 %and15.i, 1
  %or16.i = or i32 %or14.i, %shr.i
  %and17.i = lshr i32 %conv, 3
  %shr18.i = and i32 %and17.i, 16
  %or19.i = or i32 %or16.i, %shr18.i
  %mul.i = mul i32 %or19.i, 15
  %and = and i32 %mul.i, %mul
  %neg = xor i32 %mul.i, -1
  %and8 = and i32 %mul1, %neg
  %or = or i32 %and, %and8
  %incdec.ptr9 = getelementptr i32, ptr %dst.037, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.037, i32 %or) #8, !srcloc !254
  %add = add i32 %x.038, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp6 = icmp ult i32 %add, %23
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.cond5.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond5.preheader.for.end_crit_edge ], [ %23, %for.body7.for.end_crit_edge ]
  %div1134 = lshr i32 %.lcssa, 3
  %add.ptr12 = getelementptr i8, ptr %src1.040, i32 %div1134
  %24 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line_length, align 4
  %add.ptr15 = getelementptr i8, ptr %dst1.042, i32 %25
  %inc = add nuw i32 %y.044, 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.end.for.cond5.preheader_crit_edge, label %for.end.for.end17_crit_edge

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.end.for.cond5.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ics5342_set_mode(ptr nocapture noundef %info, i32 noundef %mode) #3 align 64 {
entry:
  %code.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mode)
  %cmp = icmp sgt i32 %mode, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %tobool.not = icmp eq i32 %mode, 4
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [10 x i8], ptr @ics5342_mode_table, i32 0, i32 %mode
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %code.i) #8
  %3 = getelementptr inbounds [2 x i8], ptr %code.i, i32 0, i32 1
  %4 = ptrtoint ptr %code.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %code.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %3, align 1
  %dac_write_regs.i = getelementptr inbounds %struct.dac_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %dac_write_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dac_write_regs.i, align 4
  %data.i = getelementptr inbounds %struct.dac_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  call void %7(ptr noundef %9, ptr noundef nonnull %code.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %code.i) #8
  %conv4 = trunc i32 %mode to i8
  %mode5 = getelementptr inbounds %struct.ics5342_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %mode5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %mode5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ics5342_set_freq(ptr nocapture noundef readonly %info, i32 noundef %channel, i32 noundef %freq) #3 align 64 {
entry:
  %m = alloca i16, align 2
  %n = alloca i16, align 2
  %r = alloca i16, align 2
  %code = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m) #8
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %m, align 2, !annotation !235
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %n) #8
  %1 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %n, align 2, !annotation !235
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r) #8
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %r, align 2, !annotation !235
  %mode = getelementptr inbounds %struct.ics5342_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp = icmp eq i8 %4, 5
  %cond = select i1 %cmp, ptr @ics5342_pll_pd4, ptr @ics5342_pll
  %call = call i32 @svga_compute_pll(ptr noundef nonnull %cond, i32 noundef %freq, ptr noundef nonnull %m, ptr noundef nonnull %n, ptr noundef nonnull %r, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %code) #8
  %5 = getelementptr inbounds [6 x i8], ptr %code, i32 0, i32 1
  %6 = getelementptr inbounds [6 x i8], ptr %code, i32 0, i32 2
  %7 = getelementptr inbounds [6 x i8], ptr %code, i32 0, i32 3
  %8 = getelementptr inbounds [6 x i8], ptr %code, i32 0, i32 4
  %9 = getelementptr inbounds [6 x i8], ptr %code, i32 0, i32 5
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %code, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %5, align 1
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %6, align 1
  %13 = ptrtoint ptr %m to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %m, align 2
  %conv6 = trunc i16 %14 to i8
  %sub = add i8 %conv6, -2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sub, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %8, align 1
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %n, align 2
  %conv10 = trunc i16 %18 to i8
  %sub11 = add i8 %conv10, -2
  %19 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %r, align 2
  %conv12 = trunc i16 %20 to i8
  %shl = shl i8 %conv12, 5
  %or = or i8 %shl, %sub11
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or, ptr %9, align 1
  %dac_write_regs.i = getelementptr inbounds %struct.dac_info, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %dac_write_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dac_write_regs.i, align 4
  %data.i = getelementptr inbounds %struct.dac_info, ptr %info, i32 0, i32 3
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  call void %23(ptr noundef %25, ptr noundef nonnull %code, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %code) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ics5342_release(ptr noundef %info) #3 align 64 {
entry:
  %code.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %code.i.i) #8
  %0 = getelementptr inbounds [2 x i8], ptr %code.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %code.i.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  %dac_write_regs.i.i = getelementptr inbounds %struct.dac_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %dac_write_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dac_write_regs.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.dac_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  call void %4(ptr noundef %6, ptr noundef nonnull %code.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %code.i.i) #8
  %mode5.i = getelementptr inbounds %struct.ics5342_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %mode5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mode5.i, align 4
  call void @kfree(ptr noundef %info) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_compute_pll(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ark_pci_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
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
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.65) #11
  tail call void @console_lock() #8
  %open_lock = getelementptr inbounds %struct.arkfb_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.arkfb_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  tail call void @console_unlock() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ark_pci_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
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
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.67) #11
  tail call void @console_lock() #8
  %open_lock = getelementptr inbounds %struct.arkfb_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.arkfb_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @arkfb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #8
  br label %fail

fail:                                             ; preds = %if.end, %entry.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  tail call void @console_unlock() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !201, !203, !205, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__UNIQUE_ID_author305, !1, !"__UNIQUE_ID_author305", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/arkfb.c", i32 101, i32 1}
!2 = !{ptr @__UNIQUE_ID_file306, !3, !"__UNIQUE_ID_file306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/arkfb.c", i32 102, i32 1}
!4 = !{ptr @__UNIQUE_ID_license307, !3, !"__UNIQUE_ID_license307", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/arkfb.c", i32 103, i32 1}
!7 = !{ptr @__param_mode_option, !8, !"__param_mode_option", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/arkfb.c", i32 105, i32 1}
!9 = !{ptr @__UNIQUE_ID_mode_optiontype309, !8, !"__UNIQUE_ID_mode_optiontype309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_mode_option310, !11, !"__UNIQUE_ID_mode_option310", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/arkfb.c", i32 106, i32 1}
!12 = !{ptr @__param_mode, !13, !"__param_mode", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/arkfb.c", i32 107, i32 1}
!14 = !{ptr @__UNIQUE_ID_modetype311, !13, !"__UNIQUE_ID_modetype311", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mode312, !16, !"__UNIQUE_ID_mode312", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/arkfb.c", i32 108, i32 1}
!17 = !{ptr @__param_threshold, !18, !"__param_threshold", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/arkfb.c", i32 112, i32 1}
!19 = !{ptr @__UNIQUE_ID_thresholdtype313, !18, !"__UNIQUE_ID_thresholdtype313", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_threshold314, !21, !"__UNIQUE_ID_threshold314", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/arkfb.c", i32 113, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/arkfb.c", i32 1172, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @arkfb_cleanup.__UNIQUE_ID_ddebug329, !23, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_arkfb__331_1195_arkfb_init6, !29, !"__initcall__kmod_arkfb__331_1195_arkfb_init6", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/arkfb.c", i32 1195, i32 1}
!30 = !{ptr @__exitcall_arkfb_cleanup, !31, !"__exitcall_arkfb_cleanup", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/arkfb.c", i32 1196, i32 1}
!32 = !{ptr @__param_str_mode_option, !8, !"__param_str_mode_option", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/arkfb.c", i32 99, i32 28}
!35 = !{ptr @mode_option, !36, !"mode_option", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/arkfb.c", i32 99, i32 14}
!37 = !{ptr @__param_str_mode, !13, !"__param_str_mode", i1 false, i1 false}
!38 = !{ptr @__param_str_threshold, !18, !"__param_str_threshold", i1 false, i1 false}
!39 = !{ptr @threshold, !40, !"threshold", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/arkfb.c", i32 110, i32 12}
!41 = !{ptr @arkfb_pci_driver, !42, !"arkfb_pci_driver", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/arkfb.c", i32 1160, i32 26}
!43 = !{ptr @ark_devices, !44, !"ark_devices", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/arkfb.c", i32 1152, i32 35}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/arkfb.c", i32 951, i32 3}
!47 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ark_pci_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @ark_pci_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ark_pci_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/arkfb.c", i32 961, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/arkfb.c", i32 969, i32 3}
!57 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ark_pci_probe._entry.10, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ark_pci_probe._entry_ptr.13, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/arkfb.c", i32 975, i32 3}
!62 = !{ptr @ark_pci_probe._entry.14, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ark_pci_probe._entry_ptr.16, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/arkfb.c", i32 982, i32 3}
!66 = !{ptr @ark_pci_probe._entry.17, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ark_pci_probe._entry_ptr.19, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/arkfb.c", i32 993, i32 3}
!70 = !{ptr @ark_pci_probe._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ark_pci_probe._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/arkfb.c", i32 1011, i32 23}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/arkfb.c", i32 1024, i32 3}
!76 = !{ptr @ark_pci_probe._entry.24, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ark_pci_probe._entry_ptr.26, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/arkfb.c", i32 1030, i32 3}
!80 = !{ptr @ark_pci_probe._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ark_pci_probe._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/arkfb.c", i32 1036, i32 3}
!84 = !{ptr @ark_pci_probe._entry.30, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ark_pci_probe._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/arkfb.c", i32 1040, i32 2}
!88 = !{ptr @ark_pci_probe._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ark_pci_probe._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @arkfb_ops, !91, !"arkfb_ops", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/arkfb.c", i32 920, i32 28}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/arkfb.c", i32 573, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @arkfb_check_var._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @arkfb_check_var._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/arkfb.c", i32 593, i32 3}
!99 = !{ptr @arkfb_check_var._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @arkfb_check_var._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/arkfb.c", i32 601, i32 3}
!103 = !{ptr @arkfb_check_var._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @arkfb_check_var._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @arkfb_formats, !106, !"arkfb_formats", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/arkfb.c", i32 44, i32 36}
!107 = !{ptr @ark_timing_regs, !108, !"ark_timing_regs", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/arkfb.c", i32 86, i32 38}
!109 = !{ptr @ark_h_total_regs, !110, !"ark_h_total_regs", i1 false, i1 false}
!110 = !{!"../drivers/video/fbdev/arkfb.c", i32 67, i32 32}
!111 = !{ptr @ark_h_display_regs, !112, !"ark_h_display_regs", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/arkfb.c", i32 68, i32 32}
!113 = !{ptr @ark_h_blank_start_regs, !114, !"ark_h_blank_start_regs", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/arkfb.c", i32 69, i32 32}
!115 = !{ptr @ark_h_blank_end_regs, !116, !"ark_h_blank_end_regs", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/arkfb.c", i32 70, i32 32}
!117 = !{ptr @ark_h_sync_start_regs, !118, !"ark_h_sync_start_regs", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/arkfb.c", i32 71, i32 32}
!119 = !{ptr @ark_h_sync_end_regs, !120, !"ark_h_sync_end_regs", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/arkfb.c", i32 72, i32 32}
!121 = !{ptr @ark_v_total_regs, !122, !"ark_v_total_regs", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/arkfb.c", i32 74, i32 32}
!123 = !{ptr @ark_v_display_regs, !124, !"ark_v_display_regs", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/arkfb.c", i32 75, i32 32}
!125 = !{ptr @ark_v_blank_start_regs, !126, !"ark_v_blank_start_regs", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/arkfb.c", i32 76, i32 32}
!127 = !{ptr @ark_v_blank_end_regs, !128, !"ark_v_blank_end_regs", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/arkfb.c", i32 78, i32 32}
!129 = !{ptr @ark_v_sync_start_regs, !130, !"ark_v_sync_start_regs", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/arkfb.c", i32 79, i32 32}
!131 = !{ptr @ark_v_sync_end_regs, !132, !"ark_v_sync_end_regs", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/arkfb.c", i32 80, i32 32}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/arkfb.c", i32 683, i32 2}
!135 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug315, !134, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/arkfb.c", i32 706, i32 3}
!139 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug316, !138, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/arkfb.c", i32 715, i32 3}
!142 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug317, !141, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/arkfb.c", i32 723, i32 3}
!145 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug318, !144, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/arkfb.c", i32 730, i32 3}
!148 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug319, !147, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/video/fbdev/arkfb.c", i32 735, i32 4}
!151 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug320, !150, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/arkfb.c", i32 739, i32 4}
!154 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug321, !153, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!155 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/arkfb.c", i32 746, i32 3}
!157 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug322, !156, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/arkfb.c", i32 753, i32 3}
!160 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug323, !159, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!161 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/arkfb.c", i32 760, i32 3}
!163 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug324, !162, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/arkfb.c", i32 769, i32 3}
!166 = !{ptr @arkfb_set_par.__UNIQUE_ID_ddebug325, !165, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/arkfb.c", i32 777, i32 3}
!169 = !{ptr @arkfb_set_par._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @arkfb_set_par._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @arkfb_tile_ops, !172, !"arkfb_tile_ops", i1 false, i1 false}
!172 = !{!"../drivers/video/fbdev/arkfb.c", i32 154, i32 27}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/video/fbdev/arkfb.c", i32 127, i32 3}
!175 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @arkfb_settile._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @arkfb_settile._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @ark_line_compare_regs, !179, !"ark_line_compare_regs", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/arkfb.c", i32 82, i32 32}
!180 = !{ptr @ark_start_address_regs, !181, !"ark_start_address_regs", i1 false, i1 false}
!181 = !{!"../drivers/video/fbdev/arkfb.c", i32 83, i32 32}
!182 = !{ptr @ark_offset_regs, !183, !"ark_offset_regs", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/arkfb.c", i32 84, i32 32}
!184 = !{ptr @.str.59, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/video/fbdev/arkfb.c", i32 506, i32 3}
!186 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ark_set_pixclock._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @ark_set_pixclock._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.61, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/video/fbdev/arkfb.c", i32 869, i32 3}
!191 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @arkfb_blank.__UNIQUE_ID_ddebug326, !190, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!193 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/video/fbdev/arkfb.c", i32 874, i32 3}
!195 = !{ptr @arkfb_blank.__UNIQUE_ID_ddebug327, !194, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!196 = !{ptr @.str.64, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/video/fbdev/arkfb.c", i32 881, i32 3}
!198 = !{ptr @arkfb_blank.__UNIQUE_ID_ddebug328, !197, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!199 = !{ptr @ics5342_ops, !200, !"ics5342_ops", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/arkfb.c", i32 432, i32 23}
!201 = !{ptr @ics5342_mode_table, !202, !"ics5342_mode_table", i1 false, i1 false}
!202 = !{!"../drivers/video/fbdev/arkfb.c", i32 374, i32 17}
!203 = !{ptr @ics5342_pll_pd4, !204, !"ics5342_pll_pd4", i1 false, i1 false}
!204 = !{!"../drivers/video/fbdev/arkfb.c", i32 402, i32 30}
!205 = !{ptr @ics5342_pll, !206, !"ics5342_pll", i1 false, i1 false}
!206 = !{!"../drivers/video/fbdev/arkfb.c", i32 398, i32 30}
!207 = !{ptr @dac_regs, !208, !"dac_regs", i1 false, i1 false}
!208 = !{!"../drivers/video/fbdev/arkfb.c", i32 458, i32 23}
!209 = !{ptr @ark_pci_pm_ops, !210, !"ark_pci_pm_ops", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/arkfb.c", i32 1139, i32 32}
!211 = !{ptr @.str.65, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/video/fbdev/arkfb.c", i32 1095, i32 2}
!213 = !{ptr @.str.66, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @ark_pci_suspend._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @ark_pci_suspend._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.67, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/video/fbdev/arkfb.c", i32 1122, i32 2}
!218 = !{ptr @.str.68, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @ark_pci_resume._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @ark_pci_resume._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.69, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/video/fbdev/arkfb.c", i32 1191, i32 2}
!223 = !{ptr @.str.70, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @arkfb_init.__UNIQUE_ID_ddebug330, !222, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i64 2148983694, i64 2148983699, i64 2148983712, i64 2148983756, i64 2148983790, i64 2148983811}
!235 = !{!"auto-init"}
!236 = !{i64 6672922}
!237 = !{i64 6673317}
!238 = !{i64 2156444730}
!239 = !{i64 2154206993}
!240 = !{i64 2156445110}
!241 = !{i64 2154208978}
!242 = !{i64 2156514587}
!243 = !{i64 2156514918}
!244 = !{i64 2156515245}
!245 = !{i64 2156515573}
!246 = !{i64 2156515905}
!247 = !{i64 2156516239}
!248 = !{i64 2156516572}
!249 = !{i64 2156516902}
!250 = !{i64 2156517230}
!251 = !{i64 2156517562}
!252 = !{i64 2156517896}
!253 = !{i64 2156518229}
!254 = !{i64 6673119}
