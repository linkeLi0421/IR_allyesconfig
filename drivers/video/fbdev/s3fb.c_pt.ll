; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/s3fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/s3fb.c"
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
%struct.fb_tile_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vga_regset = type { i8, i8, i8 }
%struct.svga_fb_format = type { i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32 }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.svga_timing_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svga_pll = type { i16, i16, i16, i16, i16, i16, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.s3fb_info = type { i32, i32, i32, i32, %struct.vgastate, %struct.mutex, i32, [16 x i32], ptr, i8, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_tilemap = type { i32, i32, i32, i32, ptr }

@__UNIQUE_ID_author305 = internal constant [66 x i8] c"s3fb.author=(c) 2006-2007 Ondrej Zajicek <santiago@crfreenet.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [35 x i8] c"s3fb.file=drivers/video/fbdev/s3fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [17 x i8] c"s3fb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [48 x i8] c"s3fb.description=fbdev driver for S3 Trio/Virge\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [17 x i8] c"s3fb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype309 = internal constant [32 x i8] c"s3fb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option310 = internal constant [63 x i8] c"s3fb.parm=mode_option:Default video mode ('640x480-8@60', etc)\00", section ".modinfo", align 1
@__param_str_mode = internal constant [10 x i8] c"s3fb.mode\00", align 1
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_modetype311 = internal constant [25 x i8] c"s3fb.parmtype=mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode312 = internal constant [69 x i8] c"s3fb.parm=mode:Default video mode ('640x480-8@60', etc) (deprecated)\00", section ".modinfo", align 1
@__param_str_mtrr = internal constant [10 x i8] c"s3fb.mtrr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mtrr = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_mtrr = internal constant %struct.kernel_param { ptr @__param_str_mtrr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @mtrr } }, section "__param", align 4
@__UNIQUE_ID_mtrrtype313 = internal constant [23 x i8] c"s3fb.parmtype=mtrr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mtrr314 = internal constant [81 x i8] c"s3fb.parm=mtrr:Enable write-combining with MTRR (1=enable, 0=disable, default=1)\00", section ".modinfo", align 1
@__param_str_fasttext = internal constant [14 x i8] c"s3fb.fasttext\00", align 1
@fasttext = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fasttext = internal constant %struct.kernel_param { ptr @__param_str_fasttext, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.79 { ptr @fasttext } }, section "__param", align 4
@__UNIQUE_ID_fasttexttype315 = internal constant [27 x i8] c"s3fb.parmtype=fasttext:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fasttext316 = internal constant [77 x i8] c"s3fb.parm=fasttext:Enable S3 fast text mode (1=enable, 0=disable, default=1)\00", section ".modinfo", align 1
@s3fb_cleanup.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"s3fb\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3fb_cleanup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/video/fbdev/s3fb.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3fb: cleaning up\0A\00", [45 x i8] zeroinitializer }, align 32
@s3fb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @s3_devices, ptr @s3_pci_probe, ptr @s3_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_s3fb__338_1565_s3fb_init6 = internal global ptr @s3fb_init, section ".initcall6.init", align 4
@__exitcall_s3fb_cleanup = internal global ptr @s3fb_cleanup, section ".exitcall.exit", align 4
@s3_devices = internal constant { [16 x %struct.pci_device_id], [128 x i8] } { [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 21299, i32 34832, i32 -1, i32 -1, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 21299, i32 34833, i32 -1, i32 -1, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 21299, i32 34834, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 21299, i32 34836, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 21299, i32 35073, i32 -1, i32 -1, i32 0, i32 0, i32 129, i32 0 }, %struct.pci_device_id { i32 21299, i32 35074, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 21299, i32 22065, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 21299, i32 34877, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 21299, i32 35329, i32 -1, i32 -1, i32 0, i32 0, i32 130, i32 0 }, %struct.pci_device_id { i32 21299, i32 35344, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 21299, i32 35345, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 21299, i32 35346, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 21299, i32 35347, i32 -1, i32 -1, i32 0, i32 0, i32 131, i32 0 }, %struct.pci_device_id { i32 21299, i32 35076, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 21299, i32 35841, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@s3_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3_pci_suspend, ptr @s3_pci_resume, ptr null, ptr @s3_pci_resume, ptr @s3_pci_suspend, ptr @s3_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ignoring secondary device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3_pci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr = internal global ptr @s3_pci_probe._entry, section ".printk_index", align 4
@s3_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&par->open_lock\00", [16 x i8] zeroinitializer }, align 32
@s3fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @s3fb_open, ptr @s3fb_release, ptr null, ptr null, ptr @s3fb_check_var, ptr @s3fb_set_par, ptr @s3fb_setcolreg, ptr null, ptr @s3fb_blank, ptr @s3fb_pan_display, ptr @s3fb_fillrect, ptr @cfb_copyarea, ptr @s3fb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svga_get_caps, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 1143, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.12 = internal global ptr @s3_pci_probe._entry.9, section ".printk_index", align 4
@s3_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 1149, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot reserve framebuffer region\0A\00", [61 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.15 = internal global ptr @s3_pci_probe._entry.13, section ".printk_index", align 4
@s3_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 1161, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iomap for framebuffer failed\0A\00", [34 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.18 = internal global ptr @s3_pci_probe._entry.16, section ".printk_index", align 4
@s3_memsizes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4096, i32 0, i32 3072, i32 8192, i32 2048, i32 6144, i32 1024, i32 512], [32 x i8] zeroinitializer }, align 32
@s3_names = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.83, ptr @.str.84, ptr @.str.85], [44 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.2, i32 1272, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to map MMIO at 0x%lx, disabling DDC\00", [53 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.21 = internal global ptr @s3_pci_probe._entry.19, section ".printk_index", align 4
@s3_pci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.2, i32 1282, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error getting mode database\0A\00", [35 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.24 = internal global ptr @s3_pci_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"640x480-8@60\00", [19 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.2, i32 1310, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode %s not found\0A\00", [45 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.28 = internal global ptr @s3_pci_probe._entry.26, section ".printk_index", align 4
@s3_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.2, i32 1324, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"virtual vertical size smaller than real\0A\00", [55 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.31 = internal global ptr @s3_pci_probe._entry.29, section ".printk_index", align 4
@s3_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.2, i32 1331, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot allocate colormap\0A\00", [38 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.34 = internal global ptr @s3_pci_probe._entry.32, section ".printk_index", align 4
@s3_pci_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.5, ptr @.str.2, i32 1337, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot register framebuffer\0A\00", [35 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.37 = internal global ptr @s3_pci_probe._entry.35, section ".printk_index", align 4
@s3_pci_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str.2, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016fb%d: %s on %s, %d MB RAM, %d MHz MCLK\0A\00", [54 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.40 = internal global ptr @s3_pci_probe._entry.38, section ".printk_index", align 4
@s3_pci_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.2, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016fb%d: unknown chip, CR2D=%x, CR2E=%x, CRT2F=%x, CRT30=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@s3_pci_probe._entry_ptr.43 = internal global ptr @s3_pci_probe._entry.41, section ".printk_index", align 4
@s3fb_fast_tile_ops = internal global { %struct.fb_tile_ops, [40 x i8] } { %struct.fb_tile_ops { ptr @s3fb_settile_fast, ptr @svga_tilecopy, ptr @svga_tilefill, ptr @svga_tileblit, ptr @s3fb_tilecursor, ptr @svga_get_tilemax }, [40 x i8] zeroinitializer }, align 32
@s3fb_tile_ops = internal global { %struct.fb_tile_ops, [40 x i8] } { %struct.fb_tile_ops { ptr @svga_settile, ptr @svga_tilecopy, ptr @svga_tilefill, ptr @svga_tileblit, ptr @s3fb_tilecursor, ptr @svga_get_tilemax }, [40 x i8] zeroinitializer }, align 32
@s3_line_compare_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 24, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 4, i8 4 }, %struct.vga_regset { i8 9, i8 6, i8 6 }, %struct.vga_regset { i8 94, i8 6, i8 6 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@s3_start_address_regs = internal constant { [4 x %struct.vga_regset], [20 x i8] } { [4 x %struct.vga_regset] [%struct.vga_regset { i8 13, i8 0, i8 7 }, %struct.vga_regset { i8 12, i8 0, i8 7 }, %struct.vga_regset { i8 105, i8 0, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [20 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3fb_set_par\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fb%d: offset register       : %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s3_offset_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 19, i8 0, i8 7 }, %struct.vga_regset { i8 81, i8 4, i8 5 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3fb_formats = internal constant { [9 x %struct.svga_fb_format], [180 x i8] } { [9 x %struct.svga_fb_format] [%struct.svga_fb_format { i32 0, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 3, i32 9, i32 3, i32 8, i32 16 }, %struct.svga_fb_format { i32 4, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 8, i32 16 }, %struct.svga_fb_format { i32 4, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 1, i32 2, i32 1, i32 3, i32 8, i32 16 }, %struct.svga_fb_format { i32 8, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 4, i32 8 }, %struct.svga_fb_format { i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 2, i32 4 }, %struct.svga_fb_format { i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 2, i32 4 }, %struct.svga_fb_format { i32 24, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 1, i32 2 }, %struct.svga_fb_format { i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 1, i32 2 }, %struct.svga_fb_format { i32 65535, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [180 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb%d: text mode\0A\00", [47 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fb%d: high speed text mode set\0A\00", [32 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.48, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 4 bit pseudocolor\0A\00", [39 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.49, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb%d: 4 bit pseudocolor, planar\0A\00", [63 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.50, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 8 bit pseudocolor\0A\00", [39 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 5/5/5 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.52, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 5/6/5 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.53, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 8/8/8 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@s3fb_set_par.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.54, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 8/8/8/8 truecolor\0A\00", [39 x i8] zeroinitializer }, align 32
@s3fb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013fb%d: unsupported mode - bug\0A\00", [32 x i8] zeroinitializer }, align 32
@s3fb_set_par._entry_ptr = internal global ptr @s3fb_set_par._entry, section ".printk_index", align 4
@s3_timing_regs = internal constant { %struct.svga_timing_regs, [48 x i8] } { %struct.svga_timing_regs { ptr @s3_h_total_regs, ptr @s3_h_display_regs, ptr @s3_h_blank_start_regs, ptr @s3_h_blank_end_regs, ptr @s3_h_sync_start_regs, ptr @s3_h_sync_end_regs, ptr @s3_v_total_regs, ptr @s3_v_display_regs, ptr @s3_v_blank_start_regs, ptr @s3_v_blank_end_regs, ptr @s3_v_sync_start_regs, ptr @s3_v_sync_end_regs }, [48 x i8] zeroinitializer }, align 32
@s3_dtpc_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 59, i8 0, i8 7 }, %struct.vga_regset { i8 93, i8 6, i8 6 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3fb_settile_fast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013fb%d: unsupported font parameters: width %d, height %d, depth %d, length %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3fb_settile_fast\00", [46 x i8] zeroinitializer }, align 32
@s3fb_settile_fast._entry_ptr = internal global ptr @s3fb_settile_fast._entry, section ".printk_index", align 4
@s3_trio3d_pll = internal constant { %struct.svga_pll, [40 x i8] } { %struct.svga_pll { i16 3, i16 129, i16 3, i16 31, i16 0, i16 4, i32 230000, i32 460000, i32 14318 }, [40 x i8] zeroinitializer }, align 32
@s3_pll = internal constant { %struct.svga_pll, [40 x i8] } { %struct.svga_pll { i16 3, i16 129, i16 3, i16 33, i16 0, i16 3, i32 35000, i32 240000, i32 14318 }, [40 x i8] zeroinitializer }, align 32
@s3_set_pixclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013fb%d: cannot set requested pixclock, keeping old value\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3_set_pixclock\00", [16 x i8] zeroinitializer }, align 32
@s3_set_pixclock._entry_ptr = internal global ptr @s3_set_pixclock._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s3_h_total_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 0, i8 0, i8 7 }, %struct.vga_regset { i8 93, i8 0, i8 0 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3_h_display_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 1, i8 0, i8 7 }, %struct.vga_regset { i8 93, i8 1, i8 1 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3_h_blank_start_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 2, i8 0, i8 7 }, %struct.vga_regset { i8 93, i8 2, i8 2 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3_h_blank_end_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 3, i8 0, i8 4 }, %struct.vga_regset { i8 5, i8 7, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3_h_sync_start_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 4, i8 0, i8 7 }, %struct.vga_regset { i8 93, i8 4, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@s3_h_sync_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 5, i8 0, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@s3_v_total_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 6, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 0, i8 0 }, %struct.vga_regset { i8 7, i8 5, i8 5 }, %struct.vga_regset { i8 94, i8 0, i8 0 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@s3_v_display_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 18, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 1, i8 1 }, %struct.vga_regset { i8 7, i8 6, i8 6 }, %struct.vga_regset { i8 94, i8 1, i8 1 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@s3_v_blank_start_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 21, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 3, i8 3 }, %struct.vga_regset { i8 9, i8 5, i8 5 }, %struct.vga_regset { i8 94, i8 2, i8 2 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@s3_v_blank_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 22, i8 0, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@s3_v_sync_start_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 16, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 2, i8 2 }, %struct.vga_regset { i8 7, i8 7, i8 7 }, %struct.vga_regset { i8 94, i8 4, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@s3_v_sync_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 17, i8 0, i8 3 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@s3fb_blank.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s3fb_blank\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb%d: unblank\0A\00", [17 x i8] zeroinitializer }, align 32
@s3fb_blank.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fb%d: blank\0A\00", [19 x i8] zeroinitializer }, align 32
@s3fb_blank.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fb%d: hsync\0A\00", [19 x i8] zeroinitializer }, align 32
@s3fb_blank.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fb%d: vsync\0A\00", [19 x i8] zeroinitializer }, align 32
@s3fb_blank.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.65, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb%d: sync down\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S3 Unknown\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S3 Trio32\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S3 Trio64\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S3 Trio64V+\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S3 Trio64UV+\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S3 Trio64V2/DX\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S3 Trio64V2/GX\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S3 Plato/PX\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"S3 Aurora64V+\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S3 Virge\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S3 Virge/VX\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S3 Virge/DX\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S3 Virge/GX\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S3 Virge/GX2\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"S3 Virge/GX2+\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S3 Trio3D/1X\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S3 Trio3D/2X\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S3 Trio3D\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S3 Virge/MX\00", [20 x i8] zeroinitializer }, align 32
@s3fb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fb%d: unsupported mode requested\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3fb_check_var\00", [17 x i8] zeroinitializer }, align 32
@s3fb_check_var._entry_ptr = internal global ptr @s3fb_check_var._entry, section ".printk_index", align 4
@s3fb_check_var._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013fb%d: not enough framebuffer memory (%d kB requested , %u kB available)\0A\00", [53 x i8] zeroinitializer }, align 32
@s3fb_check_var._entry_ptr.90 = internal global ptr @s3fb_check_var._entry.88, section ".printk_index", align 4
@s3fb_check_var._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013fb%d: invalid timings requested\0A\00", [61 x i8] zeroinitializer }, align 32
@s3fb_check_var._entry_ptr.93 = internal global ptr @s3fb_check_var._entry.91, section ".printk_index", align 4
@s3fb_check_var._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fb%d: invalid pixclock value requested\0A\00", [54 x i8] zeroinitializer }, align 32
@s3fb_check_var._entry_ptr.96 = internal global ptr @s3fb_check_var._entry.94, section ".printk_index", align 4
@s3_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3_pci_suspend\00", [17 x i8] zeroinitializer }, align 32
@s3_pci_suspend._entry_ptr = internal global ptr @s3_pci_suspend._entry, section ".printk_index", align 4
@s3_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1445, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3_pci_resume\00", [18 x i8] zeroinitializer }, align 32
@s3_pci_resume._entry_ptr = internal global ptr @s3_pci_resume._entry, section ".printk_index", align 4
@s3fb_init.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3fb_init\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3fb: initializing\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mtrr:\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fasttext:\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 10, i64 13, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 32, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 13, i64 14, i64 20]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.115 = internal global [11 x i64] [i64 9, i64 32, i64 11, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.117 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.118 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 19]
@__sancov_gen_cov_switch_values.120 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 19]
@__sancov_gen_cov_switch_values.122 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.123 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.124 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 152, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 153, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"fasttext\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 154, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1540, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"s3fb_pci_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1502, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"s3_devices\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1478, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"s3_pci_pm_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1465, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1125, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1135, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [9 x i8] c"s3fb_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1040, i32 28 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1143, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1149, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1161, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"s3_memsizes\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 75, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant [9 x i8] c"s3_names\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 77, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1271, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1282, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1301, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1310, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1324, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1331, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1337, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1341, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1346, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [19 x i8] c"s3fb_fast_tile_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 328, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [14 x i8] c"s3fb_tile_ops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 319, i32 27 }
@___asan_gen_.265 = private unnamed_addr constant [21 x i8] c"s3_line_compare_regs\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 133, i32 32 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"s3_start_address_regs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 134, i32 32 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 677, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [15 x i8] c"s3_offset_regs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 135, i32 32 }
@___asan_gen_.280 = private unnamed_addr constant [13 x i8] c"s3fb_formats\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 49, i32 36 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 760, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 771, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 776, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 787, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 797, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 813, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 841, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 870, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 874, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 879, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [15 x i8] c"s3_timing_regs\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 139, i32 38 }
@___asan_gen_.319 = private unnamed_addr constant [13 x i8] c"s3_dtpc_regs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 137, i32 32 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 298, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [14 x i8] c"s3_trio3d_pll\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 72, i32 30 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"s3_pll\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 70, i32 30 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 468, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [16 x i8] c"s3_h_total_regs\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 119, i32 32 }
@___asan_gen_.349 = private unnamed_addr constant [18 x i8] c"s3_h_display_regs\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 120, i32 32 }
@___asan_gen_.352 = private unnamed_addr constant [22 x i8] c"s3_h_blank_start_regs\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 121, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c"s3_h_blank_end_regs\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 122, i32 32 }
@___asan_gen_.358 = private unnamed_addr constant [21 x i8] c"s3_h_sync_start_regs\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 123, i32 32 }
@___asan_gen_.361 = private unnamed_addr constant [19 x i8] c"s3_h_sync_end_regs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 124, i32 32 }
@___asan_gen_.364 = private unnamed_addr constant [16 x i8] c"s3_v_total_regs\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 126, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant [18 x i8] c"s3_v_display_regs\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 127, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant [22 x i8] c"s3_v_blank_start_regs\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 128, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c"s3_v_blank_end_regs\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 129, i32 32 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"s3_v_sync_start_regs\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 130, i32 32 }
@___asan_gen_.379 = private unnamed_addr constant [19 x i8] c"s3_v_sync_end_regs\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 131, i32 32 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 982, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 987, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 992, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 997, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1002, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 77, i32 41 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 77, i32 55 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 77, i32 68 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 77, i32 81 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 78, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 78, i32 20 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 78, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 79, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 79, i32 19 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 79, i32 36 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 80, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 80, i32 19 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 80, i32 34 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 81, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 81, i32 20 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 81, i32 37 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 82, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 82, i32 20 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 83, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 83, i32 17 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 561, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 579, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 586, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 593, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1418, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1445, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1557, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1520, i32 33 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1524, i32 26 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.518 = private constant [30 x i8] c"../drivers/video/fbdev/s3fb.c\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1526, i32 26 }
@llvm.compiler.used = appending global [171 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_fasttext316, ptr @__UNIQUE_ID_fasttexttype315, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mode312, ptr @__UNIQUE_ID_mode_option310, ptr @__UNIQUE_ID_mode_optiontype309, ptr @__UNIQUE_ID_modetype311, ptr @__UNIQUE_ID_mtrr314, ptr @__UNIQUE_ID_mtrrtype313, ptr @__exitcall_s3fb_cleanup, ptr @__initcall__kmod_s3fb__338_1565_s3fb_init6, ptr @__param_fasttext, ptr @__param_mode, ptr @__param_mode_option, ptr @__param_mtrr, ptr @s3_pci_probe._entry, ptr @s3_pci_probe._entry.13, ptr @s3_pci_probe._entry.16, ptr @s3_pci_probe._entry.19, ptr @s3_pci_probe._entry.22, ptr @s3_pci_probe._entry.26, ptr @s3_pci_probe._entry.29, ptr @s3_pci_probe._entry.32, ptr @s3_pci_probe._entry.35, ptr @s3_pci_probe._entry.38, ptr @s3_pci_probe._entry.41, ptr @s3_pci_probe._entry.9, ptr @s3_pci_probe._entry_ptr, ptr @s3_pci_probe._entry_ptr.12, ptr @s3_pci_probe._entry_ptr.15, ptr @s3_pci_probe._entry_ptr.18, ptr @s3_pci_probe._entry_ptr.21, ptr @s3_pci_probe._entry_ptr.24, ptr @s3_pci_probe._entry_ptr.28, ptr @s3_pci_probe._entry_ptr.31, ptr @s3_pci_probe._entry_ptr.34, ptr @s3_pci_probe._entry_ptr.37, ptr @s3_pci_probe._entry_ptr.40, ptr @s3_pci_probe._entry_ptr.43, ptr @s3_pci_resume._entry, ptr @s3_pci_resume._entry_ptr, ptr @s3_pci_suspend._entry, ptr @s3_pci_suspend._entry_ptr, ptr @s3_set_pixclock._entry, ptr @s3_set_pixclock._entry_ptr, ptr @s3fb_check_var._entry, ptr @s3fb_check_var._entry.88, ptr @s3fb_check_var._entry.91, ptr @s3fb_check_var._entry.94, ptr @s3fb_check_var._entry_ptr, ptr @s3fb_check_var._entry_ptr.90, ptr @s3fb_check_var._entry_ptr.93, ptr @s3fb_check_var._entry_ptr.96, ptr @s3fb_cleanup, ptr @s3fb_set_par._entry, ptr @s3fb_set_par._entry_ptr, ptr @s3fb_settile_fast._entry, ptr @s3fb_settile_fast._entry_ptr, ptr @mode_option, ptr @mtrr, ptr @fasttext, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s3fb_pci_driver, ptr @s3_devices, ptr @s3_pci_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @s3_pci_probe.__key, ptr @.str.8, ptr @s3fb_ops, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @s3_memsizes, ptr @s3_names, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @s3fb_fast_tile_ops, ptr @s3fb_tile_ops, ptr @s3_line_compare_regs, ptr @s3_start_address_regs, ptr @.str.44, ptr @.str.45, ptr @s3_offset_regs, ptr @s3fb_formats, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @s3_timing_regs, ptr @s3_dtpc_regs, ptr @.str.56, ptr @.str.57, ptr @s3_trio3d_pll, ptr @s3_pll, ptr @.str.58, ptr @.str.59, ptr @s3_h_total_regs, ptr @s3_h_display_regs, ptr @s3_h_blank_start_regs, ptr @s3_h_blank_end_regs, ptr @s3_h_sync_start_regs, ptr @s3_h_sync_end_regs, ptr @s3_v_total_regs, ptr @s3_v_display_regs, ptr @s3_v_blank_start_regs, ptr @s3_v_blank_end_regs, ptr @s3_v_sync_start_regs, ptr @s3_v_sync_end_regs, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fasttext to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_devices to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_memsizes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_names to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_fast_tile_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_tile_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_line_compare_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_start_address_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_offset_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_formats to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_timing_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_dtpc_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_settile_fast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_trio3d_pll to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pll to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_set_pixclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_h_total_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_h_display_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_h_blank_start_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_h_blank_end_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_h_sync_start_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_h_sync_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_v_total_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_v_display_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_v_blank_start_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_v_blank_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_v_sync_start_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_v_sync_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_check_var._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_check_var._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fb_check_var._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3fb_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_cleanup.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_cleanup, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_cleanup.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pci_unregister_driver(ptr noundef nonnull @s3fb_pci_driver) #10
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
define internal i32 @s3fb_init() #0 section ".init.text" align 64 {
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
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @s3fb_setup(ptr noundef %2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_init.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_init, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !307

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_init.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.102) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %call8 = call i32 @__pci_register_driver(ptr noundef nonnull @s3fb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  %flags.i = alloca i16, align 2
  %bus_reg = alloca %struct.pci_bus_region, align 4
  %vga_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bus_reg) #10
  %0 = ptrtoint ptr %bus_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_reg, align 4, !annotation !308
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %bus_reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !308
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vga_res) #10
  %3 = getelementptr inbounds %struct.resource, ptr %vga_res, i32 0, i32 3
  %4 = call ptr @memset(ptr %vga_res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %flags.i) #10
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %flags.i, align 2, !annotation !308
  %call.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %flags.i) #10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = and i16 %7, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @framebuffer_alloc(i32 noundef 1624, ptr noundef %dev1) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %par7 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 30
  %9 = ptrtoint ptr %par7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par7, align 4
  %open_lock = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 5
  call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @s3_pci_probe.__key) #10
  %flags = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8256, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 20
  %12 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @s3fb_ops, ptr %fbops, align 4
  %call11 = call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10) #14
  br label %err_enable_device

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %device23 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %15 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14) #14
  br label %err_enable_device

if.end24:                                         ; preds = %if.end16
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource, align 8
  %fix = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %smem_start, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp27 = icmp eq i32 %21, 0
  br i1 %cmp27, label %if.end24.cond.end_crit_edge, label %cond.false

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource, align 8
  %sub = add i32 %21, 1
  %add = sub i32 %sub, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end24.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end24.cond.end_crit_edge ]
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %smem_len, align 4
  %call35 = call ptr @pci_iomap_wc(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #10
  %25 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 25
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call35, ptr %25, align 4
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then37, label %if.end42

if.then37:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %device41 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %27 = ptrtoint ptr %device41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device41, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.17) #14
  br label %err_iomap

if.end42:                                         ; preds = %cond.end
  %29 = ptrtoint ptr %bus_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bus_reg, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 65536, ptr %1, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 256, ptr %3, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %33, ptr noundef nonnull %vga_res, ptr noundef nonnull %bus_reg) #10
  %34 = ptrtoint ptr %vga_res to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vga_res, align 4
  %36 = inttoptr i32 %35 to ptr
  %state = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 4
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %state, align 8
  %call49 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %36, i8 noundef zeroext 56)
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state, align 8
  %call52 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %39, i8 noundef zeroext 57)
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 8
  call fastcc void @vga_wseq(ptr noundef %41, i8 noundef zeroext 8, i8 noundef zeroext 6)
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state, align 8
  call fastcc void @vga_wcrt(ptr noundef %43, i8 noundef zeroext 56, i8 noundef zeroext 72)
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 8
  call fastcc void @vga_wcrt(ptr noundef %45, i8 noundef zeroext 57, i8 noundef zeroext -91)
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %46 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %driver_data, align 4
  %and = and i32 %47, 255
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and, ptr %10, align 8
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 8
  %call61 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %50, i8 noundef zeroext 47)
  %conv = zext i8 %call61 to i32
  %rev = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 1
  %51 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv, ptr %rev, align 4
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %10, align 8
  %and63 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end42.if.end68_crit_edge, label %if.then65

if.end42.if.end68_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call fastcc i32 @s3_identification(ptr noundef %10)
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call66, ptr %10, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end42.if.end68_crit_edge
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state, align 8
  %call71 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %56, i8 noundef zeroext 54)
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %10, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %58, label %if.else141 [
    i32 16, label %if.end68.if.then86_crit_edge
    i32 17, label %if.end68.if.then86_crit_edge550
    i32 18, label %if.end68.if.then86_crit_edge551
    i32 19, label %if.end68.if.then86_crit_edge552
    i32 13, label %if.end68.if.then102_crit_edge
    i32 14, label %if.end68.if.then102_crit_edge553
    i32 20, label %if.end68.if.then102_crit_edge554
    i32 10, label %if.then115
  ]

