; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/vt8623fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/vt8623fb.c"
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
%struct.vt8623fb_info = type { ptr, i32, %struct.vgastate, %struct.mutex, i32, [16 x i32] }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__UNIQUE_ID_author305 = internal constant [65 x i8] c"vt8623fb.author=(c) 2006 Ondrej Zajicek <santiago@crfreenet.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [43 x i8] c"vt8623fb.file=drivers/video/fbdev/vt8623fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [21 x i8] c"vt8623fb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [86 x i8] c"vt8623fb.description=fbdev driver for integrated graphics core in VIA VT8623 [CLE266]\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [21 x i8] c"vt8623fb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } { ptr @.str.4, [28 x i8] zeroinitializer }, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.79 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype309 = internal constant [36 x i8] c"vt8623fb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option310 = internal constant [67 x i8] c"vt8623fb.parm=mode_option:Default video mode ('640x480-8@60', etc)\00", section ".modinfo", align 1
@__param_str_mode = internal constant [14 x i8] c"vt8623fb.mode\00", align 1
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.79 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_modetype311 = internal constant [29 x i8] c"vt8623fb.parmtype=mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode312 = internal constant [71 x i8] c"vt8623fb.parm=mode:Default video mode e.g. '648x480-8@60' (deprecated)\00", section ".modinfo", align 1
@__param_str_mtrr = internal constant [14 x i8] c"vt8623fb.mtrr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mtrr = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_mtrr = internal constant %struct.kernel_param { ptr @__param_str_mtrr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @mtrr } }, section "__param", align 4
@__UNIQUE_ID_mtrrtype313 = internal constant [27 x i8] c"vt8623fb.parmtype=mtrr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mtrr314 = internal constant [85 x i8] c"vt8623fb.parm=mtrr:Enable write-combining with MTRR (1=enable, 0=disable, default=1)\00", section ".modinfo", align 1
@vt8623fb_cleanup.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vt8623fb\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vt8623fb_cleanup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/vt8623fb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vt8623fb: cleaning up\0A\00", [41 x i8] zeroinitializer }, align 32
@vt8623fb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @vt8623_devices, ptr @vt8623_pci_probe, ptr @vt8623_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8623_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_vt8623fb__328_929_vt8623fb_init6 = internal global ptr @vt8623fb_init, section ".initcall6.init", align 4
@__exitcall_vt8623fb_cleanup = internal global ptr @vt8623fb_cleanup, section ".exitcall.exit", align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"640x480-8@60\00", [19 x i8] zeroinitializer }, align 32
@vt8623_devices = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12578, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vt8623_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vt8623_pci_suspend, ptr @vt8623_pci_resume, ptr null, ptr @vt8623_pci_resume, ptr @vt8623_pci_suspend, ptr @vt8623_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 666, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ignoring secondary device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vt8623_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr = internal global ptr @vt8623_pci_probe._entry, section ".printk_index", align 4
@vt8623_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&par->open_lock\00", [16 x i8] zeroinitializer }, align 32
@vt8623fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @vt8623fb_open, ptr @vt8623fb_release, ptr null, ptr null, ptr @vt8623fb_check_var, ptr @vt8623fb_set_par, ptr @vt8623fb_setcolreg, ptr null, ptr @vt8623fb_blank, ptr @vt8623fb_pan_display, ptr @vt8623fb_fillrect, ptr @cfb_copyarea, ptr @vt8623fb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svga_get_caps, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 685, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.13 = internal global ptr @vt8623_pci_probe._entry.10, section ".printk_index", align 4
@vt8623_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 691, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot reserve framebuffer region\0A\00", [61 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.16 = internal global ptr @vt8623_pci_probe._entry.14, section ".printk_index", align 4
@vt8623_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 704, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iomap for framebuffer failed\0A\00", [34 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.19 = internal global ptr @vt8623_pci_probe._entry.17, section ".printk_index", align 4
@vt8623_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 711, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iomap for MMIO failed\0A\00", [41 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.22 = internal global ptr @vt8623_pci_probe._entry.20, section ".printk_index", align 4
@vt8623_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.2, i32 731, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"memory size detection failed (%x %x), suppose 16 MB\0A\00", [43 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.25 = internal global ptr @vt8623_pci_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VIA VT8623\00", [21 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str.2, i32 750, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode %s not found\0A\00", [45 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.29 = internal global ptr @vt8623_pci_probe._entry.27, section ".printk_index", align 4
@vt8623_pci_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str.2, i32 756, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot allocate colormap\0A\00", [38 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.32 = internal global ptr @vt8623_pci_probe._entry.30, section ".printk_index", align 4
@vt8623_pci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.6, ptr @.str.2, i32 762, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot register framebuffer\0A\00", [35 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.35 = internal global ptr @vt8623_pci_probe._entry.33, section ".printk_index", align 4
@vt8623_pci_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.6, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016fb%d: %s on %s, %d MB RAM\0A\00", [35 x i8] zeroinitializer }, align 32
@vt8623_pci_probe._entry_ptr.38 = internal global ptr @vt8623_pci_probe._entry.36, section ".printk_index", align 4
@vt8623fb_formats = internal constant { [7 x %struct.svga_fb_format], [140 x i8] } { [7 x %struct.svga_fb_format] [%struct.svga_fb_format { i32 0, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 3, i32 10, i32 3, i32 16, i32 16 }, %struct.svga_fb_format { i32 4, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 16, i32 16 }, %struct.svga_fb_format { i32 4, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 1, i32 2, i32 1, i32 3, i32 16, i32 16 }, %struct.svga_fb_format { i32 8, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 8, i32 8 }, %struct.svga_fb_format { i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 4, i32 4 }, %struct.svga_fb_format { i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2 }, %struct.svga_fb_format { i32 65535, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [140 x i8] zeroinitializer }, align 32
@vt8623fb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fb%d: unsupported mode requested\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vt8623fb_check_var\00", [45 x i8] zeroinitializer }, align 32
@vt8623fb_check_var._entry_ptr = internal global ptr @vt8623fb_check_var._entry, section ".printk_index", align 4
@vt8623fb_check_var._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013fb%d: not enough framebuffer memory (%d kB requested, %d kB available)\0A\00", [54 x i8] zeroinitializer }, align 32
@vt8623fb_check_var._entry_ptr.43 = internal global ptr @vt8623fb_check_var._entry.41, section ".printk_index", align 4
@vt8623fb_check_var._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013fb%d: text framebuffer size too large (%d kB requested, 256 kB possible)\0A\00", [52 x i8] zeroinitializer }, align 32
@vt8623fb_check_var._entry_ptr.46 = internal global ptr @vt8623fb_check_var._entry.44, section ".printk_index", align 4
@vt8623_timing_regs = internal constant { %struct.svga_timing_regs, [48 x i8] } { %struct.svga_timing_regs { ptr @vt8623_h_total_regs, ptr @vt8623_h_display_regs, ptr @vt8623_h_blank_start_regs, ptr @vt8623_h_blank_end_regs, ptr @vt8623_h_sync_start_regs, ptr @vt8623_h_sync_end_regs, ptr @vt8623_v_total_regs, ptr @vt8623_v_display_regs, ptr @vt8623_v_blank_start_regs, ptr @vt8623_v_blank_end_regs, ptr @vt8623_v_sync_start_regs, ptr @vt8623_v_sync_end_regs }, [48 x i8] zeroinitializer }, align 32
@vt8623fb_check_var._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013fb%d: invalid timings requested\0A\00", [61 x i8] zeroinitializer }, align 32
@vt8623fb_check_var._entry_ptr.49 = internal global ptr @vt8623fb_check_var._entry.47, section ".printk_index", align 4
@vt8623_h_total_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 0, i8 0, i8 7 }, %struct.vga_regset { i8 54, i8 3, i8 3 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@vt8623_h_display_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 1, i8 0, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@vt8623_h_blank_start_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 2, i8 0, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@vt8623_h_blank_end_regs = internal constant { [4 x %struct.vga_regset], [20 x i8] } { [4 x %struct.vga_regset] [%struct.vga_regset { i8 3, i8 0, i8 4 }, %struct.vga_regset { i8 5, i8 7, i8 7 }, %struct.vga_regset { i8 51, i8 5, i8 5 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [20 x i8] zeroinitializer }, align 32
@vt8623_h_sync_start_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 4, i8 0, i8 7 }, %struct.vga_regset { i8 51, i8 4, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@vt8623_h_sync_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 5, i8 0, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@vt8623_v_total_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 6, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 0, i8 0 }, %struct.vga_regset { i8 7, i8 5, i8 5 }, %struct.vga_regset { i8 53, i8 0, i8 0 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@vt8623_v_display_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 18, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 1, i8 1 }, %struct.vga_regset { i8 7, i8 6, i8 6 }, %struct.vga_regset { i8 53, i8 2, i8 2 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@vt8623_v_blank_start_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 21, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 3, i8 3 }, %struct.vga_regset { i8 9, i8 5, i8 5 }, %struct.vga_regset { i8 53, i8 3, i8 3 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@vt8623_v_blank_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 22, i8 0, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@vt8623_v_sync_start_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 16, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 2, i8 2 }, %struct.vga_regset { i8 7, i8 7, i8 7 }, %struct.vga_regset { i8 53, i8 1, i8 1 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@vt8623_v_sync_end_regs = internal constant { [2 x %struct.vga_regset], [26 x i8] } { [2 x %struct.vga_regset] [%struct.vga_regset { i8 17, i8 0, i8 3 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [26 x i8] zeroinitializer }, align 32
@vt8623fb_tile_ops = internal global { %struct.fb_tile_ops, [40 x i8] } { %struct.fb_tile_ops { ptr @svga_settile, ptr @svga_tilecopy, ptr @svga_tilefill, ptr @svga_tileblit, ptr @vt8623fb_tilecursor, ptr @svga_get_tilemax }, [40 x i8] zeroinitializer }, align 32
@vt8623_line_compare_regs = internal constant { [6 x %struct.vga_regset], [46 x i8] } { [6 x %struct.vga_regset] [%struct.vga_regset { i8 24, i8 0, i8 7 }, %struct.vga_regset { i8 7, i8 4, i8 4 }, %struct.vga_regset { i8 9, i8 6, i8 6 }, %struct.vga_regset { i8 51, i8 0, i8 2 }, %struct.vga_regset { i8 53, i8 4, i8 4 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [46 x i8] zeroinitializer }, align 32
@vt8623_start_address_regs = internal constant { [5 x %struct.vga_regset], [17 x i8] } { [5 x %struct.vga_regset] [%struct.vga_regset { i8 13, i8 0, i8 7 }, %struct.vga_regset { i8 12, i8 0, i8 7 }, %struct.vga_regset { i8 52, i8 0, i8 7 }, %struct.vga_regset { i8 72, i8 0, i8 1 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [17 x i8] zeroinitializer }, align 32
@vt8623_offset_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 19, i8 0, i8 7 }, %struct.vga_regset { i8 53, i8 5, i8 7 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@vt8623_fetch_count_regs = internal constant { [3 x %struct.vga_regset], [23 x i8] } { [3 x %struct.vga_regset] [%struct.vga_regset { i8 28, i8 0, i8 7 }, %struct.vga_regset { i8 29, i8 0, i8 1 }, %struct.vga_regset { i8 -1, i8 0, i8 0 }], [23 x i8] zeroinitializer }, align 32
@vt8623fb_set_par.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vt8623fb_set_par\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb%d: text mode\0A\00", [47 x i8] zeroinitializer }, align 32
@vt8623fb_set_par.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 4 bit pseudocolor\0A\00", [39 x i8] zeroinitializer }, align 32
@vt8623fb_set_par.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb%d: 4 bit pseudocolor, planar\0A\00", [63 x i8] zeroinitializer }, align 32
@vt8623fb_set_par.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.54, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb%d: 8 bit pseudocolor\0A\00", [39 x i8] zeroinitializer }, align 32
@vt8623fb_set_par.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.55, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 5/6/5 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@vt8623fb_set_par.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.56, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb%d: 8/8/8 truecolor\0A\00", [41 x i8] zeroinitializer }, align 32
@vt8623fb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013vt8623fb: unsupported mode - bug\0A\00", [60 x i8] zeroinitializer }, align 32
@vt8623fb_set_par._entry_ptr = internal global ptr @vt8623fb_set_par._entry, section ".printk_index", align 4
@vt8623_pll = internal constant { %struct.svga_pll, [40 x i8] } { %struct.svga_pll { i16 2, i16 127, i16 2, i16 7, i16 0, i16 3, i32 60000, i32 300000, i32 14318 }, [40 x i8] zeroinitializer }, align 32
@vt8623_set_pixclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013fb%d: cannot set requested pixclock, keeping old value\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vt8623_set_pixclock\00", [44 x i8] zeroinitializer }, align 32
@vt8623_set_pixclock._entry_ptr = internal global ptr @vt8623_set_pixclock._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vt8623fb_blank.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vt8623fb_blank\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb%d: unblank\0A\00", [17 x i8] zeroinitializer }, align 32
@vt8623fb_blank.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fb%d: blank\0A\00", [19 x i8] zeroinitializer }, align 32
@vt8623fb_blank.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fb%d: DPMS standby (hsync off)\0A\00", [32 x i8] zeroinitializer }, align 32
@vt8623fb_blank.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fb%d: DPMS suspend (vsync off)\0A\00", [32 x i8] zeroinitializer }, align 32
@vt8623fb_blank.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.65, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fb%d: DPMS off (no sync)\0A\00", [38 x i8] zeroinitializer }, align 32
@vt8623_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 825, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vt8623_pci_suspend\00", [45 x i8] zeroinitializer }, align 32
@vt8623_pci_suspend._entry_ptr = internal global ptr @vt8623_pci_suspend._entry, section ".printk_index", align 4
@vt8623_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 852, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt8623_pci_resume\00", [46 x i8] zeroinitializer }, align 32
@vt8623_pci_resume._entry_ptr = internal global ptr @vt8623_pci_resume._entry, section ".printk_index", align 4
@vt8623fb_init.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vt8623fb_init\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vt8623fb: initializing\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 97, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 98, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 902, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"vt8623fb_pci_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 890, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 97, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"vt8623_devices\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 883, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"vt8623_pci_pm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 870, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 666, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 676, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"vt8623fb_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 637, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 685, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 691, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 704, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 711, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 731, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 736, i32 23 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 750, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 756, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 762, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 766, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"vt8623fb_formats\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 42, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 328, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 347, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 355, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"vt8623_timing_regs\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 84, i32 38 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 363, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"vt8623_h_total_regs\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 65, i32 32 }
@___asan_gen_.226 = private unnamed_addr constant [22 x i8] c"vt8623_h_display_regs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 66, i32 32 }
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"vt8623_h_blank_start_regs\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 67, i32 32 }
@___asan_gen_.232 = private unnamed_addr constant [24 x i8] c"vt8623_h_blank_end_regs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 68, i32 32 }
@___asan_gen_.235 = private unnamed_addr constant [25 x i8] c"vt8623_h_sync_start_regs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 69, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"vt8623_h_sync_end_regs\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 70, i32 32 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"vt8623_v_total_regs\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 72, i32 32 }
@___asan_gen_.244 = private unnamed_addr constant [22 x i8] c"vt8623_v_display_regs\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 73, i32 32 }
@___asan_gen_.247 = private unnamed_addr constant [26 x i8] c"vt8623_v_blank_start_regs\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 74, i32 32 }
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"vt8623_v_blank_end_regs\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 75, i32 32 }
@___asan_gen_.253 = private unnamed_addr constant [25 x i8] c"vt8623_v_sync_start_regs\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 76, i32 32 }
@___asan_gen_.256 = private unnamed_addr constant [23 x i8] c"vt8623_v_sync_end_regs\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 77, i32 32 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"vt8623fb_tile_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 121, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [25 x i8] c"vt8623_line_compare_regs\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 80, i32 32 }
@___asan_gen_.265 = private unnamed_addr constant [26 x i8] c"vt8623_start_address_regs\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 82, i32 32 }
@___asan_gen_.268 = private unnamed_addr constant [19 x i8] c"vt8623_offset_regs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 79, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant [24 x i8] c"vt8623_fetch_count_regs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 81, i32 32 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 469, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 475, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 481, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 486, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 490, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 494, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 498, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [11 x i8] c"vt8623_pll\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 60, i32 30 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 259, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 579, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 584, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 589, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 594, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 599, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 825, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 852, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [34 x i8] c"../drivers/video/fbdev/vt8623fb.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 921, i32 2 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mode312, ptr @__UNIQUE_ID_mode_option310, ptr @__UNIQUE_ID_mode_optiontype309, ptr @__UNIQUE_ID_modetype311, ptr @__UNIQUE_ID_mtrr314, ptr @__UNIQUE_ID_mtrrtype313, ptr @__exitcall_vt8623fb_cleanup, ptr @__initcall__kmod_vt8623fb__328_929_vt8623fb_init6, ptr @__param_mode, ptr @__param_mode_option, ptr @__param_mtrr, ptr @vt8623_pci_probe._entry, ptr @vt8623_pci_probe._entry.10, ptr @vt8623_pci_probe._entry.14, ptr @vt8623_pci_probe._entry.17, ptr @vt8623_pci_probe._entry.20, ptr @vt8623_pci_probe._entry.23, ptr @vt8623_pci_probe._entry.27, ptr @vt8623_pci_probe._entry.30, ptr @vt8623_pci_probe._entry.33, ptr @vt8623_pci_probe._entry.36, ptr @vt8623_pci_probe._entry_ptr, ptr @vt8623_pci_probe._entry_ptr.13, ptr @vt8623_pci_probe._entry_ptr.16, ptr @vt8623_pci_probe._entry_ptr.19, ptr @vt8623_pci_probe._entry_ptr.22, ptr @vt8623_pci_probe._entry_ptr.25, ptr @vt8623_pci_probe._entry_ptr.29, ptr @vt8623_pci_probe._entry_ptr.32, ptr @vt8623_pci_probe._entry_ptr.35, ptr @vt8623_pci_probe._entry_ptr.38, ptr @vt8623_pci_resume._entry, ptr @vt8623_pci_resume._entry_ptr, ptr @vt8623_pci_suspend._entry, ptr @vt8623_pci_suspend._entry_ptr, ptr @vt8623_set_pixclock._entry, ptr @vt8623_set_pixclock._entry_ptr, ptr @vt8623fb_check_var._entry, ptr @vt8623fb_check_var._entry.41, ptr @vt8623fb_check_var._entry.44, ptr @vt8623fb_check_var._entry.47, ptr @vt8623fb_check_var._entry_ptr, ptr @vt8623fb_check_var._entry_ptr.43, ptr @vt8623fb_check_var._entry_ptr.46, ptr @vt8623fb_check_var._entry_ptr.49, ptr @vt8623fb_cleanup, ptr @vt8623fb_set_par._entry, ptr @vt8623fb_set_par._entry_ptr, ptr @mode_option, ptr @mtrr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vt8623fb_pci_driver, ptr @.str.4, ptr @vt8623_devices, ptr @vt8623_pci_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vt8623_pci_probe.__key, ptr @.str.9, ptr @vt8623fb_ops, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @vt8623fb_formats, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @vt8623_timing_regs, ptr @.str.48, ptr @vt8623_h_total_regs, ptr @vt8623_h_display_regs, ptr @vt8623_h_blank_start_regs, ptr @vt8623_h_blank_end_regs, ptr @vt8623_h_sync_start_regs, ptr @vt8623_h_sync_end_regs, ptr @vt8623_v_total_regs, ptr @vt8623_v_display_regs, ptr @vt8623_v_blank_start_regs, ptr @vt8623_v_blank_end_regs, ptr @vt8623_v_sync_start_regs, ptr @vt8623_v_sync_end_regs, ptr @vt8623fb_tile_ops, ptr @vt8623_line_compare_regs, ptr @vt8623_start_address_regs, ptr @vt8623_offset_regs, ptr @vt8623_fetch_count_regs, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @vt8623_pll, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_formats to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_check_var._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_check_var._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_timing_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_check_var._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_h_total_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_h_display_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_h_blank_start_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_h_blank_end_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_h_sync_start_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_h_sync_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_v_total_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_v_display_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_v_blank_start_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_v_blank_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_v_sync_start_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_v_sync_end_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_tile_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_line_compare_regs to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_start_address_regs to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_offset_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_fetch_count_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623fb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pll to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_set_pixclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8623_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt8623fb_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_cleanup.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_cleanup, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !222

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_cleanup.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pci_unregister_driver(ptr noundef nonnull @vt8623fb_pci_driver) #7
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
define internal i32 @vt8623fb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #7
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then3

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %2, ptr @mode_option, align 4
  br label %do.body

do.body:                                          ; preds = %if.then3, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_init.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_init, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !222

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_init.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.71) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call11 = call i32 @__pci_register_driver(ptr noundef nonnull @vt8623fb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %flags.i = alloca i16, align 2
  %bus_reg = alloca %struct.pci_bus_region, align 4
  %vga_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bus_reg) #7
  %0 = ptrtoint ptr %bus_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_reg, align 4, !annotation !223
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %bus_reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vga_res) #7
  %3 = getelementptr inbounds %struct.resource, ptr %vga_res, i32 0, i32 3
  %4 = call ptr @memset(ptr %vga_res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %flags.i) #7
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %flags.i, align 2, !annotation !223
  %call.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %flags.i) #7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = and i16 %7, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @framebuffer_alloc(i32 noundef 208, ptr noundef %dev1) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %par7 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 30
  %9 = ptrtoint ptr %par7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par7, align 4
  %open_lock = getelementptr inbounds %struct.vt8623fb_info, ptr %10, i32 0, i32 3
  call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @vt8623_pci_probe.__key) #7
  %flags = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8256, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 20
  %12 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vt8623fb_ops, ptr %fbops, align 4
  %call11 = call i32 @pci_enable_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #10
  br label %err_enable_device

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %device23 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %15 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15) #10
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
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
  %arrayidx36 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx36, align 8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 10
  %27 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mmio_start, align 4
  %end41 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %28 = ptrtoint ptr %end41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp42 = icmp eq i32 %29, 0
  br i1 %cmp42, label %cond.end.cond.end53_crit_edge, label %cond.false44

cond.end.cond.end53_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end53

cond.false44:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 8
  %sub51 = add i32 %29, 1
  %add52 = sub i32 %sub51, %31
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false44, %cond.end.cond.end53_crit_edge
  %cond54 = phi i32 [ %add52, %cond.false44 ], [ 0, %cond.end.cond.end53_crit_edge ]
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 11
  %32 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond54, ptr %mmio_len, align 4
  %call56 = call ptr @pci_iomap_wc(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 25
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call56, ptr %33, align 4
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then58, label %if.end63

if.then58:                                        ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #9
  %device62 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %35 = ptrtoint ptr %device62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.18) #10
  br label %err_iomap_1

if.end63:                                         ; preds = %cond.end53
  %call64 = call ptr @pci_iomap(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #7
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call64, ptr %10, align 4
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %device71 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %38 = ptrtoint ptr %device71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.21) #10
  br label %err_iomap_2

if.end72:                                         ; preds = %if.end63
  %40 = ptrtoint ptr %bus_reg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bus_reg, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 65536, ptr %1, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %3, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %44, ptr noundef nonnull %vga_res, ptr noundef nonnull %bus_reg) #7
  %45 = ptrtoint ptr %vga_res to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vga_res, align 4
  %47 = inttoptr i32 %46 to ptr
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %10, i32 0, i32 2
  %48 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %state, align 4
  %call79 = call fastcc zeroext i8 @vga_rseq(ptr noundef %47, i8 noundef zeroext 52)
  %conv = zext i8 %call79 to i32
  %add80 = add nuw nsw i32 %conv, 1
  %49 = lshr i32 %add80, 1
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state, align 4
  %call83 = call fastcc zeroext i8 @vga_rseq(ptr noundef %51, i8 noundef zeroext 57)
  %conv84 = zext i8 %call83 to i32
  %shl = shl nuw nsw i32 %conv84, 2
  %52 = add i8 %call79, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %52)
  %53 = icmp ult i8 %52, 98
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %shl)
  %cmp90 = icmp eq i32 %49, %shl
  %or.cond248 = select i1 %53, i1 %cmp90, i1 false
  br i1 %or.cond248, label %if.then92, label %do.end96

if.then92:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %shl93 = shl nuw nsw i32 %49, 20
  br label %if.end99

do.end96:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %device97 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %54 = ptrtoint ptr %device97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.24, i32 noundef %49, i32 noundef %shl) #10
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %if.then92
  %.sink = phi i32 [ %shl93, %if.then92 ], [ 16777216, %do.end96 ]
  %56 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 26
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %56, align 4
  %58 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %smem_len, align 4
  %59 = call ptr @memcpy(ptr %fix, ptr @.str.26, i32 11)
  %type = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 3
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %type, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 5
  %61 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %visual, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 7
  %62 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %ypanstep, align 2
  %accel = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7, i32 12
  %63 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %accel, align 4
  %pseudo_palette = getelementptr inbounds %struct.vt8623fb_info, ptr %10, i32 0, i32 5
  %pseudo_palette111 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 27
  %64 = ptrtoint ptr %pseudo_palette111 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pseudo_palette, ptr %pseudo_palette111, align 4
  call void @kernel_param_lock(ptr noundef null) #7
  %var = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6
  %65 = load ptr, ptr @mode_option, align 4
  %call112 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call3, ptr noundef %65, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #7
  call void @kernel_param_unlock(ptr noundef null) #7
  %call112.off = add i32 %call112, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call112.off)
  %switch = icmp ult i32 %call112.off, 2
  br i1 %switch, label %if.end122, label %if.then117

if.then117:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %device121 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %66 = ptrtoint ptr %device121 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device121, align 4
  %68 = load ptr, ptr @mode_option, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.28, ptr noundef %68) #10
  br label %err_find_mode

if.end122:                                        ; preds = %if.end99
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 12
  %call123 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end129, label %if.end131

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %device130 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %69 = ptrtoint ptr %device130 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device130, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.31) #10
  br label %err_find_mode