if.end68.if.then102_crit_edge554:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.end68.if.then102_crit_edge553:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.end68.if.then102_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.end68.if.then86_crit_edge552:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.end68.if.then86_crit_edge551:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.end68.if.then86_crit_edge550:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.end68.if.then86_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.then86:                                        ; preds = %if.end68.if.then86_crit_edge, %if.end68.if.then86_crit_edge550, %if.end68.if.then86_crit_edge551, %if.end68.if.then86_crit_edge552
  %60 = lshr i8 %call71, 5
  %61 = zext i8 %60 to i32
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %61, label %if.then86.if.end148_crit_edge [
    i32 0, label %if.then86.sw.bb_crit_edge
    i32 1, label %if.then86.sw.bb_crit_edge555
    i32 2, label %if.then86.sw.bb_crit_edge556
    i32 4, label %if.then86.sw.bb89_crit_edge
    i32 6, label %if.then86.sw.bb89_crit_edge557
  ]

if.then86.sw.bb89_crit_edge557:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb89

if.then86.sw.bb89_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb89

if.then86.sw.bb_crit_edge556:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then86.sw.bb_crit_edge555:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then86.sw.bb_crit_edge:                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then86.if.end148_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

sw.bb:                                            ; preds = %if.then86.sw.bb_crit_edge, %if.then86.sw.bb_crit_edge555, %if.then86.sw.bb_crit_edge556
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %63 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4194304, ptr %screen_size, align 4
  br label %if.end148

sw.bb89:                                          ; preds = %if.then86.sw.bb89_crit_edge, %if.then86.sw.bb89_crit_edge557
  %screen_size90 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %64 = ptrtoint ptr %screen_size90 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2097152, ptr %screen_size90, align 4
  br label %if.end148

if.then102:                                       ; preds = %if.end68.if.then102_crit_edge, %if.end68.if.then102_crit_edge553, %if.end68.if.then102_crit_edge554
  %65 = lshr i8 %call71, 6
  %66 = zext i8 %65 to i32
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %66, label %if.then102.if.end148_crit_edge [
    i32 1, label %sw.bb106
    i32 3, label %sw.bb108
  ]

if.then102.if.end148_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

sw.bb106:                                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %screen_size107 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %68 = ptrtoint ptr %screen_size107 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4194304, ptr %screen_size107, align 4
  br label %if.end148

sw.bb108:                                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %screen_size109 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %69 = ptrtoint ptr %screen_size109 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2097152, ptr %screen_size109, align 4
  br label %if.end148

if.then115:                                       ; preds = %if.end68
  %70 = lshr i8 %call71, 5
  %71 = and i8 %70, 3
  %72 = zext i8 %71 to i32
  %switch.idx.mult = shl nuw nsw i32 %72, 21
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 2097152
  %screen_size126 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %73 = ptrtoint ptr %screen_size126 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %switch.offset, ptr %screen_size126, align 4
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %state, align 8
  %call130 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %75, i8 noundef zeroext 55)
  %76 = lshr i8 %call130, 5
  %77 = and i8 %76, 3
  %78 = zext i8 %77 to i32
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %78, label %if.then115.if.end148_crit_edge [
    i32 1, label %sw.bb134
    i32 2, label %sw.bb137
  ]

if.then115.if.end148_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

sw.bb134:                                         ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  %screen_size135 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %80 = ptrtoint ptr %screen_size135 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %screen_size135, align 4
  %sub136 = add i32 %81, -4194304
  store i32 %sub136, ptr %screen_size135, align 4
  br label %if.end148

sw.bb137:                                         ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  %screen_size138 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %82 = ptrtoint ptr %screen_size138 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %screen_size138, align 4
  %sub139 = add i32 %83, -2097152
  store i32 %sub139, ptr %screen_size138, align 4
  br label %if.end148

if.else141:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %84 = lshr i8 %call71, 5
  %85 = zext i8 %84 to i32
  %arrayidx144 = getelementptr [8 x i32], ptr @s3_memsizes, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx144, align 4
  %shl = shl i32 %87, 10
  %screen_size145 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %88 = ptrtoint ptr %screen_size145 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl, ptr %screen_size145, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else141, %sw.bb137, %sw.bb134, %if.then115.if.end148_crit_edge, %sw.bb108, %sw.bb106, %if.then102.if.end148_crit_edge, %sw.bb89, %sw.bb, %if.then86.if.end148_crit_edge
  %screen_size149 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %89 = ptrtoint ptr %screen_size149 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %screen_size149, align 4
  %91 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %smem_len, align 4
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %state, align 8
  %call154 = call fastcc zeroext i8 @vga_rseq(ptr noundef %93, i8 noundef zeroext 16)
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %state, align 8
  %call157 = call fastcc zeroext i8 @vga_rseq(ptr noundef %95, i8 noundef zeroext 17)
  %conv158 = zext i8 %call157 to i32
  %96 = mul nuw nsw i32 %conv158, 14318
  %mul = add nuw nsw i32 %96, 28636
  %conv160 = zext i8 %call154 to i32
  %and161 = and i32 %conv160, 31
  %add162 = add nuw nsw i32 %and161, 2
  %div = udiv i32 %mul, %add162
  %mclk_freq = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 2
  %97 = lshr i32 %conv160, 5
  %shr166 = lshr i32 %div, %97
  %98 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shr166, ptr %mclk_freq, align 8
  %99 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %state, align 8
  call fastcc void @vga_wcrt(ptr noundef %100, i8 noundef zeroext 56, i8 noundef zeroext %call49)
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 8
  call fastcc void @vga_wcrt(ptr noundef %102, i8 noundef zeroext 57, i8 noundef zeroext %call52)
  %103 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %10, align 8
  %arrayidx175 = getelementptr [21 x ptr], ptr @s3_names, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx175, align 4
  %call176 = call ptr @strcpy(ptr noundef %fix, ptr noundef %106) #15
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 10
  %107 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 11
  %108 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %mmio_len, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 3
  %109 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %type, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 5
  %110 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 3, ptr %visual, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 7
  %111 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %ypanstep, align 2
  %accel = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 12
  %112 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %accel, align 4
  %pseudo_palette = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 7
  %pseudo_palette184 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 27
  %113 = ptrtoint ptr %pseudo_palette184 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %pseudo_palette, ptr %pseudo_palette184, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6, i32 6
  %114 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 8, ptr %bits_per_pixel, align 4
  %115 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %10, align 8
  %117 = add i32 %116, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %117)
  %switch.i = icmp ult i32 %117, -3
  br i1 %switch.i, label %if.then187, label %if.end148.if.end206_crit_edge

if.end148.if.end206_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then187:                                       ; preds = %if.end148
  %118 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %smem_start, align 4
  %add190 = add i32 %119, 16777216
  %call191 = call ptr @ioremap(i32 noundef %add190, i32 noundef 65536) #10
  %mmio = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 8
  %120 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call191, ptr %mmio, align 8
  %tobool193.not = icmp eq ptr %call191, null
  br i1 %tobool193.not, label %do.end200, label %if.then194

if.then194:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state, align 8
  call fastcc void @svga_wcrt_mask(ptr noundef %122, i8 noundef zeroext 83, i8 noundef zeroext 8, i8 noundef zeroext 8)
  br label %if.end206

do.end200:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #12
  %device201 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %123 = ptrtoint ptr %device201 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device201, align 4
  %125 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %smem_start, align 4
  %add204 = add i32 %126, 16777216
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.20, i32 noundef %add204) #14
  br label %if.end206

if.end206:                                        ; preds = %do.end200, %if.then194, %if.end148.if.end206_crit_edge
  %127 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %10, align 8
  %129 = add i32 %128, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %129)
  %switch.i548 = icmp ult i32 %129, -3
  br i1 %switch.i548, label %lor.lhs.false209, label %if.end206.if.then212_crit_edge

if.end206.if.then212_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then212

lor.lhs.false209:                                 ; preds = %if.end206
  %mmio210 = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 8
  %130 = ptrtoint ptr %mmio210 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio210, align 8
  %tobool211.not = icmp eq ptr %131, null
  br i1 %tobool211.not, label %lor.lhs.false209.if.end247_crit_edge, label %lor.lhs.false209.if.then212_crit_edge

lor.lhs.false209.if.then212_crit_edge:            ; preds = %lor.lhs.false209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then212

lor.lhs.false209.if.end247_crit_edge:             ; preds = %lor.lhs.false209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then212:                                       ; preds = %lor.lhs.false209.if.then212_crit_edge, %if.end206.if.then212_crit_edge
  %call213 = call fastcc i32 @s3fb_setup_ddc_bus(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then216, label %if.then212.if.end247_crit_edge

if.then212.if.end247_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then216:                                       ; preds = %if.then212
  %ddc_adapter = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 10
  %call217 = call ptr @fb_ddc_read(ptr noundef %ddc_adapter) #10
  %ddc_registered = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 9
  %132 = ptrtoint ptr %ddc_registered to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %ddc_registered, align 4
  %tobool218.not = icmp eq ptr %call217, null
  br i1 %tobool218.not, label %if.then216.if.end247_crit_edge, label %if.then219

if.then216.if.end247_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then219:                                       ; preds = %if.then216
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 8
  call void @fb_edid_to_monspecs(ptr noundef nonnull %call217, ptr noundef %monspecs) #10
  call void @kfree(ptr noundef nonnull %call217) #10
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 8, i32 1
  %133 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %modedb, align 4
  %tobool221.not = icmp eq ptr %134, null
  br i1 %tobool221.not, label %do.end225, label %if.else227

do.end225:                                        ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #12
  %device226 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %135 = ptrtoint ptr %device226 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device226, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.23) #14
  br label %if.end247

if.else227:                                       ; preds = %if.then219
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 8, i32 6
  %137 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %modedb_len, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 13
  call void @fb_videomode_to_modelist(ptr noundef nonnull %134, i32 noundef %138, ptr noundef %modelist) #10
  %call233 = call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #10
  %tobool234.not = icmp eq ptr %call233, null
  br i1 %tobool234.not, label %if.else227.if.end247_crit_edge, label %if.then235

if.else227.if.end247_crit_edge:                   ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then235:                                       ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #12
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call233) #10
  %call238 = call i32 @s3fb_check_var(ptr noundef %var, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239 = icmp eq i32 %call238, 0
  br label %if.end247

if.end247:                                        ; preds = %if.then235, %if.else227.if.end247_crit_edge, %do.end225, %if.then216.if.end247_crit_edge, %if.then212.if.end247_crit_edge, %lor.lhs.false209.if.end247_crit_edge
  %found.2.off0 = phi i1 [ false, %if.then212.if.end247_crit_edge ], [ false, %lor.lhs.false209.if.end247_crit_edge ], [ false, %do.end225 ], [ false, %if.then216.if.end247_crit_edge ], [ false, %if.else227.if.end247_crit_edge ], [ %cmp239, %if.then235 ]
  %139 = load ptr, ptr @mode_option, align 4
  %tobool248.not = icmp ne ptr %139, null
  %brmerge = select i1 %tobool248.not, i1 true, i1 %found.2.off0
  br i1 %brmerge, label %if.end251, label %if.end251.thread

if.end251.thread:                                 ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @.str.25, ptr @mode_option, align 4
  br label %if.then253

if.end251:                                        ; preds = %if.end247
  %tobool252.not = icmp eq ptr %139, null
  br i1 %tobool252.not, label %if.end251.if.end276_crit_edge, label %if.end251.if.then253_crit_edge

if.end251.if.then253_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then253

if.end251.if.end276_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

if.then253:                                       ; preds = %if.end251.if.then253_crit_edge, %if.end251.thread
  %140 = phi ptr [ @.str.25, %if.end251.thread ], [ %139, %if.end251.if.then253_crit_edge ]
  %modedb256 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 8, i32 1
  %141 = ptrtoint ptr %modedb256 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %modedb256, align 4
  %modedb_len258 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 8, i32 6
  %143 = ptrtoint ptr %modedb_len258 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %modedb_len258, align 4
  %145 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bits_per_pixel, align 4
  %call261 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call3, ptr noundef nonnull %140, ptr noundef %142, i32 noundef %144, ptr noundef null, i32 noundef %146) #10
  %147 = zext i32 %call261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call261, label %if.then253.if.end276_crit_edge [
    i32 0, label %if.then253.if.then266_crit_edge
    i32 4, label %if.then253.if.then266_crit_edge558
  ]

if.then253.if.then266_crit_edge558:               ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then266

if.then253.if.then266_crit_edge:                  ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then266

if.then253.if.end276_crit_edge:                   ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

if.then266:                                       ; preds = %if.then253.if.then266_crit_edge, %if.then253.if.then266_crit_edge558
  %device270 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %148 = ptrtoint ptr %device270 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device270, align 4
  %150 = load ptr, ptr @mode_option, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.27, ptr noundef %150) #14
  %151 = ptrtoint ptr %modedb256 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %modedb256, align 4
  call void @fb_destroy_modedb(ptr noundef %152) #10
  %153 = ptrtoint ptr %modedb256 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %modedb256, align 4
  br label %err_find_mode

if.end276:                                        ; preds = %if.then253.if.end276_crit_edge, %if.end251.if.end276_crit_edge
  %modedb278 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 8, i32 1
  %154 = ptrtoint ptr %modedb278 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %modedb278, align 4
  call void @fb_destroy_modedb(ptr noundef %155) #10
  %156 = ptrtoint ptr %modedb278 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %modedb278, align 4
  %157 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %smem_len, align 4
  %mul283 = shl i32 %158, 3
  %159 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bits_per_pixel, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6, i32 2
  %161 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %xres_virtual, align 4
  %mul287 = mul i32 %162, %160
  %div288 = udiv i32 %mul283, %mul287
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6, i32 3
  %163 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %div288, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6, i32 1
  %164 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div288, i32 %165)
  %cmp293 = icmp ult i32 %div288, %165
  br i1 %cmp293, label %do.end298, label %if.end300

do.end298:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  %device299 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %166 = ptrtoint ptr %device299 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %device299, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.30) #14
  br label %err_find_mode

if.end300:                                        ; preds = %if.end276
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 12
  %call301 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %cmp302 = icmp slt i32 %call301, 0
  br i1 %cmp302, label %do.end307, label %if.end309

do.end307:                                        ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #12
  %device308 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %168 = ptrtoint ptr %device308 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %device308, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.33) #14
  br label %err_find_mode

if.end309:                                        ; preds = %if.end300
  %call310 = call i32 @register_framebuffer(ptr noundef nonnull %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %cmp311 = icmp slt i32 %call310, 0
  br i1 %cmp311, label %do.end316, label %do.end321

do.end316:                                        ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #12
  %device317 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %170 = ptrtoint ptr %device317 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device317, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.36) #14
  call void @fb_dealloc_cmap(ptr noundef %cmap) #10
  br label %err_find_mode

do.end321:                                        ; preds = %if.end309
  %node = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 1
  %172 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %node, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %174 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end321.pci_name.exit_crit_edge

do.end321.pci_name.exit_crit_edge:                ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %176 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end321.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %177, %if.end.i.i ], [ %175, %do.end321.pci_name.exit_crit_edge ]
  %178 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %smem_len, align 4
  %shr328 = lshr i32 %179, 20
  %180 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mclk_freq, align 8
  %add330 = add i32 %181, 500
  %div331 = sdiv i32 %add330, 1000
  %call332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %173, ptr noundef %fix, ptr noundef %retval.0.i.i, i32 noundef %shr328, i32 noundef %div331) #14
  %182 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp334 = icmp eq i32 %183, 0
  br i1 %cmp334, label %do.end339, label %pci_name.exit.if.end359_crit_edge

pci_name.exit.if.end359_crit_edge:                ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end359

do.end339:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %node, align 4
  %186 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %state, align 8
  %call344 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %187, i8 noundef zeroext 45)
  %conv345 = zext i8 %call344 to i32
  %188 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %state, align 8
  %call348 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %189, i8 noundef zeroext 46)
  %conv349 = zext i8 %call348 to i32
  %190 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %state, align 8
  %call352 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %191, i8 noundef zeroext 47)
  %conv353 = zext i8 %call352 to i32
  %192 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %state, align 8
  %call356 = call fastcc zeroext i8 @vga_rcrt(ptr noundef %193, i8 noundef zeroext 48)
  %conv357 = zext i8 %call356 to i32
  %call358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %185, i32 noundef %conv345, i32 noundef %conv349, i32 noundef %conv353, i32 noundef %conv357) #14
  br label %if.end359

if.end359:                                        ; preds = %do.end339, %pci_name.exit.if.end359_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %194 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %195 = load i32, ptr @mtrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool360.not = icmp eq i32 %195, 0
  br i1 %tobool360.not, label %if.end359.cleanup_crit_edge, label %if.then361

if.end359.cleanup_crit_edge:                      ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then361:                                       ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  %wc_cookie = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 3
  %196 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %wc_cookie, align 4
  br label %cleanup

err_find_mode:                                    ; preds = %do.end316, %do.end307, %do.end298, %if.then266
  %rc.0 = phi i32 [ -22, %if.then266 ], [ -22, %do.end298 ], [ %call301, %do.end307 ], [ %call310, %do.end316 ]
  %ddc_registered369 = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 9
  %197 = ptrtoint ptr %ddc_registered369 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ddc_registered369, align 4, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool370.not = icmp eq i8 %198, 0
  br i1 %tobool370.not, label %err_find_mode.if.end373_crit_edge, label %if.then371

err_find_mode.if.end373_crit_edge:                ; preds = %err_find_mode
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

if.then371:                                       ; preds = %err_find_mode
  call void @__sanitizer_cov_trace_pc() #12
  %ddc_adapter372 = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 10
  call void @i2c_del_adapter(ptr noundef %ddc_adapter372) #10
  br label %if.end373

if.end373:                                        ; preds = %if.then371, %err_find_mode.if.end373_crit_edge
  %mmio374 = getelementptr inbounds %struct.s3fb_info, ptr %10, i32 0, i32 8
  %199 = ptrtoint ptr %mmio374 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio374, align 8
  %tobool375.not = icmp eq ptr %200, null
  br i1 %tobool375.not, label %if.end373.if.end378_crit_edge, label %if.then376

if.end373.if.end378_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end378

if.then376:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  call void @iounmap(ptr noundef nonnull %200) #10
  br label %if.end378

if.end378:                                        ; preds = %if.then376, %if.end373.if.end378_crit_edge
  %201 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %25, align 4
  call void @pci_iounmap(ptr noundef %dev, ptr noundef %202) #10
  br label %err_iomap

err_iomap:                                        ; preds = %if.end378, %if.then37
  %rc.1 = phi i32 [ %rc.0, %if.end378 ], [ -12, %if.then37 ]
  call void @pci_release_regions(ptr noundef %dev) #10
  br label %err_enable_device

err_enable_device:                                ; preds = %err_iomap, %do.end22, %do.end15
  %rc.2 = phi i32 [ %call11, %do.end15 ], [ %call17, %do.end22 ], [ %rc.1, %err_iomap ]
  call void @framebuffer_release(ptr noundef nonnull %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %err_enable_device, %if.then361, %if.end359.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.2, %err_enable_device ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then361 ], [ 0, %if.end359.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vga_res) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bus_reg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3_pci_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #10
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #10
  %ddc_registered = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ddc_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ddc_registered, align 4, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ddc_adapter = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 10
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %mmio = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %7) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %10) #10
  tail call void @pci_release_regions(ptr noundef %dev) #10
  tail call void @framebuffer_release(ptr noundef nonnull %1) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry.if.end8_crit_edge
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @vga_rcrt(ptr noundef %regbase, i8 noundef zeroext %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %if.else.i5, label %if.then.i4

if.then.i4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %regbase, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %reg) #10, !srcloc !310
  %add.ptr.i.i3 = getelementptr i8, ptr %regbase, i32 981
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_r.exit

if.else.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 %reg) #10, !srcloc !310
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_r.exit

vga_r.exit:                                       ; preds = %if.else.i5, %if.then.i4
  %retval.0.i = phi i8 [ %0, %if.then.i4 ], [ %1, %if.else.i5 ]
  ret i8 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_wseq(ptr noundef %regbase, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %if.else.i5, label %if.then.i4

if.then.i4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %regbase, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %reg) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3 = getelementptr i8, ptr %regbase, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3, i8 %val) #10, !srcloc !310
  br label %vga_w.exit6

if.else.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %reg) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %val) #10, !srcloc !310
  br label %vga_w.exit6

vga_w.exit6:                                      ; preds = %if.else.i5, %if.then.i4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_wcrt(ptr noundef %regbase, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %if.else.i5, label %if.then.i4

if.then.i4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %regbase, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %reg) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3 = getelementptr i8, ptr %regbase, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3, i8 %val) #10, !srcloc !310
  br label %vga_w.exit6

if.else.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 %reg) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %val) #10, !srcloc !310
  br label %vga_w.exit6

vga_w.exit6:                                      ; preds = %if.else.i5, %if.then.i4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3_identification(ptr nocapture noundef readonly %par) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %par, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %1, label %entry.if.end65_crit_edge [
    i32 128, label %if.then
    i32 129, label %if.then31
    i32 130, label %if.then44
    i32 131, label %if.then58
  ]

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.s3fb_info, ptr %par, i32 0, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 48) #10, !srcloc !310
  %add.ptr.i.i3.i = getelementptr i8, ptr %4, i32 981
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit

if.else.i5.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 48) #10, !srcloc !310
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit

vga_rcrt.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %5, %if.then.i4.i ], [ %6, %if.else.i5.i ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %tobool.not.i.i80 = icmp eq ptr %8, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i80, label %if.else.i5.i84, label %if.then.i4.i83

if.then.i4.i83:                                   ; preds = %vga_rcrt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i81 = getelementptr i8, ptr %8, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i81, i8 46) #10, !srcloc !310
  %add.ptr.i.i3.i82 = getelementptr i8, ptr %8, i32 981
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i82) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit86

if.else.i5.i84:                                   ; preds = %vga_rcrt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 46) #10, !srcloc !310
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit86

vga_rcrt.exit86:                                  ; preds = %if.else.i5.i84, %if.then.i4.i83
  %retval.0.i.i85 = phi i8 [ %9, %if.then.i4.i83 ], [ %10, %if.else.i5.i84 ]
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 8
  %tobool.not.i.i87 = icmp eq ptr %12, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i87, label %if.else.i5.i91, label %if.then.i4.i90

if.then.i4.i90:                                   ; preds = %vga_rcrt.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i88 = getelementptr i8, ptr %12, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i88, i8 47) #10, !srcloc !310
  %add.ptr.i.i3.i89 = getelementptr i8, ptr %12, i32 981
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i89) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit93

if.else.i5.i91:                                   ; preds = %vga_rcrt.exit86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 47) #10, !srcloc !310
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit93

vga_rcrt.exit93:                                  ; preds = %if.else.i5.i91, %if.then.i4.i90
  %retval.0.i.i92 = phi i8 [ %13, %if.then.i4.i90 ], [ %14, %if.else.i5.i91 ]
  %15 = and i8 %retval.0.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %15)
  %switch = icmp eq i8 %15, -32
  br i1 %switch, label %if.then13, label %vga_rcrt.exit93.if.end65_crit_edge

vga_rcrt.exit93.if.end65_crit_edge:               ; preds = %vga_rcrt.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then13:                                        ; preds = %vga_rcrt.exit93
  %16 = zext i8 %retval.0.i.i85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %retval.0.i.i85, label %if.then13.if.end65_crit_edge [
    i8 16, label %if.then13.cleanup66_crit_edge
    i8 17, label %if.then21
  ]

if.then13.cleanup66_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

if.then13.if.end65_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %17 = and i8 %retval.0.i.i92, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  br label %cleanup66

if.then31:                                        ; preds = %entry
  %state32 = getelementptr inbounds %struct.s3fb_info, ptr %par, i32 0, i32 4
  %18 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state32, align 8
  %tobool.not.i.i94 = icmp eq ptr %19, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i94, label %if.else.i5.i98, label %if.then.i4.i97

if.then.i4.i97:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i95 = getelementptr i8, ptr %19, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i95, i8 111) #10, !srcloc !310
  %add.ptr.i.i3.i96 = getelementptr i8, ptr %19, i32 981
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i96) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit100

if.else.i5.i98:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 111) #10, !srcloc !310
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit100

vga_rcrt.exit100:                                 ; preds = %if.else.i5.i98, %if.then.i4.i97
  %retval.0.i.i99 = phi i8 [ %20, %if.then.i4.i97 ], [ %21, %if.else.i5.i98 ]
  %22 = and i8 %retval.0.i.i99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool37.not = icmp eq i8 %22, 0
  %.78 = select i1 %tobool37.not, i32 5, i32 6
  br label %cleanup66

if.then44:                                        ; preds = %entry
  %state46 = getelementptr inbounds %struct.s3fb_info, ptr %par, i32 0, i32 4
  %23 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state46, align 8
  %tobool.not.i.i101 = icmp eq ptr %24, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i101, label %if.else.i5.i105, label %if.then.i4.i104

if.then.i4.i104:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i102 = getelementptr i8, ptr %24, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i102, i8 111) #10, !srcloc !310
  %add.ptr.i.i3.i103 = getelementptr i8, ptr %24, i32 981
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i103) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit107

if.else.i5.i105:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 111) #10, !srcloc !310
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit107

vga_rcrt.exit107:                                 ; preds = %if.else.i5.i105, %if.then.i4.i104
  %retval.0.i.i106 = phi i8 [ %25, %if.then.i4.i104 ], [ %26, %if.else.i5.i105 ]
  %27 = and i8 %retval.0.i.i106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not = icmp eq i8 %27, 0
  %.79 = select i1 %tobool51.not, i32 11, i32 12
  br label %cleanup66

if.then58:                                        ; preds = %entry
  %state59 = getelementptr inbounds %struct.s3fb_info, ptr %par, i32 0, i32 4
  %28 = ptrtoint ptr %state59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state59, align 8
  %tobool.not.i.i108 = icmp eq ptr %29, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i108, label %if.else.i5.i112, label %if.then.i4.i111

if.then.i4.i111:                                  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i109 = getelementptr i8, ptr %29, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i109, i8 47) #10, !srcloc !310
  %add.ptr.i.i3.i110 = getelementptr i8, ptr %29, i32 981
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i110) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit114

if.else.i5.i112:                                  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 47) #10, !srcloc !310
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit114

vga_rcrt.exit114:                                 ; preds = %if.else.i5.i112, %if.then.i4.i111
  %retval.0.i.i113 = phi i8 [ %30, %if.then.i4.i111 ], [ %31, %if.else.i5.i112 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %retval.0.i.i113)
  %32 = icmp ult i8 %retval.0.i.i113, 3
  br i1 %32, label %switch.lookup, label %vga_rcrt.exit114.if.end65_crit_edge

vga_rcrt.exit114.if.end65_crit_edge:              ; preds = %vga_rcrt.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end65:                                         ; preds = %vga_rcrt.exit114.if.end65_crit_edge, %if.then13.if.end65_crit_edge, %vga_rcrt.exit93.if.end65_crit_edge, %entry.if.end65_crit_edge
  br label %cleanup66

switch.lookup:                                    ; preds = %vga_rcrt.exit114
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = zext i8 %retval.0.i.i113 to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 16
  br label %cleanup66

cleanup66:                                        ; preds = %switch.lookup, %if.end65, %vga_rcrt.exit107, %vga_rcrt.exit100, %if.then21, %if.then13.cleanup66_crit_edge
  %retval.3 = phi i32 [ %.78, %vga_rcrt.exit100 ], [ %.79, %vga_rcrt.exit107 ], [ 0, %if.end65 ], [ %., %if.then21 ], [ 1, %if.then13.cleanup66_crit_edge ], [ %switch.offset, %switch.lookup ]
  ret i32 %retval.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @vga_rseq(ptr noundef %regbase, i8 noundef zeroext %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %if.else.i5, label %if.then.i4

if.then.i4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %regbase, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %reg) #10, !srcloc !310
  %add.ptr.i.i3 = getelementptr i8, ptr %regbase, i32 965
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_r.exit

if.else.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %reg) #10, !srcloc !310
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_r.exit

vga_r.exit:                                       ; preds = %if.else.i5, %if.then.i4
  %retval.0.i = phi i8 [ %0, %if.then.i4 ], [ %1, %if.else.i5 ]
  ret i8 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svga_wcrt_mask(ptr noundef %regbase, i8 noundef zeroext %index, i8 noundef zeroext %data, i8 noundef zeroext %mask) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %and9 = and i8 %mask, %data
  %tobool.not.i.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %regbase, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %index) #10, !srcloc !310
  %add.ptr.i.i3.i = getelementptr i8, ptr %regbase, i32 981
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 %index) #10, !srcloc !310
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit

vga_rcrt.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %0, %if.then.i4.i ], [ %1, %if.else.i5.i ]
  %neg = xor i8 %mask, -1
  %and4 = and i8 %retval.0.i.i, %neg
  %or = or i8 %and4, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %if.else.i5.i14, label %if.then.i4.i13

if.then.i4.i13:                                   ; preds = %vga_rcrt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11 = getelementptr i8, ptr %regbase, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11, i8 %index) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12 = getelementptr i8, ptr %regbase, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12, i8 %or) #10, !srcloc !310
  br label %vga_wcrt.exit

if.else.i5.i14:                                   ; preds = %vga_rcrt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 %index) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or) #10, !srcloc !310
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i14, %if.then.i4.i13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3fb_setup_ddc_bus(ptr noundef %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ddc_adapter = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 10
  %name = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 10, i32 12
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %fix, i32 noundef 48) #10
  %2 = ptrtoint ptr %ddc_adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ddc_adapter, align 8
  %class = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %class, align 4
  %ddc_algo = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11
  %algo_data = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ddc_algo, ptr %algo_data, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %parent = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 10, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %setsda = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @s3fb_ddc_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11, i32 2
  %9 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @s3fb_ddc_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @s3fb_ddc_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11, i32 4
  %11 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @s3fb_ddc_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11, i32 7
  %12 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 11, i32 8
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %timeout, align 8
  %14 = ptrtoint ptr %ddc_algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %ddc_algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 10, i32 9, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %17, label %if.else [
    i32 13, label %entry.if.then_crit_edge
    i32 14, label %entry.if.then_crit_edge75
    i32 20, label %entry.if.then_crit_edge76
  ]

entry.if.then_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge75:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge75, %entry.if.then_crit_edge76
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i = icmp eq ptr %20, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 13) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %20, i32 965
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i

if.else.i5.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 13) #10, !srcloc !310
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %21, %if.then.i4.i.i ], [ %22, %if.else.i5.i.i ]
  %and4.i = and i8 %retval.0.i.i.i, -4
  %or.i = or i8 %and4.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 13) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %20, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %or.i) #10, !srcloc !310
  br label %if.end

if.else.i5.i14.i:                                 ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 13) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #10, !srcloc !310
  br label %if.end

if.else:                                          ; preds = %entry
  %state20 = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state20, align 8
  %tobool.not.i.i.i50 = icmp eq ptr %24, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i50, label %if.else.i5.i.i54, label %if.then.i4.i.i53

if.then.i4.i.i53:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i51 = getelementptr i8, ptr %24, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i51, i8 13) #10, !srcloc !310
  %add.ptr.i.i3.i.i52 = getelementptr i8, ptr %24, i32 965
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i52) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i57

if.else.i5.i.i54:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 13) #10, !srcloc !310
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i57

vga_rseq.exit.i57:                                ; preds = %if.else.i5.i.i54, %if.then.i4.i.i53
  %retval.0.i.i.i55 = phi i8 [ %25, %if.then.i4.i.i53 ], [ %26, %if.else.i5.i.i54 ]
  %and4.i56 = and i8 %retval.0.i.i.i55, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i50, label %if.else.i5.i14.i61, label %if.then.i4.i13.i60

if.then.i4.i13.i60:                               ; preds = %vga_rseq.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i58 = getelementptr i8, ptr %24, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i58, i8 13) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i59 = getelementptr i8, ptr %24, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i59, i8 %and4.i56) #10, !srcloc !310
  br label %if.end

if.else.i5.i14.i61:                               ; preds = %vga_rseq.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 13) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i56) #10, !srcloc !310
  br label %if.end

if.end:                                           ; preds = %if.else.i5.i14.i61, %if.then.i4.i13.i60, %if.else.i5.i14.i, %if.then.i4.i13.i
  %state22 = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state22, align 8
  %tobool.not.i.i.i63 = icmp eq ptr %28, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i63, label %if.else.i5.i.i67, label %if.then.i4.i.i66

if.then.i4.i.i66:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i64 = getelementptr i8, ptr %28, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i64, i8 92) #10, !srcloc !310
  %add.ptr.i.i3.i.i65 = getelementptr i8, ptr %28, i32 981
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i65) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i

if.else.i5.i.i67:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 92) #10, !srcloc !310
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i67, %if.then.i4.i.i66
  %retval.0.i.i.i68 = phi i8 [ %29, %if.then.i4.i.i66 ], [ %30, %if.else.i5.i.i67 ]
  %or.i70 = or i8 %retval.0.i.i.i68, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i63, label %if.else.i5.i14.i74, label %if.then.i4.i13.i73

if.then.i4.i13.i73:                               ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i71 = getelementptr i8, ptr %28, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i71, i8 92) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i72 = getelementptr i8, ptr %28, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i72, i8 %or.i70) #10, !srcloc !310
  br label %svga_wcrt_mask.exit

if.else.i5.i14.i74:                               ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 92) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i70) #10, !srcloc !310
  br label %svga_wcrt_mask.exit

svga_wcrt_mask.exit:                              ; preds = %if.else.i5.i14.i74, %if.then.i4.i13.i73
  %call25 = tail call i32 @i2c_bit_add_bus(ptr noundef %ddc_adapter) #10
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  %m = alloca i16, align 2
  %n = alloca i16, align 2
  %r = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m) #10
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %m, align 2, !annotation !308
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %n) #10
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %n, align 2, !annotation !308
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r) #10
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %r, align 2, !annotation !308
  %call = tail call i32 @svga_match_format(ptr noundef nonnull @s3fb_formats, ptr noundef %var, ptr noundef null) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp = icmp eq i32 %6, 10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp2 = icmp eq i32 %call, 7
  br i1 %cmp2, label %cond.true.do.end_crit_edge, label %cond.true.if.end_crit_edge

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true.do.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp3 = icmp eq i32 %call, 6
  br i1 %cmp3, label %cond.false.do.end_crit_edge, label %cond.false.if.end_crit_edge

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.false.do.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %cond.false.if.end_crit_edge, %cond.true.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %cond.false.do.end_crit_edge, %cond.true.do.end_crit_edge
  %rv.0100 = phi i32 [ %call, %if.end.do.end_crit_edge ], [ -22, %cond.true.do.end_crit_edge ], [ -22, %cond.false.do.end_crit_edge ]
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %8) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %11 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8 = icmp ugt i32 %10, %12
  br i1 %cmp8, label %if.then9, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %xres_virtual, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %16 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp13 = icmp ugt i32 %15, %17
  br i1 %cmp13, label %if.then14, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %yres_virtual, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %xresstep = getelementptr [9 x %struct.svga_fb_format], ptr @s3fb_formats, i32 0, i32 %call, i32 10
  %19 = ptrtoint ptr %xresstep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xresstep, align 4
  %sub = add i32 %20, -1
  %21 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xres_virtual, align 4
  %add = add i32 %sub, %22
  %neg = sub i32 0, %20
  %and = and i32 %add, %neg
  store i32 %and, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %23 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %24, %and
  %shr = lshr i32 %mul, 3
  %25 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %yres_virtual, align 4
  %mul22 = mul i32 %shr, %26
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %27 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul22, i32 %28)
  %cmp23 = icmp ugt i32 %mul22, %28
  %node29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %node29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %node29, align 4
  br i1 %cmp23, label %do.end27, label %if.end34

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %shr30 = ashr i32 %mul22, 10
  %shr32 = lshr i32 %28, 10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %30, i32 noundef %shr30, i32 noundef %shr32) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end17
  %call36 = tail call i32 @svga_check_timings(ptr noundef nonnull @s3_timing_regs, ptr noundef %var, i32 noundef %30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %node29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %node29, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %32) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %33 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %34
  %35 = ptrtoint ptr %node29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node29, align 4
  %call47 = call i32 @svga_compute_pll(ptr noundef nonnull @s3_pll, i32 noundef %div, ptr noundef nonnull %m, ptr noundef nonnull %n, ptr noundef nonnull %r, i32 noundef %36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %node29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node29, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %38) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end45.cleanup_crit_edge, %do.end41, %do.end27, %do.end
  %retval.0 = phi i32 [ %rv.0100, %do.end ], [ -22, %do.end27 ], [ %call36, %do.end41 ], [ %call47, %do.end52 ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  %6 = call ptr @memset(ptr %state, i32 0, i32 40)
  store ptr %5, ptr %state, align 8
  %flags = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %flags, align 4
  %num_crtc = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 112, ptr %num_crtc, align 8
  %num_seq = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %num_seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %num_seq, align 8
  %call = tail call i32 @save_vga(ptr noundef %state) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref_count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %ref_count, align 4
  tail call void @mutex_unlock(ptr noundef %open_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %3, label %entry.if.end6_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %call = tail call i32 @restore_vga(ptr noundef %state) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %ref_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_set_par(ptr noundef %info) #3 align 64 {
entry:
  %m.i = alloca i16, align 2
  %n.i = alloca i16, align 2
  %r.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ypanstep15 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %ypanstep15, align 2
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %6, %3
  %div908 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %7 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div908, ptr %line_length, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, -131073
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp4 = icmp eq i32 %3, 4
  %cond = select i1 %cmp4, i32 128, i32 -1
  %div9909 = lshr i32 %mul, 6
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  %mul13 = mul i32 %11, %div908
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %16 = load i32, ptr @fasttext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %cond19 = select i1 %tobool.not, ptr @s3fb_tile_ops, ptr @s3fb_fast_tile_ops
  %xres_virtual26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %xres_virtual26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres_virtual26, align 4
  %div27900 = lshr i32 %18, 4
  %yres_virtual31 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %yres_virtual31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %yres_virtual31, align 4
  %mul32 = mul i32 %20, %18
  %div33901 = lshr i32 %mul32, 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink1723 = phi ptr [ %cond19, %if.else ], [ null, %if.then ]
  %cond.sink = phi i32 [ 128, %if.else ], [ %cond, %if.then ]
  %.sink = phi i32 [ 32768, %if.else ], [ -1, %if.then ]
  %screen_size.0 = phi i32 [ %div33901, %if.else ], [ %mul13, %if.then ]
  %offset_value.0 = phi i32 [ %div27900, %if.else ], [ %div9909, %if.then ]
  %21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.sink1723, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.sink, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %25, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %yoffset, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %29 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %activate, align 4
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 56) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i = getelementptr i8, ptr %31, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 72) #10, !srcloc !310
  br label %vga_wcrt.exit

if.else.i5.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 56) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 72) #10, !srcloc !310
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 8
  %tobool.not.i.i937 = icmp eq ptr %33, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i937, label %if.else.i5.i941, label %if.then.i4.i940

if.then.i4.i940:                                  ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i938 = getelementptr i8, ptr %33, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i938, i8 57) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i939 = getelementptr i8, ptr %33, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i939, i8 -91) #10, !srcloc !310
  br label %vga_wcrt.exit942

if.else.i5.i941:                                  ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 57) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -91) #10, !srcloc !310
  br label %vga_wcrt.exit942

vga_wcrt.exit942:                                 ; preds = %if.else.i5.i941, %if.then.i4.i940
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state, align 8
  %tobool.not.i.i943 = icmp eq ptr %35, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i943, label %if.else.i5.i947, label %if.then.i4.i946

if.then.i4.i946:                                  ; preds = %vga_wcrt.exit942
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i944 = getelementptr i8, ptr %35, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i944, i8 8) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i945 = getelementptr i8, ptr %35, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i945, i8 6) #10, !srcloc !310
  br label %vga_wseq.exit

if.else.i5.i947:                                  ; preds = %vga_wcrt.exit942
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 8) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #10, !srcloc !310
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i947, %if.then.i4.i946
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i = icmp eq ptr %37, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 17) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %37, i32 981
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i

if.else.i5.i.i:                                   ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #10, !srcloc !310
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %38, %if.then.i4.i.i ], [ %39, %if.else.i5.i.i ]
  %and4.i = and i8 %retval.0.i.i.i, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %37, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 17) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %37, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %and4.i) #10, !srcloc !310
  br label %svga_wcrt_mask.exit

if.else.i5.i14.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i) #10, !srcloc !310
  br label %svga_wcrt_mask.exit

svga_wcrt_mask.exit:                              ; preds = %if.else.i5.i14.i, %if.then.i4.i13.i
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i948 = icmp eq ptr %41, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i948, label %if.else.i5.i.i952, label %if.then.i4.i.i951

if.then.i4.i.i951:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i949 = getelementptr i8, ptr %41, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i949, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i950 = getelementptr i8, ptr %41, i32 965
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i950) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i

if.else.i5.i.i952:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i952, %if.then.i4.i.i951
  %retval.0.i.i.i953 = phi i8 [ %42, %if.then.i4.i.i951 ], [ %43, %if.else.i5.i.i952 ]
  %or.i = or i8 %retval.0.i.i.i953, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i948, label %if.else.i5.i14.i958, label %if.then.i4.i13.i957

if.then.i4.i13.i957:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i955 = getelementptr i8, ptr %41, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i955, i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i956 = getelementptr i8, ptr %41, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i956, i8 %or.i) #10, !srcloc !310
  br label %svga_wseq_mask.exit

if.else.i5.i14.i958:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #10, !srcloc !310
  br label %svga_wseq_mask.exit

svga_wseq_mask.exit:                              ; preds = %if.else.i5.i14.i958, %if.then.i4.i13.i957
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i959 = icmp eq ptr %45, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i959, label %if.else.i5.i.i963, label %if.then.i4.i.i962

if.then.i4.i.i962:                                ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i960 = getelementptr i8, ptr %45, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i960, i8 23) #10, !srcloc !310
  %add.ptr.i.i3.i.i961 = getelementptr i8, ptr %45, i32 981
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i961) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i966

if.else.i5.i.i963:                                ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #10, !srcloc !310
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i966

vga_rcrt.exit.i966:                               ; preds = %if.else.i5.i.i963, %if.then.i4.i.i962
  %retval.0.i.i.i964 = phi i8 [ %46, %if.then.i4.i.i962 ], [ %47, %if.else.i5.i.i963 ]
  %and4.i965 = and i8 %retval.0.i.i.i964, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i959, label %if.else.i5.i14.i970, label %if.then.i4.i13.i969

if.then.i4.i13.i969:                              ; preds = %vga_rcrt.exit.i966
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i967 = getelementptr i8, ptr %45, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i967, i8 23) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i968 = getelementptr i8, ptr %45, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i968, i8 %and4.i965) #10, !srcloc !310
  br label %svga_wcrt_mask.exit971

if.else.i5.i14.i970:                              ; preds = %vga_rcrt.exit.i966
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i965) #10, !srcloc !310
  br label %svga_wcrt_mask.exit971

svga_wcrt_mask.exit971:                           ; preds = %if.else.i5.i14.i970, %if.then.i4.i13.i969
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state, align 8
  tail call void @svga_set_default_gfx_regs(ptr noundef %49) #10
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state, align 8
  tail call void @svga_set_default_atc_regs(ptr noundef %51) #10
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state, align 8
  tail call void @svga_set_default_seq_regs(ptr noundef %53) #10
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state, align 8
  tail call void @svga_set_default_crt_regs(ptr noundef %55) #10
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state, align 8
  tail call void @svga_wcrt_multi(ptr noundef %57, ptr noundef nonnull @s3_line_compare_regs, i32 noundef -1) #10
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %state, align 8
  tail call void @svga_wcrt_multi(ptr noundef %59, ptr noundef nonnull @s3_start_address_regs, i32 noundef 0) #10
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i972 = icmp eq ptr %61, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i972, label %if.else.i5.i.i976, label %if.then.i4.i.i975

if.then.i4.i.i975:                                ; preds = %svga_wcrt_mask.exit971
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i973 = getelementptr i8, ptr %61, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i973, i8 88) #10, !srcloc !310
  %add.ptr.i.i3.i.i974 = getelementptr i8, ptr %61, i32 981
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i974) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i980

if.else.i5.i.i976:                                ; preds = %svga_wcrt_mask.exit971
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 88) #10, !srcloc !310
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i980

vga_rcrt.exit.i980:                               ; preds = %if.else.i5.i.i976, %if.then.i4.i.i975
  %retval.0.i.i.i977 = phi i8 [ %62, %if.then.i4.i.i975 ], [ %63, %if.else.i5.i.i976 ]
  %or.i979 = or i8 %retval.0.i.i.i977, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i972, label %if.else.i5.i14.i984, label %if.then.i4.i13.i983

if.then.i4.i13.i983:                              ; preds = %vga_rcrt.exit.i980
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i981 = getelementptr i8, ptr %61, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i981, i8 88) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i982 = getelementptr i8, ptr %61, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i982, i8 %or.i979) #10, !srcloc !310
  br label %svga_wcrt_mask.exit985

if.else.i5.i14.i984:                              ; preds = %vga_rcrt.exit.i980
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 88) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i979) #10, !srcloc !310
  br label %svga_wcrt_mask.exit985

svga_wcrt_mask.exit985:                           ; preds = %if.else.i5.i14.i984, %if.then.i4.i13.i983
  %64 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i986 = icmp eq ptr %65, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i986, label %if.else.i5.i.i990, label %if.then.i4.i.i989

if.then.i4.i.i989:                                ; preds = %svga_wcrt_mask.exit985
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i987 = getelementptr i8, ptr %65, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i987, i8 49) #10, !srcloc !310
  %add.ptr.i.i3.i.i988 = getelementptr i8, ptr %65, i32 981
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i988) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i994

if.else.i5.i.i990:                                ; preds = %svga_wcrt_mask.exit985
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 49) #10, !srcloc !310
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i994

vga_rcrt.exit.i994:                               ; preds = %if.else.i5.i.i990, %if.then.i4.i.i989
  %retval.0.i.i.i991 = phi i8 [ %66, %if.then.i4.i.i989 ], [ %67, %if.else.i5.i.i990 ]
  %or.i993 = or i8 %retval.0.i.i.i991, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i986, label %if.else.i5.i14.i998, label %if.then.i4.i13.i997

if.then.i4.i13.i997:                              ; preds = %vga_rcrt.exit.i994
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i995 = getelementptr i8, ptr %65, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i995, i8 49) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i996 = getelementptr i8, ptr %65, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i996, i8 %or.i993) #10, !srcloc !310
  br label %svga_wcrt_mask.exit999

if.else.i5.i14.i998:                              ; preds = %vga_rcrt.exit.i994
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 49) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i993) #10, !srcloc !310
  br label %svga_wcrt_mask.exit999

svga_wcrt_mask.exit999:                           ; preds = %if.else.i5.i14.i998, %if.then.i4.i13.i997
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1000 = icmp eq ptr %69, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1000, label %if.else.i5.i.i1004, label %if.then.i4.i.i1003

if.then.i4.i.i1003:                               ; preds = %svga_wcrt_mask.exit999
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1001 = getelementptr i8, ptr %69, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1001, i8 51) #10, !srcloc !310
  %add.ptr.i.i3.i.i1002 = getelementptr i8, ptr %69, i32 981
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1002) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1007

if.else.i5.i.i1004:                               ; preds = %svga_wcrt_mask.exit999
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 51) #10, !srcloc !310
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1007

vga_rcrt.exit.i1007:                              ; preds = %if.else.i5.i.i1004, %if.then.i4.i.i1003
  %retval.0.i.i.i1005 = phi i8 [ %70, %if.then.i4.i.i1003 ], [ %71, %if.else.i5.i.i1004 ]
  %and4.i1006 = and i8 %retval.0.i.i.i1005, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1000, label %if.else.i5.i14.i1011, label %if.then.i4.i13.i1010

if.then.i4.i13.i1010:                             ; preds = %vga_rcrt.exit.i1007
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1008 = getelementptr i8, ptr %69, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1008, i8 51) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1009 = getelementptr i8, ptr %69, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1009, i8 %and4.i1006) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1012

if.else.i5.i14.i1011:                             ; preds = %vga_rcrt.exit.i1007
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 51) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1006) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1012

svga_wcrt_mask.exit1012:                          ; preds = %if.else.i5.i14.i1011, %if.then.i4.i13.i1010
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1013 = icmp eq ptr %73, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1013, label %if.else.i5.i.i1017, label %if.then.i4.i.i1016

if.then.i4.i.i1016:                               ; preds = %svga_wcrt_mask.exit1012
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1014 = getelementptr i8, ptr %73, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1014, i8 67) #10, !srcloc !310
  %add.ptr.i.i3.i.i1015 = getelementptr i8, ptr %73, i32 981
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1015) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1020

if.else.i5.i.i1017:                               ; preds = %svga_wcrt_mask.exit1012
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 67) #10, !srcloc !310
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1020

vga_rcrt.exit.i1020:                              ; preds = %if.else.i5.i.i1017, %if.then.i4.i.i1016
  %retval.0.i.i.i1018 = phi i8 [ %74, %if.then.i4.i.i1016 ], [ %75, %if.else.i5.i.i1017 ]
  %and4.i1019 = and i8 %retval.0.i.i.i1018, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1013, label %if.else.i5.i14.i1024, label %if.then.i4.i13.i1023

if.then.i4.i13.i1023:                             ; preds = %vga_rcrt.exit.i1020
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1021 = getelementptr i8, ptr %73, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1021, i8 67) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1022 = getelementptr i8, ptr %73, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1022, i8 %and4.i1019) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1025

if.else.i5.i14.i1024:                             ; preds = %vga_rcrt.exit.i1020
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 67) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1019) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1025

svga_wcrt_mask.exit1025:                          ; preds = %if.else.i5.i14.i1024, %if.then.i4.i13.i1023
  %76 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1026 = icmp eq ptr %77, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1026, label %if.else.i5.i.i1030, label %if.then.i4.i.i1029

if.then.i4.i.i1029:                               ; preds = %svga_wcrt_mask.exit1025
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1027 = getelementptr i8, ptr %77, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1027, i8 93) #10, !srcloc !310
  %add.ptr.i.i3.i.i1028 = getelementptr i8, ptr %77, i32 981
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1028) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1033

if.else.i5.i.i1030:                               ; preds = %svga_wcrt_mask.exit1025
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 93) #10, !srcloc !310
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1033

vga_rcrt.exit.i1033:                              ; preds = %if.else.i5.i.i1030, %if.then.i4.i.i1029
  %retval.0.i.i.i1031 = phi i8 [ %78, %if.then.i4.i.i1029 ], [ %79, %if.else.i5.i.i1030 ]
  %and4.i1032 = and i8 %retval.0.i.i.i1031, -41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1026, label %if.else.i5.i14.i1037, label %if.then.i4.i13.i1036

if.then.i4.i13.i1036:                             ; preds = %vga_rcrt.exit.i1033
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1034 = getelementptr i8, ptr %77, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1034, i8 93) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1035 = getelementptr i8, ptr %77, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1035, i8 %and4.i1032) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1038

if.else.i5.i14.i1037:                             ; preds = %vga_rcrt.exit.i1033
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 93) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1032) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1038

svga_wcrt_mask.exit1038:                          ; preds = %if.else.i5.i14.i1037, %if.then.i4.i13.i1036
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then72)) #10
          to label %do.end [label %if.then72], !srcloc !307

if.then72:                                        ; preds = %svga_wcrt_mask.exit1038
  call void @__sanitizer_cov_trace_pc() #12
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %80 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.45, i32 noundef %81, i32 noundef %offset_value.0) #10
  br label %do.end

do.end:                                           ; preds = %if.then72, %svga_wcrt_mask.exit1038
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %state, align 8
  tail call void @svga_wcrt_multi(ptr noundef %83, ptr noundef nonnull @s3_offset_regs, i32 noundef %offset_value.0) #10
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %1, align 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %85, label %if.then91 [
    i32 13, label %do.end.if.end100_crit_edge
    i32 14, label %do.end.if.end100_crit_edge1724
    i32 16, label %do.end.if.end100_crit_edge1725
    i32 17, label %do.end.if.end100_crit_edge1726
    i32 18, label %do.end.if.end100_crit_edge1727
    i32 20, label %do.end.if.end100_crit_edge1728
  ]

do.end.if.end100_crit_edge1728:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end.if.end100_crit_edge1727:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end.if.end100_crit_edge1726:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end.if.end100_crit_edge1725:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end.if.end100_crit_edge1724:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end.if.end100_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then91:                                        ; preds = %do.end
  %87 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %state, align 8
  %tobool.not.i.i1039 = icmp eq ptr %88, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1039, label %if.else.i5.i1043, label %if.then.i4.i1042

if.then.i4.i1042:                                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1040 = getelementptr i8, ptr %88, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1040, i8 84) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1041 = getelementptr i8, ptr %88, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1041, i8 24) #10, !srcloc !310
  br label %vga_wcrt.exit1044

if.else.i5.i1043:                                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 84) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 24) #10, !srcloc !310
  br label %vga_wcrt.exit1044

vga_wcrt.exit1044:                                ; preds = %if.else.i5.i1043, %if.then.i4.i1042
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %state, align 8
  %tobool.not.i.i1045 = icmp eq ptr %90, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1045, label %if.else.i5.i1049, label %if.then.i4.i1048

if.then.i4.i1048:                                 ; preds = %vga_wcrt.exit1044
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1046 = getelementptr i8, ptr %90, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1046, i8 96) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1047 = getelementptr i8, ptr %90, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1047, i8 -1) #10, !srcloc !310
  br label %vga_wcrt.exit1050

if.else.i5.i1049:                                 ; preds = %vga_wcrt.exit1044
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 96) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -1) #10, !srcloc !310
  br label %vga_wcrt.exit1050

vga_wcrt.exit1050:                                ; preds = %if.else.i5.i1049, %if.then.i4.i1048
  %91 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %state, align 8
  %tobool.not.i.i1051 = icmp eq ptr %92, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1051, label %if.else.i5.i1055, label %if.then.i4.i1054

if.then.i4.i1054:                                 ; preds = %vga_wcrt.exit1050
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1052 = getelementptr i8, ptr %92, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1052, i8 97) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1053 = getelementptr i8, ptr %92, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1053, i8 -1) #10, !srcloc !310
  br label %vga_wcrt.exit1056

if.else.i5.i1055:                                 ; preds = %vga_wcrt.exit1050
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 97) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -1) #10, !srcloc !310
  br label %vga_wcrt.exit1056

vga_wcrt.exit1056:                                ; preds = %if.else.i5.i1055, %if.then.i4.i1054
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 8
  %tobool.not.i.i1057 = icmp eq ptr %94, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1057, label %if.else.i5.i1061, label %if.then.i4.i1060

if.then.i4.i1060:                                 ; preds = %vga_wcrt.exit1056
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1058 = getelementptr i8, ptr %94, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1058, i8 98) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1059 = getelementptr i8, ptr %94, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1059, i8 -1) #10, !srcloc !310
  br label %if.end100

if.else.i5.i1061:                                 ; preds = %vga_wcrt.exit1056
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 98) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -1) #10, !srcloc !310
  br label %if.end100

if.end100:                                        ; preds = %if.else.i5.i1061, %if.then.i4.i1060, %do.end.if.end100_crit_edge, %do.end.if.end100_crit_edge1724, %do.end.if.end100_crit_edge1725, %do.end.if.end100_crit_edge1726, %do.end.if.end100_crit_edge1727, %do.end.if.end100_crit_edge1728
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %state, align 8
  %tobool.not.i.i1063 = icmp eq ptr %96, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1063, label %if.else.i5.i1067, label %if.then.i4.i1066

if.then.i4.i1066:                                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1064 = getelementptr i8, ptr %96, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1064, i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1065 = getelementptr i8, ptr %96, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1065, i8 53) #10, !srcloc !310
  br label %vga_wcrt.exit1068

if.else.i5.i1067:                                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 53) #10, !srcloc !310
  br label %vga_wcrt.exit1068