if.end131:                                        ; preds = %if.end122
  %call132 = call i32 @register_framebuffer(ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %do.end138, label %do.end143

do.end138:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %device139 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 21
  %71 = ptrtoint ptr %device139 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device139, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.34) #10
  call void @fb_dealloc_cmap(ptr noundef %cmap) #7
  br label %err_find_mode

do.end143:                                        ; preds = %if.end131
  %node = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 1
  %73 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %node, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %75 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end143.pci_name.exit_crit_edge

do.end143.pci_name.exit_crit_edge:                ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end143.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %78, %if.end.i.i ], [ %76, %do.end143.pci_name.exit_crit_edge ]
  %79 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %smem_len, align 4
  %shr150 = lshr i32 %80, 20
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %74, ptr noundef %fix, ptr noundef %retval.0.i.i, i32 noundef %shr150) #10
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %81 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %82 = load i32, ptr @mtrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool152.not = icmp eq i32 %82, 0
  br i1 %tobool152.not, label %pci_name.exit.cleanup_crit_edge, label %if.then153

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then153:                                       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wc_cookie = getelementptr inbounds %struct.vt8623fb_info, ptr %10, i32 0, i32 1
  %83 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %wc_cookie, align 4
  br label %cleanup

err_find_mode:                                    ; preds = %do.end138, %do.end129, %if.then117
  %rc.0 = phi i32 [ %call123, %do.end129 ], [ %call132, %do.end138 ], [ -22, %if.then117 ]
  %84 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %10, align 4
  call void @pci_iounmap(ptr noundef %dev, ptr noundef %85) #7
  br label %err_iomap_2

err_iomap_2:                                      ; preds = %err_find_mode, %if.then67
  %rc.1 = phi i32 [ %rc.0, %err_find_mode ], [ -12, %if.then67 ]
  %86 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %33, align 4
  call void @pci_iounmap(ptr noundef %dev, ptr noundef %87) #7
  br label %err_iomap_1

err_iomap_1:                                      ; preds = %err_iomap_2, %if.then58
  %rc.2 = phi i32 [ %rc.1, %err_iomap_2 ], [ -12, %if.then58 ]
  call void @pci_release_regions(ptr noundef %dev) #7
  br label %err_enable_device

err_enable_device:                                ; preds = %err_iomap_1, %do.end22, %do.end15
  %rc.3 = phi i32 [ %call11, %do.end15 ], [ %call17, %do.end22 ], [ %rc.2, %err_iomap_1 ]
  call void @framebuffer_release(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %err_enable_device, %if.then153, %pci_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.3, %err_enable_device ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then153 ], [ 0, %pci_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vga_res) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bus_reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8623_pci_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #7
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #7
  %4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %6) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %8) #7
  tail call void @pci_release_regions(ptr noundef %dev) #7
  tail call void @framebuffer_release(ptr noundef nonnull %1) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @vga_rseq(ptr noundef %regbase, i8 noundef zeroext %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i, label %if.else.i5, label %if.then.i4

if.then.i4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %regbase, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %reg) #7, !srcloc !224
  %add.ptr.i.i3 = getelementptr i8, ptr %regbase, i32 965
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_r.exit

if.else.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %reg) #7, !srcloc !224
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_r.exit

vga_r.exit:                                       ; preds = %if.else.i5, %if.then.i4
  %retval.0.i = phi i8 [ %0, %if.then.i4 ], [ %1, %if.else.i5 ]
  ret i8 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_unlock(ptr noundef) local_unnamed_addr #2

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
define internal i32 @vt8623fb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #7
  %ref_count = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %6 = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 36)
  store ptr %5, ptr %state, align 4
  %flags = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31, ptr %flags, align 4
  %num_crtc = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 162, ptr %num_crtc, align 4
  %num_seq = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2, i32 8
  %10 = ptrtoint ptr %num_seq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 80, ptr %num_seq, align 4
  %call = tail call i32 @save_vga(ptr noundef %state) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %ref_count, align 4
  tail call void @mutex_unlock(ptr noundef %open_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623fb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #7
  %ref_count = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end6_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %call = tail call i32 @restore_vga(ptr noundef %state) #7
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
  tail call void @mutex_unlock(ptr noundef %open_lock) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @svga_match_format(ptr noundef nonnull @vt8623fb_formats, ptr noundef %var, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %1) #10
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %yres_virtual, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %xresstep = getelementptr [7 x %struct.svga_fb_format], ptr @vt8623fb_formats, i32 0, i32 %call, i32 10
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
  br i1 %cmp17, label %do.end21, label %if.end28

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %node23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %node23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node23, align 4
  %shr24 = ashr i32 %mul16, 10
  %shr26 = lshr i32 %21, 10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %23, i32 noundef %shr24, i32 noundef %shr26) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp30 = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %mul16)
  %cmp31 = icmp sgt i32 %mul16, 262144
  %or.cond = select i1 %cmp30, i1 %cmp31, i1 false
  %node37 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %24 = ptrtoint ptr %node37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node37, align 4
  br i1 %or.cond, label %do.end35, label %if.end40

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %shr3889 = lshr i32 %mul16, 10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %25, i32 noundef %shr3889) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %call42 = tail call i32 @svga_check_timings(ptr noundef nonnull @vt8623_timing_regs, ptr noundef %var, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %if.end51

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %node37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node37, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %27) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %28 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vmode, align 4
  %and52 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool.not = icmp eq i32 %and52, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end47, %do.end35, %do.end21, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end21 ], [ -22, %do.end35 ], [ %call42, %do.end47 ], [ %., %if.end51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623fb_set_par(ptr noundef %info) #3 align 64 {
entry:
  %m.i = alloca i16, align 2
  %n.i = alloca i16, align 2
  %r.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
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
  %ypanstep24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ypanstep24 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %ypanstep24, align 2
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %6, %3
  %div355 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %7 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div355, ptr %line_length, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, -131073
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp4 = icmp eq i32 %3, 4
  %cond = select i1 %cmp4, i32 128, i32 -1
  %div9356 = lshr i32 %mul, 6
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %mul11 = mul i32 %11, %3
  %div12357 = lshr i32 %mul11, 7
  %add = add nuw nsw i32 %div12357, 4
  %div17358 = lshr i32 %11, 3
  %add18 = add nuw nsw i32 %div17358, 8
  %fetch_value.0 = select i1 %cmp4, i32 %add18, i32 %add
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres_virtual, align 4
  %mul22 = mul i32 %13, %div355
  br label %if.end46

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ypanstep24 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %ypanstep24, align 2
  %line_length26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %15 = ptrtoint ptr %line_length26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %line_length26, align 4
  %flags27 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags27, align 4
  %or = or i32 %17, 131072
  store i32 %or, ptr %flags27, align 4
  %xres_virtual34 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %xres_virtual34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xres_virtual34, align 4
  %div35352 = lshr i32 %19, 4
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %div38353 = lshr i32 %21, 3
  %add39 = add nuw nsw i32 %div38353, 8
  %yres_virtual43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %yres_virtual43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres_virtual43, align 4
  %mul44 = mul i32 %23, %19
  %div45354 = lshr i32 %mul44, 6
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then
  %.sink776 = phi ptr [ @vt8623fb_tile_ops, %if.else ], [ null, %if.then ]
  %cond.sink = phi i32 [ 128, %if.else ], [ %cond, %if.then ]
  %.sink = phi i32 [ 32768, %if.else ], [ -1, %if.then ]
  %screen_size.0 = phi i32 [ %div45354, %if.else ], [ %mul22, %if.then ]
  %fetch_value.1 = phi i32 [ %add39, %if.else ], [ %fetch_value.0, %if.then ]
  %offset_value.0 = phi i32 [ %div35352, %if.else ], [ %div9356, %if.then ]
  %24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.sink776, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 7
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.sink, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %30 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %yoffset, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %32 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %activate, align 4
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 16) #7, !srcloc !224
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %34, i32 965
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i

if.else.i5.i.i:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 16) #7, !srcloc !224
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %35, %if.then.i4.i.i ], [ %36, %if.else.i5.i.i ]
  %or.i = or i8 %retval.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 16) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %34, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %or.i) #7, !srcloc !224
  br label %svga_wseq_mask.exit

if.else.i5.i14.i:                                 ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 16) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #7, !srcloc !224
  br label %svga_wseq_mask.exit

svga_wseq_mask.exit:                              ; preds = %if.else.i5.i14.i, %if.then.i4.i13.i
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i374 = icmp eq ptr %38, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i374, label %if.else.i5.i.i378, label %if.then.i4.i.i377

if.then.i4.i.i377:                                ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i375 = getelementptr i8, ptr %38, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i375, i8 17) #7, !srcloc !224
  %add.ptr.i.i3.i.i376 = getelementptr i8, ptr %38, i32 981
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i376) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i

if.else.i5.i.i378:                                ; preds = %svga_wseq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i378, %if.then.i4.i.i377
  %retval.0.i.i.i379 = phi i8 [ %39, %if.then.i4.i.i377 ], [ %40, %if.else.i5.i.i378 ]
  %and4.i380 = and i8 %retval.0.i.i.i379, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i374, label %if.else.i5.i14.i384, label %if.then.i4.i13.i383

if.then.i4.i13.i383:                              ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i381 = getelementptr i8, ptr %38, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i381, i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i382 = getelementptr i8, ptr %38, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i382, i8 %and4.i380) #7, !srcloc !224
  br label %svga_wcrt_mask.exit

if.else.i5.i14.i384:                              ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i380) #7, !srcloc !224
  br label %svga_wcrt_mask.exit

svga_wcrt_mask.exit:                              ; preds = %if.else.i5.i14.i384, %if.then.i4.i13.i383
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i385 = icmp eq ptr %42, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i385, label %if.else.i5.i.i389, label %if.then.i4.i.i388

if.then.i4.i.i388:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i386 = getelementptr i8, ptr %42, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i386, i8 71) #7, !srcloc !224
  %add.ptr.i.i3.i.i387 = getelementptr i8, ptr %42, i32 981
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i387) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i392

if.else.i5.i.i389:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 71) #7, !srcloc !224
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i392

vga_rcrt.exit.i392:                               ; preds = %if.else.i5.i.i389, %if.then.i4.i.i388
  %retval.0.i.i.i390 = phi i8 [ %43, %if.then.i4.i.i388 ], [ %44, %if.else.i5.i.i389 ]
  %and4.i391 = and i8 %retval.0.i.i.i390, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i385, label %if.else.i5.i14.i396, label %if.then.i4.i13.i395

if.then.i4.i13.i395:                              ; preds = %vga_rcrt.exit.i392
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i393 = getelementptr i8, ptr %42, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i393, i8 71) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i394 = getelementptr i8, ptr %42, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i394, i8 %and4.i391) #7, !srcloc !224
  br label %svga_wcrt_mask.exit397

if.else.i5.i14.i396:                              ; preds = %vga_rcrt.exit.i392
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 71) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i391) #7, !srcloc !224
  br label %svga_wcrt_mask.exit397

svga_wcrt_mask.exit397:                           ; preds = %if.else.i5.i14.i396, %if.then.i4.i13.i395
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i398 = icmp eq ptr %46, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i398, label %if.else.i5.i.i402, label %if.then.i4.i.i401

if.then.i4.i.i401:                                ; preds = %svga_wcrt_mask.exit397
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i399 = getelementptr i8, ptr %46, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i399, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i400 = getelementptr i8, ptr %46, i32 965
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i400) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i406

if.else.i5.i.i402:                                ; preds = %svga_wcrt_mask.exit397
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i406

vga_rseq.exit.i406:                               ; preds = %if.else.i5.i.i402, %if.then.i4.i.i401
  %retval.0.i.i.i403 = phi i8 [ %47, %if.then.i4.i.i401 ], [ %48, %if.else.i5.i.i402 ]
  %or.i405 = or i8 %retval.0.i.i.i403, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i398, label %if.else.i5.i14.i410, label %if.then.i4.i13.i409

if.then.i4.i13.i409:                              ; preds = %vga_rseq.exit.i406
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i407 = getelementptr i8, ptr %46, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i407, i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i408 = getelementptr i8, ptr %46, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i408, i8 %or.i405) #7, !srcloc !224
  br label %svga_wseq_mask.exit411

if.else.i5.i14.i410:                              ; preds = %vga_rseq.exit.i406
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i405) #7, !srcloc !224
  br label %svga_wseq_mask.exit411

svga_wseq_mask.exit411:                           ; preds = %if.else.i5.i14.i410, %if.then.i4.i13.i409
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i412 = icmp eq ptr %50, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i412, label %if.else.i5.i.i416, label %if.then.i4.i.i415

if.then.i4.i.i415:                                ; preds = %svga_wseq_mask.exit411
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i413 = getelementptr i8, ptr %50, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i413, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i414 = getelementptr i8, ptr %50, i32 981
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i414) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i420

if.else.i5.i.i416:                                ; preds = %svga_wseq_mask.exit411
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i420

vga_rcrt.exit.i420:                               ; preds = %if.else.i5.i.i416, %if.then.i4.i.i415
  %retval.0.i.i.i417 = phi i8 [ %51, %if.then.i4.i.i415 ], [ %52, %if.else.i5.i.i416 ]
  %or.i419 = or i8 %retval.0.i.i.i417, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i412, label %if.else.i5.i14.i424, label %if.then.i4.i13.i423

if.then.i4.i13.i423:                              ; preds = %vga_rcrt.exit.i420
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i421 = getelementptr i8, ptr %50, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i421, i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i422 = getelementptr i8, ptr %50, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i422, i8 %or.i419) #7, !srcloc !224
  br label %svga_wcrt_mask.exit425

if.else.i5.i14.i424:                              ; preds = %vga_rcrt.exit.i420
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i419) #7, !srcloc !224
  br label %svga_wcrt_mask.exit425

svga_wcrt_mask.exit425:                           ; preds = %if.else.i5.i14.i424, %if.then.i4.i13.i423
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i426 = icmp eq ptr %54, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i426, label %if.else.i5.i.i430, label %if.then.i4.i.i429

if.then.i4.i.i429:                                ; preds = %svga_wcrt_mask.exit425
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i427 = getelementptr i8, ptr %54, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i427, i8 23) #7, !srcloc !224
  %add.ptr.i.i3.i.i428 = getelementptr i8, ptr %54, i32 981
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i428) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i433

if.else.i5.i.i430:                                ; preds = %svga_wcrt_mask.exit425
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #7, !srcloc !224
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i433

vga_rcrt.exit.i433:                               ; preds = %if.else.i5.i.i430, %if.then.i4.i.i429
  %retval.0.i.i.i431 = phi i8 [ %55, %if.then.i4.i.i429 ], [ %56, %if.else.i5.i.i430 ]
  %and4.i432 = and i8 %retval.0.i.i.i431, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i426, label %if.else.i5.i14.i437, label %if.then.i4.i13.i436

if.then.i4.i13.i436:                              ; preds = %vga_rcrt.exit.i433
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i434 = getelementptr i8, ptr %54, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i434, i8 23) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i435 = getelementptr i8, ptr %54, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i435, i8 %and4.i432) #7, !srcloc !224
  br label %svga_wcrt_mask.exit438

if.else.i5.i14.i437:                              ; preds = %vga_rcrt.exit.i433
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i432) #7, !srcloc !224
  br label %svga_wcrt_mask.exit438

svga_wcrt_mask.exit438:                           ; preds = %if.else.i5.i14.i437, %if.then.i4.i13.i436
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_gfx_regs(ptr noundef %58) #7
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_atc_regs(ptr noundef %60) #7
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_seq_regs(ptr noundef %62) #7
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state, align 4
  tail call void @svga_set_default_crt_regs(ptr noundef %64) #7
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %66, ptr noundef nonnull @vt8623_line_compare_regs, i32 noundef -1) #7
  %67 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %68, ptr noundef nonnull @vt8623_start_address_regs, i32 noundef 0) #7
  %69 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %70, ptr noundef nonnull @vt8623_offset_regs, i32 noundef %offset_value.0) #7
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state, align 4
  tail call void @svga_wseq_multi(ptr noundef %72, ptr noundef nonnull @vt8623_fetch_count_regs, i32 noundef %fetch_value.1) #7
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i439 = icmp eq ptr %74, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i439, label %if.else.i5.i.i443, label %if.then.i4.i.i442

if.then.i4.i.i442:                                ; preds = %svga_wcrt_mask.exit438
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i440 = getelementptr i8, ptr %74, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i440, i8 3) #7, !srcloc !224
  %add.ptr.i.i3.i.i441 = getelementptr i8, ptr %74, i32 981
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i441) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i446

if.else.i5.i.i443:                                ; preds = %svga_wcrt_mask.exit438
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 3) #7, !srcloc !224
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i446

vga_rcrt.exit.i446:                               ; preds = %if.else.i5.i.i443, %if.then.i4.i.i442
  %retval.0.i.i.i444 = phi i8 [ %75, %if.then.i4.i.i442 ], [ %76, %if.else.i5.i.i443 ]
  %and4.i445 = and i8 %retval.0.i.i.i444, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i439, label %if.else.i5.i14.i450, label %if.then.i4.i13.i449

if.then.i4.i13.i449:                              ; preds = %vga_rcrt.exit.i446
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i447 = getelementptr i8, ptr %74, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i447, i8 3) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i448 = getelementptr i8, ptr %74, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i448, i8 %and4.i445) #7, !srcloc !224
  br label %svga_wcrt_mask.exit451

if.else.i5.i14.i450:                              ; preds = %vga_rcrt.exit.i446
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 3) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i445) #7, !srcloc !224
  br label %svga_wcrt_mask.exit451

svga_wcrt_mask.exit451:                           ; preds = %if.else.i5.i14.i450, %if.then.i4.i13.i449
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i452 = icmp eq ptr %78, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i452, label %if.else.i5.i.i456, label %if.then.i4.i.i455

if.then.i4.i.i455:                                ; preds = %svga_wcrt_mask.exit451
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i453 = getelementptr i8, ptr %78, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i453, i8 5) #7, !srcloc !224
  %add.ptr.i.i3.i.i454 = getelementptr i8, ptr %78, i32 981
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i454) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i459

if.else.i5.i.i456:                                ; preds = %svga_wcrt_mask.exit451
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 5) #7, !srcloc !224
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i459