vga_wcrt.exit1068:                                ; preds = %if.else.i5.i1067, %if.then.i4.i1066
  %97 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %state, align 8
  %tobool.not.i.i1069 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i1069, label %if.else.i8.i, label %if.then.i7.i

if.then.i7.i:                                     ; preds = %vga_wcrt.exit1068
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1070 = getelementptr i8, ptr %98, i32 986
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i1070) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i2.i = getelementptr i8, ptr %98, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i, i8 51) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i, i8 0) #10, !srcloc !310
  br label %svga_wattr.exit

if.else.i8.i:                                     ; preds = %vga_wcrt.exit1068
  call void @__sanitizer_cov_trace_pc() #12
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 51) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #10, !srcloc !310
  br label %svga_wattr.exit

svga_wattr.exit:                                  ; preds = %if.else.i8.i, %if.then.i7.i
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %101 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vmode, align 4
  %and106 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %103 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1085 = icmp eq ptr %104, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool107.not, label %if.else111, label %if.then108

if.then108:                                       ; preds = %svga_wattr.exit
  br i1 %tobool.not.i.i.i1085, label %if.else.i5.i.i1075, label %if.then.i4.i.i1074

if.then.i4.i.i1074:                               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1072 = getelementptr i8, ptr %104, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1072, i8 9) #10, !srcloc !310
  %add.ptr.i.i3.i.i1073 = getelementptr i8, ptr %104, i32 981
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1073) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1079

if.else.i5.i.i1075:                               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #10, !srcloc !310
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1079

vga_rcrt.exit.i1079:                              ; preds = %if.else.i5.i.i1075, %if.then.i4.i.i1074
  %retval.0.i.i.i1076 = phi i8 [ %105, %if.then.i4.i.i1074 ], [ %106, %if.else.i5.i.i1075 ]
  %or.i1078 = or i8 %retval.0.i.i.i1076, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1085, label %if.else.i5.i14.i1083, label %if.then.i4.i13.i1082

if.then.i4.i13.i1082:                             ; preds = %vga_rcrt.exit.i1079
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1080 = getelementptr i8, ptr %104, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1080, i8 9) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1081 = getelementptr i8, ptr %104, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1081, i8 %or.i1078) #10, !srcloc !310
  br label %if.end114

if.else.i5.i14.i1083:                             ; preds = %vga_rcrt.exit.i1079
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1078) #10, !srcloc !310
  br label %if.end114

if.else111:                                       ; preds = %svga_wattr.exit
  br i1 %tobool.not.i.i.i1085, label %if.else.i5.i.i1089, label %if.then.i4.i.i1088

if.then.i4.i.i1088:                               ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1086 = getelementptr i8, ptr %104, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1086, i8 9) #10, !srcloc !310
  %add.ptr.i.i3.i.i1087 = getelementptr i8, ptr %104, i32 981
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1087) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1092

if.else.i5.i.i1089:                               ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #10, !srcloc !310
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1092

vga_rcrt.exit.i1092:                              ; preds = %if.else.i5.i.i1089, %if.then.i4.i.i1088
  %retval.0.i.i.i1090 = phi i8 [ %107, %if.then.i4.i.i1088 ], [ %108, %if.else.i5.i.i1089 ]
  %and4.i1091 = and i8 %retval.0.i.i.i1090, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1085, label %if.else.i5.i14.i1096, label %if.then.i4.i13.i1095

if.then.i4.i13.i1095:                             ; preds = %vga_rcrt.exit.i1092
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1093 = getelementptr i8, ptr %104, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1093, i8 9) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1094 = getelementptr i8, ptr %104, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1094, i8 %and4.i1091) #10, !srcloc !310
  br label %if.end114

if.else.i5.i14.i1096:                             ; preds = %vga_rcrt.exit.i1092
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1091) #10, !srcloc !310
  br label %if.end114

if.end114:                                        ; preds = %if.else.i5.i14.i1096, %if.then.i4.i13.i1095, %if.else.i5.i14.i1083, %if.then.i4.i13.i1082
  %109 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vmode, align 4
  %and117 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %111 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1112 = icmp eq ptr %112, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool118.not, label %if.else122, label %if.then119

if.then119:                                       ; preds = %if.end114
  br i1 %tobool.not.i.i.i1112, label %if.else.i5.i.i1102, label %if.then.i4.i.i1101

if.then.i4.i.i1101:                               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1099 = getelementptr i8, ptr %112, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1099, i8 66) #10, !srcloc !310
  %add.ptr.i.i3.i.i1100 = getelementptr i8, ptr %112, i32 981
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1100) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1106

if.else.i5.i.i1102:                               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 66) #10, !srcloc !310
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1106

vga_rcrt.exit.i1106:                              ; preds = %if.else.i5.i.i1102, %if.then.i4.i.i1101
  %retval.0.i.i.i1103 = phi i8 [ %113, %if.then.i4.i.i1101 ], [ %114, %if.else.i5.i.i1102 ]
  %or.i1105 = or i8 %retval.0.i.i.i1103, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1112, label %if.else.i5.i14.i1110, label %if.then.i4.i13.i1109

if.then.i4.i13.i1109:                             ; preds = %vga_rcrt.exit.i1106
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1107 = getelementptr i8, ptr %112, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1107, i8 66) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1108 = getelementptr i8, ptr %112, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1108, i8 %or.i1105) #10, !srcloc !310
  br label %if.end125

if.else.i5.i14.i1110:                             ; preds = %vga_rcrt.exit.i1106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 66) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1105) #10, !srcloc !310
  br label %if.end125

if.else122:                                       ; preds = %if.end114
  br i1 %tobool.not.i.i.i1112, label %if.else.i5.i.i1116, label %if.then.i4.i.i1115

if.then.i4.i.i1115:                               ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1113 = getelementptr i8, ptr %112, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1113, i8 66) #10, !srcloc !310
  %add.ptr.i.i3.i.i1114 = getelementptr i8, ptr %112, i32 981
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1114) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1119

if.else.i5.i.i1116:                               ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 66) #10, !srcloc !310
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1119

vga_rcrt.exit.i1119:                              ; preds = %if.else.i5.i.i1116, %if.then.i4.i.i1115
  %retval.0.i.i.i1117 = phi i8 [ %115, %if.then.i4.i.i1115 ], [ %116, %if.else.i5.i.i1116 ]
  %and4.i1118 = and i8 %retval.0.i.i.i1117, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1112, label %if.else.i5.i14.i1123, label %if.then.i4.i13.i1122

if.then.i4.i13.i1122:                             ; preds = %vga_rcrt.exit.i1119
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1120 = getelementptr i8, ptr %112, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1120, i8 66) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1121 = getelementptr i8, ptr %112, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1121, i8 %and4.i1118) #10, !srcloc !310
  br label %if.end125

if.else.i5.i14.i1123:                             ; preds = %vga_rcrt.exit.i1119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 66) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1118) #10, !srcloc !310
  br label %if.end125

if.end125:                                        ; preds = %if.else.i5.i14.i1123, %if.then.i4.i13.i1122, %if.else.i5.i14.i1110, %if.then.i4.i13.i1109
  %117 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1125 = icmp eq ptr %118, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1125, label %if.else.i5.i.i1129, label %if.then.i4.i.i1128

if.then.i4.i.i1128:                               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1126 = getelementptr i8, ptr %118, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1126, i8 69) #10, !srcloc !310
  %add.ptr.i.i3.i.i1127 = getelementptr i8, ptr %118, i32 981
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1127) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1132

if.else.i5.i.i1129:                               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 69) #10, !srcloc !310
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1132

vga_rcrt.exit.i1132:                              ; preds = %if.else.i5.i.i1129, %if.then.i4.i.i1128
  %retval.0.i.i.i1130 = phi i8 [ %119, %if.then.i4.i.i1128 ], [ %120, %if.else.i5.i.i1129 ]
  %and4.i1131 = and i8 %retval.0.i.i.i1130, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1125, label %if.else.i5.i14.i1136, label %if.then.i4.i13.i1135

if.then.i4.i13.i1135:                             ; preds = %vga_rcrt.exit.i1132
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1133 = getelementptr i8, ptr %118, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1133, i8 69) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1134 = getelementptr i8, ptr %118, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1134, i8 %and4.i1131) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1137

if.else.i5.i14.i1136:                             ; preds = %vga_rcrt.exit.i1132
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 69) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1131) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1137

svga_wcrt_mask.exit1137:                          ; preds = %if.else.i5.i14.i1136, %if.then.i4.i13.i1135
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1138 = icmp eq ptr %122, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1138, label %if.else.i5.i.i1142, label %if.then.i4.i.i1141

if.then.i4.i.i1141:                               ; preds = %svga_wcrt_mask.exit1137
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1139 = getelementptr i8, ptr %122, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1139, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1140 = getelementptr i8, ptr %122, i32 981
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1140) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1145

if.else.i5.i.i1142:                               ; preds = %svga_wcrt_mask.exit1137
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1145

vga_rcrt.exit.i1145:                              ; preds = %if.else.i5.i.i1142, %if.then.i4.i.i1141
  %retval.0.i.i.i1143 = phi i8 [ %123, %if.then.i4.i.i1141 ], [ %124, %if.else.i5.i.i1142 ]
  %and4.i1144 = and i8 %retval.0.i.i.i1143, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1138, label %if.else.i5.i14.i1149, label %if.then.i4.i13.i1148

if.then.i4.i13.i1148:                             ; preds = %vga_rcrt.exit.i1145
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1146 = getelementptr i8, ptr %122, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1146, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1147 = getelementptr i8, ptr %122, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1147, i8 %and4.i1144) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1150

if.else.i5.i14.i1149:                             ; preds = %vga_rcrt.exit.i1145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1144) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1150

svga_wcrt_mask.exit1150:                          ; preds = %if.else.i5.i14.i1149, %if.then.i4.i13.i1148
  %fix131 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call132 = tail call i32 @svga_match_format(ptr noundef nonnull @s3fb_formats, ptr noundef %var, ptr noundef %fix131) #10
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %126)
  %cmp134 = icmp eq i32 %126, 11
  br i1 %cmp134, label %if.then135, label %svga_wcrt_mask.exit1150.if.end140_crit_edge

svga_wcrt_mask.exit1150.if.end140_crit_edge:      ; preds = %svga_wcrt_mask.exit1150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then135:                                       ; preds = %svga_wcrt_mask.exit1150
  %127 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %state, align 8
  %tobool.not.i.i1151 = icmp eq ptr %128, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1151, label %if.else.i5.i1155, label %if.then.i4.i1154

if.then.i4.i1154:                                 ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1152 = getelementptr i8, ptr %128, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1152, i8 -122) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1153 = getelementptr i8, ptr %128, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1153, i8 -128) #10, !srcloc !310
  br label %vga_wcrt.exit1156

if.else.i5.i1155:                                 ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -122) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -128) #10, !srcloc !310
  br label %vga_wcrt.exit1156

vga_wcrt.exit1156:                                ; preds = %if.else.i5.i1155, %if.then.i4.i1154
  %129 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %state, align 8
  %tobool.not.i.i1157 = icmp eq ptr %130, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1157, label %if.else.i5.i1161, label %if.then.i4.i1160

if.then.i4.i1160:                                 ; preds = %vga_wcrt.exit1156
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1158 = getelementptr i8, ptr %130, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1158, i8 -112) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1159 = getelementptr i8, ptr %130, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1159, i8 0) #10, !srcloc !310
  br label %if.end140thread-pre-split

if.else.i5.i1161:                                 ; preds = %vga_wcrt.exit1156
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -112) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #10, !srcloc !310
  br label %if.end140thread-pre-split

if.end140thread-pre-split:                        ; preds = %if.else.i5.i1161, %if.then.i4.i1160
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr = load i32, ptr %1, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.end140thread-pre-split, %svga_wcrt_mask.exit1150.if.end140_crit_edge
  %132 = phi i32 [ %.pr, %if.end140thread-pre-split ], [ %126, %svga_wcrt_mask.exit1150.if.end140_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %132)
  %cmp142 = icmp eq i32 %132, 10
  br i1 %cmp142, label %if.then143, label %if.end140.if.end154_crit_edge

if.end140.if.end154_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then143:                                       ; preds = %if.end140
  %133 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %state, align 8
  %tobool.not.i.i1163 = icmp eq ptr %134, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1163, label %if.else.i5.i1167, label %if.then.i4.i1166

if.then.i4.i1166:                                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1164 = getelementptr i8, ptr %134, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1164, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1165 = getelementptr i8, ptr %134, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1165, i8 0) #10, !srcloc !310
  br label %vga_wcrt.exit1168

if.else.i5.i1167:                                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #10, !srcloc !310
  br label %vga_wcrt.exit1168

vga_wcrt.exit1168:                                ; preds = %if.else.i5.i1167, %if.then.i4.i1166
  %135 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %state, align 8
  %tobool.not.i.i1169 = icmp eq ptr %136, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1169, label %if.else.i5.i1173, label %if.then.i4.i1172

if.then.i4.i1172:                                 ; preds = %vga_wcrt.exit1168
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1170 = getelementptr i8, ptr %136, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1170, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1171 = getelementptr i8, ptr %136, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1171, i8 80) #10, !srcloc !310
  br label %vga_wcrt.exit1174

if.else.i5.i1173:                                 ; preds = %vga_wcrt.exit1168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 80) #10, !srcloc !310
  br label %vga_wcrt.exit1174

vga_wcrt.exit1174:                                ; preds = %if.else.i5.i1173, %if.then.i4.i1172
  tail call void @msleep(i32 noundef 10) #10
  %137 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call132)
  %cmp150 = icmp ult i32 %call132, 3
  %conv = select i1 %cmp150, i8 -112, i8 9
  %tobool.not.i.i1175 = icmp eq ptr %138, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1175, label %if.else.i5.i1179, label %if.then.i4.i1178

if.then.i4.i1178:                                 ; preds = %vga_wcrt.exit1174
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1176 = getelementptr i8, ptr %138, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1176, i8 99) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1177 = getelementptr i8, ptr %138, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1177, i8 %conv) #10, !srcloc !310
  br label %vga_wcrt.exit1180

if.else.i5.i1179:                                 ; preds = %vga_wcrt.exit1174
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 99) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv) #10, !srcloc !310
  br label %vga_wcrt.exit1180

vga_wcrt.exit1180:                                ; preds = %if.else.i5.i1179, %if.then.i4.i1178
  %139 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %state, align 8
  %tobool.not.i.i1181 = icmp eq ptr %140, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1181, label %if.else.i5.i1185, label %if.then.i4.i1184

if.then.i4.i1184:                                 ; preds = %vga_wcrt.exit1180
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1182 = getelementptr i8, ptr %140, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1182, i8 102) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1183 = getelementptr i8, ptr %140, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1183, i8 -112) #10, !srcloc !310
  br label %if.end154

if.else.i5.i1185:                                 ; preds = %vga_wcrt.exit1180
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 102) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -112) #10, !srcloc !310
  br label %if.end154

if.end154:                                        ; preds = %if.else.i5.i1185, %if.then.i4.i1184, %if.end140.if.end154_crit_edge
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %1, align 8
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %142, label %if.end154.if.end206_crit_edge [
    i32 13, label %if.end154.if.then189_crit_edge
    i32 14, label %if.end154.if.then189_crit_edge1729
    i32 16, label %if.end154.if.then189_crit_edge1730
    i32 17, label %if.end154.if.then189_crit_edge1731
    i32 18, label %if.end154.if.then189_crit_edge1732
    i32 19, label %if.end154.if.then189_crit_edge1733
    i32 11, label %if.end154.if.then189_crit_edge1734
    i32 12, label %if.end154.if.then189_crit_edge1735
    i32 20, label %if.end154.if.then189_crit_edge1736
  ]

if.end154.if.then189_crit_edge1736:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1735:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1734:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1733:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1732:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1731:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1730:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge1729:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.then189_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then189

if.end154.if.end206_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then189:                                       ; preds = %if.end154.if.then189_crit_edge, %if.end154.if.then189_crit_edge1729, %if.end154.if.then189_crit_edge1730, %if.end154.if.then189_crit_edge1731, %if.end154.if.then189_crit_edge1732, %if.end154.if.then189_crit_edge1733, %if.end154.if.then189_crit_edge1734, %if.end154.if.then189_crit_edge1735, %if.end154.if.then189_crit_edge1736
  %144 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %var, align 4
  %add = add i32 %3, 7
  %div191906 = lshr i32 %add, 3
  %mul192 = mul i32 %145, %div191906
  %146 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %state, align 8
  %add195 = add i32 %mul192, 7
  %div196907 = lshr i32 %add195, 3
  %conv197 = trunc i32 %div196907 to i8
  %tobool.not.i.i1187 = icmp eq ptr %147, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1187, label %if.else.i5.i1191, label %if.then.i4.i1190

if.then.i4.i1190:                                 ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1188 = getelementptr i8, ptr %147, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1188, i8 -111) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1189 = getelementptr i8, ptr %147, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1189, i8 %conv197) #10, !srcloc !310
  br label %vga_wcrt.exit1192

if.else.i5.i1191:                                 ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv197) #10, !srcloc !310
  br label %vga_wcrt.exit1192

vga_wcrt.exit1192:                                ; preds = %if.else.i5.i1191, %if.then.i4.i1190
  %148 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %state, align 8
  %shr = lshr i32 %add195, 11
  %150 = trunc i32 %shr to i8
  %conv203 = or i8 %150, -128
  %tobool.not.i.i1193 = icmp eq ptr %149, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1193, label %if.else.i5.i1197, label %if.then.i4.i1196

if.then.i4.i1196:                                 ; preds = %vga_wcrt.exit1192
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1194 = getelementptr i8, ptr %149, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1194, i8 -112) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1195 = getelementptr i8, ptr %149, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1195, i8 %conv203) #10, !srcloc !310
  br label %vga_wcrt.exit1198

if.else.i5.i1197:                                 ; preds = %vga_wcrt.exit1192
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -112) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv203) #10, !srcloc !310
  br label %vga_wcrt.exit1198

vga_wcrt.exit1198:                                ; preds = %if.else.i5.i1197, %if.then.i4.i1196
  %151 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state, align 8
  %tobool.not.i.i1199 = icmp eq ptr %152, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1199, label %if.else.i5.i1203, label %if.then.i4.i1202

if.then.i4.i1202:                                 ; preds = %vga_wcrt.exit1198
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1200 = getelementptr i8, ptr %152, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1200, i8 102) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1201 = getelementptr i8, ptr %152, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1201, i8 -127) #10, !srcloc !310
  br label %if.end206thread-pre-split

if.else.i5.i1203:                                 ; preds = %vga_wcrt.exit1198
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 102) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -127) #10, !srcloc !310
  br label %if.end206thread-pre-split

if.end206thread-pre-split:                        ; preds = %if.else.i5.i1203, %if.then.i4.i1202
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr1700 = load i32, ptr %1, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.end206thread-pre-split, %if.end154.if.end206_crit_edge
  %154 = phi i32 [ %.pr1700, %if.end206thread-pre-split ], [ %142, %if.end154.if.end206_crit_edge ]
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %154, label %if.else233 [
    i32 13, label %if.end206.if.then230_crit_edge
    i32 14, label %if.end206.if.then230_crit_edge1737
    i32 16, label %if.end206.if.then230_crit_edge1738
    i32 17, label %if.end206.if.then230_crit_edge1739
    i32 18, label %if.end206.if.then230_crit_edge1740
    i32 20, label %if.end206.if.then230_crit_edge1741
  ]

if.end206.if.then230_crit_edge1741:               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230

if.end206.if.then230_crit_edge1740:               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230

if.end206.if.then230_crit_edge1739:               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230

if.end206.if.then230_crit_edge1738:               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230

if.end206.if.then230_crit_edge1737:               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230

if.end206.if.then230_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230

if.then230:                                       ; preds = %if.end206.if.then230_crit_edge, %if.end206.if.then230_crit_edge1737, %if.end206.if.then230_crit_edge1738, %if.end206.if.then230_crit_edge1739, %if.end206.if.then230_crit_edge1740, %if.end206.if.then230_crit_edge1741
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %state, align 8
  %tobool.not.i.i1205 = icmp eq ptr %157, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1205, label %if.else.i5.i1209, label %if.then.i4.i1208

if.then.i4.i1208:                                 ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1206 = getelementptr i8, ptr %157, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1206, i8 52) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1207 = getelementptr i8, ptr %157, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1207, i8 0) #10, !srcloc !310
  br label %if.end236

if.else.i5.i1209:                                 ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 52) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #10, !srcloc !310
  br label %if.end236

if.else233:                                       ; preds = %if.end206
  %158 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %state, align 8
  %tobool.not.i.i1211 = icmp eq ptr %159, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1211, label %if.else.i5.i1215, label %if.then.i4.i1214

if.then.i4.i1214:                                 ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1212 = getelementptr i8, ptr %159, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1212, i8 52) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1213 = getelementptr i8, ptr %159, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1213, i8 16) #10, !srcloc !310
  br label %if.end236

if.else.i5.i1215:                                 ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 52) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 16) #10, !srcloc !310
  br label %if.end236

if.end236:                                        ; preds = %if.else.i5.i1215, %if.then.i4.i1214, %if.else.i5.i1209, %if.then.i4.i1208
  %160 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1217 = icmp eq ptr %161, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1217, label %if.else.i5.i.i1221, label %if.then.i4.i.i1220

if.then.i4.i.i1220:                               ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1218 = getelementptr i8, ptr %161, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1218, i8 49) #10, !srcloc !310
  %add.ptr.i.i3.i.i1219 = getelementptr i8, ptr %161, i32 981
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1219) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1224

if.else.i5.i.i1221:                               ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 49) #10, !srcloc !310
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1224

vga_rcrt.exit.i1224:                              ; preds = %if.else.i5.i.i1221, %if.then.i4.i.i1220
  %retval.0.i.i.i1222 = phi i8 [ %162, %if.then.i4.i.i1220 ], [ %163, %if.else.i5.i.i1221 ]
  %and4.i1223 = and i8 %retval.0.i.i.i1222, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1217, label %if.else.i5.i14.i1228, label %if.then.i4.i13.i1227

if.then.i4.i13.i1227:                             ; preds = %vga_rcrt.exit.i1224
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1225 = getelementptr i8, ptr %161, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1225, i8 49) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1226 = getelementptr i8, ptr %161, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1226, i8 %and4.i1223) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1229

if.else.i5.i14.i1228:                             ; preds = %vga_rcrt.exit.i1224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 49) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1223) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1229

svga_wcrt_mask.exit1229:                          ; preds = %if.else.i5.i14.i1228, %if.then.i4.i13.i1227
  %164 = zext i32 %call132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call132, label %do.end600 [
    i32 0, label %do.body239
    i32 1, label %do.body287
    i32 2, label %do.body313
    i32 3, label %do.body337
    i32 4, label %do.body391
    i32 5, label %do.body474
    i32 6, label %do.body557
    i32 7, label %do.body577
  ]

do.body239:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then251)) #10
          to label %do.end255 [label %if.then251], !srcloc !307

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #12
  %node252 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %165 = ptrtoint ptr %node252 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %node252, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.46, i32 noundef %166) #10
  br label %do.end255

do.end255:                                        ; preds = %if.then251, %do.body239
  %167 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %state, align 8
  tail call void @svga_set_textmode_vga_regs(ptr noundef %168) #10
  %169 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1230 = icmp eq ptr %170, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1230, label %if.else.i5.i.i1234, label %if.then.i4.i.i1233

if.then.i4.i.i1233:                               ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1231 = getelementptr i8, ptr %170, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1231, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1232 = getelementptr i8, ptr %170, i32 981
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1232) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1237

if.else.i5.i.i1234:                               ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1237

vga_rcrt.exit.i1237:                              ; preds = %if.else.i5.i.i1234, %if.then.i4.i.i1233
  %retval.0.i.i.i1235 = phi i8 [ %171, %if.then.i4.i.i1233 ], [ %172, %if.else.i5.i.i1234 ]
  %and4.i1236 = and i8 %retval.0.i.i.i1235, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1230, label %if.else.i5.i14.i1241, label %if.then.i4.i13.i1240

if.then.i4.i13.i1240:                             ; preds = %vga_rcrt.exit.i1237
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1238 = getelementptr i8, ptr %170, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1238, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1239 = getelementptr i8, ptr %170, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1239, i8 %and4.i1236) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1242

if.else.i5.i14.i1241:                             ; preds = %vga_rcrt.exit.i1237
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1236) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1242

svga_wcrt_mask.exit1242:                          ; preds = %if.else.i5.i14.i1241, %if.then.i4.i13.i1240
  %173 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1243 = icmp eq ptr %174, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1243, label %if.else.i5.i.i1247, label %if.then.i4.i.i1246

if.then.i4.i.i1246:                               ; preds = %svga_wcrt_mask.exit1242
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1244 = getelementptr i8, ptr %174, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1244, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1245 = getelementptr i8, ptr %174, i32 981
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1245) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1250

if.else.i5.i.i1247:                               ; preds = %svga_wcrt_mask.exit1242
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %176 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1250

vga_rcrt.exit.i1250:                              ; preds = %if.else.i5.i.i1247, %if.then.i4.i.i1246
  %retval.0.i.i.i1248 = phi i8 [ %175, %if.then.i4.i.i1246 ], [ %176, %if.else.i5.i.i1247 ]
  %and4.i1249 = and i8 %retval.0.i.i.i1248, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1243, label %if.else.i5.i14.i1254, label %if.then.i4.i13.i1253

if.then.i4.i13.i1253:                             ; preds = %vga_rcrt.exit.i1250
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1251 = getelementptr i8, ptr %174, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1251, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1252 = getelementptr i8, ptr %174, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1252, i8 %and4.i1249) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1255

if.else.i5.i14.i1254:                             ; preds = %vga_rcrt.exit.i1250
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1249) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1255

svga_wcrt_mask.exit1255:                          ; preds = %if.else.i5.i14.i1254, %if.then.i4.i13.i1253
  %177 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1256 = icmp eq ptr %178, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1256, label %if.else.i5.i.i1260, label %if.then.i4.i.i1259

if.then.i4.i.i1259:                               ; preds = %svga_wcrt_mask.exit1255
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1257 = getelementptr i8, ptr %178, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1257, i8 58) #10, !srcloc !310
  %add.ptr.i.i3.i.i1258 = getelementptr i8, ptr %178, i32 981
  %179 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1258) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1263

if.else.i5.i.i1260:                               ; preds = %svga_wcrt_mask.exit1255
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1263

vga_rcrt.exit.i1263:                              ; preds = %if.else.i5.i.i1260, %if.then.i4.i.i1259
  %retval.0.i.i.i1261 = phi i8 [ %179, %if.then.i4.i.i1259 ], [ %180, %if.else.i5.i.i1260 ]
  %and4.i1262 = and i8 %retval.0.i.i.i1261, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1256, label %if.else.i5.i14.i1267, label %if.then.i4.i13.i1266

if.then.i4.i13.i1266:                             ; preds = %vga_rcrt.exit.i1263
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1264 = getelementptr i8, ptr %178, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1264, i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1265 = getelementptr i8, ptr %178, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1265, i8 %and4.i1262) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1268

if.else.i5.i14.i1267:                             ; preds = %vga_rcrt.exit.i1263
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1262) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1268

svga_wcrt_mask.exit1268:                          ; preds = %if.else.i5.i14.i1267, %if.then.i4.i13.i1266
  %181 = load i32, ptr @fasttext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool264.not = icmp eq i32 %181, 0
  br i1 %tobool264.not, label %svga_wcrt_mask.exit1268.sw.epilogthread-pre-split_crit_edge, label %do.body266

svga_wcrt_mask.exit1268.sw.epilogthread-pre-split_crit_edge: ; preds = %svga_wcrt_mask.exit1268
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilogthread-pre-split

do.body266:                                       ; preds = %svga_wcrt_mask.exit1268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then278)) #10
          to label %do.end282 [label %if.then278], !srcloc !307