vga_rcrt.exit.i459:                               ; preds = %if.else.i5.i.i456, %if.then.i4.i.i455
  %retval.0.i.i.i457 = phi i8 [ %79, %if.then.i4.i.i455 ], [ %80, %if.else.i5.i.i456 ]
  %and4.i458 = and i8 %retval.0.i.i.i457, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i452, label %if.else.i5.i14.i463, label %if.then.i4.i13.i462

if.then.i4.i13.i462:                              ; preds = %vga_rcrt.exit.i459
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i460 = getelementptr i8, ptr %78, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i460, i8 5) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i461 = getelementptr i8, ptr %78, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i461, i8 %and4.i458) #7, !srcloc !224
  br label %svga_wcrt_mask.exit464

if.else.i5.i14.i463:                              ; preds = %vga_rcrt.exit.i459
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 5) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i458) #7, !srcloc !224
  br label %svga_wcrt_mask.exit464

svga_wcrt_mask.exit464:                           ; preds = %if.else.i5.i14.i463, %if.then.i4.i13.i462
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %81 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vmode, align 4
  %and81 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool.not = icmp eq i32 %and81, 0
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i479 = icmp eq ptr %84, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not, label %if.else85, label %if.then82

if.then82:                                        ; preds = %svga_wcrt_mask.exit464
  br i1 %tobool.not.i.i.i479, label %if.else.i5.i.i469, label %if.then.i4.i.i468

if.then.i4.i.i468:                                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i466 = getelementptr i8, ptr %84, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i466, i8 9) #7, !srcloc !224
  %add.ptr.i.i3.i.i467 = getelementptr i8, ptr %84, i32 981
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i467) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i473

if.else.i5.i.i469:                                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #7, !srcloc !224
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i473

vga_rcrt.exit.i473:                               ; preds = %if.else.i5.i.i469, %if.then.i4.i.i468
  %retval.0.i.i.i470 = phi i8 [ %85, %if.then.i4.i.i468 ], [ %86, %if.else.i5.i.i469 ]
  %or.i472 = or i8 %retval.0.i.i.i470, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i479, label %if.else.i5.i14.i477, label %if.then.i4.i13.i476

if.then.i4.i13.i476:                              ; preds = %vga_rcrt.exit.i473
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i474 = getelementptr i8, ptr %84, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i474, i8 9) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i475 = getelementptr i8, ptr %84, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i475, i8 %or.i472) #7, !srcloc !224
  br label %if.end88

if.else.i5.i14.i477:                              ; preds = %vga_rcrt.exit.i473
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i472) #7, !srcloc !224
  br label %if.end88

if.else85:                                        ; preds = %svga_wcrt_mask.exit464
  br i1 %tobool.not.i.i.i479, label %if.else.i5.i.i483, label %if.then.i4.i.i482

if.then.i4.i.i482:                                ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i480 = getelementptr i8, ptr %84, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i480, i8 9) #7, !srcloc !224
  %add.ptr.i.i3.i.i481 = getelementptr i8, ptr %84, i32 981
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i481) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i486

if.else.i5.i.i483:                                ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #7, !srcloc !224
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i486

vga_rcrt.exit.i486:                               ; preds = %if.else.i5.i.i483, %if.then.i4.i.i482
  %retval.0.i.i.i484 = phi i8 [ %87, %if.then.i4.i.i482 ], [ %88, %if.else.i5.i.i483 ]
  %and4.i485 = and i8 %retval.0.i.i.i484, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i479, label %if.else.i5.i14.i490, label %if.then.i4.i13.i489

if.then.i4.i13.i489:                              ; preds = %vga_rcrt.exit.i486
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i487 = getelementptr i8, ptr %84, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i487, i8 9) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i488 = getelementptr i8, ptr %84, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i488, i8 %and4.i485) #7, !srcloc !224
  br label %if.end88

if.else.i5.i14.i490:                              ; preds = %vga_rcrt.exit.i486
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i485) #7, !srcloc !224
  br label %if.end88

if.end88:                                         ; preds = %if.else.i5.i14.i490, %if.then.i4.i13.i489, %if.else.i5.i14.i477, %if.then.i4.i13.i476
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i492 = icmp eq ptr %90, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i492, label %if.else.i5.i.i496, label %if.then.i4.i.i495

if.then.i4.i.i495:                                ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i493 = getelementptr i8, ptr %90, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i493, i8 30) #7, !srcloc !224
  %add.ptr.i.i3.i.i494 = getelementptr i8, ptr %90, i32 965
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i494) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i500

if.else.i5.i.i496:                                ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #7, !srcloc !224
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i500

vga_rseq.exit.i500:                               ; preds = %if.else.i5.i.i496, %if.then.i4.i.i495
  %retval.0.i.i.i497 = phi i8 [ %91, %if.then.i4.i.i495 ], [ %92, %if.else.i5.i.i496 ]
  %or.i499 = or i8 %retval.0.i.i.i497, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i492, label %if.else.i5.i14.i504, label %if.then.i4.i13.i503

if.then.i4.i13.i503:                              ; preds = %vga_rseq.exit.i500
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i501 = getelementptr i8, ptr %90, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i501, i8 30) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i502 = getelementptr i8, ptr %90, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i502, i8 %or.i499) #7, !srcloc !224
  br label %svga_wseq_mask.exit505

if.else.i5.i14.i504:                              ; preds = %vga_rseq.exit.i500
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i499) #7, !srcloc !224
  br label %svga_wseq_mask.exit505

svga_wseq_mask.exit505:                           ; preds = %if.else.i5.i14.i504, %if.then.i4.i13.i503
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i506 = icmp eq ptr %94, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i506, label %if.else.i5.i.i510, label %if.then.i4.i.i509

if.then.i4.i.i509:                                ; preds = %svga_wseq_mask.exit505
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i507 = getelementptr i8, ptr %94, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i507, i8 42) #7, !srcloc !224
  %add.ptr.i.i3.i.i508 = getelementptr i8, ptr %94, i32 965
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i508) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i514

if.else.i5.i.i510:                                ; preds = %svga_wseq_mask.exit505
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #7, !srcloc !224
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i514

vga_rseq.exit.i514:                               ; preds = %if.else.i5.i.i510, %if.then.i4.i.i509
  %retval.0.i.i.i511 = phi i8 [ %95, %if.then.i4.i.i509 ], [ %96, %if.else.i5.i.i510 ]
  %or.i513 = or i8 %retval.0.i.i.i511, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i506, label %if.else.i5.i14.i518, label %if.then.i4.i13.i517

if.then.i4.i13.i517:                              ; preds = %vga_rseq.exit.i514
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i515 = getelementptr i8, ptr %94, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i515, i8 42) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i516 = getelementptr i8, ptr %94, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i516, i8 %or.i513) #7, !srcloc !224
  br label %svga_wseq_mask.exit519

if.else.i5.i14.i518:                              ; preds = %vga_rseq.exit.i514
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i513) #7, !srcloc !224
  br label %svga_wseq_mask.exit519

svga_wseq_mask.exit519:                           ; preds = %if.else.i5.i14.i518, %if.then.i4.i13.i517
  %97 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i520 = icmp eq ptr %98, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i520, label %if.else.i5.i.i524, label %if.then.i4.i.i523

if.then.i4.i.i523:                                ; preds = %svga_wseq_mask.exit519
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i521 = getelementptr i8, ptr %98, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i521, i8 22) #7, !srcloc !224
  %add.ptr.i.i3.i.i522 = getelementptr i8, ptr %98, i32 965
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i522) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i528

if.else.i5.i.i524:                                ; preds = %svga_wseq_mask.exit519
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #7, !srcloc !224
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i528

vga_rseq.exit.i528:                               ; preds = %if.else.i5.i.i524, %if.then.i4.i.i523
  %retval.0.i.i.i525 = phi i8 [ %99, %if.then.i4.i.i523 ], [ %100, %if.else.i5.i.i524 ]
  %and4.i526 = and i8 %retval.0.i.i.i525, 64
  %or.i527 = or i8 %and4.i526, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i520, label %if.else.i5.i14.i532, label %if.then.i4.i13.i531

if.then.i4.i13.i531:                              ; preds = %vga_rseq.exit.i528
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i529 = getelementptr i8, ptr %98, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i529, i8 22) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i530 = getelementptr i8, ptr %98, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i530, i8 %or.i527) #7, !srcloc !224
  br label %svga_wseq_mask.exit533

if.else.i5.i14.i532:                              ; preds = %vga_rseq.exit.i528
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i527) #7, !srcloc !224
  br label %svga_wseq_mask.exit533

svga_wseq_mask.exit533:                           ; preds = %if.else.i5.i14.i532, %if.then.i4.i13.i531
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 4
  %tobool.not.i.i = icmp eq ptr %102, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %svga_wseq_mask.exit533
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %102, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 23) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i = getelementptr i8, ptr %102, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 31) #7, !srcloc !224
  br label %vga_wseq.exit

if.else.i5.i:                                     ; preds = %svga_wseq_mask.exit533
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 23) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 31) #7, !srcloc !224
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %103 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %state, align 4
  %tobool.not.i.i534 = icmp eq ptr %104, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i534, label %if.else.i5.i538, label %if.then.i4.i537

if.then.i4.i537:                                  ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i535 = getelementptr i8, ptr %104, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i535, i8 24) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i536 = getelementptr i8, ptr %104, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i536, i8 78) #7, !srcloc !224
  br label %vga_wseq.exit539

if.else.i5.i538:                                  ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 78) #7, !srcloc !224
  br label %vga_wseq.exit539

vga_wseq.exit539:                                 ; preds = %if.else.i5.i538, %if.then.i4.i537
  %105 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i540 = icmp eq ptr %106, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i540, label %if.else.i5.i.i544, label %if.then.i4.i.i543

if.then.i4.i.i543:                                ; preds = %vga_wseq.exit539
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i541 = getelementptr i8, ptr %106, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i541, i8 26) #7, !srcloc !224
  %add.ptr.i.i3.i.i542 = getelementptr i8, ptr %106, i32 965
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i542) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i548

if.else.i5.i.i544:                                ; preds = %vga_wseq.exit539
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #7, !srcloc !224
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i548

vga_rseq.exit.i548:                               ; preds = %if.else.i5.i.i544, %if.then.i4.i.i543
  %retval.0.i.i.i545 = phi i8 [ %107, %if.then.i4.i.i543 ], [ %108, %if.else.i5.i.i544 ]
  %or.i547 = or i8 %retval.0.i.i.i545, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i540, label %if.else.i5.i14.i552, label %if.then.i4.i13.i551

if.then.i4.i13.i551:                              ; preds = %vga_rseq.exit.i548
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i549 = getelementptr i8, ptr %106, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i549, i8 26) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i550 = getelementptr i8, ptr %106, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i550, i8 %or.i547) #7, !srcloc !224
  br label %svga_wseq_mask.exit553

if.else.i5.i14.i552:                              ; preds = %vga_rseq.exit.i548
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i547) #7, !srcloc !224
  br label %svga_wseq_mask.exit553

svga_wseq_mask.exit553:                           ; preds = %if.else.i5.i14.i552, %if.then.i4.i13.i551
  %109 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %state, align 4
  %tobool.not.i.i554 = icmp eq ptr %110, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i554, label %if.else.i5.i558, label %if.then.i4.i557

if.then.i4.i557:                                  ; preds = %svga_wseq_mask.exit553
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i555 = getelementptr i8, ptr %110, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i555, i8 50) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i556 = getelementptr i8, ptr %110, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i556, i8 0) #7, !srcloc !224
  br label %vga_wcrt.exit

if.else.i5.i558:                                  ; preds = %svga_wseq_mask.exit553
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 50) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #7, !srcloc !224
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i558, %if.then.i4.i557
  %111 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %state, align 4
  %tobool.not.i.i559 = icmp eq ptr %112, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i559, label %if.else.i5.i563, label %if.then.i4.i562

if.then.i4.i562:                                  ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i560 = getelementptr i8, ptr %112, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i560, i8 52) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i561 = getelementptr i8, ptr %112, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i561, i8 0) #7, !srcloc !224
  br label %vga_wcrt.exit564

if.else.i5.i563:                                  ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 52) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #7, !srcloc !224
  br label %vga_wcrt.exit564

vga_wcrt.exit564:                                 ; preds = %if.else.i5.i563, %if.then.i4.i562
  %113 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %state, align 4
  %tobool.not.i.i565 = icmp eq ptr %114, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i565, label %if.else.i5.i569, label %if.then.i4.i568

if.then.i4.i568:                                  ; preds = %vga_wcrt.exit564
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i566 = getelementptr i8, ptr %114, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i566, i8 106) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i567 = getelementptr i8, ptr %114, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i567, i8 -128) #7, !srcloc !224
  br label %vga_wcrt.exit570

if.else.i5.i569:                                  ; preds = %vga_wcrt.exit564
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -128) #7, !srcloc !224
  br label %vga_wcrt.exit570

vga_wcrt.exit570:                                 ; preds = %if.else.i5.i569, %if.then.i4.i568
  %115 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %state, align 4
  %tobool.not.i.i571 = icmp eq ptr %116, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i571, label %if.else.i5.i575, label %if.then.i4.i574

if.then.i4.i574:                                  ; preds = %vga_wcrt.exit570
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i572 = getelementptr i8, ptr %116, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i572, i8 106) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i573 = getelementptr i8, ptr %116, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i573, i8 -64) #7, !srcloc !224
  br label %vga_wcrt.exit576

if.else.i5.i575:                                  ; preds = %vga_wcrt.exit570
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -64) #7, !srcloc !224
  br label %vga_wcrt.exit576

vga_wcrt.exit576:                                 ; preds = %if.else.i5.i575, %if.then.i4.i574
  %117 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %state, align 4
  %tobool.not.i.i577 = icmp eq ptr %118, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i577, label %if.else.i5.i581, label %if.then.i4.i580

if.then.i4.i580:                                  ; preds = %vga_wcrt.exit576
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i578 = getelementptr i8, ptr %118, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i578, i8 32) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i579 = getelementptr i8, ptr %118, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i579, i8 0) #7, !srcloc !224
  br label %vga_wgfx.exit

if.else.i5.i581:                                  ; preds = %vga_wcrt.exit576
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #7, !srcloc !224
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i581, %if.then.i4.i580
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %state, align 4
  %tobool.not.i.i582 = icmp eq ptr %120, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i582, label %if.else.i5.i586, label %if.then.i4.i585

if.then.i4.i585:                                  ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i583 = getelementptr i8, ptr %120, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i583, i8 33) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i584 = getelementptr i8, ptr %120, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i584, i8 0) #7, !srcloc !224
  br label %vga_wgfx.exit587

if.else.i5.i586:                                  ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 33) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #7, !srcloc !224
  br label %vga_wgfx.exit587

vga_wgfx.exit587:                                 ; preds = %if.else.i5.i586, %if.then.i4.i585
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state, align 4
  %tobool.not.i.i588 = icmp eq ptr %122, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i588, label %if.else.i5.i592, label %if.then.i4.i591