if.then278:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #12
  %node279 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %182 = ptrtoint ptr %node279 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %node279, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.47, i32 noundef %183) #10
  br label %do.end282

do.end282:                                        ; preds = %if.then278, %do.body266
  %184 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1269 = icmp eq ptr %185, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1269, label %if.else.i5.i.i1273, label %if.then.i4.i.i1272

if.then.i4.i.i1272:                               ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1270 = getelementptr i8, ptr %185, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1270, i8 49) #10, !srcloc !310
  %add.ptr.i.i3.i.i1271 = getelementptr i8, ptr %185, i32 981
  %186 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1271) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1277

if.else.i5.i.i1273:                               ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 49) #10, !srcloc !310
  %187 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1277

vga_rcrt.exit.i1277:                              ; preds = %if.else.i5.i.i1273, %if.then.i4.i.i1272
  %retval.0.i.i.i1274 = phi i8 [ %186, %if.then.i4.i.i1272 ], [ %187, %if.else.i5.i.i1273 ]
  %or.i1276 = or i8 %retval.0.i.i.i1274, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1269, label %if.else.i5.i14.i1281, label %if.then.i4.i13.i1280

if.then.i4.i13.i1280:                             ; preds = %vga_rcrt.exit.i1277
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1278 = getelementptr i8, ptr %185, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1278, i8 49) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1279 = getelementptr i8, ptr %185, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1279, i8 %or.i1276) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1281:                             ; preds = %vga_rcrt.exit.i1277
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 49) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1276) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

do.body287:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then299)) #10
          to label %do.end303 [label %if.then299], !srcloc !307

if.then299:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #12
  %node300 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %188 = ptrtoint ptr %node300 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %node300, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.48, i32 noundef %189) #10
  br label %do.end303

do.end303:                                        ; preds = %if.then299, %do.body287
  %190 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %state, align 8
  %tobool.not.i.i1283 = icmp eq ptr %191, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1283, label %if.else.i4.i, label %if.then.i3.i

if.then.i3.i:                                     ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1284 = getelementptr i8, ptr %191, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1284, i8 5) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i2.i1285 = getelementptr i8, ptr %191, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i1285, i8 64) #10, !srcloc !310
  br label %vga_wgfx.exit

if.else.i4.i:                                     ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 64) #10, !srcloc !310
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i4.i, %if.then.i3.i
  %192 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1286 = icmp eq ptr %193, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1286, label %if.else.i5.i.i1290, label %if.then.i4.i.i1289

if.then.i4.i.i1289:                               ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1287 = getelementptr i8, ptr %193, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1287, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1288 = getelementptr i8, ptr %193, i32 981
  %194 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1288) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1293

if.else.i5.i.i1290:                               ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1293

vga_rcrt.exit.i1293:                              ; preds = %if.else.i5.i.i1290, %if.then.i4.i.i1289
  %retval.0.i.i.i1291 = phi i8 [ %194, %if.then.i4.i.i1289 ], [ %195, %if.else.i5.i.i1290 ]
  %and4.i1292 = and i8 %retval.0.i.i.i1291, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1286, label %if.else.i5.i14.i1297, label %if.then.i4.i13.i1296

if.then.i4.i13.i1296:                             ; preds = %vga_rcrt.exit.i1293
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1294 = getelementptr i8, ptr %193, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1294, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1295 = getelementptr i8, ptr %193, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1295, i8 %and4.i1292) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1298

if.else.i5.i14.i1297:                             ; preds = %vga_rcrt.exit.i1293
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1292) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1298

svga_wcrt_mask.exit1298:                          ; preds = %if.else.i5.i14.i1297, %if.then.i4.i13.i1296
  %196 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1299 = icmp eq ptr %197, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1299, label %if.else.i5.i.i1303, label %if.then.i4.i.i1302

if.then.i4.i.i1302:                               ; preds = %svga_wcrt_mask.exit1298
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1300 = getelementptr i8, ptr %197, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1300, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1301 = getelementptr i8, ptr %197, i32 981
  %198 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1301) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1306

if.else.i5.i.i1303:                               ; preds = %svga_wcrt_mask.exit1298
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1306

vga_rcrt.exit.i1306:                              ; preds = %if.else.i5.i.i1303, %if.then.i4.i.i1302
  %retval.0.i.i.i1304 = phi i8 [ %198, %if.then.i4.i.i1302 ], [ %199, %if.else.i5.i.i1303 ]
  %and4.i1305 = and i8 %retval.0.i.i.i1304, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1299, label %if.else.i5.i14.i1310, label %if.then.i4.i13.i1309

if.then.i4.i13.i1309:                             ; preds = %vga_rcrt.exit.i1306
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1307 = getelementptr i8, ptr %197, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1307, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1308 = getelementptr i8, ptr %197, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1308, i8 %and4.i1305) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1311

if.else.i5.i14.i1310:                             ; preds = %vga_rcrt.exit.i1306
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1305) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1311

svga_wcrt_mask.exit1311:                          ; preds = %if.else.i5.i14.i1310, %if.then.i4.i13.i1309
  %200 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1312 = icmp eq ptr %201, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1312, label %if.else.i5.i.i1316, label %if.then.i4.i.i1315

if.then.i4.i.i1315:                               ; preds = %svga_wcrt_mask.exit1311
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1313 = getelementptr i8, ptr %201, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1313, i8 58) #10, !srcloc !310
  %add.ptr.i.i3.i.i1314 = getelementptr i8, ptr %201, i32 981
  %202 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1314) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1319

if.else.i5.i.i1316:                               ; preds = %svga_wcrt_mask.exit1311
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1319

vga_rcrt.exit.i1319:                              ; preds = %if.else.i5.i.i1316, %if.then.i4.i.i1315
  %retval.0.i.i.i1317 = phi i8 [ %202, %if.then.i4.i.i1315 ], [ %203, %if.else.i5.i.i1316 ]
  %and4.i1318 = and i8 %retval.0.i.i.i1317, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1312, label %if.else.i5.i14.i1323, label %if.then.i4.i13.i1322

if.then.i4.i13.i1322:                             ; preds = %vga_rcrt.exit.i1319
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1320 = getelementptr i8, ptr %201, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1320, i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1321 = getelementptr i8, ptr %201, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1321, i8 %and4.i1318) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1323:                             ; preds = %vga_rcrt.exit.i1319
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1318) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

do.body313:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then325)) #10
          to label %do.end329 [label %if.then325], !srcloc !307

if.then325:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #12
  %node326 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %204 = ptrtoint ptr %node326 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %node326, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.49, i32 noundef %205) #10
  br label %do.end329

do.end329:                                        ; preds = %if.then325, %do.body313
  %206 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1325 = icmp eq ptr %207, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1325, label %if.else.i5.i.i1329, label %if.then.i4.i.i1328

if.then.i4.i.i1328:                               ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1326 = getelementptr i8, ptr %207, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1326, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1327 = getelementptr i8, ptr %207, i32 981
  %208 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1327) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1332

if.else.i5.i.i1329:                               ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %209 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1332

vga_rcrt.exit.i1332:                              ; preds = %if.else.i5.i.i1329, %if.then.i4.i.i1328
  %retval.0.i.i.i1330 = phi i8 [ %208, %if.then.i4.i.i1328 ], [ %209, %if.else.i5.i.i1329 ]
  %and4.i1331 = and i8 %retval.0.i.i.i1330, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1325, label %if.else.i5.i14.i1336, label %if.then.i4.i13.i1335

if.then.i4.i13.i1335:                             ; preds = %vga_rcrt.exit.i1332
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1333 = getelementptr i8, ptr %207, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1333, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1334 = getelementptr i8, ptr %207, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1334, i8 %and4.i1331) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1337

if.else.i5.i14.i1336:                             ; preds = %vga_rcrt.exit.i1332
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1331) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1337

svga_wcrt_mask.exit1337:                          ; preds = %if.else.i5.i14.i1336, %if.then.i4.i13.i1335
  %210 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1338 = icmp eq ptr %211, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1338, label %if.else.i5.i.i1342, label %if.then.i4.i.i1341

if.then.i4.i.i1341:                               ; preds = %svga_wcrt_mask.exit1337
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1339 = getelementptr i8, ptr %211, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1339, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1340 = getelementptr i8, ptr %211, i32 981
  %212 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1340) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1345

if.else.i5.i.i1342:                               ; preds = %svga_wcrt_mask.exit1337
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %213 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1345

vga_rcrt.exit.i1345:                              ; preds = %if.else.i5.i.i1342, %if.then.i4.i.i1341
  %retval.0.i.i.i1343 = phi i8 [ %212, %if.then.i4.i.i1341 ], [ %213, %if.else.i5.i.i1342 ]
  %and4.i1344 = and i8 %retval.0.i.i.i1343, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1338, label %if.else.i5.i14.i1349, label %if.then.i4.i13.i1348

if.then.i4.i13.i1348:                             ; preds = %vga_rcrt.exit.i1345
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1346 = getelementptr i8, ptr %211, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1346, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1347 = getelementptr i8, ptr %211, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1347, i8 %and4.i1344) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1350

if.else.i5.i14.i1349:                             ; preds = %vga_rcrt.exit.i1345
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1344) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1350

svga_wcrt_mask.exit1350:                          ; preds = %if.else.i5.i14.i1349, %if.then.i4.i13.i1348
  %214 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1351 = icmp eq ptr %215, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1351, label %if.else.i5.i.i1355, label %if.then.i4.i.i1354

if.then.i4.i.i1354:                               ; preds = %svga_wcrt_mask.exit1350
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1352 = getelementptr i8, ptr %215, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1352, i8 58) #10, !srcloc !310
  %add.ptr.i.i3.i.i1353 = getelementptr i8, ptr %215, i32 981
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1353) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1358

if.else.i5.i.i1355:                               ; preds = %svga_wcrt_mask.exit1350
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  %217 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1358

vga_rcrt.exit.i1358:                              ; preds = %if.else.i5.i.i1355, %if.then.i4.i.i1354
  %retval.0.i.i.i1356 = phi i8 [ %216, %if.then.i4.i.i1354 ], [ %217, %if.else.i5.i.i1355 ]
  %and4.i1357 = and i8 %retval.0.i.i.i1356, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1351, label %if.else.i5.i14.i1362, label %if.then.i4.i13.i1361

if.then.i4.i13.i1361:                             ; preds = %vga_rcrt.exit.i1358
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1359 = getelementptr i8, ptr %215, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1359, i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1360 = getelementptr i8, ptr %215, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1360, i8 %and4.i1357) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1362:                             ; preds = %vga_rcrt.exit.i1358
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 58) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1357) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

do.body337:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then349)) #10
          to label %do.end353 [label %if.then349], !srcloc !307

if.then349:                                       ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #12
  %node350 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %218 = ptrtoint ptr %node350 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %node350, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.50, i32 noundef %219) #10
  br label %do.end353

do.end353:                                        ; preds = %if.then349, %do.body337
  %220 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1364 = icmp eq ptr %221, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1364, label %if.else.i5.i.i1368, label %if.then.i4.i.i1367

if.then.i4.i.i1367:                               ; preds = %do.end353
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1365 = getelementptr i8, ptr %221, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1365, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1366 = getelementptr i8, ptr %221, i32 981
  %222 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1366) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1371

if.else.i5.i.i1368:                               ; preds = %do.end353
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %223 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1371

vga_rcrt.exit.i1371:                              ; preds = %if.else.i5.i.i1368, %if.then.i4.i.i1367
  %retval.0.i.i.i1369 = phi i8 [ %222, %if.then.i4.i.i1367 ], [ %223, %if.else.i5.i.i1368 ]
  %and4.i1370 = and i8 %retval.0.i.i.i1369, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1364, label %if.else.i5.i14.i1375, label %if.then.i4.i13.i1374

if.then.i4.i13.i1374:                             ; preds = %vga_rcrt.exit.i1371
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1372 = getelementptr i8, ptr %221, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1372, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1373 = getelementptr i8, ptr %221, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1373, i8 %and4.i1370) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1376

if.else.i5.i14.i1375:                             ; preds = %vga_rcrt.exit.i1371
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1370) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1376

svga_wcrt_mask.exit1376:                          ; preds = %if.else.i5.i14.i1375, %if.then.i4.i13.i1374
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %224 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %225)
  %cmp357 = icmp ugt i32 %225, 20000
  br i1 %cmp357, label %svga_wcrt_mask.exit1376.if.then383_crit_edge, label %lor.lhs.false359

svga_wcrt_mask.exit1376.if.then383_crit_edge:     ; preds = %svga_wcrt_mask.exit1376
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

lor.lhs.false359:                                 ; preds = %svga_wcrt_mask.exit1376
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %1, align 8
  %228 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %227, label %if.else386 [
    i32 13, label %lor.lhs.false359.if.then383_crit_edge
    i32 14, label %lor.lhs.false359.if.then383_crit_edge1742
    i32 16, label %lor.lhs.false359.if.then383_crit_edge1743
    i32 17, label %lor.lhs.false359.if.then383_crit_edge1744
    i32 18, label %lor.lhs.false359.if.then383_crit_edge1745
    i32 20, label %lor.lhs.false359.if.then383_crit_edge1746
  ]

lor.lhs.false359.if.then383_crit_edge1746:        ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

lor.lhs.false359.if.then383_crit_edge1745:        ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

lor.lhs.false359.if.then383_crit_edge1744:        ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

lor.lhs.false359.if.then383_crit_edge1743:        ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

lor.lhs.false359.if.then383_crit_edge1742:        ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

lor.lhs.false359.if.then383_crit_edge:            ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then383

if.then383:                                       ; preds = %lor.lhs.false359.if.then383_crit_edge, %lor.lhs.false359.if.then383_crit_edge1742, %lor.lhs.false359.if.then383_crit_edge1743, %lor.lhs.false359.if.then383_crit_edge1744, %lor.lhs.false359.if.then383_crit_edge1745, %lor.lhs.false359.if.then383_crit_edge1746, %svga_wcrt_mask.exit1376.if.then383_crit_edge
  %229 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1377 = icmp eq ptr %230, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1377, label %if.else.i5.i.i1381, label %if.then.i4.i.i1380

if.then.i4.i.i1380:                               ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1378 = getelementptr i8, ptr %230, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1378, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1379 = getelementptr i8, ptr %230, i32 981
  %231 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1379) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1384

if.else.i5.i.i1381:                               ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %232 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1384

vga_rcrt.exit.i1384:                              ; preds = %if.else.i5.i.i1381, %if.then.i4.i.i1380
  %retval.0.i.i.i1382 = phi i8 [ %231, %if.then.i4.i.i1380 ], [ %232, %if.else.i5.i.i1381 ]
  %and4.i1383 = and i8 %retval.0.i.i.i1382, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1377, label %if.else.i5.i14.i1388, label %if.then.i4.i13.i1387

if.then.i4.i13.i1387:                             ; preds = %vga_rcrt.exit.i1384
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1385 = getelementptr i8, ptr %230, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1385, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1386 = getelementptr i8, ptr %230, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1386, i8 %and4.i1383) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1388:                             ; preds = %vga_rcrt.exit.i1384
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i1383) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else386:                                       ; preds = %lor.lhs.false359
  call void @__sanitizer_cov_trace_pc() #12
  %233 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %state, align 8
  tail call fastcc void @svga_wcrt_mask(ptr noundef %234, i8 noundef zeroext 103, i8 noundef zeroext 16, i8 noundef zeroext -16)
  br label %sw.epilogthread-pre-split

do.body391:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then403)) #10
          to label %do.end407 [label %if.then403], !srcloc !307

if.then403:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #12
  %node404 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %235 = ptrtoint ptr %node404 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %node404, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.51, i32 noundef %236) #10
  br label %do.end407

do.end407:                                        ; preds = %if.then403, %do.body391
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %1, align 8
  %239 = zext i32 %238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %238, label %if.else441 [
    i32 10, label %if.then411
    i32 19, label %if.then427
  ]

if.then411:                                       ; preds = %do.end407
  %pixclock413 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %240 = ptrtoint ptr %pixclock413 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pixclock413, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %241)
  %cmp414 = icmp ugt i32 %241, 20000
  %242 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1390 = icmp eq ptr %243, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp414, label %if.then416, label %if.else419

if.then416:                                       ; preds = %if.then411
  br i1 %tobool.not.i.i.i1390, label %if.else.i5.i.i1394, label %if.then.i4.i.i1393

if.then.i4.i.i1393:                               ; preds = %if.then416
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1391 = getelementptr i8, ptr %243, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1391, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1392 = getelementptr i8, ptr %243, i32 981
  %244 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1392) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1398

if.else.i5.i.i1394:                               ; preds = %if.then416
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %245 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1398

vga_rcrt.exit.i1398:                              ; preds = %if.else.i5.i.i1394, %if.then.i4.i.i1393
  %retval.0.i.i.i1395 = phi i8 [ %244, %if.then.i4.i.i1393 ], [ %245, %if.else.i5.i.i1394 ]
  %and4.i1396 = and i8 %retval.0.i.i.i1395, 15
  %or.i1397 = or i8 %and4.i1396, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1390, label %if.else.i5.i14.i1402, label %if.then.i4.i13.i1401

if.then.i4.i13.i1401:                             ; preds = %vga_rcrt.exit.i1398
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1399 = getelementptr i8, ptr %243, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1399, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1400 = getelementptr i8, ptr %243, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1400, i8 %or.i1397) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1402:                             ; preds = %vga_rcrt.exit.i1398
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1397) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else419:                                       ; preds = %if.then411
  br i1 %tobool.not.i.i.i1390, label %if.else.i5.i.i1408, label %if.then.i4.i.i1407

if.then.i4.i.i1407:                               ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1405 = getelementptr i8, ptr %243, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1405, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1406 = getelementptr i8, ptr %243, i32 981
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1406) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1412

if.else.i5.i.i1408:                               ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %247 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1412

vga_rcrt.exit.i1412:                              ; preds = %if.else.i5.i.i1408, %if.then.i4.i.i1407
  %retval.0.i.i.i1409 = phi i8 [ %246, %if.then.i4.i.i1407 ], [ %247, %if.else.i5.i.i1408 ]
  %and4.i1410 = and i8 %retval.0.i.i.i1409, 15
  %or.i1411 = or i8 %and4.i1410, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1390, label %if.else.i5.i14.i1416, label %if.then.i4.i13.i1415

if.then.i4.i13.i1415:                             ; preds = %vga_rcrt.exit.i1412
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1413 = getelementptr i8, ptr %243, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1413, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1414 = getelementptr i8, ptr %243, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1414, i8 %or.i1411) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1416:                             ; preds = %vga_rcrt.exit.i1412
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1411) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.then427:                                       ; preds = %do.end407
  %248 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1418 = icmp eq ptr %249, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1418, label %if.else.i5.i.i1422, label %if.then.i4.i.i1421

if.then.i4.i.i1421:                               ; preds = %if.then427
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1419 = getelementptr i8, ptr %249, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1419, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1420 = getelementptr i8, ptr %249, i32 981
  %250 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1420) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1426

if.else.i5.i.i1422:                               ; preds = %if.then427
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %251 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1426

vga_rcrt.exit.i1426:                              ; preds = %if.else.i5.i.i1422, %if.then.i4.i.i1421
  %retval.0.i.i.i1423 = phi i8 [ %250, %if.then.i4.i.i1421 ], [ %251, %if.else.i5.i.i1422 ]
  %and4.i1424 = and i8 %retval.0.i.i.i1423, -49
  %or.i1425 = or i8 %and4.i1424, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1418, label %if.else.i5.i14.i1430, label %if.then.i4.i13.i1429

if.then.i4.i13.i1429:                             ; preds = %vga_rcrt.exit.i1426
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1427 = getelementptr i8, ptr %249, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1427, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1428 = getelementptr i8, ptr %249, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1428, i8 %or.i1425) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1431

if.else.i5.i14.i1430:                             ; preds = %vga_rcrt.exit.i1426
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1425) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1431

svga_wcrt_mask.exit1431:                          ; preds = %if.else.i5.i14.i1430, %if.then.i4.i13.i1429
  %pixclock431 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %252 = ptrtoint ptr %pixclock431 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %pixclock431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8695, i32 %253)
  %cmp432 = icmp ugt i32 %253, 8695
  %254 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1432 = icmp eq ptr %255, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp432, label %if.then434, label %if.else437

if.then434:                                       ; preds = %svga_wcrt_mask.exit1431
  br i1 %tobool.not.i.i.i1432, label %if.else.i5.i.i1436, label %if.then.i4.i.i1435

if.then.i4.i.i1435:                               ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1433 = getelementptr i8, ptr %255, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1433, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1434 = getelementptr i8, ptr %255, i32 981
  %256 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1434) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1440

if.else.i5.i.i1436:                               ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %257 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1440

vga_rcrt.exit.i1440:                              ; preds = %if.else.i5.i.i1436, %if.then.i4.i.i1435
  %retval.0.i.i.i1437 = phi i8 [ %256, %if.then.i4.i.i1435 ], [ %257, %if.else.i5.i.i1436 ]
  %and4.i1438 = and i8 %retval.0.i.i.i1437, 15
  %or.i1439 = or i8 %and4.i1438, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1432, label %if.else.i5.i14.i1444, label %if.then.i4.i13.i1443

if.then.i4.i13.i1443:                             ; preds = %vga_rcrt.exit.i1440
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1441 = getelementptr i8, ptr %255, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1441, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1442 = getelementptr i8, ptr %255, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1442, i8 %or.i1439) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1444:                             ; preds = %vga_rcrt.exit.i1440
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1439) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else437:                                       ; preds = %svga_wcrt_mask.exit1431
  br i1 %tobool.not.i.i.i1432, label %if.else.i5.i.i1450, label %if.then.i4.i.i1449

if.then.i4.i.i1449:                               ; preds = %if.else437
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1447 = getelementptr i8, ptr %255, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1447, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1448 = getelementptr i8, ptr %255, i32 981
  %258 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1448) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1454

if.else.i5.i.i1450:                               ; preds = %if.else437
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %259 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1454

vga_rcrt.exit.i1454:                              ; preds = %if.else.i5.i.i1450, %if.then.i4.i.i1449
  %retval.0.i.i.i1451 = phi i8 [ %258, %if.then.i4.i.i1449 ], [ %259, %if.else.i5.i.i1450 ]
  %and4.i1452 = and i8 %retval.0.i.i.i1451, 15
  %or.i1453 = or i8 %and4.i1452, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1432, label %if.else.i5.i14.i1458, label %if.then.i4.i13.i1457

if.then.i4.i13.i1457:                             ; preds = %vga_rcrt.exit.i1454
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1455 = getelementptr i8, ptr %255, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1455, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1456 = getelementptr i8, ptr %255, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1456, i8 %or.i1453) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1458:                             ; preds = %vga_rcrt.exit.i1454
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1453) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else441:                                       ; preds = %do.end407
  %260 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1460 = icmp eq ptr %261, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1460, label %if.else.i5.i.i1464, label %if.then.i4.i.i1463

if.then.i4.i.i1463:                               ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1461 = getelementptr i8, ptr %261, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1461, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1462 = getelementptr i8, ptr %261, i32 981
  %262 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1462) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1468

if.else.i5.i.i1464:                               ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %263 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1468

vga_rcrt.exit.i1468:                              ; preds = %if.else.i5.i.i1464, %if.then.i4.i.i1463
  %retval.0.i.i.i1465 = phi i8 [ %262, %if.then.i4.i.i1463 ], [ %263, %if.else.i5.i.i1464 ]
  %and4.i1466 = and i8 %retval.0.i.i.i1465, -49
  %or.i1467 = or i8 %and4.i1466, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1460, label %if.else.i5.i14.i1472, label %if.then.i4.i13.i1471

if.then.i4.i13.i1471:                             ; preds = %vga_rcrt.exit.i1468
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1469 = getelementptr i8, ptr %261, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1469, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1470 = getelementptr i8, ptr %261, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1470, i8 %or.i1467) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1473

if.else.i5.i14.i1472:                             ; preds = %vga_rcrt.exit.i1468
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1467) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1473

svga_wcrt_mask.exit1473:                          ; preds = %if.else.i5.i14.i1472, %if.then.i4.i13.i1471
  %264 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1474 = icmp eq ptr %265, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1474, label %if.else.i5.i.i1478, label %if.then.i4.i.i1477

if.then.i4.i.i1477:                               ; preds = %svga_wcrt_mask.exit1473
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1475 = getelementptr i8, ptr %265, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1475, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1476 = getelementptr i8, ptr %265, i32 981
  %266 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1476) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1482

if.else.i5.i.i1478:                               ; preds = %svga_wcrt_mask.exit1473
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %267 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1482

vga_rcrt.exit.i1482:                              ; preds = %if.else.i5.i.i1478, %if.then.i4.i.i1477
  %retval.0.i.i.i1479 = phi i8 [ %266, %if.then.i4.i.i1477 ], [ %267, %if.else.i5.i.i1478 ]
  %and4.i1480 = and i8 %retval.0.i.i.i1479, 15
  %or.i1481 = or i8 %and4.i1480, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1474, label %if.else.i5.i14.i1486, label %if.then.i4.i13.i1485

if.then.i4.i13.i1485:                             ; preds = %vga_rcrt.exit.i1482
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1483 = getelementptr i8, ptr %265, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1483, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1484 = getelementptr i8, ptr %265, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1484, i8 %or.i1481) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1487

if.else.i5.i14.i1486:                             ; preds = %vga_rcrt.exit.i1482
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1481) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1487

svga_wcrt_mask.exit1487:                          ; preds = %if.else.i5.i14.i1486, %if.then.i4.i13.i1485
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %1, align 8
  %270 = zext i32 %269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %269, label %svga_wcrt_mask.exit1487.sw.epilog_crit_edge [
    i32 13, label %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge
    i32 14, label %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1747
    i32 16, label %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1748
    i32 17, label %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1749
    i32 18, label %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1750
    i32 20, label %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1751
  ]

svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1751: ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1750: ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1749: ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1748: ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1747: ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1487.if.then607.thread_crit_edge: ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1487.sw.epilog_crit_edge:      ; preds = %svga_wcrt_mask.exit1487
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body474:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then486)) #10
          to label %do.end490 [label %if.then486], !srcloc !307

if.then486:                                       ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #12
  %node487 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %271 = ptrtoint ptr %node487 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %node487, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.52, i32 noundef %272) #10
  br label %do.end490

do.end490:                                        ; preds = %if.then486, %do.body474
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %1, align 8
  %275 = zext i32 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %274, label %if.else524 [
    i32 10, label %if.then494
    i32 19, label %if.then510
  ]

if.then494:                                       ; preds = %do.end490
  %pixclock496 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %276 = ptrtoint ptr %pixclock496 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %pixclock496, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %277)
  %cmp497 = icmp ugt i32 %277, 20000
  %278 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1488 = icmp eq ptr %279, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp497, label %if.then499, label %if.else502

if.then499:                                       ; preds = %if.then494
  br i1 %tobool.not.i.i.i1488, label %if.else.i5.i.i1492, label %if.then.i4.i.i1491

if.then.i4.i.i1491:                               ; preds = %if.then499
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1489 = getelementptr i8, ptr %279, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1489, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1490 = getelementptr i8, ptr %279, i32 981
  %280 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1490) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1496

if.else.i5.i.i1492:                               ; preds = %if.then499
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %281 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1496

vga_rcrt.exit.i1496:                              ; preds = %if.else.i5.i.i1492, %if.then.i4.i.i1491
  %retval.0.i.i.i1493 = phi i8 [ %280, %if.then.i4.i.i1491 ], [ %281, %if.else.i5.i.i1492 ]
  %and4.i1494 = and i8 %retval.0.i.i.i1493, 15
  %or.i1495 = or i8 %and4.i1494, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1488, label %if.else.i5.i14.i1500, label %if.then.i4.i13.i1499

if.then.i4.i13.i1499:                             ; preds = %vga_rcrt.exit.i1496
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1497 = getelementptr i8, ptr %279, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1497, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1498 = getelementptr i8, ptr %279, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1498, i8 %or.i1495) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1500:                             ; preds = %vga_rcrt.exit.i1496
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1495) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else502:                                       ; preds = %if.then494
  br i1 %tobool.not.i.i.i1488, label %if.else.i5.i.i1506, label %if.then.i4.i.i1505

if.then.i4.i.i1505:                               ; preds = %if.else502
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1503 = getelementptr i8, ptr %279, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1503, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1504 = getelementptr i8, ptr %279, i32 981
  %282 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1504) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1510

if.else.i5.i.i1506:                               ; preds = %if.else502
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %283 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1510

vga_rcrt.exit.i1510:                              ; preds = %if.else.i5.i.i1506, %if.then.i4.i.i1505
  %retval.0.i.i.i1507 = phi i8 [ %282, %if.then.i4.i.i1505 ], [ %283, %if.else.i5.i.i1506 ]
  %and4.i1508 = and i8 %retval.0.i.i.i1507, 15
  %or.i1509 = or i8 %and4.i1508, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1488, label %if.else.i5.i14.i1514, label %if.then.i4.i13.i1513

if.then.i4.i13.i1513:                             ; preds = %vga_rcrt.exit.i1510
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1511 = getelementptr i8, ptr %279, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1511, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1512 = getelementptr i8, ptr %279, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1512, i8 %or.i1509) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1514:                             ; preds = %vga_rcrt.exit.i1510
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1509) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.then510:                                       ; preds = %do.end490
  %284 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1516 = icmp eq ptr %285, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1516, label %if.else.i5.i.i1520, label %if.then.i4.i.i1519

if.then.i4.i.i1519:                               ; preds = %if.then510
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1517 = getelementptr i8, ptr %285, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1517, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1518 = getelementptr i8, ptr %285, i32 981
  %286 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1518) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1524

if.else.i5.i.i1520:                               ; preds = %if.then510
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %287 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1524

vga_rcrt.exit.i1524:                              ; preds = %if.else.i5.i.i1520, %if.then.i4.i.i1519
  %retval.0.i.i.i1521 = phi i8 [ %286, %if.then.i4.i.i1519 ], [ %287, %if.else.i5.i.i1520 ]
  %and4.i1522 = and i8 %retval.0.i.i.i1521, -49
  %or.i1523 = or i8 %and4.i1522, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1516, label %if.else.i5.i14.i1528, label %if.then.i4.i13.i1527

if.then.i4.i13.i1527:                             ; preds = %vga_rcrt.exit.i1524
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1525 = getelementptr i8, ptr %285, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1525, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1526 = getelementptr i8, ptr %285, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1526, i8 %or.i1523) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1529

if.else.i5.i14.i1528:                             ; preds = %vga_rcrt.exit.i1524
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1523) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1529

svga_wcrt_mask.exit1529:                          ; preds = %if.else.i5.i14.i1528, %if.then.i4.i13.i1527
  %pixclock514 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %288 = ptrtoint ptr %pixclock514 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %pixclock514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8695, i32 %289)
  %cmp515 = icmp ugt i32 %289, 8695
  %290 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1530 = icmp eq ptr %291, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp515, label %if.then517, label %if.else520

if.then517:                                       ; preds = %svga_wcrt_mask.exit1529
  br i1 %tobool.not.i.i.i1530, label %if.else.i5.i.i1534, label %if.then.i4.i.i1533

if.then.i4.i.i1533:                               ; preds = %if.then517
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1531 = getelementptr i8, ptr %291, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1531, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1532 = getelementptr i8, ptr %291, i32 981
  %292 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1532) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1538

if.else.i5.i.i1534:                               ; preds = %if.then517
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %293 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1538

vga_rcrt.exit.i1538:                              ; preds = %if.else.i5.i.i1534, %if.then.i4.i.i1533
  %retval.0.i.i.i1535 = phi i8 [ %292, %if.then.i4.i.i1533 ], [ %293, %if.else.i5.i.i1534 ]
  %and4.i1536 = and i8 %retval.0.i.i.i1535, 15
  %or.i1537 = or i8 %and4.i1536, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1530, label %if.else.i5.i14.i1542, label %if.then.i4.i13.i1541

if.then.i4.i13.i1541:                             ; preds = %vga_rcrt.exit.i1538
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1539 = getelementptr i8, ptr %291, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1539, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1540 = getelementptr i8, ptr %291, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1540, i8 %or.i1537) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1542:                             ; preds = %vga_rcrt.exit.i1538
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1537) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else520:                                       ; preds = %svga_wcrt_mask.exit1529
  br i1 %tobool.not.i.i.i1530, label %if.else.i5.i.i1548, label %if.then.i4.i.i1547

if.then.i4.i.i1547:                               ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1545 = getelementptr i8, ptr %291, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1545, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1546 = getelementptr i8, ptr %291, i32 981
  %294 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1546) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1552

if.else.i5.i.i1548:                               ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %295 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1552

vga_rcrt.exit.i1552:                              ; preds = %if.else.i5.i.i1548, %if.then.i4.i.i1547
  %retval.0.i.i.i1549 = phi i8 [ %294, %if.then.i4.i.i1547 ], [ %295, %if.else.i5.i.i1548 ]
  %and4.i1550 = and i8 %retval.0.i.i.i1549, 15
  %or.i1551 = or i8 %and4.i1550, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1530, label %if.else.i5.i14.i1556, label %if.then.i4.i13.i1555

if.then.i4.i13.i1555:                             ; preds = %vga_rcrt.exit.i1552
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1553 = getelementptr i8, ptr %291, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1553, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1554 = getelementptr i8, ptr %291, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1554, i8 %or.i1551) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1556:                             ; preds = %vga_rcrt.exit.i1552
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1551) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else524:                                       ; preds = %do.end490
  %296 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1558 = icmp eq ptr %297, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1558, label %if.else.i5.i.i1562, label %if.then.i4.i.i1561

if.then.i4.i.i1561:                               ; preds = %if.else524
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1559 = getelementptr i8, ptr %297, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1559, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1560 = getelementptr i8, ptr %297, i32 981
  %298 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1560) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1566

if.else.i5.i.i1562:                               ; preds = %if.else524
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %299 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1566

vga_rcrt.exit.i1566:                              ; preds = %if.else.i5.i.i1562, %if.then.i4.i.i1561
  %retval.0.i.i.i1563 = phi i8 [ %298, %if.then.i4.i.i1561 ], [ %299, %if.else.i5.i.i1562 ]
  %and4.i1564 = and i8 %retval.0.i.i.i1563, -49
  %or.i1565 = or i8 %and4.i1564, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1558, label %if.else.i5.i14.i1570, label %if.then.i4.i13.i1569

if.then.i4.i13.i1569:                             ; preds = %vga_rcrt.exit.i1566
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1567 = getelementptr i8, ptr %297, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1567, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1568 = getelementptr i8, ptr %297, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1568, i8 %or.i1565) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1571

if.else.i5.i14.i1570:                             ; preds = %vga_rcrt.exit.i1566
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1565) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1571

svga_wcrt_mask.exit1571:                          ; preds = %if.else.i5.i14.i1570, %if.then.i4.i13.i1569
  %300 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1572 = icmp eq ptr %301, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1572, label %if.else.i5.i.i1576, label %if.then.i4.i.i1575

if.then.i4.i.i1575:                               ; preds = %svga_wcrt_mask.exit1571
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1573 = getelementptr i8, ptr %301, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1573, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1574 = getelementptr i8, ptr %301, i32 981
  %302 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1574) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1580

if.else.i5.i.i1576:                               ; preds = %svga_wcrt_mask.exit1571
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %303 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1580

vga_rcrt.exit.i1580:                              ; preds = %if.else.i5.i.i1576, %if.then.i4.i.i1575
  %retval.0.i.i.i1577 = phi i8 [ %302, %if.then.i4.i.i1575 ], [ %303, %if.else.i5.i.i1576 ]
  %and4.i1578 = and i8 %retval.0.i.i.i1577, 15
  %or.i1579 = or i8 %and4.i1578, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1572, label %if.else.i5.i14.i1584, label %if.then.i4.i13.i1583

if.then.i4.i13.i1583:                             ; preds = %vga_rcrt.exit.i1580
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1581 = getelementptr i8, ptr %301, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1581, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1582 = getelementptr i8, ptr %301, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1582, i8 %or.i1579) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1585

if.else.i5.i14.i1584:                             ; preds = %vga_rcrt.exit.i1580
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1579) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1585

svga_wcrt_mask.exit1585:                          ; preds = %if.else.i5.i14.i1584, %if.then.i4.i13.i1583
  %304 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %1, align 8
  %306 = zext i32 %305 to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %305, label %svga_wcrt_mask.exit1585.sw.epilog_crit_edge [
    i32 13, label %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge
    i32 14, label %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1752
    i32 16, label %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1753
    i32 17, label %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1754
    i32 18, label %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1755
    i32 20, label %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1756
  ]

svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1756: ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1755: ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1754: ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1753: ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1752: ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1585.if.then607.thread_crit_edge: ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then607.thread

svga_wcrt_mask.exit1585.sw.epilog_crit_edge:      ; preds = %svga_wcrt_mask.exit1585
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body557:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then569)) #10
          to label %do.end573 [label %if.then569], !srcloc !307

if.then569:                                       ; preds = %do.body557
  call void @__sanitizer_cov_trace_pc() #12
  %node570 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %307 = ptrtoint ptr %node570 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %node570, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.53, i32 noundef %308) #10
  br label %do.end573

do.end573:                                        ; preds = %if.then569, %do.body557
  %309 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1586 = icmp eq ptr %310, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1586, label %if.else.i5.i.i1590, label %if.then.i4.i.i1589

if.then.i4.i.i1589:                               ; preds = %do.end573
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1587 = getelementptr i8, ptr %310, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1587, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1588 = getelementptr i8, ptr %310, i32 981
  %311 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1588) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1594

if.else.i5.i.i1590:                               ; preds = %do.end573
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %312 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1594

vga_rcrt.exit.i1594:                              ; preds = %if.else.i5.i.i1590, %if.then.i4.i.i1589
  %retval.0.i.i.i1591 = phi i8 [ %311, %if.then.i4.i.i1589 ], [ %312, %if.else.i5.i.i1590 ]
  %and4.i1592 = and i8 %retval.0.i.i.i1591, 15
  %or.i1593 = or i8 %and4.i1592, -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1586, label %if.else.i5.i14.i1598, label %if.then.i4.i13.i1597

if.then.i4.i13.i1597:                             ; preds = %vga_rcrt.exit.i1594
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1595 = getelementptr i8, ptr %310, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1595, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1596 = getelementptr i8, ptr %310, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1596, i8 %or.i1593) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1598:                             ; preds = %vga_rcrt.exit.i1594
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1593) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

do.body577:                                       ; preds = %svga_wcrt_mask.exit1229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_set_par.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_set_par, %if.then589)) #10
          to label %do.end593 [label %if.then589], !srcloc !307

if.then589:                                       ; preds = %do.body577
  call void @__sanitizer_cov_trace_pc() #12
  %node590 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %313 = ptrtoint ptr %node590 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %node590, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_set_par.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.54, i32 noundef %314) #10
  br label %do.end593

do.end593:                                        ; preds = %if.then589, %do.body577
  %315 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1600 = icmp eq ptr %316, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1600, label %if.else.i5.i.i1604, label %if.then.i4.i.i1603

if.then.i4.i.i1603:                               ; preds = %do.end593
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1601 = getelementptr i8, ptr %316, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1601, i8 80) #10, !srcloc !310
  %add.ptr.i.i3.i.i1602 = getelementptr i8, ptr %316, i32 981
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1602) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1608

if.else.i5.i.i1604:                               ; preds = %do.end593
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  %318 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1608

vga_rcrt.exit.i1608:                              ; preds = %if.else.i5.i.i1604, %if.then.i4.i.i1603
  %retval.0.i.i.i1605 = phi i8 [ %317, %if.then.i4.i.i1603 ], [ %318, %if.else.i5.i.i1604 ]
  %or.i1607 = or i8 %retval.0.i.i.i1605, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1600, label %if.else.i5.i14.i1612, label %if.then.i4.i13.i1611

if.then.i4.i13.i1611:                             ; preds = %vga_rcrt.exit.i1608
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1609 = getelementptr i8, ptr %316, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1609, i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1610 = getelementptr i8, ptr %316, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1610, i8 %or.i1607) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1613

if.else.i5.i14.i1612:                             ; preds = %vga_rcrt.exit.i1608
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 80) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1607) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1613

svga_wcrt_mask.exit1613:                          ; preds = %if.else.i5.i14.i1612, %if.then.i4.i13.i1611
  %319 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1614 = icmp eq ptr %320, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1614, label %if.else.i5.i.i1618, label %if.then.i4.i.i1617

if.then.i4.i.i1617:                               ; preds = %svga_wcrt_mask.exit1613
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1615 = getelementptr i8, ptr %320, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1615, i8 103) #10, !srcloc !310
  %add.ptr.i.i3.i.i1616 = getelementptr i8, ptr %320, i32 981
  %321 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1616) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1622

if.else.i5.i.i1618:                               ; preds = %svga_wcrt_mask.exit1613
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  %322 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1622

vga_rcrt.exit.i1622:                              ; preds = %if.else.i5.i.i1618, %if.then.i4.i.i1617
  %retval.0.i.i.i1619 = phi i8 [ %321, %if.then.i4.i.i1617 ], [ %322, %if.else.i5.i.i1618 ]
  %and4.i1620 = and i8 %retval.0.i.i.i1619, 15
  %or.i1621 = or i8 %and4.i1620, -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1614, label %if.else.i5.i14.i1626, label %if.then.i4.i13.i1625

if.then.i4.i13.i1625:                             ; preds = %vga_rcrt.exit.i1622
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1623 = getelementptr i8, ptr %320, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1623, i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1624 = getelementptr i8, ptr %320, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1624, i8 %or.i1621) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

if.else.i5.i14.i1626:                             ; preds = %vga_rcrt.exit.i1622
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1621) #10, !srcloc !310
  br label %sw.epilogthread-pre-split

do.end600:                                        ; preds = %svga_wcrt_mask.exit1229
  call void @__sanitizer_cov_trace_pc() #12
  %node602 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %323 = ptrtoint ptr %node602 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %node602, align 4
  %call603 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %324) #14
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %if.else.i5.i14.i1626, %if.then.i4.i13.i1625, %if.else.i5.i14.i1598, %if.then.i4.i13.i1597, %if.else.i5.i14.i1556, %if.then.i4.i13.i1555, %if.else.i5.i14.i1542, %if.then.i4.i13.i1541, %if.else.i5.i14.i1514, %if.then.i4.i13.i1513, %if.else.i5.i14.i1500, %if.then.i4.i13.i1499, %if.else.i5.i14.i1458, %if.then.i4.i13.i1457, %if.else.i5.i14.i1444, %if.then.i4.i13.i1443, %if.else.i5.i14.i1416, %if.then.i4.i13.i1415, %if.else.i5.i14.i1402, %if.then.i4.i13.i1401, %if.else386, %if.else.i5.i14.i1388, %if.then.i4.i13.i1387, %if.else.i5.i14.i1362, %if.then.i4.i13.i1361, %if.else.i5.i14.i1323, %if.then.i4.i13.i1322, %if.else.i5.i14.i1281, %if.then.i4.i13.i1280, %svga_wcrt_mask.exit1268.sw.epilogthread-pre-split_crit_edge
  %tobool610.not.ph = phi i1 [ true, %if.else.i5.i14.i1626 ], [ true, %if.then.i4.i13.i1625 ], [ true, %if.else.i5.i14.i1598 ], [ true, %if.then.i4.i13.i1597 ], [ false, %if.else.i5.i14.i1556 ], [ false, %if.then.i4.i13.i1555 ], [ true, %if.else.i5.i14.i1542 ], [ true, %if.then.i4.i13.i1541 ], [ true, %if.else.i5.i14.i1514 ], [ true, %if.then.i4.i13.i1513 ], [ true, %if.else.i5.i14.i1500 ], [ true, %if.then.i4.i13.i1499 ], [ false, %if.else.i5.i14.i1458 ], [ false, %if.then.i4.i13.i1457 ], [ true, %if.else.i5.i14.i1444 ], [ true, %if.then.i4.i13.i1443 ], [ true, %if.else.i5.i14.i1416 ], [ true, %if.then.i4.i13.i1415 ], [ true, %if.else.i5.i14.i1402 ], [ true, %if.then.i4.i13.i1401 ], [ true, %if.else.i5.i14.i1388 ], [ true, %if.then.i4.i13.i1387 ], [ true, %if.else.i5.i14.i1362 ], [ true, %if.then.i4.i13.i1361 ], [ true, %if.else.i5.i14.i1323 ], [ true, %if.then.i4.i13.i1322 ], [ true, %if.else.i5.i14.i1281 ], [ true, %if.then.i4.i13.i1280 ], [ true, %svga_wcrt_mask.exit1268.sw.epilogthread-pre-split_crit_edge ], [ false, %if.else386 ]
  %hmul.0.ph = phi i32 [ 1, %if.else.i5.i14.i1626 ], [ 1, %if.then.i4.i13.i1625 ], [ 1, %if.else.i5.i14.i1598 ], [ 1, %if.then.i4.i13.i1597 ], [ 1, %if.else.i5.i14.i1556 ], [ 1, %if.then.i4.i13.i1555 ], [ 2, %if.else.i5.i14.i1542 ], [ 2, %if.then.i4.i13.i1541 ], [ 1, %if.else.i5.i14.i1514 ], [ 1, %if.then.i4.i13.i1513 ], [ 1, %if.else.i5.i14.i1500 ], [ 1, %if.then.i4.i13.i1499 ], [ 1, %if.else.i5.i14.i1458 ], [ 1, %if.then.i4.i13.i1457 ], [ 2, %if.else.i5.i14.i1444 ], [ 2, %if.then.i4.i13.i1443 ], [ 1, %if.else.i5.i14.i1416 ], [ 1, %if.then.i4.i13.i1415 ], [ 1, %if.else.i5.i14.i1402 ], [ 1, %if.then.i4.i13.i1401 ], [ 1, %if.else.i5.i14.i1388 ], [ 1, %if.then.i4.i13.i1387 ], [ 1, %if.else.i5.i14.i1362 ], [ 1, %if.then.i4.i13.i1361 ], [ 1, %if.else.i5.i14.i1323 ], [ 1, %if.then.i4.i13.i1322 ], [ 1, %if.else.i5.i14.i1281 ], [ 1, %if.then.i4.i13.i1280 ], [ 1, %svga_wcrt_mask.exit1268.sw.epilogthread-pre-split_crit_edge ], [ 1, %if.else386 ]
  %325 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %325)
  %.pr1710 = load i32, ptr %1, align 8
  br label %sw.epilog

if.then607.thread:                                ; preds = %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge, %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1752, %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1753, %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1754, %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1755, %svga_wcrt_mask.exit1585.if.then607.thread_crit_edge1756, %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge, %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1747, %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1748, %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1749, %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1750, %svga_wcrt_mask.exit1487.if.then607.thread_crit_edge1751
  %326 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %state, align 8
  br label %331

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %svga_wcrt_mask.exit1585.sw.epilog_crit_edge, %svga_wcrt_mask.exit1487.sw.epilog_crit_edge
  %328 = phi i32 [ %.pr1710, %sw.epilogthread-pre-split ], [ %269, %svga_wcrt_mask.exit1487.sw.epilog_crit_edge ], [ %305, %svga_wcrt_mask.exit1585.sw.epilog_crit_edge ]
  %tobool610.not = phi i1 [ %tobool610.not.ph, %sw.epilogthread-pre-split ], [ true, %svga_wcrt_mask.exit1487.sw.epilog_crit_edge ], [ true, %svga_wcrt_mask.exit1585.sw.epilog_crit_edge ]
  %hmul.0 = phi i32 [ %hmul.0.ph, %sw.epilogthread-pre-split ], [ 2, %svga_wcrt_mask.exit1487.sw.epilog_crit_edge ], [ 2, %svga_wcrt_mask.exit1585.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %328)
  %cmp605.not = icmp eq i32 %328, 10
  br i1 %cmp605.not, label %sw.epilog.if.end618_crit_edge, label %if.then607

sw.epilog.if.end618_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end618

if.then607:                                       ; preds = %sw.epilog
  %329 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %state, align 8
  br i1 %tobool610.not, label %if.then607._crit_edge, label %if.then607._crit_edge1757

if.then607._crit_edge1757:                        ; preds = %if.then607
  call void @__sanitizer_cov_trace_pc() #12
  br label %333

if.then607._crit_edge:                            ; preds = %if.then607
  call void @__sanitizer_cov_trace_pc() #12
  br label %331

331:                                              ; preds = %if.then607._crit_edge, %if.then607.thread
  %332 = phi ptr [ %327, %if.then607.thread ], [ %330, %if.then607._crit_edge ]
  %hmul.017151720 = phi i32 [ 1, %if.then607.thread ], [ %hmul.0, %if.then607._crit_edge ]
  br label %333

333:                                              ; preds = %331, %if.then607._crit_edge1757
  %334 = phi ptr [ %332, %331 ], [ %330, %if.then607._crit_edge1757 ]
  %tobool610.not17141721 = phi i8 [ 0, %331 ], [ -128, %if.then607._crit_edge1757 ]
  %hmul.017151719 = phi i32 [ %hmul.017151720, %331 ], [ %hmul.0, %if.then607._crit_edge1757 ]
  %335 = phi i8 [ 0, %331 ], [ 16, %if.then607._crit_edge1757 ]
  %tobool.not.i.i.i1628 = icmp eq ptr %334, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1628, label %if.else.i5.i.i1632, label %if.then.i4.i.i1631

if.then.i4.i.i1631:                               ; preds = %333
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1629 = getelementptr i8, ptr %334, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1629, i8 21) #10, !srcloc !310
  %add.ptr.i.i3.i.i1630 = getelementptr i8, ptr %334, i32 965
  %336 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1630) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i1636

if.else.i5.i.i1632:                               ; preds = %333
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #10, !srcloc !310
  %337 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i1636

vga_rseq.exit.i1636:                              ; preds = %if.else.i5.i.i1632, %if.then.i4.i.i1631
  %retval.0.i.i.i1633 = phi i8 [ %336, %if.then.i4.i.i1631 ], [ %337, %if.else.i5.i.i1632 ]
  %and4.i1634 = and i8 %retval.0.i.i.i1633, -17
  %or.i1635 = or i8 %and4.i1634, %335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1628, label %if.else.i5.i14.i1640, label %if.then.i4.i13.i1639

if.then.i4.i13.i1639:                             ; preds = %vga_rseq.exit.i1636
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1637 = getelementptr i8, ptr %334, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1637, i8 21) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1638 = getelementptr i8, ptr %334, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1638, i8 %or.i1635) #10, !srcloc !310
  br label %svga_wseq_mask.exit1641

if.else.i5.i14.i1640:                             ; preds = %vga_rseq.exit.i1636
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i1635) #10, !srcloc !310
  br label %svga_wseq_mask.exit1641

svga_wseq_mask.exit1641:                          ; preds = %if.else.i5.i14.i1640, %if.then.i4.i13.i1639
  %338 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1642 = icmp eq ptr %339, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1642, label %if.else.i5.i.i1646, label %if.then.i4.i.i1645

if.then.i4.i.i1645:                               ; preds = %svga_wseq_mask.exit1641
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1643 = getelementptr i8, ptr %339, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1643, i8 24) #10, !srcloc !310
  %add.ptr.i.i3.i.i1644 = getelementptr i8, ptr %339, i32 965
  %340 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1644) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i1650

if.else.i5.i.i1646:                               ; preds = %svga_wseq_mask.exit1641
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #10, !srcloc !310
  %341 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i1650

vga_rseq.exit.i1650:                              ; preds = %if.else.i5.i.i1646, %if.then.i4.i.i1645
  %retval.0.i.i.i1647 = phi i8 [ %340, %if.then.i4.i.i1645 ], [ %341, %if.else.i5.i.i1646 ]
  %and4.i1648 = and i8 %retval.0.i.i.i1647, 127
  %or.i1649 = or i8 %and4.i1648, %tobool610.not17141721
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1642, label %if.else.i5.i14.i1654, label %if.then.i4.i13.i1653

if.then.i4.i13.i1653:                             ; preds = %vga_rseq.exit.i1650
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1651 = getelementptr i8, ptr %339, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1651, i8 24) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1652 = getelementptr i8, ptr %339, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1652, i8 %or.i1649) #10, !srcloc !310
  br label %if.end618

if.else.i5.i14.i1654:                             ; preds = %vga_rseq.exit.i1650
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i1649) #10, !srcloc !310
  br label %if.end618

if.end618:                                        ; preds = %if.else.i5.i14.i1654, %if.then.i4.i13.i1653, %sw.epilog.if.end618_crit_edge
  %hmul.01716 = phi i32 [ %hmul.0, %sw.epilog.if.end618_crit_edge ], [ %hmul.017151719, %if.then.i4.i13.i1653 ], [ %hmul.017151719, %if.else.i5.i14.i1654 ]
  %pixclock620 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %342 = ptrtoint ptr %pixclock620 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %pixclock620, align 4
  %344 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m.i) #10
  %346 = ptrtoint ptr %m.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 -1, ptr %m.i, align 2, !annotation !308
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %n.i) #10
  %347 = ptrtoint ptr %n.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 -1, ptr %n.i, align 2, !annotation !308
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i) #10
  %348 = ptrtoint ptr %r.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 -1, ptr %r.i, align 2, !annotation !308
  %349 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %345, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %350)
  %cmp.i = icmp eq i32 %350, 19
  %cond.i = select i1 %cmp.i, ptr @s3_trio3d_pll, ptr @s3_pll
  %div.i = udiv i32 1000000000, %343
  %node.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %351 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %node.i, align 4
  %call.i = call i32 @svga_compute_pll(ptr noundef nonnull %cond.i, i32 noundef %div.i, ptr noundef nonnull %m.i, ptr noundef nonnull %n.i, ptr noundef nonnull %r.i, i32 noundef %352) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end618
  call void @__sanitizer_cov_trace_pc() #12
  %353 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %node.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %354) #14
  br label %s3_set_pixclock.exit

if.end.i:                                         ; preds = %if.end618
  %state.i = getelementptr inbounds %struct.s3fb_info, ptr %345, i32 0, i32 4
  %355 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i1656 = icmp eq ptr %356, null
  br i1 %tobool.not.i.i1656, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1657 = getelementptr i8, ptr %356, i32 972
  %357 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i1657) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_r.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %358 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_r.exit.i

vga_r.exit.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %357, %if.then.i.i ], [ %358, %if.else.i.i ]
  %359 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %state.i, align 8
  %361 = or i8 %retval.0.i.i, 12
  %tobool.not.i100.i = icmp eq ptr %360, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i100.i, label %if.else.i103.i, label %if.then.i102.i

if.then.i102.i:                                   ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i101.i = getelementptr i8, ptr %360, i32 962
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i101.i, i8 %361) #10, !srcloc !310
  br label %vga_w.exit.i

if.else.i103.i:                                   ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %361) #10, !srcloc !310
  br label %vga_w.exit.i