if.then.i4.i591:                                  ; preds = %vga_wgfx.exit587
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i589 = getelementptr i8, ptr %122, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i589, i8 34) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i590 = getelementptr i8, ptr %122, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i590, i8 0) #7, !srcloc !224
  br label %vga_wgfx.exit593

if.else.i5.i592:                                  ; preds = %vga_wgfx.exit587
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 34) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #7, !srcloc !224
  br label %vga_wgfx.exit593

vga_wgfx.exit593:                                 ; preds = %if.else.i5.i592, %if.then.i4.i591
  %fix116 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call = tail call i32 @svga_match_format(ptr noundef nonnull @vt8623fb_formats, ptr noundef %var, ptr noundef %fix116) #7
  %123 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call, label %do.end237 [
    i32 0, label %do.body
    i32 1, label %do.body130
    i32 2, label %do.body154
    i32 3, label %do.body176
    i32 4, label %do.body196
    i32 5, label %do.body216
  ]

do.body:                                          ; preds = %vga_wgfx.exit593
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_set_par, %if.then121)) #7
          to label %do.end [label %if.then121], !srcloc !222

if.then121:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %124 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_set_par.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.51, i32 noundef %125) #7
  br label %do.end

do.end:                                           ; preds = %if.then121, %do.body
  %126 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %state, align 4
  tail call void @svga_set_textmode_vga_regs(ptr noundef %127) #7
  %128 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i594 = icmp eq ptr %129, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i594, label %if.else.i5.i.i598, label %if.then.i4.i.i597

if.then.i4.i.i597:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i595 = getelementptr i8, ptr %129, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i595, i8 21) #7, !srcloc !224
  %add.ptr.i.i3.i.i596 = getelementptr i8, ptr %129, i32 965
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i596) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i601

if.else.i5.i.i598:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i601

vga_rseq.exit.i601:                               ; preds = %if.else.i5.i.i598, %if.then.i4.i.i597
  %retval.0.i.i.i599 = phi i8 [ %130, %if.then.i4.i.i597 ], [ %131, %if.else.i5.i.i598 ]
  %and4.i600 = and i8 %retval.0.i.i.i599, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i594, label %if.else.i5.i14.i605, label %if.then.i4.i13.i604

if.then.i4.i13.i604:                              ; preds = %vga_rseq.exit.i601
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i602 = getelementptr i8, ptr %129, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i602, i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i603 = getelementptr i8, ptr %129, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i603, i8 %and4.i600) #7, !srcloc !224
  br label %svga_wseq_mask.exit606

if.else.i5.i14.i605:                              ; preds = %vga_rseq.exit.i601
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i600) #7, !srcloc !224
  br label %svga_wseq_mask.exit606

svga_wseq_mask.exit606:                           ; preds = %if.else.i5.i14.i605, %if.then.i4.i13.i604
  %132 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i607 = icmp eq ptr %133, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i607, label %if.else.i5.i.i611, label %if.then.i4.i.i610

if.then.i4.i.i610:                                ; preds = %svga_wseq_mask.exit606
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i608 = getelementptr i8, ptr %133, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i608, i8 17) #7, !srcloc !224
  %add.ptr.i.i3.i.i609 = getelementptr i8, ptr %133, i32 981
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i609) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i615

if.else.i5.i.i611:                                ; preds = %svga_wseq_mask.exit606
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i615

vga_rcrt.exit.i615:                               ; preds = %if.else.i5.i.i611, %if.then.i4.i.i610
  %retval.0.i.i.i612 = phi i8 [ %134, %if.then.i4.i.i610 ], [ %135, %if.else.i5.i.i611 ]
  %and4.i613 = and i8 %retval.0.i.i.i612, -113
  %or.i614 = or i8 %and4.i613, 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i607, label %if.else.i5.i14.i619, label %if.then.i4.i13.i618

if.then.i4.i13.i618:                              ; preds = %vga_rcrt.exit.i615
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i616 = getelementptr i8, ptr %133, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i616, i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i617 = getelementptr i8, ptr %133, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i617, i8 %or.i614) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i619:                              ; preds = %vga_rcrt.exit.i615
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i614) #7, !srcloc !224
  br label %sw.epilog

do.body130:                                       ; preds = %vga_wgfx.exit593
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_set_par, %if.then142)) #7
          to label %do.end146 [label %if.then142], !srcloc !222

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %node143 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %136 = ptrtoint ptr %node143 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %node143, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_set_par.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.52, i32 noundef %137) #7
  br label %do.end146

do.end146:                                        ; preds = %if.then142, %do.body130
  %138 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %state, align 4
  %tobool.not.i.i621 = icmp eq ptr %139, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i621, label %if.else.i5.i625, label %if.then.i4.i624

if.then.i4.i624:                                  ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i622 = getelementptr i8, ptr %139, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i622, i8 5) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i623 = getelementptr i8, ptr %139, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i623, i8 64) #7, !srcloc !224
  br label %vga_wgfx.exit626

if.else.i5.i625:                                  ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 64) #7, !srcloc !224
  br label %vga_wgfx.exit626

vga_wgfx.exit626:                                 ; preds = %if.else.i5.i625, %if.then.i4.i624
  %140 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i627 = icmp eq ptr %141, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i627, label %if.else.i5.i.i631, label %if.then.i4.i.i630

if.then.i4.i.i630:                                ; preds = %vga_wgfx.exit626
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i628 = getelementptr i8, ptr %141, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i628, i8 21) #7, !srcloc !224
  %add.ptr.i.i3.i.i629 = getelementptr i8, ptr %141, i32 965
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i629) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i635

if.else.i5.i.i631:                                ; preds = %vga_wgfx.exit626
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i635

vga_rseq.exit.i635:                               ; preds = %if.else.i5.i.i631, %if.then.i4.i.i630
  %retval.0.i.i.i632 = phi i8 [ %142, %if.then.i4.i.i630 ], [ %143, %if.else.i5.i.i631 ]
  %and4.i633 = and i8 %retval.0.i.i.i632, 1
  %or.i634 = or i8 %and4.i633, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i627, label %if.else.i5.i14.i639, label %if.then.i4.i13.i638

if.then.i4.i13.i638:                              ; preds = %vga_rseq.exit.i635
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i636 = getelementptr i8, ptr %141, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i636, i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i637 = getelementptr i8, ptr %141, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i637, i8 %or.i634) #7, !srcloc !224
  br label %svga_wseq_mask.exit640

if.else.i5.i14.i639:                              ; preds = %vga_rseq.exit.i635
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i634) #7, !srcloc !224
  br label %svga_wseq_mask.exit640

svga_wseq_mask.exit640:                           ; preds = %if.else.i5.i14.i639, %if.then.i4.i13.i638
  %144 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i641 = icmp eq ptr %145, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i641, label %if.else.i5.i.i645, label %if.then.i4.i.i644

if.then.i4.i.i644:                                ; preds = %svga_wseq_mask.exit640
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i642 = getelementptr i8, ptr %145, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i642, i8 17) #7, !srcloc !224
  %add.ptr.i.i3.i.i643 = getelementptr i8, ptr %145, i32 981
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i643) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i648

if.else.i5.i.i645:                                ; preds = %svga_wseq_mask.exit640
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i648

vga_rcrt.exit.i648:                               ; preds = %if.else.i5.i.i645, %if.then.i4.i.i644
  %retval.0.i.i.i646 = phi i8 [ %146, %if.then.i4.i.i644 ], [ %147, %if.else.i5.i.i645 ]
  %and4.i647 = and i8 %retval.0.i.i.i646, -113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i641, label %if.else.i5.i14.i652, label %if.then.i4.i13.i651

if.then.i4.i13.i651:                              ; preds = %vga_rcrt.exit.i648
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i649 = getelementptr i8, ptr %145, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i649, i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i650 = getelementptr i8, ptr %145, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i650, i8 %and4.i647) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i652:                              ; preds = %vga_rcrt.exit.i648
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i647) #7, !srcloc !224
  br label %sw.epilog

do.body154:                                       ; preds = %vga_wgfx.exit593
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_set_par, %if.then166)) #7
          to label %do.end170 [label %if.then166], !srcloc !222

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  %node167 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %148 = ptrtoint ptr %node167 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %node167, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_set_par.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.53, i32 noundef %149) #7
  br label %do.end170

do.end170:                                        ; preds = %if.then166, %do.body154
  %150 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i654 = icmp eq ptr %151, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i654, label %if.else.i5.i.i658, label %if.then.i4.i.i657

if.then.i4.i.i657:                                ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i655 = getelementptr i8, ptr %151, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i655, i8 21) #7, !srcloc !224
  %add.ptr.i.i3.i.i656 = getelementptr i8, ptr %151, i32 965
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i656) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i661

if.else.i5.i.i658:                                ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i661

vga_rseq.exit.i661:                               ; preds = %if.else.i5.i.i658, %if.then.i4.i.i657
  %retval.0.i.i.i659 = phi i8 [ %152, %if.then.i4.i.i657 ], [ %153, %if.else.i5.i.i658 ]
  %and4.i660 = and i8 %retval.0.i.i.i659, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i654, label %if.else.i5.i14.i665, label %if.then.i4.i13.i664

if.then.i4.i13.i664:                              ; preds = %vga_rseq.exit.i661
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i662 = getelementptr i8, ptr %151, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i662, i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i663 = getelementptr i8, ptr %151, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i663, i8 %and4.i660) #7, !srcloc !224
  br label %svga_wseq_mask.exit666

if.else.i5.i14.i665:                              ; preds = %vga_rseq.exit.i661
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i660) #7, !srcloc !224
  br label %svga_wseq_mask.exit666

svga_wseq_mask.exit666:                           ; preds = %if.else.i5.i14.i665, %if.then.i4.i13.i664
  %154 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i667 = icmp eq ptr %155, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i667, label %if.else.i5.i.i671, label %if.then.i4.i.i670

if.then.i4.i.i670:                                ; preds = %svga_wseq_mask.exit666
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i668 = getelementptr i8, ptr %155, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i668, i8 17) #7, !srcloc !224
  %add.ptr.i.i3.i.i669 = getelementptr i8, ptr %155, i32 981
  %156 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i669) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i674

if.else.i5.i.i671:                                ; preds = %svga_wseq_mask.exit666
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i674

vga_rcrt.exit.i674:                               ; preds = %if.else.i5.i.i671, %if.then.i4.i.i670
  %retval.0.i.i.i672 = phi i8 [ %156, %if.then.i4.i.i670 ], [ %157, %if.else.i5.i.i671 ]
  %and4.i673 = and i8 %retval.0.i.i.i672, -113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i667, label %if.else.i5.i14.i678, label %if.then.i4.i13.i677

if.then.i4.i13.i677:                              ; preds = %vga_rcrt.exit.i674
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i675 = getelementptr i8, ptr %155, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i675, i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i676 = getelementptr i8, ptr %155, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i676, i8 %and4.i673) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i678:                              ; preds = %vga_rcrt.exit.i674
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i673) #7, !srcloc !224
  br label %sw.epilog

do.body176:                                       ; preds = %vga_wgfx.exit593
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_set_par, %if.then188)) #7
          to label %do.end192 [label %if.then188], !srcloc !222

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  %node189 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %158 = ptrtoint ptr %node189 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %node189, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_set_par.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.54, i32 noundef %159) #7
  br label %do.end192

do.end192:                                        ; preds = %if.then188, %do.body176
  %160 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i680 = icmp eq ptr %161, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i680, label %if.else.i5.i.i684, label %if.then.i4.i.i683

if.then.i4.i.i683:                                ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i681 = getelementptr i8, ptr %161, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i681, i8 21) #7, !srcloc !224
  %add.ptr.i.i3.i.i682 = getelementptr i8, ptr %161, i32 965
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i682) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i688

if.else.i5.i.i684:                                ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i688

vga_rseq.exit.i688:                               ; preds = %if.else.i5.i.i684, %if.then.i4.i.i683
  %retval.0.i.i.i685 = phi i8 [ %162, %if.then.i4.i.i683 ], [ %163, %if.else.i5.i.i684 ]
  %and4.i686 = and i8 %retval.0.i.i.i685, 1
  %or.i687 = or i8 %and4.i686, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i680, label %if.else.i5.i14.i692, label %if.then.i4.i13.i691

if.then.i4.i13.i691:                              ; preds = %vga_rseq.exit.i688
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i689 = getelementptr i8, ptr %161, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i689, i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i690 = getelementptr i8, ptr %161, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i690, i8 %or.i687) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i692:                              ; preds = %vga_rseq.exit.i688
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i687) #7, !srcloc !224
  br label %sw.epilog

do.body196:                                       ; preds = %vga_wgfx.exit593
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_set_par, %if.then208)) #7
          to label %do.end212 [label %if.then208], !srcloc !222

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #9
  %node209 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %164 = ptrtoint ptr %node209 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %node209, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_set_par.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.55, i32 noundef %165) #7
  br label %do.end212

do.end212:                                        ; preds = %if.then208, %do.body196
  %166 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i694 = icmp eq ptr %167, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i694, label %if.else.i5.i.i698, label %if.then.i4.i.i697

if.then.i4.i.i697:                                ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i695 = getelementptr i8, ptr %167, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i695, i8 21) #7, !srcloc !224
  %add.ptr.i.i3.i.i696 = getelementptr i8, ptr %167, i32 965
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i696) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i702

if.else.i5.i.i698:                                ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  %169 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i702

vga_rseq.exit.i702:                               ; preds = %if.else.i5.i.i698, %if.then.i4.i.i697
  %retval.0.i.i.i699 = phi i8 [ %168, %if.then.i4.i.i697 ], [ %169, %if.else.i5.i.i698 ]
  %and4.i700 = and i8 %retval.0.i.i.i699, 1
  %or.i701 = or i8 %and4.i700, -74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i694, label %if.else.i5.i14.i706, label %if.then.i4.i13.i705

if.then.i4.i13.i705:                              ; preds = %vga_rseq.exit.i702
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i703 = getelementptr i8, ptr %167, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i703, i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i704 = getelementptr i8, ptr %167, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i704, i8 %or.i701) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i706:                              ; preds = %vga_rseq.exit.i702
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i701) #7, !srcloc !224
  br label %sw.epilog

do.body216:                                       ; preds = %vga_wgfx.exit593
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_set_par, %if.then228)) #7
          to label %do.end232 [label %if.then228], !srcloc !222

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #9
  %node229 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %170 = ptrtoint ptr %node229 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %node229, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_set_par.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.56, i32 noundef %171) #7
  br label %do.end232

do.end232:                                        ; preds = %if.then228, %do.body216
  %172 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i708 = icmp eq ptr %173, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i708, label %if.else.i5.i.i712, label %if.then.i4.i.i711

if.then.i4.i.i711:                                ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i709 = getelementptr i8, ptr %173, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i709, i8 21) #7, !srcloc !224
  %add.ptr.i.i3.i.i710 = getelementptr i8, ptr %173, i32 965
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i710) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i716

if.else.i5.i.i712:                                ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i716

vga_rseq.exit.i716:                               ; preds = %if.else.i5.i.i712, %if.then.i4.i.i711
  %retval.0.i.i.i713 = phi i8 [ %174, %if.then.i4.i.i711 ], [ %175, %if.else.i5.i.i712 ]
  %and4.i714 = and i8 %retval.0.i.i.i713, 1
  %or.i715 = or i8 %and4.i714, -82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i708, label %if.else.i5.i14.i720, label %if.then.i4.i13.i719

if.then.i4.i13.i719:                              ; preds = %vga_rseq.exit.i716
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i717 = getelementptr i8, ptr %173, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i717, i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i718 = getelementptr i8, ptr %173, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i718, i8 %or.i715) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i720:                              ; preds = %vga_rseq.exit.i716
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i715) #7, !srcloc !224
  br label %sw.epilog

do.end237:                                        ; preds = %vga_wgfx.exit593
  call void @__sanitizer_cov_trace_pc() #9
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.else.i5.i14.i720, %if.then.i4.i13.i719, %if.else.i5.i14.i706, %if.then.i4.i13.i705, %if.else.i5.i14.i692, %if.then.i4.i13.i691, %if.else.i5.i14.i678, %if.then.i4.i13.i677, %if.else.i5.i14.i652, %if.then.i4.i13.i651, %if.else.i5.i14.i619, %if.then.i4.i13.i618
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %176 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pixclock, align 4
  %178 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %m.i) #7
  %180 = ptrtoint ptr %m.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -1, ptr %m.i, align 2, !annotation !223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %n.i) #7
  %181 = ptrtoint ptr %n.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -1, ptr %n.i, align 2, !annotation !223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i) #7
  %182 = ptrtoint ptr %r.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -1, ptr %r.i, align 2, !annotation !223
  %div.i = udiv i32 1000000000, %177
  %node.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %183 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %node.i, align 4
  %call.i = call i32 @svga_compute_pll(ptr noundef nonnull @vt8623_pll, i32 noundef %div.i, ptr noundef nonnull %m.i, ptr noundef nonnull %n.i, ptr noundef nonnull %r.i, i32 noundef %184) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %node.i, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %186) #10
  br label %vt8623_set_pixclock.exit

if.end.i:                                         ; preds = %sw.epilog
  %state.i = getelementptr inbounds %struct.vt8623fb_info, ptr %179, i32 0, i32 2
  %187 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %state.i, align 4
  %tobool.not.i.i722 = icmp eq ptr %188, null
  br i1 %tobool.not.i.i722, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i723 = getelementptr i8, ptr %188, i32 972
  %189 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i723) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_r.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %190 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_r.exit.i

vga_r.exit.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %189, %if.then.i.i ], [ %190, %if.else.i.i ]
  %191 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %state.i, align 4
  %193 = or i8 %retval.0.i.i, 12
  %tobool.not.i33.i = icmp eq ptr %192, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i33.i, label %if.else.i36.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i34.i = getelementptr i8, ptr %192, i32 962
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i34.i, i8 %193) #7, !srcloc !224
  br label %vga_w.exit.i

if.else.i36.i:                                    ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %193) #7, !srcloc !224
  br label %vga_w.exit.i

vga_w.exit.i:                                     ; preds = %if.else.i36.i, %if.then.i35.i
  %194 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %state.i, align 4
  %196 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %n.i, align 2
  %conv10.i = trunc i16 %197 to i8
  %198 = ptrtoint ptr %r.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %r.i, align 2
  %conv11.i = trunc i16 %199 to i8
  %shl.i = shl i8 %conv11.i, 6
  %or12.i = or i8 %shl.i, %conv10.i
  %tobool.not.i.i.i724 = icmp eq ptr %195, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i724, label %if.else.i5.i.i728, label %if.then.i4.i.i727

if.then.i4.i.i727:                                ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i725 = getelementptr i8, ptr %195, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i725, i8 70) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i.i726 = getelementptr i8, ptr %195, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.i726, i8 %or12.i) #7, !srcloc !224
  br label %vga_wseq.exit.i

if.else.i5.i.i728:                                ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 70) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or12.i) #7, !srcloc !224
  br label %vga_wseq.exit.i

vga_wseq.exit.i:                                  ; preds = %if.else.i5.i.i728, %if.then.i4.i.i727
  %200 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %state.i, align 4
  %202 = ptrtoint ptr %m.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %m.i, align 2
  %conv16.i = trunc i16 %203 to i8
  %tobool.not.i.i37.i = icmp eq ptr %201, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i37.i, label %if.else.i5.i41.i, label %if.then.i4.i40.i

if.then.i4.i40.i:                                 ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i38.i = getelementptr i8, ptr %201, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i38.i, i8 71) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i39.i = getelementptr i8, ptr %201, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i39.i, i8 %conv16.i) #7, !srcloc !224
  br label %vga_wseq.exit42.i

if.else.i5.i41.i:                                 ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 71) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv16.i) #7, !srcloc !224
  br label %vga_wseq.exit42.i

vga_wseq.exit42.i:                                ; preds = %if.else.i5.i41.i, %if.then.i4.i40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %204(i32 noundef 214748000) #7
  %205 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %state.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %206, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i.i, label %if.else.i5.i.i.i, label %if.then.i4.i.i.i

if.then.i4.i.i.i:                                 ; preds = %vga_wseq.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %206, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i, i8 64) #7, !srcloc !224
  %add.ptr.i.i3.i.i.i = getelementptr i8, ptr %206, i32 965
  %207 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i.i) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i.i

if.else.i5.i.i.i:                                 ; preds = %vga_wseq.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #7, !srcloc !224
  %208 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i.i

vga_rseq.exit.i.i:                                ; preds = %if.else.i5.i.i.i, %if.then.i4.i.i.i
  %retval.0.i.i.i.i = phi i8 [ %207, %if.then.i4.i.i.i ], [ %208, %if.else.i5.i.i.i ]
  %or.i.i = or i8 %retval.0.i.i.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i.i, label %if.else.i5.i14.i.i, label %if.then.i4.i13.i.i

if.then.i4.i13.i.i:                               ; preds = %vga_rseq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i.i = getelementptr i8, ptr %206, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i.i, i8 64) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i.i = getelementptr i8, ptr %206, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i.i, i8 %or.i.i) #7, !srcloc !224
  br label %svga_wseq_mask.exit.i

if.else.i5.i14.i.i:                               ; preds = %vga_rseq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #7, !srcloc !224
  br label %svga_wseq_mask.exit.i

svga_wseq_mask.exit.i:                            ; preds = %if.else.i5.i14.i.i, %if.then.i4.i13.i.i
  %209 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %state.i, align 4
  %tobool.not.i.i.i43.i = icmp eq ptr %210, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i43.i, label %if.else.i5.i.i47.i, label %if.then.i4.i.i46.i

if.then.i4.i.i46.i:                               ; preds = %svga_wseq_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i44.i = getelementptr i8, ptr %210, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i44.i, i8 64) #7, !srcloc !224
  %add.ptr.i.i3.i.i45.i = getelementptr i8, ptr %210, i32 965
  %211 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i45.i) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i50.i

if.else.i5.i.i47.i:                               ; preds = %svga_wseq_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #7, !srcloc !224
  %212 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i50.i

vga_rseq.exit.i50.i:                              ; preds = %if.else.i5.i.i47.i, %if.then.i4.i.i46.i
  %retval.0.i.i.i48.i = phi i8 [ %211, %if.then.i4.i.i46.i ], [ %212, %if.else.i5.i.i47.i ]
  %and4.i49.i = and i8 %retval.0.i.i.i48.i, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i43.i, label %if.else.i5.i14.i54.i, label %if.then.i4.i13.i53.i

if.then.i4.i13.i53.i:                             ; preds = %vga_rseq.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i51.i = getelementptr i8, ptr %210, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i51.i, i8 64) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i52.i = getelementptr i8, ptr %210, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i52.i, i8 %and4.i49.i) #7, !srcloc !224
  br label %vt8623_set_pixclock.exit

if.else.i5.i14.i54.i:                             ; preds = %vga_rseq.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i49.i) #7, !srcloc !224
  br label %vt8623_set_pixclock.exit

vt8623_set_pixclock.exit:                         ; preds = %if.else.i5.i14.i54.i, %if.then.i4.i13.i53.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %n.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %m.i) #7
  %213 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %state, align 4
  %215 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %vmode, align 4
  %and246 = and i32 %216, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  %cond248 = select i1 %tobool247.not, i32 1, i32 2
  %217 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %node.i, align 4
  call void @svga_set_timings(ptr noundef %214, ptr noundef nonnull @vt8623_timing_regs, ptr noundef %var, i32 noundef 1, i32 noundef 1, i32 noundef %cond248, i32 noundef 1, i32 noundef 1, i32 noundef %218) #7
  %219 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  call void @mmioset(ptr noundef %221, i32 noundef 0, i32 noundef %screen_size.0) #7
  %222 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i729 = icmp eq ptr %223, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i729, label %if.else.i5.i.i733, label %if.then.i4.i.i732

if.then.i4.i.i732:                                ; preds = %vt8623_set_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i730 = getelementptr i8, ptr %223, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i730, i8 23) #7, !srcloc !224
  %add.ptr.i.i3.i.i731 = getelementptr i8, ptr %223, i32 981
  %224 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i731) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i737

if.else.i5.i.i733:                                ; preds = %vt8623_set_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #7, !srcloc !224
  %225 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i737

vga_rcrt.exit.i737:                               ; preds = %if.else.i5.i.i733, %if.then.i4.i.i732
  %retval.0.i.i.i734 = phi i8 [ %224, %if.then.i4.i.i732 ], [ %225, %if.else.i5.i.i733 ]
  %or.i736 = or i8 %retval.0.i.i.i734, -128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i729, label %if.else.i5.i14.i741, label %if.then.i4.i13.i740

if.then.i4.i13.i740:                              ; preds = %vga_rcrt.exit.i737
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i738 = getelementptr i8, ptr %223, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i738, i8 23) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i739 = getelementptr i8, ptr %223, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i739, i8 %or.i736) #7, !srcloc !224
  br label %svga_wcrt_mask.exit742

if.else.i5.i14.i741:                              ; preds = %vga_rcrt.exit.i737
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i736) #7, !srcloc !224
  br label %svga_wcrt_mask.exit742

svga_wcrt_mask.exit742:                           ; preds = %if.else.i5.i14.i741, %if.then.i4.i13.i740
  %226 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i743 = icmp eq ptr %227, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i743, label %if.else.i5.i.i747, label %if.then.i4.i.i746

if.then.i4.i.i746:                                ; preds = %svga_wcrt_mask.exit742
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i744 = getelementptr i8, ptr %227, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i744, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i745 = getelementptr i8, ptr %227, i32 981
  %228 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i745) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i750

if.else.i5.i.i747:                                ; preds = %svga_wcrt_mask.exit742
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %229 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i750

vga_rcrt.exit.i750:                               ; preds = %if.else.i5.i.i747, %if.then.i4.i.i746
  %retval.0.i.i.i748 = phi i8 [ %228, %if.then.i4.i.i746 ], [ %229, %if.else.i5.i.i747 ]
  %and4.i749 = and i8 %retval.0.i.i.i748, -49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i743, label %if.else.i5.i14.i754, label %if.then.i4.i13.i753

if.then.i4.i13.i753:                              ; preds = %vga_rcrt.exit.i750
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i751 = getelementptr i8, ptr %227, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i751, i8 54) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i752 = getelementptr i8, ptr %227, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i752, i8 %and4.i749) #7, !srcloc !224
  br label %svga_wcrt_mask.exit755

if.else.i5.i14.i754:                              ; preds = %vga_rcrt.exit.i750
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i749) #7, !srcloc !224
  br label %svga_wcrt_mask.exit755

svga_wcrt_mask.exit755:                           ; preds = %if.else.i5.i14.i754, %if.then.i4.i13.i753
  %230 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i756 = icmp eq ptr %231, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i756, label %if.else.i5.i.i760, label %if.then.i4.i.i759

if.then.i4.i.i759:                                ; preds = %svga_wcrt_mask.exit755
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i757 = getelementptr i8, ptr %231, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i757, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i758 = getelementptr i8, ptr %231, i32 965
  %232 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i758) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i763

if.else.i5.i.i760:                                ; preds = %svga_wcrt_mask.exit755
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %233 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i763

vga_rseq.exit.i763:                               ; preds = %if.else.i5.i.i760, %if.then.i4.i.i759
  %retval.0.i.i.i761 = phi i8 [ %232, %if.then.i4.i.i759 ], [ %233, %if.else.i5.i.i760 ]
  %and4.i762 = and i8 %retval.0.i.i.i761, -33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i756, label %if.else.i5.i14.i767, label %if.then.i4.i13.i766

if.then.i4.i13.i766:                              ; preds = %vga_rseq.exit.i763
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i764 = getelementptr i8, ptr %231, i32 964
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i764, i8 1) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i765 = getelementptr i8, ptr %231, i32 965
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i765, i8 %and4.i762) #7, !srcloc !224
  br label %cleanup

if.else.i5.i14.i767:                              ; preds = %vga_rseq.exit.i763
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i762) #7, !srcloc !224
  br label %cleanup

cleanup:                                          ; preds = %if.else.i5.i14.i767, %if.then.i4.i13.i766, %do.end237
  %retval.0 = phi i32 [ -22, %do.end237 ], [ 0, %if.then.i4.i13.i766 ], [ 0, %if.else.i5.i14.i767 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %fb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %2, label %entry.return_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge117
    i32 2, label %sw.bb18
    i32 4, label %sw.bb45
    i32 6, label %entry.sw.bb79_crit_edge
    i32 8, label %entry.sw.bb79_crit_edge118
  ]

entry.sw.bb79_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb79

entry.sw.bb79_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb79

entry.sw.bb_crit_edge117:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge117
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %sw.bb.return_crit_edge, label %do.body

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 15) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %shr = lshr i32 %red, 10
  %conv6 = trunc i32 %shr to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv6) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @arm_heavy_mb() #7
  %shr10 = lshr i32 %green, 10
  %conv11 = trunc i32 %shr10 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv11) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %shr15 = lshr i32 %blue, 10
  %conv16 = trunc i32 %shr15 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv16) #7, !srcloc !224
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp19 = icmp ugt i32 %regno, 255
  br i1 %cmp19, label %sw.bb18.return_crit_edge, label %do.body23