vga_w.exit.i:                                     ; preds = %if.else.i103.i, %if.then.i102.i
  %362 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %345, align 8
  %364 = zext i32 %363 to i64
  call void @__sanitizer_cov_trace_switch(i64 %364, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %363, label %if.else.i [
    i32 13, label %vga_w.exit.i.if.then31.i_crit_edge
    i32 14, label %vga_w.exit.i.if.then31.i_crit_edge1758
    i32 16, label %vga_w.exit.i.if.then31.i_crit_edge1759
    i32 17, label %vga_w.exit.i.if.then31.i_crit_edge1760
    i32 18, label %vga_w.exit.i.if.then31.i_crit_edge1761
    i32 20, label %vga_w.exit.i.if.then31.i_crit_edge1762
  ]

vga_w.exit.i.if.then31.i_crit_edge1762:           ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

vga_w.exit.i.if.then31.i_crit_edge1761:           ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

vga_w.exit.i.if.then31.i_crit_edge1760:           ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

vga_w.exit.i.if.then31.i_crit_edge1759:           ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

vga_w.exit.i.if.then31.i_crit_edge1758:           ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

vga_w.exit.i.if.then31.i_crit_edge:               ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.then31.i:                                      ; preds = %vga_w.exit.i.if.then31.i_crit_edge, %vga_w.exit.i.if.then31.i_crit_edge1758, %vga_w.exit.i.if.then31.i_crit_edge1759, %vga_w.exit.i.if.then31.i_crit_edge1760, %vga_w.exit.i.if.then31.i_crit_edge1761, %vga_w.exit.i.if.then31.i_crit_edge1762
  %365 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %state.i, align 8
  %367 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %n.i, align 2
  %conv34.i = trunc i16 %368 to i8
  %sub.i = add i8 %conv34.i, -2
  %369 = ptrtoint ptr %r.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %r.i, align 2
  %.tr.i = trunc i16 %370 to i8
  %shl.i = shl i8 %.tr.i, 6
  %or36.i = or i8 %shl.i, %sub.i
  %tobool.not.i.i.i1658 = icmp eq ptr %366, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1658, label %if.else.i5.i.i1662, label %if.then.i4.i.i1661

if.then.i4.i.i1661:                               ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1659 = getelementptr i8, ptr %366, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1659, i8 18) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i.i1660 = getelementptr i8, ptr %366, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.i1660, i8 %or36.i) #10, !srcloc !310
  br label %vga_wseq.exit.i

if.else.i5.i.i1662:                               ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 18) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or36.i) #10, !srcloc !310
  br label %vga_wseq.exit.i

vga_wseq.exit.i:                                  ; preds = %if.else.i5.i.i1662, %if.then.i4.i.i1661
  %371 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %state.i, align 8
  %373 = ptrtoint ptr %r.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %r.i, align 2
  %375 = lshr i16 %374, 2
  %conv41.i = trunc i16 %375 to i8
  %tobool.not.i.i104.i = icmp eq ptr %372, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i104.i, label %if.else.i5.i108.i, label %if.then.i4.i107.i

if.then.i4.i107.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i105.i = getelementptr i8, ptr %372, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i105.i, i8 41) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i106.i = getelementptr i8, ptr %372, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i106.i, i8 %conv41.i) #10, !srcloc !310
  br label %if.end50.i

if.else.i5.i108.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 41) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv41.i) #10, !srcloc !310
  br label %if.end50.i

if.else.i:                                        ; preds = %vga_w.exit.i
  %376 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %state.i, align 8
  %378 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %n.i, align 2
  %conv44.i = trunc i16 %379 to i8
  %sub45.i = add i8 %conv44.i, -2
  %380 = ptrtoint ptr %r.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %r.i, align 2
  %conv46.i = trunc i16 %381 to i8
  %shl47.i = shl i8 %conv46.i, 5
  %or48.i = or i8 %shl47.i, %sub45.i
  %tobool.not.i.i110.i = icmp eq ptr %377, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i110.i, label %if.else.i5.i114.i, label %if.then.i4.i113.i

if.then.i4.i113.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i111.i = getelementptr i8, ptr %377, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i111.i, i8 18) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i112.i = getelementptr i8, ptr %377, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i112.i, i8 %or48.i) #10, !srcloc !310
  br label %if.end50.i

if.else.i5.i114.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 18) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or48.i) #10, !srcloc !310
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i5.i114.i, %if.then.i4.i113.i, %if.else.i5.i108.i, %if.then.i4.i107.i
  %382 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %state.i, align 8
  %384 = ptrtoint ptr %m.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %m.i, align 2
  %conv53.i = trunc i16 %385 to i8
  %sub54.i = add i8 %conv53.i, -2
  %tobool.not.i.i116.i = icmp eq ptr %383, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i116.i, label %if.else.i5.i120.i, label %if.then.i4.i119.i

if.then.i4.i119.i:                                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i117.i = getelementptr i8, ptr %383, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i117.i, i8 19) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i118.i = getelementptr i8, ptr %383, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i118.i, i8 %sub54.i) #10, !srcloc !310
  br label %vga_wseq.exit121.i

if.else.i5.i120.i:                                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 19) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %sub54.i) #10, !srcloc !310
  br label %vga_wseq.exit121.i

vga_wseq.exit121.i:                               ; preds = %if.else.i5.i120.i, %if.then.i4.i119.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %386(i32 noundef 214748000) #10
  %387 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i122.i = icmp eq ptr %388, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i122.i, label %if.else.i5.i126.i, label %if.then.i4.i125.i

if.then.i4.i125.i:                                ; preds = %vga_wseq.exit121.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i123.i = getelementptr i8, ptr %388, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i123.i, i8 21) #10, !srcloc !310
  %add.ptr.i.i3.i124.i = getelementptr i8, ptr %388, i32 965
  %389 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i124.i) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i1664

if.else.i5.i126.i:                                ; preds = %vga_wseq.exit121.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #10, !srcloc !310
  %390 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i1664

vga_rseq.exit.i1664:                              ; preds = %if.else.i5.i126.i, %if.then.i4.i125.i
  %retval.0.i.i.i1663 = phi i8 [ %389, %if.then.i4.i125.i ], [ %390, %if.else.i5.i126.i ]
  %391 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %state.i, align 8
  %and62.i = and i8 %retval.0.i.i.i1663, -33
  %tobool.not.i.i127.i = icmp eq ptr %392, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i127.i, label %if.else.i5.i131.i, label %if.then.i4.i130.i

if.then.i4.i130.i:                                ; preds = %vga_rseq.exit.i1664
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i128.i = getelementptr i8, ptr %392, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i128.i, i8 21) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i129.i = getelementptr i8, ptr %392, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i129.i, i8 %and62.i) #10, !srcloc !310
  br label %vga_wseq.exit132.i

if.else.i5.i131.i:                                ; preds = %vga_rseq.exit.i1664
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and62.i) #10, !srcloc !310
  br label %vga_wseq.exit132.i

vga_wseq.exit132.i:                               ; preds = %if.else.i5.i131.i, %if.then.i4.i130.i
  %393 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %state.i, align 8
  %395 = or i8 %retval.0.i.i.i1663, 32
  %tobool.not.i.i133.i = icmp eq ptr %394, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i133.i, label %if.else.i5.i137.i, label %if.then.i4.i136.i

if.then.i4.i136.i:                                ; preds = %vga_wseq.exit132.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i134.i = getelementptr i8, ptr %394, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i134.i, i8 21) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i135.i = getelementptr i8, ptr %394, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i135.i, i8 %395) #10, !srcloc !310
  br label %vga_wseq.exit138.i

if.else.i5.i137.i:                                ; preds = %vga_wseq.exit132.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %395) #10, !srcloc !310
  br label %vga_wseq.exit138.i

vga_wseq.exit138.i:                               ; preds = %if.else.i5.i137.i, %if.then.i4.i136.i
  %396 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i139.i = icmp eq ptr %397, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i139.i, label %if.else.i5.i143.i, label %if.then.i4.i142.i

if.then.i4.i142.i:                                ; preds = %vga_wseq.exit138.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i140.i = getelementptr i8, ptr %397, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i140.i, i8 21) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i141.i = getelementptr i8, ptr %397, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i141.i, i8 %and62.i) #10, !srcloc !310
  br label %s3_set_pixclock.exit

if.else.i5.i143.i:                                ; preds = %vga_wseq.exit138.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and62.i) #10, !srcloc !310
  br label %s3_set_pixclock.exit

s3_set_pixclock.exit:                             ; preds = %if.else.i5.i143.i, %if.then.i4.i142.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %n.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m.i) #10
  %398 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %state, align 8
  %400 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %vmode, align 4
  %and626 = and i32 %401, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and626)
  %tobool627.not = icmp eq i32 %and626, 0
  %cond628 = select i1 %tobool627.not, i32 1, i32 2
  %and631 = and i32 %401, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and631)
  %tobool632.not = icmp eq i32 %and631, 0
  %cond633 = select i1 %tobool632.not, i32 1, i32 2
  %402 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %node.i, align 4
  call void @svga_set_timings(ptr noundef %399, ptr noundef nonnull @s3_timing_regs, ptr noundef %var, i32 noundef %hmul.01716, i32 noundef 1, i32 noundef %cond628, i32 noundef %cond633, i32 noundef %hmul.01716, i32 noundef %403) #10
  %404 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %var, align 4
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %406 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %left_margin, align 4
  %add638 = add i32 %407, %405
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %408 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %right_margin, align 4
  %add640 = add i32 %add638, %409
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %410 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %hsync_len, align 4
  %add642 = add i32 %add640, %411
  %mul643 = mul i32 %add642, %hmul.01716
  %div644902 = lshr i32 %mul643, 3
  %412 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %state, align 8
  %add647 = add nsw i32 %div644902, -4
  %div648903 = lshr i32 %add647, 1
  %conv649 = trunc i32 %div648903 to i8
  %tobool.not.i.i1665 = icmp eq ptr %413, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i1665, label %if.else.i5.i1669, label %if.then.i4.i1668

if.then.i4.i1668:                                 ; preds = %s3_set_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i1666 = getelementptr i8, ptr %413, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1666, i8 60) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i1667 = getelementptr i8, ptr %413, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i1667, i8 %conv649) #10, !srcloc !310
  br label %vga_wcrt.exit1670

if.else.i5.i1669:                                 ; preds = %s3_set_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 60) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv649) #10, !srcloc !310
  br label %vga_wcrt.exit1670

vga_wcrt.exit1670:                                ; preds = %if.else.i5.i1669, %if.then.i4.i1668
  %414 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %var, align 4
  %416 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %right_margin, align 4
  %add654 = add i32 %417, %415
  %mul655 = mul i32 %add654, %hmul.01716
  %div656904 = lshr i32 %mul655, 3
  %add658 = add nsw i32 %add647, %div656904
  %div659905 = lshr i32 %add658, 1
  %add660 = add nuw i32 %div659905, 2
  %add661 = add nuw nsw i32 %div656904, 4
  %418 = call i32 @llvm.umax.i32(i32 %add660, i32 %add661)
  %419 = call i32 @llvm.umin.i32(i32 %418, i32 %add647)
  %420 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %state, align 8
  call void @svga_wcrt_multi(ptr noundef %421, ptr noundef nonnull @s3_dtpc_regs, i32 noundef %419) #10
  %422 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %422, align 4
  call void @mmioset(ptr noundef %424, i32 noundef 0, i32 noundef %screen_size.0) #10
  %425 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1671 = icmp eq ptr %426, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1671, label %if.else.i5.i.i1675, label %if.then.i4.i.i1674

if.then.i4.i.i1674:                               ; preds = %vga_wcrt.exit1670
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1672 = getelementptr i8, ptr %426, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1672, i8 23) #10, !srcloc !310
  %add.ptr.i.i3.i.i1673 = getelementptr i8, ptr %426, i32 981
  %427 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1673) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i1679

if.else.i5.i.i1675:                               ; preds = %vga_wcrt.exit1670
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #10, !srcloc !310
  %428 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i1679

vga_rcrt.exit.i1679:                              ; preds = %if.else.i5.i.i1675, %if.then.i4.i.i1674
  %retval.0.i.i.i1676 = phi i8 [ %427, %if.then.i4.i.i1674 ], [ %428, %if.else.i5.i.i1675 ]
  %or.i1678 = or i8 %retval.0.i.i.i1676, -128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1671, label %if.else.i5.i14.i1683, label %if.then.i4.i13.i1682

if.then.i4.i13.i1682:                             ; preds = %vga_rcrt.exit.i1679
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1680 = getelementptr i8, ptr %426, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1680, i8 23) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1681 = getelementptr i8, ptr %426, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1681, i8 %or.i1678) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1684

if.else.i5.i14.i1683:                             ; preds = %vga_rcrt.exit.i1679
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i1678) #10, !srcloc !310
  br label %svga_wcrt_mask.exit1684

svga_wcrt_mask.exit1684:                          ; preds = %if.else.i5.i14.i1683, %if.then.i4.i13.i1682
  %429 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i1685 = icmp eq ptr %430, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1685, label %if.else.i5.i.i1689, label %if.then.i4.i.i1688

if.then.i4.i.i1688:                               ; preds = %svga_wcrt_mask.exit1684
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i1686 = getelementptr i8, ptr %430, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i1686, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i1687 = getelementptr i8, ptr %430, i32 965
  %431 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i1687) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i1692

if.else.i5.i.i1689:                               ; preds = %svga_wcrt_mask.exit1684
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %432 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i1692

vga_rseq.exit.i1692:                              ; preds = %if.else.i5.i.i1689, %if.then.i4.i.i1688
  %retval.0.i.i.i1690 = phi i8 [ %431, %if.then.i4.i.i1688 ], [ %432, %if.else.i5.i.i1689 ]
  %and4.i1691 = and i8 %retval.0.i.i.i1690, -33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i1685, label %if.else.i5.i14.i1696, label %if.then.i4.i13.i1695

if.then.i4.i13.i1695:                             ; preds = %vga_rseq.exit.i1692
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i1693 = getelementptr i8, ptr %430, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i1693, i8 1) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i1694 = getelementptr i8, ptr %430, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i1694, i8 %and4.i1691) #10, !srcloc !310
  br label %cleanup

if.else.i5.i14.i1696:                             ; preds = %vga_rseq.exit.i1692
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i1691) #10, !srcloc !310
  br label %cleanup

cleanup:                                          ; preds = %if.else.i5.i14.i1696, %if.then.i4.i13.i1695, %do.end600
  %retval.0 = phi i32 [ -22, %do.end600 ], [ 0, %if.then.i4.i13.i1695 ], [ 0, %if.else.i5.i14.i1696 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %fb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %2, label %entry.return_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge135
    i32 2, label %sw.bb32
    i32 4, label %sw.bb59
    i32 6, label %entry.sw.bb94_crit_edge
    i32 8, label %entry.sw.bb94_crit_edge136
  ]

entry.sw.bb94_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb94

entry.sw.bb94_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb94

entry.sw.bb_crit_edge135:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge135
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3 = icmp eq i32 %1, 4
  br i1 %cmp3, label %land.lhs.true, label %if.end.do.body10_crit_edge

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -16) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void @arm_heavy_mb() #10
  %regno.tr = trunc i32 %regno to i8
  %conv = shl nuw i8 %regno.tr, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv) #10, !srcloc !310
  br label %do.body18

do.body10:                                        ; preds = %land.lhs.true.do.body10_crit_edge, %if.end.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 15) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  tail call void @arm_heavy_mb() #10
  %conv15 = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv15) #10, !srcloc !310
  br label %do.body18

do.body18:                                        ; preds = %do.body10, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void @arm_heavy_mb() #10
  %shr = lshr i32 %red, 10
  %conv20 = trunc i32 %shr to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv20) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  tail call void @arm_heavy_mb() #10
  %shr24 = lshr i32 %green, 10
  %conv25 = trunc i32 %shr24 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv25) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @arm_heavy_mb() #10
  %shr29 = lshr i32 %blue, 10
  %conv30 = trunc i32 %shr29 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv30) #10, !srcloc !310
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp33 = icmp ugt i32 %regno, 255
  br i1 %cmp33, label %sw.bb32.return_crit_edge, label %do.body37

sw.bb32.return_crit_edge:                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %conv42 = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv42) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  tail call void @arm_heavy_mb() #10
  %shr46 = lshr i32 %red, 10
  %conv47 = trunc i32 %shr46 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv47) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  tail call void @arm_heavy_mb() #10
  %shr51 = lshr i32 %green, 10
  %conv52 = trunc i32 %shr51 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv52) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @arm_heavy_mb() #10
  %shr56 = lshr i32 %blue, 10
  %conv57 = trunc i32 %shr56 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv57) #10, !srcloc !310
  br label %return

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp60 = icmp ugt i32 %regno, 15
  br i1 %cmp60, label %sw.bb59.return_crit_edge, label %if.end63

sw.bb59.return_crit_edge:                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end63:                                         ; preds = %sw.bb59
  %length = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %7, label %if.end63.return_crit_edge [
    i32 5, label %if.then68
    i32 6, label %if.then81
  ]

if.end63.return_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end98:                                         ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @s3fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %blank_mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body7
    i32 3, label %do.body29
    i32 2, label %do.body51
    i32 4, label %do.body73
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_blank.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_blank, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_blank.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.61, i32 noundef %4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 86) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %6, i32 981
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i

if.else.i5.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %7, %if.then.i4.i.i ], [ %8, %if.else.i5.i.i ]
  %and4.i = and i8 %retval.0.i.i.i, -7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %and4.i) #10, !srcloc !310
  br label %svga_wcrt_mask.exit

if.else.i5.i14.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i) #10, !srcloc !310
  br label %svga_wcrt_mask.exit

svga_wcrt_mask.exit:                              ; preds = %if.else.i5.i14.i, %if.then.i4.i13.i
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  %tobool.not.i.i.i120 = icmp eq ptr %10, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i120, label %if.else.i5.i.i124, label %if.then.i4.i.i123

if.then.i4.i.i123:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i121 = getelementptr i8, ptr %10, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i121, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i122 = getelementptr i8, ptr %10, i32 965
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i122) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i

if.else.i5.i.i124:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i124, %if.then.i4.i.i123
  %retval.0.i.i.i125 = phi i8 [ %11, %if.then.i4.i.i123 ], [ %12, %if.else.i5.i.i124 ]
  %and4.i126 = and i8 %retval.0.i.i.i125, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i120, label %if.else.i5.i14.i130, label %if.then.i4.i13.i129

if.then.i4.i13.i129:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i127 = getelementptr i8, ptr %10, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i127, i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i128 = getelementptr i8, ptr %10, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i128, i8 %and4.i126) #10, !srcloc !310
  br label %sw.epilog

if.else.i5.i14.i130:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i126) #10, !srcloc !310
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_blank.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_blank, %if.then19)) #10
          to label %do.end23 [label %if.then19], !srcloc !307

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %node20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %node20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_blank.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.62, i32 noundef %14) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %state24 = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state24, align 8
  %tobool.not.i.i.i131 = icmp eq ptr %16, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i131, label %if.else.i5.i.i135, label %if.then.i4.i.i134

if.then.i4.i.i134:                                ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i132 = getelementptr i8, ptr %16, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i132, i8 86) #10, !srcloc !310
  %add.ptr.i.i3.i.i133 = getelementptr i8, ptr %16, i32 981
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i133) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i138

if.else.i5.i.i135:                                ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i138

vga_rcrt.exit.i138:                               ; preds = %if.else.i5.i.i135, %if.then.i4.i.i134
  %retval.0.i.i.i136 = phi i8 [ %17, %if.then.i4.i.i134 ], [ %18, %if.else.i5.i.i135 ]
  %and4.i137 = and i8 %retval.0.i.i.i136, -7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i131, label %if.else.i5.i14.i142, label %if.then.i4.i13.i141

if.then.i4.i13.i141:                              ; preds = %vga_rcrt.exit.i138
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i139 = getelementptr i8, ptr %16, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i139, i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i140 = getelementptr i8, ptr %16, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i140, i8 %and4.i137) #10, !srcloc !310
  br label %svga_wcrt_mask.exit143

if.else.i5.i14.i142:                              ; preds = %vga_rcrt.exit.i138
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i137) #10, !srcloc !310
  br label %svga_wcrt_mask.exit143

svga_wcrt_mask.exit143:                           ; preds = %if.else.i5.i14.i142, %if.then.i4.i13.i141
  %19 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state24, align 8
  %tobool.not.i.i.i144 = icmp eq ptr %20, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i144, label %if.else.i5.i.i148, label %if.then.i4.i.i147

if.then.i4.i.i147:                                ; preds = %svga_wcrt_mask.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i145 = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i145, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i146 = getelementptr i8, ptr %20, i32 965
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i146) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i151

if.else.i5.i.i148:                                ; preds = %svga_wcrt_mask.exit143
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i151

vga_rseq.exit.i151:                               ; preds = %if.else.i5.i.i148, %if.then.i4.i.i147
  %retval.0.i.i.i149 = phi i8 [ %21, %if.then.i4.i.i147 ], [ %22, %if.else.i5.i.i148 ]
  %or.i = or i8 %retval.0.i.i.i149, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i144, label %if.else.i5.i14.i155, label %if.then.i4.i13.i154

if.then.i4.i13.i154:                              ; preds = %vga_rseq.exit.i151
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i152 = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i152, i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i153 = getelementptr i8, ptr %20, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i153, i8 %or.i) #10, !srcloc !310
  br label %sw.epilog

if.else.i5.i14.i155:                              ; preds = %vga_rseq.exit.i151
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #10, !srcloc !310
  br label %sw.epilog

do.body29:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_blank.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_blank, %if.then41)) #10
          to label %do.end45 [label %if.then41], !srcloc !307

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %node42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %node42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_blank.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.63, i32 noundef %24) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %state46 = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state46, align 8
  %tobool.not.i.i.i157 = icmp eq ptr %26, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i157, label %if.else.i5.i.i161, label %if.then.i4.i.i160

if.then.i4.i.i160:                                ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i158 = getelementptr i8, ptr %26, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i158, i8 86) #10, !srcloc !310
  %add.ptr.i.i3.i.i159 = getelementptr i8, ptr %26, i32 981
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i159) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i165

if.else.i5.i.i161:                                ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i165

vga_rcrt.exit.i165:                               ; preds = %if.else.i5.i.i161, %if.then.i4.i.i160
  %retval.0.i.i.i162 = phi i8 [ %27, %if.then.i4.i.i160 ], [ %28, %if.else.i5.i.i161 ]
  %and4.i163 = and i8 %retval.0.i.i.i162, -7
  %or.i164 = or i8 %and4.i163, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i157, label %if.else.i5.i14.i169, label %if.then.i4.i13.i168

if.then.i4.i13.i168:                              ; preds = %vga_rcrt.exit.i165
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i166 = getelementptr i8, ptr %26, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i166, i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i167 = getelementptr i8, ptr %26, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i167, i8 %or.i164) #10, !srcloc !310
  br label %svga_wcrt_mask.exit170

if.else.i5.i14.i169:                              ; preds = %vga_rcrt.exit.i165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i164) #10, !srcloc !310
  br label %svga_wcrt_mask.exit170

svga_wcrt_mask.exit170:                           ; preds = %if.else.i5.i14.i169, %if.then.i4.i13.i168
  %29 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state46, align 8
  %tobool.not.i.i.i171 = icmp eq ptr %30, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i171, label %if.else.i5.i.i175, label %if.then.i4.i.i174

if.then.i4.i.i174:                                ; preds = %svga_wcrt_mask.exit170
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i172 = getelementptr i8, ptr %30, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i172, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i173 = getelementptr i8, ptr %30, i32 965
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i173) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i179

if.else.i5.i.i175:                                ; preds = %svga_wcrt_mask.exit170
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i179

vga_rseq.exit.i179:                               ; preds = %if.else.i5.i.i175, %if.then.i4.i.i174
  %retval.0.i.i.i176 = phi i8 [ %31, %if.then.i4.i.i174 ], [ %32, %if.else.i5.i.i175 ]
  %or.i178 = or i8 %retval.0.i.i.i176, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i171, label %if.else.i5.i14.i183, label %if.then.i4.i13.i182

if.then.i4.i13.i182:                              ; preds = %vga_rseq.exit.i179
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i180 = getelementptr i8, ptr %30, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i180, i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i181 = getelementptr i8, ptr %30, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i181, i8 %or.i178) #10, !srcloc !310
  br label %sw.epilog

if.else.i5.i14.i183:                              ; preds = %vga_rseq.exit.i179
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i178) #10, !srcloc !310
  br label %sw.epilog

do.body51:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_blank.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_blank, %if.then63)) #10
          to label %do.end67 [label %if.then63], !srcloc !307

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %node64 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %node64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %node64, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_blank.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.64, i32 noundef %34) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %state68 = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %state68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state68, align 8
  %tobool.not.i.i.i185 = icmp eq ptr %36, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i185, label %if.else.i5.i.i189, label %if.then.i4.i.i188

if.then.i4.i.i188:                                ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i186 = getelementptr i8, ptr %36, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i186, i8 86) #10, !srcloc !310
  %add.ptr.i.i3.i.i187 = getelementptr i8, ptr %36, i32 981
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i187) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i193

if.else.i5.i.i189:                                ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i193

vga_rcrt.exit.i193:                               ; preds = %if.else.i5.i.i189, %if.then.i4.i.i188
  %retval.0.i.i.i190 = phi i8 [ %37, %if.then.i4.i.i188 ], [ %38, %if.else.i5.i.i189 ]
  %and4.i191 = and i8 %retval.0.i.i.i190, -7
  %or.i192 = or i8 %and4.i191, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i185, label %if.else.i5.i14.i197, label %if.then.i4.i13.i196

if.then.i4.i13.i196:                              ; preds = %vga_rcrt.exit.i193
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i194 = getelementptr i8, ptr %36, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i194, i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i195 = getelementptr i8, ptr %36, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i195, i8 %or.i192) #10, !srcloc !310
  br label %svga_wcrt_mask.exit198

if.else.i5.i14.i197:                              ; preds = %vga_rcrt.exit.i193
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i192) #10, !srcloc !310
  br label %svga_wcrt_mask.exit198

svga_wcrt_mask.exit198:                           ; preds = %if.else.i5.i14.i197, %if.then.i4.i13.i196
  %39 = ptrtoint ptr %state68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state68, align 8
  %tobool.not.i.i.i199 = icmp eq ptr %40, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i199, label %if.else.i5.i.i203, label %if.then.i4.i.i202

if.then.i4.i.i202:                                ; preds = %svga_wcrt_mask.exit198
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i200 = getelementptr i8, ptr %40, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i200, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i201 = getelementptr i8, ptr %40, i32 965
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i201) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i207

if.else.i5.i.i203:                                ; preds = %svga_wcrt_mask.exit198
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i207

vga_rseq.exit.i207:                               ; preds = %if.else.i5.i.i203, %if.then.i4.i.i202
  %retval.0.i.i.i204 = phi i8 [ %41, %if.then.i4.i.i202 ], [ %42, %if.else.i5.i.i203 ]
  %or.i206 = or i8 %retval.0.i.i.i204, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i199, label %if.else.i5.i14.i211, label %if.then.i4.i13.i210

if.then.i4.i13.i210:                              ; preds = %vga_rseq.exit.i207
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i208 = getelementptr i8, ptr %40, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i208, i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i209 = getelementptr i8, ptr %40, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i209, i8 %or.i206) #10, !srcloc !310
  br label %sw.epilog

if.else.i5.i14.i211:                              ; preds = %vga_rseq.exit.i207
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i206) #10, !srcloc !310
  br label %sw.epilog

do.body73:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3fb_blank.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3fb_blank, %if.then85)) #10
          to label %do.end89 [label %if.then85], !srcloc !307

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %node86 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %43 = ptrtoint ptr %node86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node86, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3fb_blank.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.65, i32 noundef %44) #10
  br label %do.end89

do.end89:                                         ; preds = %if.then85, %do.body73
  %state90 = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %state90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state90, align 8
  %tobool.not.i.i.i213 = icmp eq ptr %46, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i213, label %if.else.i5.i.i217, label %if.then.i4.i.i216

if.then.i4.i.i216:                                ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i214 = getelementptr i8, ptr %46, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i214, i8 86) #10, !srcloc !310
  %add.ptr.i.i3.i.i215 = getelementptr i8, ptr %46, i32 981
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i215) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rcrt.exit.i221

if.else.i5.i.i217:                                ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rcrt.exit.i221

vga_rcrt.exit.i221:                               ; preds = %if.else.i5.i.i217, %if.then.i4.i.i216
  %retval.0.i.i.i218 = phi i8 [ %47, %if.then.i4.i.i216 ], [ %48, %if.else.i5.i.i217 ]
  %or.i220 = or i8 %retval.0.i.i.i218, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i213, label %if.else.i5.i14.i225, label %if.then.i4.i13.i224