sw.bb18.return_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body23:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void @arm_heavy_mb() #7
  %conv28 = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv28) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  %shr32 = lshr i32 %red, 10
  %conv33 = trunc i32 %shr32 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv33) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %shr37 = lshr i32 %green, 10
  %conv38 = trunc i32 %shr37 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv38) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  %shr42 = lshr i32 %blue, 10
  %conv43 = trunc i32 %shr42 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv43) #7, !srcloc !224
  br label %return

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp46 = icmp ugt i32 %regno, 15
  br i1 %cmp46, label %sw.bb45.return_crit_edge, label %if.end49

sw.bb45.return_crit_edge:                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end49:                                         ; preds = %sw.bb45
  %length = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 9, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %5, label %if.end49.return_crit_edge [
    i32 5, label %if.then54
    i32 6, label %if.then66
  ]

if.end49.return_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %and = lshr i32 %red, 1
  %shr55 = and i32 %and, 31744
  %and56 = lshr i32 %green, 6
  %shr57 = and i32 %and56, 992
  %or = or i32 %shr57, %shr55
  %and58 = lshr i32 %blue, 11
  %shr59 = and i32 %and58, 31
  %or60 = or i32 %or, %shr59
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %7 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 %regno
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or60, ptr %arrayidx, align 4
  br label %return

if.then66:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %and67 = and i32 %red, 63488
  %and68 = lshr i32 %green, 5
  %shr69 = and i32 %and68, 2016
  %or70 = or i32 %shr69, %and67
  %and71 = lshr i32 %blue, 11
  %shr72 = and i32 %and71, 31
  %or73 = or i32 %or70, %shr72
  %pseudo_palette74 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %10 = ptrtoint ptr %pseudo_palette74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pseudo_palette74, align 4
  %arrayidx75 = getelementptr i32, ptr %11, i32 %regno
  %12 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or73, ptr %arrayidx75, align 4
  br label %return

sw.bb79:                                          ; preds = %entry.sw.bb79_crit_edge, %entry.sw.bb79_crit_edge118
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp80 = icmp ugt i32 %regno, 15
  br i1 %cmp80, label %sw.bb79.return_crit_edge, label %if.end83

sw.bb79.return_crit_edge:                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end83:                                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  %and84 = shl i32 %red, 8
  %shl = and i32 %and84, 16711680
  %and85 = and i32 %green, 65280
  %or86 = or i32 %shl, %and85
  %and87 = lshr i32 %blue, 8
  %shr88 = and i32 %and87, 255
  %or89 = or i32 %or86, %shr88
  %pseudo_palette90 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %13 = ptrtoint ptr %pseudo_palette90 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pseudo_palette90, align 4
  %arrayidx91 = getelementptr i32, ptr %14, i32 %regno
  %15 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or89, ptr %arrayidx91, align 4
  br label %return

return:                                           ; preds = %if.end83, %sw.bb79.return_crit_edge, %if.then66, %if.then54, %if.end49.return_crit_edge, %sw.bb45.return_crit_edge, %do.body23, %sw.bb18.return_crit_edge, %do.body, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb18.return_crit_edge ], [ 0, %sw.bb45.return_crit_edge ], [ -22, %if.end49.return_crit_edge ], [ 0, %sw.bb79.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.then54 ], [ 0, %if.then66 ], [ 0, %if.end83 ], [ 0, %do.body23 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %blank_mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body7
    i32 3, label %do.body29
    i32 2, label %do.body51
    i32 4, label %do.body73
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_blank.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_blank, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !222

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_blank.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.61, i32 noundef %4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %6, i32 981
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i

if.else.i5.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %7, %if.then.i4.i.i ], [ %8, %if.else.i5.i.i ]
  %and4.i = and i8 %retval.0.i.i.i, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i, label %if.else.i5.i14.i, label %if.then.i4.i13.i

if.then.i4.i13.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i, i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i = getelementptr i8, ptr %6, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i, i8 %and4.i) #7, !srcloc !224
  br label %svga_wcrt_mask.exit

if.else.i5.i14.i:                                 ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i) #7, !srcloc !224
  br label %svga_wcrt_mask.exit

svga_wcrt_mask.exit:                              ; preds = %if.else.i5.i14.i, %if.then.i4.i13.i
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i120 = icmp eq ptr %10, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i120, label %if.else.i5.i.i124, label %if.then.i4.i.i123

if.then.i4.i.i123:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i121 = getelementptr i8, ptr %10, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i121, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i122 = getelementptr i8, ptr %10, i32 965
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i122) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i

if.else.i5.i.i124:                                ; preds = %svga_wcrt_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i124, %if.then.i4.i.i123
  %retval.0.i.i.i125 = phi i8 [ %11, %if.then.i4.i.i123 ], [ %12, %if.else.i5.i.i124 ]
  %and4.i126 = and i8 %retval.0.i.i.i125, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i120, label %if.else.i5.i14.i130, label %if.then.i4.i13.i129

if.then.i4.i13.i129:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i127 = getelementptr i8, ptr %10, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i127, i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i128 = getelementptr i8, ptr %10, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i128, i8 %and4.i126) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i130:                              ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and4.i126) #7, !srcloc !224
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_blank.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_blank, %if.then19)) #7
          to label %do.end23 [label %if.then19], !srcloc !222

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %node20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %node20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_blank.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.62, i32 noundef %14) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %state24 = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state24, align 4
  %tobool.not.i.i.i131 = icmp eq ptr %16, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i131, label %if.else.i5.i.i135, label %if.then.i4.i.i134

if.then.i4.i.i134:                                ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i132 = getelementptr i8, ptr %16, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i132, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i133 = getelementptr i8, ptr %16, i32 981
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i133) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i138

if.else.i5.i.i135:                                ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i138

vga_rcrt.exit.i138:                               ; preds = %if.else.i5.i.i135, %if.then.i4.i.i134
  %retval.0.i.i.i136 = phi i8 [ %17, %if.then.i4.i.i134 ], [ %18, %if.else.i5.i.i135 ]
  %and4.i137 = and i8 %retval.0.i.i.i136, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i131, label %if.else.i5.i14.i142, label %if.then.i4.i13.i141

if.then.i4.i13.i141:                              ; preds = %vga_rcrt.exit.i138
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i139 = getelementptr i8, ptr %16, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i139, i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i140 = getelementptr i8, ptr %16, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i140, i8 %and4.i137) #7, !srcloc !224
  br label %svga_wcrt_mask.exit143

if.else.i5.i14.i142:                              ; preds = %vga_rcrt.exit.i138
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and4.i137) #7, !srcloc !224
  br label %svga_wcrt_mask.exit143

svga_wcrt_mask.exit143:                           ; preds = %if.else.i5.i14.i142, %if.then.i4.i13.i141
  %19 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state24, align 4
  %tobool.not.i.i.i144 = icmp eq ptr %20, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i144, label %if.else.i5.i.i148, label %if.then.i4.i.i147

if.then.i4.i.i147:                                ; preds = %svga_wcrt_mask.exit143
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i145 = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i145, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i146 = getelementptr i8, ptr %20, i32 965
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i146) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i151

if.else.i5.i.i148:                                ; preds = %svga_wcrt_mask.exit143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i151

vga_rseq.exit.i151:                               ; preds = %if.else.i5.i.i148, %if.then.i4.i.i147
  %retval.0.i.i.i149 = phi i8 [ %21, %if.then.i4.i.i147 ], [ %22, %if.else.i5.i.i148 ]
  %or.i = or i8 %retval.0.i.i.i149, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i144, label %if.else.i5.i14.i155, label %if.then.i4.i13.i154

if.then.i4.i13.i154:                              ; preds = %vga_rseq.exit.i151
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i152 = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i152, i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i153 = getelementptr i8, ptr %20, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i153, i8 %or.i) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i155:                              ; preds = %vga_rseq.exit.i151
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #7, !srcloc !224
  br label %sw.epilog

do.body29:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_blank.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_blank, %if.then41)) #7
          to label %do.end45 [label %if.then41], !srcloc !222

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %node42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %node42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_blank.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.63, i32 noundef %24) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %state46 = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state46, align 4
  %tobool.not.i.i.i157 = icmp eq ptr %26, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i157, label %if.else.i5.i.i161, label %if.then.i4.i.i160

if.then.i4.i.i160:                                ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i158 = getelementptr i8, ptr %26, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i158, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i159 = getelementptr i8, ptr %26, i32 981
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i159) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i165

if.else.i5.i.i161:                                ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i165

vga_rcrt.exit.i165:                               ; preds = %if.else.i5.i.i161, %if.then.i4.i.i160
  %retval.0.i.i.i162 = phi i8 [ %27, %if.then.i4.i.i160 ], [ %28, %if.else.i5.i.i161 ]
  %and4.i163 = and i8 %retval.0.i.i.i162, -49
  %or.i164 = or i8 %and4.i163, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i157, label %if.else.i5.i14.i169, label %if.then.i4.i13.i168

if.then.i4.i13.i168:                              ; preds = %vga_rcrt.exit.i165
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i166 = getelementptr i8, ptr %26, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i166, i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i167 = getelementptr i8, ptr %26, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i167, i8 %or.i164) #7, !srcloc !224
  br label %svga_wcrt_mask.exit170

if.else.i5.i14.i169:                              ; preds = %vga_rcrt.exit.i165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i164) #7, !srcloc !224
  br label %svga_wcrt_mask.exit170

svga_wcrt_mask.exit170:                           ; preds = %if.else.i5.i14.i169, %if.then.i4.i13.i168
  %29 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state46, align 4
  %tobool.not.i.i.i171 = icmp eq ptr %30, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i171, label %if.else.i5.i.i175, label %if.then.i4.i.i174

if.then.i4.i.i174:                                ; preds = %svga_wcrt_mask.exit170
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i172 = getelementptr i8, ptr %30, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i172, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i173 = getelementptr i8, ptr %30, i32 965
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i173) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i179

if.else.i5.i.i175:                                ; preds = %svga_wcrt_mask.exit170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i179

vga_rseq.exit.i179:                               ; preds = %if.else.i5.i.i175, %if.then.i4.i.i174
  %retval.0.i.i.i176 = phi i8 [ %31, %if.then.i4.i.i174 ], [ %32, %if.else.i5.i.i175 ]
  %or.i178 = or i8 %retval.0.i.i.i176, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i171, label %if.else.i5.i14.i183, label %if.then.i4.i13.i182

if.then.i4.i13.i182:                              ; preds = %vga_rseq.exit.i179
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i180 = getelementptr i8, ptr %30, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i180, i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i181 = getelementptr i8, ptr %30, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i181, i8 %or.i178) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i183:                              ; preds = %vga_rseq.exit.i179
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i178) #7, !srcloc !224
  br label %sw.epilog

do.body51:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_blank.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_blank, %if.then63)) #7
          to label %do.end67 [label %if.then63], !srcloc !222

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %node64 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %node64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %node64, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_blank.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.64, i32 noundef %34) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %state68 = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %state68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state68, align 4
  %tobool.not.i.i.i185 = icmp eq ptr %36, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i185, label %if.else.i5.i.i189, label %if.then.i4.i.i188

if.then.i4.i.i188:                                ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i186 = getelementptr i8, ptr %36, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i186, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i187 = getelementptr i8, ptr %36, i32 981
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i187) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i193

if.else.i5.i.i189:                                ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i193

vga_rcrt.exit.i193:                               ; preds = %if.else.i5.i.i189, %if.then.i4.i.i188
  %retval.0.i.i.i190 = phi i8 [ %37, %if.then.i4.i.i188 ], [ %38, %if.else.i5.i.i189 ]
  %and4.i191 = and i8 %retval.0.i.i.i190, -49
  %or.i192 = or i8 %and4.i191, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i185, label %if.else.i5.i14.i197, label %if.then.i4.i13.i196

if.then.i4.i13.i196:                              ; preds = %vga_rcrt.exit.i193
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i194 = getelementptr i8, ptr %36, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i194, i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i195 = getelementptr i8, ptr %36, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i195, i8 %or.i192) #7, !srcloc !224
  br label %svga_wcrt_mask.exit198

if.else.i5.i14.i197:                              ; preds = %vga_rcrt.exit.i193
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i192) #7, !srcloc !224
  br label %svga_wcrt_mask.exit198

svga_wcrt_mask.exit198:                           ; preds = %if.else.i5.i14.i197, %if.then.i4.i13.i196
  %39 = ptrtoint ptr %state68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state68, align 4
  %tobool.not.i.i.i199 = icmp eq ptr %40, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i199, label %if.else.i5.i.i203, label %if.then.i4.i.i202

if.then.i4.i.i202:                                ; preds = %svga_wcrt_mask.exit198
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i200 = getelementptr i8, ptr %40, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i200, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i201 = getelementptr i8, ptr %40, i32 965
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i201) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i207

if.else.i5.i.i203:                                ; preds = %svga_wcrt_mask.exit198
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i207

vga_rseq.exit.i207:                               ; preds = %if.else.i5.i.i203, %if.then.i4.i.i202
  %retval.0.i.i.i204 = phi i8 [ %41, %if.then.i4.i.i202 ], [ %42, %if.else.i5.i.i203 ]
  %or.i206 = or i8 %retval.0.i.i.i204, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i199, label %if.else.i5.i14.i211, label %if.then.i4.i13.i210

if.then.i4.i13.i210:                              ; preds = %vga_rseq.exit.i207
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i208 = getelementptr i8, ptr %40, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i208, i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i209 = getelementptr i8, ptr %40, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i209, i8 %or.i206) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i211:                              ; preds = %vga_rseq.exit.i207
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i206) #7, !srcloc !224
  br label %sw.epilog

do.body73:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt8623fb_blank.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt8623fb_blank, %if.then85)) #7
          to label %do.end89 [label %if.then85], !srcloc !222

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %node86 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %43 = ptrtoint ptr %node86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node86, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vt8623fb_blank.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.65, i32 noundef %44) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then85, %do.body73
  %state90 = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %state90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state90, align 4
  %tobool.not.i.i.i213 = icmp eq ptr %46, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i213, label %if.else.i5.i.i217, label %if.then.i4.i.i216

if.then.i4.i.i216:                                ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i214 = getelementptr i8, ptr %46, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i214, i8 54) #7, !srcloc !224
  %add.ptr.i.i3.i.i215 = getelementptr i8, ptr %46, i32 981
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i215) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rcrt.exit.i221

if.else.i5.i.i217:                                ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rcrt.exit.i221

vga_rcrt.exit.i221:                               ; preds = %if.else.i5.i.i217, %if.then.i4.i.i216
  %retval.0.i.i.i218 = phi i8 [ %47, %if.then.i4.i.i216 ], [ %48, %if.else.i5.i.i217 ]
  %or.i220 = or i8 %retval.0.i.i.i218, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i213, label %if.else.i5.i14.i225, label %if.then.i4.i13.i224

if.then.i4.i13.i224:                              ; preds = %vga_rcrt.exit.i221
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i222 = getelementptr i8, ptr %46, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i222, i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i223 = getelementptr i8, ptr %46, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i223, i8 %or.i220) #7, !srcloc !224
  br label %svga_wcrt_mask.exit226