if.then.i4.i13.i224:                              ; preds = %vga_rcrt.exit.i221
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i222 = getelementptr i8, ptr %46, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i222, i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i223 = getelementptr i8, ptr %46, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i223, i8 %or.i220) #10, !srcloc !310
  br label %svga_wcrt_mask.exit226

if.else.i5.i14.i225:                              ; preds = %vga_rcrt.exit.i221
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i220) #10, !srcloc !310
  br label %svga_wcrt_mask.exit226

svga_wcrt_mask.exit226:                           ; preds = %if.else.i5.i14.i225, %if.then.i4.i13.i224
  %49 = ptrtoint ptr %state90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state90, align 8
  %tobool.not.i.i.i227 = icmp eq ptr %50, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i227, label %if.else.i5.i.i231, label %if.then.i4.i.i230

if.then.i4.i.i230:                                ; preds = %svga_wcrt_mask.exit226
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i228 = getelementptr i8, ptr %50, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i228, i8 1) #10, !srcloc !310
  %add.ptr.i.i3.i.i229 = getelementptr i8, ptr %50, i32 965
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i229) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %vga_rseq.exit.i235

if.else.i5.i.i231:                                ; preds = %svga_wcrt_mask.exit226
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %vga_rseq.exit.i235

vga_rseq.exit.i235:                               ; preds = %if.else.i5.i.i231, %if.then.i4.i.i230
  %retval.0.i.i.i232 = phi i8 [ %51, %if.then.i4.i.i230 ], [ %52, %if.else.i5.i.i231 ]
  %or.i234 = or i8 %retval.0.i.i.i232, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i227, label %if.else.i5.i14.i239, label %if.then.i4.i13.i238

if.then.i4.i13.i238:                              ; preds = %vga_rseq.exit.i235
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i11.i236 = getelementptr i8, ptr %50, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i236, i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i12.i237 = getelementptr i8, ptr %50, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i237, i8 %or.i234) #10, !srcloc !310
  br label %sw.epilog

if.else.i5.i14.i239:                              ; preds = %vga_rseq.exit.i235
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i234) #10, !srcloc !310
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i5.i14.i239, %if.then.i4.i13.i238, %if.else.i5.i14.i211, %if.then.i4.i13.i210, %if.else.i5.i14.i183, %if.then.i4.i13.i182, %if.else.i5.i14.i155, %if.then.i4.i13.i154, %if.else.i5.i14.i130, %if.then.i4.i13.i129, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %div25 = lshr i32 %5, 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %div426 = lshr i32 %7, 1
  %mul = mul i32 %div426, %div25
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %div527 = lshr i32 %9, 1
  %add = add i32 %mul, %div527
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %div1224 = lshr i32 %mul11, 3
  %add13 = add i32 %div1224, %mul7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.0.in = phi i32 [ %add, %if.then ], [ %add13, %if.else ]
  %offset.0 = lshr i32 %offset.0.in, 2
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 8
  tail call void @svga_wcrt_multi(ptr noundef %15, ptr noundef nonnull @s3_start_address_regs, i32 noundef %offset.0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fb_fillrect(ptr noundef %info, ptr noundef %rect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %x.023.i = phi i32 [ %add.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %dst.022.i = phi ptr [ %incdec.ptr.i, %for.body5.i.for.body5.i_crit_edge ], [ %dst1.025.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %dst.022.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.022.i, i32 %mul.i.i) #10, !srcloc !328
  %add.i = add i32 %x.023.i, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp4.i = icmp ult i32 %add.i, %23
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.end.i_crit_edge

for.body5.i.for.end.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.end.i.for.cond3.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fb_imageblit(ptr noundef %info, ptr noundef %image) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else13_crit_edge

entry.if.else13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s3fb_iplan_imageblit(ptr noundef %info, ptr noundef %image)
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @s3fb_cfb4_imageblit(ptr noundef %info, ptr noundef %image)
  br label %if.end14

if.else13:                                        ; preds = %land.lhs.true6.if.else13_crit_edge, %land.lhs.true3.if.else13_crit_edge, %land.lhs.true.if.else13_crit_edge, %entry.if.else13_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #10
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
declare dso_local i32 @svga_match_format(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_textmode_vga_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_timings(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fb_settile_fast(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %14, i32 noundef %6, i32 noundef %16, i32 noundef %18, i32 noundef %20) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1147.not = icmp eq i32 %22, 0
  br i1 %cmp1147.not, label %if.end.cleanup_crit_edge, label %for.cond12.preheader.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond12.preheader.preheader:                   ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %4, i32 2
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.end.for.cond12.preheader_crit_edge, %for.cond12.preheader.preheader
  %i.049 = phi i32 [ %inc21, %for.end.for.cond12.preheader_crit_edge ], [ 0, %for.cond12.preheader.preheader ]
  %fb.048 = phi ptr [ %add.ptr19, %for.end.for.cond12.preheader_crit_edge ], [ %add.ptr, %for.cond12.preheader.preheader ]
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1445.not = icmp eq i32 %24, 0
  br i1 %cmp1445.not, label %for.cond12.preheader.for.end_crit_edge, label %for.cond12.preheader.for.body15_crit_edge

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

for.cond12.preheader.for.end_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %c.046 = phi i32 [ %inc, %for.body15.for.body15_crit_edge ], [ 0, %for.cond12.preheader.for.body15_crit_edge ]
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %mul = mul i32 %26, %c.046
  %add = add i32 %mul, %i.049
  %arrayidx = getelementptr i8, ptr %1, i32 %add
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %mul17 = shl i32 %c.046, 2
  %add.ptr18 = getelementptr i8, ptr %fb.048, i32 %mul17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %28) #10, !srcloc !310
  %inc = add nuw i32 %c.046, 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  %cmp14 = icmp ult i32 %inc, %30
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.for.end_crit_edge

for.body15.for.end_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

for.end:                                          ; preds = %for.body15.for.end_crit_edge, %for.cond12.preheader.for.end_crit_edge
  %add.ptr19 = getelementptr i8, ptr %fb.048, i32 1024
  %inc21 = add nuw i32 %i.049, 1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %cmp11 = icmp ult i32 %inc21, %32
  br i1 %cmp11, label %for.end.for.cond12.preheader_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.for.cond12.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
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
define internal void @s3fb_tilecursor(ptr noundef %info, ptr noundef %cursor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.s3fb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  tail call void @svga_tilecursor(ptr noundef %3, ptr noundef %info, ptr noundef %cursor) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_get_tilemax(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilecursor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_settile(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_compute_pll(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3fb_iplan_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.048, i32 %or) #10, !srcloc !328
  %add = add i32 %x.049, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp5 = icmp ult i32 %add, %23
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.end.for.cond4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3fb_cfb4_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.037, i32 %or) #10, !srcloc !328
  %add = add i32 %x.038, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp6 = icmp ult i32 %add, %23
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.end.for.cond5.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fb_ddc_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %2 = add i32 %1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %switch.i.i = icmp ult i32 %2, -3
  br i1 %switch.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 65312
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  br label %s3fb_ddc_read.exit

if.else.i:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 -86) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %s3fb_ddc_read.exit

if.else.i5.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -86) #10, !srcloc !310
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %s3fb_ddc_read.exit

s3fb_ddc_read.exit:                               ; preds = %if.else.i5.i.i, %if.then.i4.i.i, %if.then.i
  %retval.0.i = phi i8 [ %5, %if.then.i ], [ %8, %if.then.i4.i.i ], [ %9, %if.else.i5.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %10 = or i8 %retval.0.i, 18
  %11 = and i8 %retval.0.i, -19
  %12 = or i8 %11, 16
  %reg.0 = select i1 %tobool.not, i8 %12, i8 %10
  tail call fastcc void @s3fb_ddc_write(ptr noundef %data, i8 noundef zeroext %reg.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fb_ddc_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %2 = add i32 %1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %switch.i.i = icmp ult i32 %2, -3
  br i1 %switch.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 65312
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  br label %s3fb_ddc_read.exit

if.else.i:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 -86) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %s3fb_ddc_read.exit

if.else.i5.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -86) #10, !srcloc !310
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %s3fb_ddc_read.exit

s3fb_ddc_read.exit:                               ; preds = %if.else.i5.i.i, %if.then.i4.i.i, %if.then.i
  %retval.0.i = phi i8 [ %5, %if.then.i ], [ %8, %if.then.i4.i.i ], [ %9, %if.else.i5.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %10 = or i8 %retval.0.i, 17
  %11 = and i8 %retval.0.i, -18
  %12 = or i8 %11, 16
  %reg.0 = select i1 %tobool.not, i8 %12, i8 %10
  tail call fastcc void @s3fb_ddc_write(ptr noundef %data, i8 noundef zeroext %reg.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_ddc_getsda(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %2 = add i32 %1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %switch.i.i = icmp ult i32 %2, -3
  br i1 %switch.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 65312
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  br label %s3fb_ddc_read.exit

if.else.i:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 -86) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %s3fb_ddc_read.exit

if.else.i5.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -86) #10, !srcloc !310
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %s3fb_ddc_read.exit

s3fb_ddc_read.exit:                               ; preds = %if.else.i5.i.i, %if.then.i4.i.i, %if.then.i
  %retval.0.i = phi i8 [ %5, %if.then.i ], [ %8, %if.then.i4.i.i ], [ %9, %if.else.i5.i.i ]
  %10 = lshr i8 %retval.0.i, 3
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fb_ddc_getscl(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %2 = add i32 %1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %switch.i.i = icmp ult i32 %2, -3
  br i1 %switch.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 65312
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  br label %s3fb_ddc_read.exit

if.else.i:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct.s3fb_info, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 -86) #10, !srcloc !310
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %s3fb_ddc_read.exit

if.else.i5.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -86) #10, !srcloc !310
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #10, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %s3fb_ddc_read.exit

s3fb_ddc_read.exit:                               ; preds = %if.else.i5.i.i, %if.then.i4.i.i, %if.then.i
  %retval.0.i = phi i8 [ %5, %if.then.i ], [ %8, %if.then.i4.i.i ], [ %9, %if.else.i5.i.i ]
  %10 = lshr i8 %retval.0.i, 2
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3fb_ddc_write(ptr nocapture noundef readonly %par, i8 noundef zeroext %val) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %par, align 8
  %2 = add i32 %1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %switch.i = icmp ult i32 %2, -3
  br i1 %switch.i, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  tail call void @arm_heavy_mb() #10
  %mmio = getelementptr inbounds %struct.s3fb_info, ptr %par, i32 0, i32 8
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 65312
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #10, !srcloc !310
  br label %if.end

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.s3fb_info, ptr %par, i32 0, i32 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 -86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i3.i = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 %val) #10, !srcloc !310
  br label %if.end

if.else.i5.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -86) #10, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %val) #10, !srcloc !310
  br label %if.end

if.end:                                           ; preds = %if.else.i5.i, %if.then.i4.i, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_check_timings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3_pci_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.97) #14
  tail call void @console_lock() #10
  %open_lock = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #10
  tail call void @console_unlock() #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3_pci_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.99) #14
  tail call void @console_lock() #10
  %open_lock = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.s3fb_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @s3fb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #10
  tail call void @console_unlock() #10
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3fb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
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
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.103) #10
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
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.else

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call4 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.104, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call3, i32 5
  %call7 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #10
  store i32 %call7, ptr @mtrr, align 4
  br label %while.cond.backedge

if.else8:                                         ; preds = %if.else
  %call9 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(10) @.str.105, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr12 = getelementptr i8, ptr %call3, i32 9
  %call13 = call i32 @simple_strtoul(ptr noundef %add.ptr12, ptr noundef null, i32 noundef 0) #10
  store i32 %call13, ptr @fasttext, align 4
  br label %while.cond.backedge

if.else14:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else14, %if.then11, %if.then6, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.103) #10
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
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !296}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @__UNIQUE_ID_author305, !1, !"__UNIQUE_ID_author305", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/s3fb.c", i32 157, i32 1}
!2 = !{ptr @__UNIQUE_ID_file306, !3, !"__UNIQUE_ID_file306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/s3fb.c", i32 158, i32 1}
!4 = !{ptr @__UNIQUE_ID_license307, !3, !"__UNIQUE_ID_license307", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/s3fb.c", i32 159, i32 1}
!7 = !{ptr @__param_mode_option, !8, !"__param_mode_option", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/s3fb.c", i32 161, i32 1}
!9 = !{ptr @__UNIQUE_ID_mode_optiontype309, !8, !"__UNIQUE_ID_mode_optiontype309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_mode_option310, !11, !"__UNIQUE_ID_mode_option310", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/s3fb.c", i32 162, i32 1}
!12 = !{ptr @__param_mode, !13, !"__param_mode", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/s3fb.c", i32 163, i32 1}
!14 = !{ptr @__UNIQUE_ID_modetype311, !13, !"__UNIQUE_ID_modetype311", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mode312, !16, !"__UNIQUE_ID_mode312", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/s3fb.c", i32 164, i32 1}
!17 = !{ptr @__param_mtrr, !18, !"__param_mtrr", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/s3fb.c", i32 165, i32 1}
!19 = !{ptr @__UNIQUE_ID_mtrrtype313, !18, !"__UNIQUE_ID_mtrrtype313", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_mtrr314, !21, !"__UNIQUE_ID_mtrr314", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/s3fb.c", i32 166, i32 1}
!22 = !{ptr @__param_fasttext, !23, !"__param_fasttext", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/s3fb.c", i32 168, i32 1}
!24 = !{ptr @__UNIQUE_ID_fasttexttype315, !23, !"__UNIQUE_ID_fasttexttype315", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_fasttext316, !26, !"__UNIQUE_ID_fasttext316", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/s3fb.c", i32 169, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/s3fb.c", i32 1540, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s3fb_cleanup.__UNIQUE_ID_ddebug336, !28, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!33 = !{ptr @__initcall__kmod_s3fb__338_1565_s3fb_init6, !34, !"__initcall__kmod_s3fb__338_1565_s3fb_init6", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/s3fb.c", i32 1565, i32 1}
!35 = !{ptr @__exitcall_s3fb_cleanup, !36, !"__exitcall_s3fb_cleanup", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/s3fb.c", i32 1566, i32 1}
!37 = !{ptr @mode_option, !38, !"mode_option", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/s3fb.c", i32 152, i32 14}
!39 = !{ptr @__param_str_mode_option, !8, !"__param_str_mode_option", i1 false, i1 false}
!40 = !{ptr @__param_str_mode, !13, !"__param_str_mode", i1 false, i1 false}
!41 = !{ptr @__param_str_mtrr, !18, !"__param_str_mtrr", i1 false, i1 false}
!42 = !{ptr @mtrr, !43, !"mtrr", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/s3fb.c", i32 153, i32 12}
!44 = !{ptr @__param_str_fasttext, !23, !"__param_str_fasttext", i1 false, i1 false}
!45 = !{ptr @fasttext, !46, !"fasttext", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/s3fb.c", i32 154, i32 12}
!47 = !{ptr @s3fb_pci_driver, !48, !"s3fb_pci_driver", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/s3fb.c", i32 1502, i32 26}
!49 = !{ptr @s3_devices, !50, !"s3_devices", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/s3fb.c", i32 1478, i32 35}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/s3fb.c", i32 1125, i32 3}
!53 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @s3_pci_probe._entry, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @s3_pci_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @s3_pci_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/s3fb.c", i32 1135, i32 2}
!60 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/s3fb.c", i32 1143, i32 3}
!63 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @s3_pci_probe._entry.9, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @s3_pci_probe._entry_ptr.12, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/s3fb.c", i32 1149, i32 3}
!68 = !{ptr @s3_pci_probe._entry.13, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @s3_pci_probe._entry_ptr.15, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/s3fb.c", i32 1161, i32 3}
!72 = !{ptr @s3_pci_probe._entry.16, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @s3_pci_probe._entry_ptr.18, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/s3fb.c", i32 1271, i32 4}
!76 = !{ptr @s3_pci_probe._entry.19, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @s3_pci_probe._entry_ptr.21, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/s3fb.c", i32 1282, i32 6}
!80 = !{ptr @s3_pci_probe._entry.22, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @s3_pci_probe._entry_ptr.24, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/s3fb.c", i32 1301, i32 17}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/s3fb.c", i32 1310, i32 4}
!86 = !{ptr @s3_pci_probe._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @s3_pci_probe._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/s3fb.c", i32 1324, i32 3}
!90 = !{ptr @s3_pci_probe._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @s3_pci_probe._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/s3fb.c", i32 1331, i32 3}
!94 = !{ptr @s3_pci_probe._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @s3_pci_probe._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/s3fb.c", i32 1337, i32 3}
!98 = !{ptr @s3_pci_probe._entry.35, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @s3_pci_probe._entry_ptr.37, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/s3fb.c", i32 1341, i32 2}
!102 = !{ptr @s3_pci_probe._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @s3_pci_probe._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/s3fb.c", i32 1346, i32 3}
!106 = !{ptr @s3_pci_probe._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @s3_pci_probe._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @s3fb_ops, !109, !"s3fb_ops", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/s3fb.c", i32 1040, i32 28}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/s3fb.c", i32 677, i32 2}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug317, !111, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/s3fb.c", i32 760, i32 3}
!116 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug318, !115, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/s3fb.c", i32 771, i32 4}
!119 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug319, !118, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/s3fb.c", i32 776, i32 3}
!122 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug320, !121, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/s3fb.c", i32 787, i32 3}
!125 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug321, !124, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/s3fb.c", i32 797, i32 3}
!128 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug322, !127, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/s3fb.c", i32 813, i32 3}
!131 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug323, !130, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/s3fb.c", i32 841, i32 3}
!134 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug324, !133, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/s3fb.c", i32 870, i32 3}
!137 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug325, !136, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/s3fb.c", i32 874, i32 3}
!140 = !{ptr @s3fb_set_par.__UNIQUE_ID_ddebug326, !139, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/s3fb.c", i32 879, i32 3}
!143 = !{ptr @s3fb_set_par._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @s3fb_set_par._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @s3fb_fast_tile_ops, !146, !"s3fb_fast_tile_ops", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/s3fb.c", i32 328, i32 27}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/s3fb.c", i32 298, i32 3}
!149 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @s3fb_settile_fast._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @s3fb_settile_fast._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @s3fb_tile_ops, !153, !"s3fb_tile_ops", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/s3fb.c", i32 319, i32 27}
!154 = !{ptr @s3_line_compare_regs, !155, !"s3_line_compare_regs", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/s3fb.c", i32 133, i32 32}
!156 = !{ptr @s3_start_address_regs, !157, !"s3_start_address_regs", i1 false, i1 false}
!157 = !{!"../drivers/video/fbdev/s3fb.c", i32 134, i32 32}
!158 = !{ptr @s3_offset_regs, !159, !"s3_offset_regs", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/s3fb.c", i32 135, i32 32}
!160 = !{ptr @s3fb_formats, !161, !"s3fb_formats", i1 false, i1 false}
!161 = !{!"../drivers/video/fbdev/s3fb.c", i32 49, i32 36}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/s3fb.c", i32 468, i32 3}
!164 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @s3_set_pixclock._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @s3_set_pixclock._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @s3_trio3d_pll, !168, !"s3_trio3d_pll", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/s3fb.c", i32 72, i32 30}
!169 = !{ptr @s3_pll, !170, !"s3_pll", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/s3fb.c", i32 70, i32 30}
!171 = !{ptr @s3_timing_regs, !172, !"s3_timing_regs", i1 false, i1 false}
!172 = !{!"../drivers/video/fbdev/s3fb.c", i32 139, i32 38}
!173 = !{ptr @s3_h_total_regs, !174, !"s3_h_total_regs", i1 false, i1 false}
!174 = !{!"../drivers/video/fbdev/s3fb.c", i32 119, i32 32}
!175 = !{ptr @s3_h_display_regs, !176, !"s3_h_display_regs", i1 false, i1 false}
!176 = !{!"../drivers/video/fbdev/s3fb.c", i32 120, i32 32}
!177 = !{ptr @s3_h_blank_start_regs, !178, !"s3_h_blank_start_regs", i1 false, i1 false}
!178 = !{!"../drivers/video/fbdev/s3fb.c", i32 121, i32 32}
!179 = !{ptr @s3_h_blank_end_regs, !180, !"s3_h_blank_end_regs", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/s3fb.c", i32 122, i32 32}
!181 = !{ptr @s3_h_sync_start_regs, !182, !"s3_h_sync_start_regs", i1 false, i1 false}
!182 = !{!"../drivers/video/fbdev/s3fb.c", i32 123, i32 32}
!183 = !{ptr @s3_h_sync_end_regs, !184, !"s3_h_sync_end_regs", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/s3fb.c", i32 124, i32 32}
!185 = !{ptr @s3_v_total_regs, !186, !"s3_v_total_regs", i1 false, i1 false}
!186 = !{!"../drivers/video/fbdev/s3fb.c", i32 126, i32 32}
!187 = !{ptr @s3_v_display_regs, !188, !"s3_v_display_regs", i1 false, i1 false}
!188 = !{!"../drivers/video/fbdev/s3fb.c", i32 127, i32 32}
!189 = !{ptr @s3_v_blank_start_regs, !190, !"s3_v_blank_start_regs", i1 false, i1 false}
!190 = !{!"../drivers/video/fbdev/s3fb.c", i32 128, i32 32}
!191 = !{ptr @s3_v_blank_end_regs, !192, !"s3_v_blank_end_regs", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/s3fb.c", i32 129, i32 32}
!193 = !{ptr @s3_v_sync_start_regs, !194, !"s3_v_sync_start_regs", i1 false, i1 false}
!194 = !{!"../drivers/video/fbdev/s3fb.c", i32 130, i32 32}
!195 = !{ptr @s3_v_sync_end_regs, !196, !"s3_v_sync_end_regs", i1 false, i1 false}
!196 = !{!"../drivers/video/fbdev/s3fb.c", i32 131, i32 32}
!197 = !{ptr @s3_dtpc_regs, !198, !"s3_dtpc_regs", i1 false, i1 false}
!198 = !{!"../drivers/video/fbdev/s3fb.c", i32 137, i32 32}
!199 = !{ptr @.str.60, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/s3fb.c", i32 982, i32 3}
!201 = !{ptr @.str.61, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @s3fb_blank.__UNIQUE_ID_ddebug331, !200, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!203 = !{ptr @.str.62, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/video/fbdev/s3fb.c", i32 987, i32 3}
!205 = !{ptr @s3fb_blank.__UNIQUE_ID_ddebug332, !204, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!206 = !{ptr @.str.63, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/s3fb.c", i32 992, i32 3}
!208 = !{ptr @s3fb_blank.__UNIQUE_ID_ddebug333, !207, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!209 = !{ptr @.str.64, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/s3fb.c", i32 997, i32 3}
!211 = !{ptr @s3fb_blank.__UNIQUE_ID_ddebug334, !210, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!212 = !{ptr @.str.65, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/s3fb.c", i32 1002, i32 3}
!214 = !{ptr @s3fb_blank.__UNIQUE_ID_ddebug335, !213, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!215 = !{ptr @s3_memsizes, !216, !"s3_memsizes", i1 false, i1 false}
!216 = !{!"../drivers/video/fbdev/s3fb.c", i32 75, i32 18}
!217 = !{ptr @.str.66, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/s3fb.c", i32 77, i32 41}
!219 = !{ptr @.str.67, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/video/fbdev/s3fb.c", i32 77, i32 55}
!221 = !{ptr @.str.68, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/video/fbdev/s3fb.c", i32 77, i32 68}
!223 = !{ptr @.str.69, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/video/fbdev/s3fb.c", i32 77, i32 81}
!225 = !{ptr @.str.70, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/video/fbdev/s3fb.c", i32 78, i32 4}
!227 = !{ptr @.str.71, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/fbdev/s3fb.c", i32 78, i32 20}
!229 = !{ptr @.str.72, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/video/fbdev/s3fb.c", i32 78, i32 38}
!231 = !{ptr @.str.73, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/video/fbdev/s3fb.c", i32 79, i32 4}
!233 = !{ptr @.str.74, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/video/fbdev/s3fb.c", i32 79, i32 19}
!235 = !{ptr @.str.75, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/video/fbdev/s3fb.c", i32 79, i32 36}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/video/fbdev/s3fb.c", i32 80, i32 4}
!239 = !{ptr @.str.77, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/video/fbdev/s3fb.c", i32 80, i32 19}
!241 = !{ptr @.str.78, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/video/fbdev/s3fb.c", i32 80, i32 34}
!243 = !{ptr @.str.79, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/video/fbdev/s3fb.c", i32 81, i32 4}
!245 = !{ptr @.str.80, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/video/fbdev/s3fb.c", i32 81, i32 20}
!247 = !{ptr @.str.81, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/video/fbdev/s3fb.c", i32 81, i32 37}
!249 = !{ptr @.str.82, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/video/fbdev/s3fb.c", i32 82, i32 4}
!251 = !{ptr @.str.83, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/video/fbdev/s3fb.c", i32 82, i32 20}
!253 = !{ptr @.str.84, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/video/fbdev/s3fb.c", i32 83, i32 4}
!255 = !{ptr @.str.85, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/video/fbdev/s3fb.c", i32 83, i32 17}
!257 = !{ptr @s3_names, !258, !"s3_names", i1 false, i1 false}
!258 = !{!"../drivers/video/fbdev/s3fb.c", i32 77, i32 27}
!259 = !{ptr @.str.86, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/video/fbdev/s3fb.c", i32 561, i32 3}
!261 = !{ptr @.str.87, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @s3fb_check_var._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @s3fb_check_var._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.89, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/video/fbdev/s3fb.c", i32 579, i32 3}
!266 = !{ptr @s3fb_check_var._entry.88, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @s3fb_check_var._entry_ptr.90, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.92, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/video/fbdev/s3fb.c", i32 586, i32 3}
!270 = !{ptr @s3fb_check_var._entry.91, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @s3fb_check_var._entry_ptr.93, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.95, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/video/fbdev/s3fb.c", i32 593, i32 3}
!274 = !{ptr @s3fb_check_var._entry.94, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @s3fb_check_var._entry_ptr.96, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @s3_pci_pm_ops, !277, !"s3_pci_pm_ops", i1 false, i1 false}
!277 = !{!"../drivers/video/fbdev/s3fb.c", i32 1465, i32 32}
!278 = !{ptr @.str.97, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/video/fbdev/s3fb.c", i32 1418, i32 2}
!280 = !{ptr @.str.98, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @s3_pci_suspend._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @s3_pci_suspend._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.99, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/video/fbdev/s3fb.c", i32 1445, i32 2}
!285 = !{ptr @.str.100, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @s3_pci_resume._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @s3_pci_resume._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.101, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/video/fbdev/s3fb.c", i32 1557, i32 2}
!290 = !{ptr @.str.102, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @s3fb_init.__UNIQUE_ID_ddebug337, !289, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!292 = !{ptr @.str.103, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/video/fbdev/s3fb.c", i32 1520, i32 33}
!294 = !{ptr @.str.104, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/video/fbdev/s3fb.c", i32 1524, i32 26}
!296 = !{ptr @.str.105, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/video/fbdev/s3fb.c", i32 1526, i32 26}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{i64 2148996803, i64 2148996808, i64 2148996821, i64 2148996865, i64 2148996899, i64 2148996920}
!308 = !{!"auto-init"}
!309 = !{i8 0, i8 2}
!310 = !{i64 6644543}
!311 = !{i64 6644938}
!312 = !{i64 2156457839}
!313 = !{i64 2154178614}
!314 = !{i64 2156458219}
!315 = !{i64 2154180599}
!316 = !{i64 2156545198}
!317 = !{i64 2156545529}
!318 = !{i64 2156545856}
!319 = !{i64 2156546184}
!320 = !{i64 2156546516}
!321 = !{i64 2156546850}
!322 = !{i64 2156547183}
!323 = !{i64 2156547513}
!324 = !{i64 2156547841}
!325 = !{i64 2156548173}
!326 = !{i64 2156548507}
!327 = !{i64 2156548840}
!328 = !{i64 6644740}
!329 = !{i64 2156492505}
!330 = !{i64 2156492732}