if.else.i5.i14.i225:                              ; preds = %vga_rcrt.exit.i221
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i220) #7, !srcloc !224
  br label %svga_wcrt_mask.exit226

svga_wcrt_mask.exit226:                           ; preds = %if.else.i5.i14.i225, %if.then.i4.i13.i224
  %49 = ptrtoint ptr %state90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state90, align 4
  %tobool.not.i.i.i227 = icmp eq ptr %50, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i227, label %if.else.i5.i.i231, label %if.then.i4.i.i230

if.then.i4.i.i230:                                ; preds = %svga_wcrt_mask.exit226
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i.i228 = getelementptr i8, ptr %50, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i228, i8 1) #7, !srcloc !224
  %add.ptr.i.i3.i.i229 = getelementptr i8, ptr %50, i32 965
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i229) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  br label %vga_rseq.exit.i235

if.else.i5.i.i231:                                ; preds = %svga_wcrt_mask.exit226
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %vga_rseq.exit.i235

vga_rseq.exit.i235:                               ; preds = %if.else.i5.i.i231, %if.then.i4.i.i230
  %retval.0.i.i.i232 = phi i8 [ %51, %if.then.i4.i.i230 ], [ %52, %if.else.i5.i.i231 ]
  %or.i234 = or i8 %retval.0.i.i.i232, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i227, label %if.else.i5.i14.i239, label %if.then.i4.i13.i238

if.then.i4.i13.i238:                              ; preds = %vga_rseq.exit.i235
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i11.i236 = getelementptr i8, ptr %50, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i11.i236, i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i3.i12.i237 = getelementptr i8, ptr %50, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i12.i237, i8 %or.i234) #7, !srcloc !224
  br label %sw.epilog

if.else.i5.i14.i239:                              ; preds = %vga_rseq.exit.i235
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #7, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i234) #7, !srcloc !224
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i5.i14.i239, %if.then.i4.i13.i238, %if.else.i5.i14.i211, %if.then.i4.i13.i210, %if.else.i5.i14.i183, %if.then.i4.i13.i182, %if.else.i5.i14.i155, %if.then.i4.i13.i154, %if.else.i5.i14.i130, %if.then.i4.i13.i129, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  %div27 = lshr i32 %5, 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %div27, %7
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %9
  %shr = lshr i32 %add, 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line_length, align 4
  %mul5 = mul i32 %11, %5
  %xoffset6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %12 = ptrtoint ptr %xoffset6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xoffset6, align 4
  %mul9 = mul i32 %13, %3
  %div1026 = lshr i32 %mul9, 3
  %add11 = add i32 %div1026, %mul5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp14 = icmp eq i32 %3, 4
  %cond = select i1 %cmp14, i32 2, i32 1
  %shr15 = lshr i32 %add11, %cond
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.0 = phi i32 [ %shr, %if.then ], [ %shr15, %if.else ]
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  tail call void @svga_wcrt_multi(ptr noundef %15, ptr noundef nonnull @vt8623_start_address_regs, i32 noundef %offset.0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8623fb_fillrect(ptr noundef %info, ptr noundef %rect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %x.023.i = phi i32 [ %add.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %dst.022.i = phi ptr [ %incdec.ptr.i, %for.body5.i.for.body5.i_crit_edge ], [ %dst1.025.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %dst.022.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.022.i, i32 %mul.i.i) #7, !srcloc !240
  %add.i = add i32 %x.023.i, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp4.i = icmp ult i32 %add.i, %23
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.end.i_crit_edge

for.body5.i.for.end.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end.i.for.cond3.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8623fb_imageblit(ptr noundef %info, ptr noundef %image) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else13_crit_edge

entry.if.else13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vt8623fb_iplan_imageblit(ptr noundef %info, ptr noundef %image)
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vt8623fb_cfb4_imageblit(ptr noundef %info, ptr noundef %image)
  br label %if.end14

if.else13:                                        ; preds = %land.lhs.true6.if.else13_crit_edge, %land.lhs.true3.if.else13_crit_edge, %land.lhs.true.if.else13_crit_edge, %entry.if.else13_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #7
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
declare dso_local void @svga_wseq_multi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_textmode_vga_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_set_timings(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_settile(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilecopy(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilefill(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tileblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8623fb_tilecursor(ptr noundef %info, ptr noundef %cursor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.vt8623fb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void @svga_tilecursor(ptr noundef %3, ptr noundef %info, ptr noundef %cursor) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_get_tilemax(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svga_tilecursor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svga_compute_pll(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt8623fb_iplan_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.048, i32 %or) #7, !srcloc !240
  %add = add i32 %x.049, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp5 = icmp ult i32 %add, %23
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.end.for.cond4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt8623fb_cfb4_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.037, i32 %or) #7, !srcloc !240
  %add = add i32 %x.038, 8
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %cmp6 = icmp ult i32 %add, %23
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.end.for.cond5.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond5.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623_pci_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.66) #10
  tail call void @console_lock() #7
  %open_lock = getelementptr inbounds %struct.vt8623fb_info, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #7
  %ref_count = getelementptr inbounds %struct.vt8623fb_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #7
  tail call void @console_unlock() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8623_pci_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.68) #10
  tail call void @console_lock() #7
  %open_lock = getelementptr inbounds %struct.vt8623fb_info, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #7
  %ref_count = getelementptr inbounds %struct.vt8623fb_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @vt8623fb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #7
  br label %fail

fail:                                             ; preds = %if.end, %entry.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #7
  tail call void @console_unlock() #7
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
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__UNIQUE_ID_author305, !1, !"__UNIQUE_ID_author305", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 100, i32 1}
!2 = !{ptr @__UNIQUE_ID_file306, !3, !"__UNIQUE_ID_file306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 101, i32 1}
!4 = !{ptr @__UNIQUE_ID_license307, !3, !"__UNIQUE_ID_license307", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 102, i32 1}
!7 = !{ptr @__param_mode_option, !8, !"__param_mode_option", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 104, i32 1}
!9 = !{ptr @__UNIQUE_ID_mode_optiontype309, !8, !"__UNIQUE_ID_mode_optiontype309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_mode_option310, !11, !"__UNIQUE_ID_mode_option310", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 105, i32 1}
!12 = !{ptr @__param_mode, !13, !"__param_mode", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 106, i32 1}
!14 = !{ptr @__UNIQUE_ID_modetype311, !13, !"__UNIQUE_ID_modetype311", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mode312, !16, !"__UNIQUE_ID_mode312", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 107, i32 1}
!17 = !{ptr @__param_mtrr, !18, !"__param_mtrr", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 108, i32 1}
!19 = !{ptr @__UNIQUE_ID_mtrrtype313, !18, !"__UNIQUE_ID_mtrrtype313", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_mtrr314, !21, !"__UNIQUE_ID_mtrr314", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 109, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 902, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vt8623fb_cleanup.__UNIQUE_ID_ddebug326, !23, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_vt8623fb__328_929_vt8623fb_init6, !29, !"__initcall__kmod_vt8623fb__328_929_vt8623fb_init6", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 929, i32 1}
!30 = !{ptr @__exitcall_vt8623fb_cleanup, !31, !"__exitcall_vt8623fb_cleanup", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 930, i32 1}
!32 = !{ptr @__param_str_mode_option, !8, !"__param_str_mode_option", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 97, i32 28}
!35 = !{ptr @mode_option, !36, !"mode_option", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 97, i32 14}
!37 = !{ptr @__param_str_mode, !13, !"__param_str_mode", i1 false, i1 false}
!38 = !{ptr @__param_str_mtrr, !18, !"__param_str_mtrr", i1 false, i1 false}
!39 = !{ptr @mtrr, !40, !"mtrr", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 98, i32 12}
!41 = !{ptr @vt8623fb_pci_driver, !42, !"vt8623fb_pci_driver", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 890, i32 26}
!43 = !{ptr @vt8623_devices, !44, !"vt8623_devices", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 883, i32 35}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 666, i32 3}
!47 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vt8623_pci_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @vt8623_pci_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vt8623_pci_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 676, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 685, i32 3}
!57 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vt8623_pci_probe._entry.10, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @vt8623_pci_probe._entry_ptr.13, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 691, i32 3}
!62 = !{ptr @vt8623_pci_probe._entry.14, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vt8623_pci_probe._entry_ptr.16, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 704, i32 3}
!66 = !{ptr @vt8623_pci_probe._entry.17, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @vt8623_pci_probe._entry_ptr.19, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 711, i32 3}
!70 = !{ptr @vt8623_pci_probe._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vt8623_pci_probe._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 731, i32 3}
!74 = !{ptr @vt8623_pci_probe._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @vt8623_pci_probe._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 736, i32 23}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 750, i32 3}
!80 = !{ptr @vt8623_pci_probe._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @vt8623_pci_probe._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 756, i32 3}
!84 = !{ptr @vt8623_pci_probe._entry.30, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @vt8623_pci_probe._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 762, i32 3}
!88 = !{ptr @vt8623_pci_probe._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vt8623_pci_probe._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 766, i32 2}
!92 = !{ptr @vt8623_pci_probe._entry.36, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vt8623_pci_probe._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @vt8623fb_ops, !95, !"vt8623fb_ops", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 637, i32 28}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 328, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vt8623fb_check_var._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @vt8623fb_check_var._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 347, i32 3}
!103 = !{ptr @vt8623fb_check_var._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @vt8623fb_check_var._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 355, i32 3}
!107 = !{ptr @vt8623fb_check_var._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vt8623fb_check_var._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 363, i32 3}
!111 = !{ptr @vt8623fb_check_var._entry.47, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @vt8623fb_check_var._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @vt8623fb_formats, !114, !"vt8623fb_formats", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 42, i32 36}
!115 = !{ptr @vt8623_timing_regs, !116, !"vt8623_timing_regs", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 84, i32 38}
!117 = !{ptr @vt8623_h_total_regs, !118, !"vt8623_h_total_regs", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 65, i32 32}
!119 = !{ptr @vt8623_h_display_regs, !120, !"vt8623_h_display_regs", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 66, i32 32}
!121 = !{ptr @vt8623_h_blank_start_regs, !122, !"vt8623_h_blank_start_regs", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 67, i32 32}
!123 = !{ptr @vt8623_h_blank_end_regs, !124, !"vt8623_h_blank_end_regs", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 68, i32 32}
!125 = !{ptr @vt8623_h_sync_start_regs, !126, !"vt8623_h_sync_start_regs", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 69, i32 32}
!127 = !{ptr @vt8623_h_sync_end_regs, !128, !"vt8623_h_sync_end_regs", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 70, i32 32}
!129 = !{ptr @vt8623_v_total_regs, !130, !"vt8623_v_total_regs", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 72, i32 32}
!131 = !{ptr @vt8623_v_display_regs, !132, !"vt8623_v_display_regs", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 73, i32 32}
!133 = !{ptr @vt8623_v_blank_start_regs, !134, !"vt8623_v_blank_start_regs", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 74, i32 32}
!135 = !{ptr @vt8623_v_blank_end_regs, !136, !"vt8623_v_blank_end_regs", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 75, i32 32}
!137 = !{ptr @vt8623_v_sync_start_regs, !138, !"vt8623_v_sync_start_regs", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 76, i32 32}
!139 = !{ptr @vt8623_v_sync_end_regs, !140, !"vt8623_v_sync_end_regs", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 77, i32 32}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 469, i32 3}
!143 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug315, !142, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 475, i32 3}
!147 = !{ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug316, !146, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 481, i32 3}
!150 = !{ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug317, !149, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 486, i32 3}
!153 = !{ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug318, !152, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 490, i32 3}
!156 = !{ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug319, !155, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 494, i32 3}
!159 = !{ptr @vt8623fb_set_par.__UNIQUE_ID_ddebug320, !158, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!160 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 498, i32 3}
!162 = !{ptr @vt8623fb_set_par._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @vt8623fb_set_par._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @vt8623fb_tile_ops, !165, !"vt8623fb_tile_ops", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 121, i32 27}
!166 = !{ptr @vt8623_line_compare_regs, !167, !"vt8623_line_compare_regs", i1 false, i1 false}
!167 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 80, i32 32}
!168 = !{ptr @vt8623_start_address_regs, !169, !"vt8623_start_address_regs", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 82, i32 32}
!170 = !{ptr @vt8623_offset_regs, !171, !"vt8623_offset_regs", i1 false, i1 false}
!171 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 79, i32 32}
!172 = !{ptr @vt8623_fetch_count_regs, !173, !"vt8623_fetch_count_regs", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 81, i32 32}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 259, i32 3}
!176 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @vt8623_set_pixclock._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @vt8623_set_pixclock._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @vt8623_pll, !180, !"vt8623_pll", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 60, i32 30}
!181 = !{ptr @.str.60, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 579, i32 3}
!183 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @vt8623fb_blank.__UNIQUE_ID_ddebug321, !182, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!185 = !{ptr @.str.62, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 584, i32 3}
!187 = !{ptr @vt8623fb_blank.__UNIQUE_ID_ddebug322, !186, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!188 = !{ptr @.str.63, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 589, i32 3}
!190 = !{ptr @vt8623fb_blank.__UNIQUE_ID_ddebug323, !189, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!191 = !{ptr @.str.64, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 594, i32 3}
!193 = !{ptr @vt8623fb_blank.__UNIQUE_ID_ddebug324, !192, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!194 = !{ptr @.str.65, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 599, i32 3}
!196 = !{ptr @vt8623fb_blank.__UNIQUE_ID_ddebug325, !195, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!197 = !{ptr @vt8623_pci_pm_ops, !198, !"vt8623_pci_pm_ops", i1 false, i1 false}
!198 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 870, i32 32}
!199 = !{ptr @.str.66, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 825, i32 2}
!201 = !{ptr @.str.67, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @vt8623_pci_suspend._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @vt8623_pci_suspend._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.68, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 852, i32 2}
!206 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @vt8623_pci_resume._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @vt8623_pci_resume._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.70, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/vt8623fb.c", i32 921, i32 2}
!211 = !{ptr @.str.71, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @vt8623fb_init.__UNIQUE_ID_ddebug327, !210, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{i64 2148978137, i64 2148978142, i64 2148978155, i64 2148978199, i64 2148978233, i64 2148978254}
!223 = !{!"auto-init"}
!224 = !{i64 6625877}
!225 = !{i64 6626272}
!226 = !{i64 2156439173}
!227 = !{i64 2154159948}
!228 = !{i64 2156439553}
!229 = !{i64 2154161933}
!230 = !{i64 2156495541}
!231 = !{i64 2156495869}
!232 = !{i64 2156496201}
!233 = !{i64 2156496535}
!234 = !{i64 2156496868}
!235 = !{i64 2156497198}
!236 = !{i64 2156497526}
!237 = !{i64 2156497858}
!238 = !{i64 2156498192}
!239 = !{i64 2156498525}
!240 = !{i64 6626074}
