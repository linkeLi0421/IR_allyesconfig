; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/i740fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/i740fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.i740fb_par = type { ptr, i8, i32, i8, %struct.i2c_adapter, %struct.i2c_algo_bit_data, [16 x i32], %struct.mutex, i32, [25 x i8], [21 x i8], [9 x i8], [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@i740fb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @i740fb_id_table, ptr @i740fb_probe, ptr @i740fb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i740fb_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_i740fb__314_1289_i740fb_init6 = internal global ptr @i740fb_init, section ".initcall6.init", align 4
@__exitcall_i740fb_exit = internal global ptr @i740fb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author315 = internal constant [64 x i8] c"i740fb.author=(c) 2011 Ondrej Zary <linux@rainbow-software.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [39 x i8] c"i740fb.file=drivers/video/fbdev/i740fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [19 x i8] c"i740fb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [45 x i8] c"i740fb.description=fbdev driver for Intel740\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [19 x i8] c"i740fb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype319 = internal constant [34 x i8] c"i740fb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option320 = internal constant [65 x i8] c"i740fb.parm=mode_option:Default video mode ('640x480-8@60', etc)\00", section ".modinfo", align 1
@__param_str_mtrr = internal constant [12 x i8] c"i740fb.mtrr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mtrr = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_mtrr = internal constant %struct.kernel_param { ptr @__param_str_mtrr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @mtrr } }, section "__param", align 4
@__UNIQUE_ID_mtrrtype321 = internal constant [25 x i8] c"i740fb.parmtype=mtrr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mtrr322 = internal constant [83 x i8] c"i740fb.parm=mtrr:Enable write-combining with MTRR (1=enable, 0=disable, default=1)\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i740fb\00", [25 x i8] zeroinitializer }, align 32
@i740fb_id_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 209, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 30720, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@i740fb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @i740fb_suspend, ptr @i740fb_resume, ptr null, ptr @i740fb_resume, ptr @i740fb_suspend, ptr @i740fb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i740fb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&par->open_lock\00", [16 x i8] zeroinitializer }, align 32
@i740fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @i740fb_open, ptr @i740fb_release, ptr null, ptr null, ptr @i740fb_check_var, ptr @i740fb_set_par, ptr @i740fb_setcolreg, ptr null, ptr @i740fb_blank, ptr @i740fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i740fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1022, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i740fb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/i740fb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr = internal global ptr @i740fb_probe._entry, section ".printk_index", align 4
@i740fb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1028, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error requesting regions\0A\00", [38 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.9 = internal global ptr @i740fb_probe._entry.7, section ".printk_index", align 4
@i740fb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1034, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error remapping base\0A\00", [42 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.12 = internal global ptr @i740fb_probe._entry.10, section ".printk_index", align 4
@i740fb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1041, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error remapping MMIO\0A\00", [42 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.15 = internal global ptr @i740fb_probe._entry.13, section ".printk_index", align 4
@i740fb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fb%d: Intel740 on %s, %ld KB %s\0A\00", [61 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.18 = internal global ptr @i740fb_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SGRAM\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRAM\00", [26 x i8] zeroinitializer }, align 32
@i740fb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"i740fb\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 8, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@i740fb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1077, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error getting mode database\0A\00", [35 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.23 = internal global ptr @i740fb_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"640x480-8@60\00", [19 x i8] zeroinitializer }, align 32
@i740fb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode %s not found\0A\00", [45 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.27 = internal global ptr @i740fb_probe._entry.25, section ".printk_index", align 4
@i740fb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot allocate colormap\0A\00", [38 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.30 = internal global ptr @i740fb_probe._entry.28, section ".printk_index", align 4
@i740fb_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error registering framebuffer\0A\00", [33 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.33 = internal global ptr @i740fb_probe._entry.31, section ".printk_index", align 4
@i740fb_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@i740fb_probe._entry_ptr.36 = internal global ptr @i740fb_probe._entry.34, section ".printk_index", align 4
@i740fb_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fb%d: release called with zero refcount\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i740fb_release\00", [17 x i8] zeroinitializer }, align 32
@i740fb_release._entry_ptr = internal global ptr @i740fb_release._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i740fb_decode_var.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i740fb_decode_var\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"decode_var: xres: %i, yres: %i, xres_v: %i, xres_v: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@i740fb_decode_var.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09xoff: %i, yoff: %i, bpp: %i, graysc: %i\0A\00", [54 x i8] zeroinitializer }, align 32
@i740fb_decode_var.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.42, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\09activate: %i, nonstd: %i, vmode: %i\0A\00", [58 x i8] zeroinitializer }, align 32
@i740fb_decode_var.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.43, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\09pixclock: %i, hsynclen:%i, vsynclen:%i\0A\00", [55 x i8] zeroinitializer }, align 32
@i740fb_decode_var.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.44, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09left: %i, right: %i, up:%i, lower:%i\0A\00", [57 x i8] zeroinitializer }, align 32
@i740fb_decode_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"requested pixclock %i MHz out of range (max. %i MHz at 8bpp)\0A\00", [34 x i8] zeroinitializer }, align 32
@i740fb_decode_var._entry_ptr = internal global ptr @i740fb_decode_var._entry, section ".printk_index", align 4
@i740fb_decode_var._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.4, i32 437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"requested pixclock %i MHz out of range (max. %i MHz at 15/16bpp)\0A\00", [62 x i8] zeroinitializer }, align 32
@i740fb_decode_var._entry_ptr.48 = internal global ptr @i740fb_decode_var._entry.46, section ".printk_index", align 4
@i740fb_decode_var._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.4, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"requested pixclock %i MHz out of range (max. %i MHz at 24bpp)\0A\00", [33 x i8] zeroinitializer }, align 32
@i740fb_decode_var._entry_ptr.51 = internal global ptr @i740fb_decode_var._entry.49, section ".printk_index", align 4
@i740fb_decode_var._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"requested pixclock %i MHz out of range (max. %i MHz at 32bpp)\0A\00", [33 x i8] zeroinitializer }, align 32
@i740fb_decode_var._entry_ptr.54 = internal global ptr @i740fb_decode_var._entry.52, section ".printk_index", align 4
@i740fb_decode_var._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.4, i32 491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"not enough video memory (%d KB requested, %ld KB available)\0A\00", [35 x i8] zeroinitializer }, align 32
@i740fb_decode_var._entry_ptr.57 = internal global ptr @i740fb_decode_var._entry.55, section ".printk_index", align 4
@i740fb_setcolreg.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i740fb_setcolreg\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"setcolreg: regno: %i, red=%d, green=%d, blue=%d, transp=%d, bpp=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@i740fb_pan_display.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i740fb_pan_display\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pan_display: xoffset: %i yoffset: %i base: %i\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mtrr:\00", [26 x i8] zeroinitializer }, align 32
@switch.table.i740fb_blank = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00   ", [27 x i8] zeroinitializer }, align 32
@switch.table.i740fb_blank.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\08\02\0A", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.68 = internal global [34 x i64] [i64 32, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 15, i64 16, i64 24, i64 32]
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"i740fb_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1242, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 33, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 34, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1243, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"i740fb_id_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1235, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"i740fb_pm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1221, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1013, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"i740fb_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 984, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1022, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1028, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1034, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1041, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1058, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"i740fb_fix\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 86, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1076, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1098, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1106, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1124, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1130, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1134, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 198, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 407, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 409, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 412, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 414, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 416, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 426, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 436, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 445, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 453, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 490, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 866, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 903, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1258, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [32 x i8] c"../drivers/video/fbdev/i740fb.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1261, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant [26 x i8] c"switch.table.i740fb_blank\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [29 x i8] c"switch.table.i740fb_blank.64\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__UNIQUE_ID_mode_option320, ptr @__UNIQUE_ID_mode_optiontype319, ptr @__UNIQUE_ID_mtrr322, ptr @__UNIQUE_ID_mtrrtype321, ptr @__exitcall_i740fb_exit, ptr @__initcall__kmod_i740fb__314_1289_i740fb_init6, ptr @__param_mode_option, ptr @__param_mtrr, ptr @i740fb_decode_var._entry, ptr @i740fb_decode_var._entry.46, ptr @i740fb_decode_var._entry.49, ptr @i740fb_decode_var._entry.52, ptr @i740fb_decode_var._entry.55, ptr @i740fb_decode_var._entry_ptr, ptr @i740fb_decode_var._entry_ptr.48, ptr @i740fb_decode_var._entry_ptr.51, ptr @i740fb_decode_var._entry_ptr.54, ptr @i740fb_decode_var._entry_ptr.57, ptr @i740fb_exit, ptr @i740fb_probe._entry, ptr @i740fb_probe._entry.10, ptr @i740fb_probe._entry.13, ptr @i740fb_probe._entry.16, ptr @i740fb_probe._entry.21, ptr @i740fb_probe._entry.25, ptr @i740fb_probe._entry.28, ptr @i740fb_probe._entry.31, ptr @i740fb_probe._entry.34, ptr @i740fb_probe._entry.7, ptr @i740fb_probe._entry_ptr, ptr @i740fb_probe._entry_ptr.12, ptr @i740fb_probe._entry_ptr.15, ptr @i740fb_probe._entry_ptr.18, ptr @i740fb_probe._entry_ptr.23, ptr @i740fb_probe._entry_ptr.27, ptr @i740fb_probe._entry_ptr.30, ptr @i740fb_probe._entry_ptr.33, ptr @i740fb_probe._entry_ptr.36, ptr @i740fb_probe._entry_ptr.9, ptr @i740fb_release._entry, ptr @i740fb_release._entry_ptr, ptr @i740fb_driver, ptr @mode_option, ptr @mtrr, ptr @.str, ptr @i740fb_id_table, ptr @i740fb_pm_ops, ptr @i740fb_probe.__key, ptr @.str.1, ptr @i740fb_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @i740fb_fix, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @switch.table.i740fb_blank, ptr @switch.table.i740fb_blank.64], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_decode_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_decode_var._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_decode_var._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_decode_var._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i740fb_decode_var._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i740fb_blank to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i740fb_blank.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i740fb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @i740fb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_init() #0 section ".init.text" align 64 {
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
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @i740fb_setup(ptr noundef %2) #11
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @i740fb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_probe(ptr noundef %dev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call ptr @framebuffer_alloc(i32 noundef 1672, ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %par2 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par2, align 4
  %open_lock = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @i740fb_probe.__key) #8
  %var = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %activate = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 13
  %2 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %activate, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %bits_per_pixel, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %4 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @i740fb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 6
  %pseudo_palette4 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 27
  %5 = ptrtoint ptr %pseudo_palette4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pseudo_palette, ptr %pseudo_palette4, align 4
  %call5 = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #12
  br label %err_enable_device

if.end11:                                         ; preds = %if.end
  %fix = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  %call13 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef %fix) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %device19 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8) #12
  br label %err_enable_device

if.end20:                                         ; preds = %if.end11
  %call21 = tail call ptr @pci_ioremap_wc_bar(ptr noundef %dev, i32 noundef 0) #8
  %10 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %10, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %device27 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %12 = ptrtoint ptr %device27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11) #12
  br label %err_ioremap_1

if.end28:                                         ; preds = %if.end20
  %call29 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 1) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %1, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %device36 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %15 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14) #12
  br label %err_ioremap_2

if.end37:                                         ; preds = %if.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %call29, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 80) #8, !srcloc !153
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %18, i32 983
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %20 = and i8 %19, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i300 = getelementptr i8, ptr %22, i32 982
  br i1 %cmp, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i300, i8 86) #8, !srcloc !153
  br label %if.end41

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i300, i8 85) #8, !srcloc !153
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then40
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr.i.i302 = getelementptr i8, ptr %24, i32 983
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i302) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %conv43 = zext i8 %25 to i32
  %mul44 = shl nuw nsw i32 %conv43, 20
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 26
  %26 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul44, ptr %screen_size, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i303 = getelementptr i8, ptr %28, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i303, i8 81) #8, !srcloc !153
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %add.ptr.i6.i304 = getelementptr i8, ptr %30, i32 983
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i304) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %32 = and i8 %31, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %.not = icmp eq i8 %32, 0
  %has_sgram = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 1
  %frombool = zext i1 %.not to i8
  %33 = ptrtoint ptr %has_sgram to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %has_sgram, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 1
  %34 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end41.pci_name.exit_crit_edge

if.end41.pci_name.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end41.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %if.end41.pci_name.exit_crit_edge ]
  %40 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %screen_size, align 4
  %shr = lshr i32 %41, 10
  %cond = select i1 %.not, ptr @.str.19, ptr @.str.20
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %35, ptr noundef %retval.0.i.i, i32 noundef %shr, ptr noundef nonnull %cond) #12
  %42 = call ptr @memcpy(ptr %fix, ptr @i740fb_fix, i32 68)
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 10
  %45 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mmio_start, align 4
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %46 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp65 = icmp eq i32 %47, 0
  br i1 %cmp65, label %pci_name.exit.cond.end_crit_edge, label %cond.false

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %47, 1
  %add = sub i32 %sub, %49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %pci_name.exit.cond.end_crit_edge
  %cond73 = phi i32 [ %add, %cond.false ], [ 0, %pci_name.exit.cond.end_crit_edge ]
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 11
  %50 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond73, ptr %mmio_len, align 4
  %51 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %resource, align 8
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %smem_start, align 4
  %54 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %screen_size, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %smem_len, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 2
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8192, ptr %flags, align 4
  %call81 = tail call fastcc i32 @i740fb_setup_ddc_bus(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %cond.end.if.end113_crit_edge

cond.end.if.end113_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then84:                                        ; preds = %cond.end
  %ddc_registered = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %ddc_registered to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %ddc_registered, align 4
  %ddc_adapter = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4
  %call85 = tail call ptr @fb_ddc_read(ptr noundef %ddc_adapter) #8
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.then84.if.end113_crit_edge, label %if.then87

if.then84.if.end113_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then87:                                        ; preds = %if.then84
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call85, ptr noundef %monspecs) #8
  tail call void @kfree(ptr noundef nonnull %call85) #8
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %modedb, align 4
  %tobool89.not = icmp eq ptr %60, null
  br i1 %tobool89.not, label %do.end93, label %if.else95

do.end93:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %device94 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %61 = ptrtoint ptr %device94 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.22) #12
  br label %if.end113

if.else95:                                        ; preds = %if.then87
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 6
  %63 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %modedb_len, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef nonnull %60, i32 noundef %64, ptr noundef %modelist) #8
  %call101 = tail call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #8
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.else95.if.end113_crit_edge, label %if.then103

if.else95.if.end113_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then103:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call101) #8
  %call106 = tail call i32 @i740fb_check_var(ptr noundef %var, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br label %if.end113

if.end113:                                        ; preds = %if.then103, %if.else95.if.end113_crit_edge, %do.end93, %if.then84.if.end113_crit_edge, %cond.end.if.end113_crit_edge
  %found.1.off0 = phi i1 [ false, %do.end93 ], [ false, %if.then84.if.end113_crit_edge ], [ false, %cond.end.if.end113_crit_edge ], [ false, %if.else95.if.end113_crit_edge ], [ %tobool107.not, %if.then103 ]
  %65 = load ptr, ptr @mode_option, align 4
  %tobool114.not = icmp ne ptr %65, null
  %brmerge = select i1 %tobool114.not, i1 true, i1 %found.1.off0
  br i1 %brmerge, label %if.end117, label %if.end117.thread

if.end117.thread:                                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  store ptr @.str.24, ptr @mode_option, align 4
  br label %if.then119

if.end117:                                        ; preds = %if.end113
  %tobool118.not = icmp eq ptr %65, null
  br i1 %tobool118.not, label %if.end117.if.end137_crit_edge, label %if.end117.if.then119_crit_edge

if.end117.if.then119_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.end117.if.end137_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then119:                                       ; preds = %if.end117.if.then119_crit_edge, %if.end117.thread
  %66 = phi ptr [ @.str.24, %if.end117.thread ], [ %65, %if.end117.if.then119_crit_edge ]
  %modedb122 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %modedb122 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %modedb122, align 4
  %modedb_len124 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 6
  %69 = ptrtoint ptr %modedb_len124 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %modedb_len124, align 4
  %71 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bits_per_pixel, align 4
  %call127 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call, ptr noundef nonnull %66, ptr noundef %68, i32 noundef %70, ptr noundef null, i32 noundef %72) #8
  %73 = zext i32 %call127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call127, label %if.then119.if.end137_crit_edge [
    i32 0, label %if.then119.do.end134_crit_edge
    i32 4, label %if.then119.do.end134_crit_edge306
  ]

if.then119.do.end134_crit_edge306:                ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134

if.then119.do.end134_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134

if.then119.if.end137_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end134:                                        ; preds = %if.then119.do.end134_crit_edge, %if.then119.do.end134_crit_edge306
  %device135 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %74 = ptrtoint ptr %device135 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device135, align 4
  %76 = load ptr, ptr @mode_option, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.26, ptr noundef %76) #12
  br label %if.end137

if.end137:                                        ; preds = %do.end134, %if.then119.if.end137_crit_edge, %if.end117.if.end137_crit_edge
  %ret.0 = phi i32 [ -22, %do.end134 ], [ 0, %if.end117.if.end137_crit_edge ], [ %call127, %if.then119.if.end137_crit_edge ]
  %modedb139 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 1
  %77 = ptrtoint ptr %modedb139 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %modedb139, align 4
  tail call void @fb_destroy_modedb(ptr noundef %78) #8
  %79 = ptrtoint ptr %modedb139 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %modedb139, align 4
  %80 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %smem_len, align 4
  %mul144 = shl i32 %81, 3
  %82 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bits_per_pixel, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %84 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xres_virtual, align 4
  %mul148 = mul i32 %85, %83
  %div = udiv i32 %mul144, %mul148
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %86 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.0)
  %cmp150 = icmp eq i32 %ret.0, -22
  br i1 %cmp150, label %if.end137.err_find_mode_crit_edge, label %if.end153

if.end137.err_find_mode_crit_edge:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_find_mode

if.end153:                                        ; preds = %if.end137
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 12
  %call154 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end161, label %do.end159

do.end159:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  %device160 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %87 = ptrtoint ptr %device160 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device160, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.29) #12
  br label %err_find_mode

if.end161:                                        ; preds = %if.end153
  %call162 = tail call i32 @register_framebuffer(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %do.end172, label %do.end167

do.end167:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %device168 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 21
  %89 = ptrtoint ptr %device168 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.32) #12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_find_mode

do.end172:                                        ; preds = %if.end161
  %91 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %node, align 4
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %92, ptr noundef %fix) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call, ptr %driver_data.i.i, align 4
  %94 = load i32, ptr @mtrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool179.not = icmp eq i32 %94, 0
  br i1 %tobool179.not, label %do.end172.cleanup_crit_edge, label %if.then180

do.end172.cleanup_crit_edge:                      ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then180:                                       ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  %wc_cookie = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %wc_cookie, align 8
  br label %cleanup

err_find_mode:                                    ; preds = %do.end167, %do.end159, %if.end137.err_find_mode_crit_edge
  %ret.1 = phi i32 [ -22, %if.end137.err_find_mode_crit_edge ], [ %call154, %do.end159 ], [ %call162, %do.end167 ]
  %ddc_registered188 = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %ddc_registered188 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ddc_registered188, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool189.not = icmp eq i8 %97, 0
  br i1 %tobool189.not, label %err_find_mode.if.end192_crit_edge, label %if.then190

err_find_mode.if.end192_crit_edge:                ; preds = %err_find_mode
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then190:                                       ; preds = %err_find_mode
  call void @__sanitizer_cov_trace_pc() #10
  %ddc_adapter191 = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter191) #8
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %err_find_mode.if.end192_crit_edge
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %99) #8
  br label %err_ioremap_2

err_ioremap_2:                                    ; preds = %if.end192, %do.end35
  %ret.2 = phi i32 [ %ret.1, %if.end192 ], [ -12, %do.end35 ]
  %100 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %10, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %101) #8
  br label %err_ioremap_1

err_ioremap_1:                                    ; preds = %err_ioremap_2, %do.end26
  %ret.3 = phi i32 [ %ret.2, %err_ioremap_2 ], [ -12, %do.end26 ]
  tail call void @pci_release_regions(ptr noundef %dev) #8
  br label %err_enable_device

err_enable_device:                                ; preds = %err_ioremap_1, %do.end18, %do.end10
  %ret.4 = phi i32 [ %call5, %do.end10 ], [ %call13, %do.end18 ], [ %ret.3, %err_ioremap_1 ]
  tail call void @framebuffer_release(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err_enable_device, %if.then180, %do.end172.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_enable_device ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then180 ], [ 0, %do.end172.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i740fb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  %ddc_registered = getelementptr inbounds %struct.i740fb_par, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ddc_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ddc_registered, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ddc_adapter = getelementptr inbounds %struct.i740fb_par, ptr %3, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %ddc_adapter) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %10) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @framebuffer_release(ptr noundef nonnull %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_wc_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i740fb_setup_ddc_bus(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ddc_adapter = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4
  %name = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4, i32 12
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %fix, i32 noundef 48) #8
  %2 = ptrtoint ptr %ddc_adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ddc_adapter, align 8
  %class = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %class, align 4
  %ddc_algo = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5
  %algo_data = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ddc_algo, ptr %algo_data, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %parent = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %setsda = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @i740fb_ddc_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @i740fb_ddc_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i740fb_ddc_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i740fb_ddc_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5, i32 7
  %12 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %timeout, align 8
  %14 = ptrtoint ptr %ddc_algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %ddc_algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 4, i32 9, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @i2c_bit_add_bus(ptr noundef %ddc_adapter) #8
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_check_var(ptr noundef %var, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = add i32 %1, -8
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 29)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb35
    i32 3, label %sw.bb48
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %5 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %blue, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %6 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %green, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %7 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %length, align 4
  %length5 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %length5, align 4
  %length7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %length7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length7, align 4
  br label %sw.epilog65

sw.bb8:                                           ; preds = %entry
  %green9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cond = icmp eq i32 %12, 6
  %red25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  br i1 %cond, label %sw.bb24, label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %red25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %red25, align 4
  %14 = ptrtoint ptr %green9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %green9, align 4
  %blue16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %15 = ptrtoint ptr %blue16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %blue16, align 4
  %length19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %length19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %length19, align 4
  %17 = ptrtoint ptr %length10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %length10, align 4
  %length23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %length23, align 4
  br label %sw.epilog65

sw.bb24:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %red25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 11, ptr %red25, align 4
  %20 = ptrtoint ptr %green9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %green9, align 4
  %blue29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %21 = ptrtoint ptr %blue29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %blue29, align 4
  %length32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %length32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %length32, align 4
  %length34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %length34, align 4
  br label %sw.epilog65

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %red36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %24 = ptrtoint ptr %red36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %red36, align 4
  %green38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %25 = ptrtoint ptr %green38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %green38, align 4
  %blue40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %26 = ptrtoint ptr %blue40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %blue40, align 4
  %length43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %length43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %length43, align 4
  %length45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %length45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %length45, align 4
  %length47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %length47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %length47, align 4
  br label %sw.epilog65

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %30 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 24, ptr %transp, align 4
  %red50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %31 = ptrtoint ptr %red50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %red50, align 4
  %green52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %32 = ptrtoint ptr %green52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %green52, align 4
  %blue54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %33 = ptrtoint ptr %blue54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %blue54, align 4
  %length57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %length57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %length57, align 4
  %length59 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %length59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %length59, align 4
  %length61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %length61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %length61, align 4
  %length63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %length63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %length63, align 4
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.bb48, %sw.bb35, %sw.bb24, %sw.bb11, %sw.bb
  %38 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %40 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp = icmp ugt i32 %39, %41
  br i1 %cmp, label %if.then, label %sw.epilog65.if.end_crit_edge

sw.epilog65.if.end_crit_edge:                     ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %xres_virtual, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog65.if.end_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %43 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %45 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp68 = icmp ugt i32 %44, %46
  br i1 %cmp68, label %if.then69, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then69:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %yres_virtual, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end.if.end72_crit_edge
  %hfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 12
  %48 = ptrtoint ptr %hfmax to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %if.end72.if.end82_crit_edge, label %land.lhs.true

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end72
  %vfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 19
  %50 = ptrtoint ptr %vfmax to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool74.not = icmp eq i16 %51, 0
  br i1 %tobool74.not, label %land.lhs.true.if.end82_crit_edge, label %land.lhs.true75

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true75:                                  ; preds = %land.lhs.true
  %dclkmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 14
  %52 = ptrtoint ptr %dclkmax to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dclkmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool77.not = icmp eq i32 %53, 0
  br i1 %tobool77.not, label %land.lhs.true75.if.end82_crit_edge, label %land.lhs.true78

land.lhs.true75.if.end82_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %call = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp79 = icmp slt i32 %call, 0
  br i1 %cmp79, label %land.lhs.true78.return_crit_edge, label %land.lhs.true78.if.end82_crit_edge

land.lhs.true78.if.end82_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true78.return_crit_edge:                 ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end82:                                         ; preds = %land.lhs.true78.if.end82_crit_edge, %land.lhs.true75.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %if.end72.if.end82_crit_edge
  br label %return

return:                                           ; preds = %if.end82, %land.lhs.true78.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -22, %entry.return_crit_edge ], [ -22, %land.lhs.true78.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ref_count, align 4
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %3, -1
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %ref_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call = tail call fastcc i32 @i740fb_decode_var(ptr noundef %var, ptr noundef %1, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %5 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %screen_size, align 4
  %7 = call ptr @memset(ptr %4, i32 0, i32 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 1) #8, !srcloc !153
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %11, i32 965
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %or.i.i = or i8 %12, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i.i = zext i8 %or.i.i to i16
  %shl.i.i.i = shl nuw i16 %conv.i.i.i, 8
  %or.i.i.i = or i16 %shl.i.i.i, 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %or.i.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 %13) #8, !srcloc !158
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 986
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i = getelementptr i8, ptr %18, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 0) #8, !srcloc !153
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 21248) #8, !srcloc !158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  %video_clk2_m = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %video_clk2_m to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %video_clk2_m, align 2
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i8 %23 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i205 = or i16 %shl.i.i, 200
  %26 = tail call i16 @llvm.bswap.i16(i16 %or.i.i205) #8
  %add.ptr.i.i206 = getelementptr i8, ptr %25, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i206, i16 %26) #8, !srcloc !158
  %video_clk2_n = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %video_clk2_n to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %video_clk2_n, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i207 = zext i8 %28 to i16
  %shl.i.i208 = shl nuw i16 %conv.i.i207, 8
  %or.i.i209 = or i16 %shl.i.i208, 201
  %31 = tail call i16 @llvm.bswap.i16(i16 %or.i.i209) #8
  %add.ptr.i.i210 = getelementptr i8, ptr %30, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i210, i16 %31) #8, !srcloc !158
  %video_clk2_mn_msbs = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 21
  %32 = ptrtoint ptr %video_clk2_mn_msbs to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %video_clk2_mn_msbs, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i211 = zext i8 %33 to i16
  %shl.i.i212 = shl nuw i16 %conv.i.i211, 8
  %or.i.i213 = or i16 %shl.i.i212, 202
  %36 = tail call i16 @llvm.bswap.i16(i16 %or.i.i213) #8
  %add.ptr.i.i214 = getelementptr i8, ptr %35, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i214, i16 %36) #8, !srcloc !158
  %video_clk2_div_sel = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 22
  %37 = ptrtoint ptr %video_clk2_div_sel to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %video_clk2_div_sel, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i215 = zext i8 %38 to i16
  %shl.i.i216 = shl nuw i16 %conv.i.i215, 8
  %or.i.i217 = or i16 %shl.i.i216, 203
  %41 = tail call i16 @llvm.bswap.i16(i16 %or.i.i217) #8
  %add.ptr.i.i218 = getelementptr i8, ptr %40, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i218, i16 %41) #8, !srcloc !158
  %pixelpipe_cfg0 = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %pixelpipe_cfg0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pixelpipe_cfg0, align 1
  %44 = and i8 %43, -128
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i219 = getelementptr i8, ptr %46, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i219, i8 -128) #8, !srcloc !153
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %48, i32 983
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i = and i8 %49, 127
  %or.i = or i8 %and4.i, %44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i220 = zext i8 %or.i to i16
  %shl.i.i221 = shl nuw i16 %conv.i.i220, 8
  %or.i.i222 = or i16 %shl.i.i221, 128
  %50 = tail call i16 @llvm.bswap.i16(i16 %or.i.i222) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i219, i16 %50) #8, !srcloc !158
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %add.ptr.i.i223 = getelementptr i8, ptr %52, i32 986
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i223) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i224 = getelementptr i8, ptr %55, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i224, i8 0) #8, !srcloc !153
  %misc = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 13
  %56 = ptrtoint ptr %misc to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %misc, align 4
  %58 = or i8 %57, 1
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i225 = getelementptr i8, ptr %60, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i225, i8 %58) #8, !srcloc !153
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i226 = getelementptr i8, ptr %62, i32 964
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i226, i16 1) #8, !srcloc !158
  %arrayidx = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 12, i32 1
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx, align 1
  %65 = or i8 %64, 32
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i227 = zext i8 %65 to i16
  %shl.i.i228 = shl nuw i16 %conv.i.i227, 8
  %or.i.i229 = or i16 %shl.i.i228, 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %or.i.i229) #8
  %add.ptr.i.i230 = getelementptr i8, ptr %67, i32 964
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i230, i16 %68) #8, !srcloc !158
  %arrayidx12 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 12, i32 2
  %69 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx12, align 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i231 = zext i8 %70 to i16
  %shl.i.i232 = shl nuw i16 %conv.i.i231, 8
  %or.i.i233 = or i16 %shl.i.i232, 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %or.i.i233) #8
  %add.ptr.i.i234 = getelementptr i8, ptr %72, i32 964
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i234, i16 %73) #8, !srcloc !158
  %arrayidx12.1 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 12, i32 3
  %74 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx12.1, align 1
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i231.1 = zext i8 %75 to i16
  %shl.i.i232.1 = shl nuw i16 %conv.i.i231.1, 8
  %or.i.i233.1 = or i16 %shl.i.i232.1, 3
  %78 = tail call i16 @llvm.bswap.i16(i16 %or.i.i233.1) #8
  %add.ptr.i.i234.1 = getelementptr i8, ptr %77, i32 964
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i234.1, i16 %78) #8, !srcloc !158
  %arrayidx12.2 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 12, i32 4
  %79 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx12.2, align 1
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i231.2 = zext i8 %80 to i16
  %shl.i.i232.2 = shl nuw i16 %conv.i.i231.2, 8
  %or.i.i233.2 = or i16 %shl.i.i232.2, 4
  %83 = tail call i16 @llvm.bswap.i16(i16 %or.i.i233.2) #8
  %add.ptr.i.i234.2 = getelementptr i8, ptr %82, i32 964
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i234.2, i16 %83) #8, !srcloc !158
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i235 = getelementptr i8, ptr %85, i32 964
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i235, i16 3) #8, !srcloc !158
  %arrayidx13 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 9, i32 17
  %86 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx13, align 1
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i236 = zext i8 %87 to i16
  %shl.i.i237 = shl nuw i16 %conv.i.i236, 8
  %or.i.i238 = or i16 %shl.i.i237, 17
  %90 = tail call i16 @llvm.bswap.i16(i16 %or.i.i238) #8
  %add.ptr.i.i239 = getelementptr i8, ptr %89, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i239, i16 %90) #8, !srcloc !158
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end
  %i.1379 = phi i32 [ 0, %if.end ], [ %inc22, %for.body17.for.body17_crit_edge ]
  %arrayidx20 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 9, i32 %i.1379
  %91 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx20, align 1
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i240 = zext i8 %92 to i16
  %shl.i.i241 = shl nuw i16 %conv.i.i240, 8
  %95 = trunc i32 %i.1379 to i16
  %conv1.i.i242 = and i16 %95, 255
  %or.i.i243 = or i16 %shl.i.i241, %conv1.i.i242
  %96 = tail call i16 @llvm.bswap.i16(i16 %or.i.i243) #8
  %add.ptr.i.i244 = getelementptr i8, ptr %94, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i244, i16 %96) #8, !srcloc !158
  %inc22 = add nuw nsw i32 %i.1379, 1
  %exitcond.not = icmp eq i32 %inc22, 25
  br i1 %exitcond.not, label %for.body27.preheader, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.body27.preheader:                             ; preds = %for.body17
  %arrayidx29 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 0
  %97 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx29, align 1
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245 = zext i8 %98 to i16
  %add.ptr.i.i249 = getelementptr i8, ptr %100, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249, i16 %conv.i.i245) #8, !srcloc !158
  %arrayidx29.1 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 1
  %101 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx29.1, align 1
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.1 = zext i8 %102 to i16
  %shl.i.i246.1 = shl nuw i16 %conv.i.i245.1, 8
  %or.i.i248.1 = or i16 %shl.i.i246.1, 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.1) #8
  %add.ptr.i.i249.1 = getelementptr i8, ptr %104, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.1, i16 %105) #8, !srcloc !158
  %arrayidx29.2 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 2
  %106 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx29.2, align 1
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.2 = zext i8 %107 to i16
  %shl.i.i246.2 = shl nuw i16 %conv.i.i245.2, 8
  %or.i.i248.2 = or i16 %shl.i.i246.2, 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.2) #8
  %add.ptr.i.i249.2 = getelementptr i8, ptr %109, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.2, i16 %110) #8, !srcloc !158
  %arrayidx29.3 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 3
  %111 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx29.3, align 1
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.3 = zext i8 %112 to i16
  %shl.i.i246.3 = shl nuw i16 %conv.i.i245.3, 8
  %or.i.i248.3 = or i16 %shl.i.i246.3, 3
  %115 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.3) #8
  %add.ptr.i.i249.3 = getelementptr i8, ptr %114, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.3, i16 %115) #8, !srcloc !158
  %arrayidx29.4 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 4
  %116 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx29.4, align 1
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.4 = zext i8 %117 to i16
  %shl.i.i246.4 = shl nuw i16 %conv.i.i245.4, 8
  %or.i.i248.4 = or i16 %shl.i.i246.4, 4
  %120 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.4) #8
  %add.ptr.i.i249.4 = getelementptr i8, ptr %119, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.4, i16 %120) #8, !srcloc !158
  %arrayidx29.5 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 5
  %121 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx29.5, align 1
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.5 = zext i8 %122 to i16
  %shl.i.i246.5 = shl nuw i16 %conv.i.i245.5, 8
  %or.i.i248.5 = or i16 %shl.i.i246.5, 5
  %125 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.5) #8
  %add.ptr.i.i249.5 = getelementptr i8, ptr %124, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.5, i16 %125) #8, !srcloc !158
  %arrayidx29.6 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 6
  %126 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx29.6, align 1
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.6 = zext i8 %127 to i16
  %shl.i.i246.6 = shl nuw i16 %conv.i.i245.6, 8
  %or.i.i248.6 = or i16 %shl.i.i246.6, 6
  %130 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.6) #8
  %add.ptr.i.i249.6 = getelementptr i8, ptr %129, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.6, i16 %130) #8, !srcloc !158
  %arrayidx29.7 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 7
  %131 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx29.7, align 1
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.7 = zext i8 %132 to i16
  %shl.i.i246.7 = shl nuw i16 %conv.i.i245.7, 8
  %or.i.i248.7 = or i16 %shl.i.i246.7, 7
  %135 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.7) #8
  %add.ptr.i.i249.7 = getelementptr i8, ptr %134, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.7, i16 %135) #8, !srcloc !158
  %arrayidx29.8 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 11, i32 8
  %136 = ptrtoint ptr %arrayidx29.8 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx29.8, align 1
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i245.8 = zext i8 %137 to i16
  %shl.i.i246.8 = shl nuw i16 %conv.i.i245.8, 8
  %or.i.i248.8 = or i16 %shl.i.i246.8, 8
  %140 = tail call i16 @llvm.bswap.i16(i16 %or.i.i248.8) #8
  %add.ptr.i.i249.8 = getelementptr i8, ptr %139, i32 974
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249.8, i16 %140) #8, !srcloc !158
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body27.preheader
  %i.3381 = phi i32 [ %inc41, %for.body36.for.body36_crit_edge ], [ 0, %for.body27.preheader ]
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  %add.ptr.i.i250 = getelementptr i8, ptr %142, i32 986
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i250) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %conv38 = trunc i32 %i.3381 to i8
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i251 = getelementptr i8, ptr %145, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i251, i8 %conv38) #8, !srcloc !153
  %arrayidx39 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 10, i32 %i.3381
  %146 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx39, align 1
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i252 = getelementptr i8, ptr %149, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i252, i8 %147) #8, !srcloc !153
  %inc41 = add nuw nsw i32 %i.3381, 1
  %exitcond385.not = icmp eq i32 %inc41, 21
  br i1 %exitcond385.not, label %for.end42, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end42:                                        ; preds = %for.body36
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 8
  %add.ptr.i.i253 = getelementptr i8, ptr %151, i32 986
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i253) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i254 = getelementptr i8, ptr %154, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i254, i8 32) #8, !srcloc !153
  %ext_vert_total = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 27
  %155 = ptrtoint ptr %ext_vert_total to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ext_vert_total, align 2
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i255 = zext i8 %156 to i16
  %shl.i.i256 = shl nuw i16 %conv.i.i255, 8
  %or.i.i257 = or i16 %shl.i.i256, 48
  %159 = tail call i16 @llvm.bswap.i16(i16 %or.i.i257) #8
  %add.ptr.i.i258 = getelementptr i8, ptr %158, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i258, i16 %159) #8, !srcloc !158
  %ext_vert_disp_end = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 28
  %160 = ptrtoint ptr %ext_vert_disp_end to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %ext_vert_disp_end, align 1
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i259 = zext i8 %161 to i16
  %shl.i.i260 = shl nuw i16 %conv.i.i259, 8
  %or.i.i261 = or i16 %shl.i.i260, 49
  %164 = tail call i16 @llvm.bswap.i16(i16 %or.i.i261) #8
  %add.ptr.i.i262 = getelementptr i8, ptr %163, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i262, i16 %164) #8, !srcloc !158
  %ext_vert_sync_start = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 29
  %165 = ptrtoint ptr %ext_vert_sync_start to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %ext_vert_sync_start, align 4
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i263 = zext i8 %166 to i16
  %shl.i.i264 = shl nuw i16 %conv.i.i263, 8
  %or.i.i265 = or i16 %shl.i.i264, 50
  %169 = tail call i16 @llvm.bswap.i16(i16 %or.i.i265) #8
  %add.ptr.i.i266 = getelementptr i8, ptr %168, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i266, i16 %169) #8, !srcloc !158
  %ext_vert_blank_start = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 30
  %170 = ptrtoint ptr %ext_vert_blank_start to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ext_vert_blank_start, align 1
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i267 = zext i8 %171 to i16
  %shl.i.i268 = shl nuw i16 %conv.i.i267, 8
  %or.i.i269 = or i16 %shl.i.i268, 51
  %174 = tail call i16 @llvm.bswap.i16(i16 %or.i.i269) #8
  %add.ptr.i.i270 = getelementptr i8, ptr %173, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i270, i16 %174) #8, !srcloc !158
  %ext_horiz_total = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 31
  %175 = ptrtoint ptr %ext_horiz_total to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ext_horiz_total, align 2
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i271 = zext i8 %176 to i16
  %shl.i.i272 = shl nuw i16 %conv.i.i271, 8
  %or.i.i273 = or i16 %shl.i.i272, 53
  %179 = tail call i16 @llvm.bswap.i16(i16 %or.i.i273) #8
  %add.ptr.i.i274 = getelementptr i8, ptr %178, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i274, i16 %179) #8, !srcloc !158
  %ext_horiz_blank = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 32
  %180 = ptrtoint ptr %ext_horiz_blank to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %ext_horiz_blank, align 1
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i275 = zext i8 %181 to i16
  %shl.i.i276 = shl nuw i16 %conv.i.i275, 8
  %or.i.i277 = or i16 %shl.i.i276, 57
  %184 = tail call i16 @llvm.bswap.i16(i16 %or.i.i277) #8
  %add.ptr.i.i278 = getelementptr i8, ptr %183, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i278, i16 %184) #8, !srcloc !158
  %ext_offset = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 33
  %185 = ptrtoint ptr %ext_offset to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ext_offset, align 8
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i279 = zext i8 %186 to i16
  %shl.i.i280 = shl nuw i16 %conv.i.i279, 8
  %or.i.i281 = or i16 %shl.i.i280, 65
  %189 = tail call i16 @llvm.bswap.i16(i16 %or.i.i281) #8
  %add.ptr.i.i282 = getelementptr i8, ptr %188, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i282, i16 %189) #8, !srcloc !158
  %ext_start_addr_hi = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 37
  %190 = ptrtoint ptr %ext_start_addr_hi to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %ext_start_addr_hi, align 1
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i283 = zext i8 %191 to i16
  %shl.i.i284 = shl nuw i16 %conv.i.i283, 8
  %or.i.i285 = or i16 %shl.i.i284, 66
  %194 = tail call i16 @llvm.bswap.i16(i16 %or.i.i285) #8
  %add.ptr.i.i286 = getelementptr i8, ptr %193, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i286, i16 %194) #8, !srcloc !158
  %ext_start_addr = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 36
  %195 = ptrtoint ptr %ext_start_addr to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %ext_start_addr, align 8
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i287 = zext i8 %196 to i16
  %shl.i.i288 = shl nuw i16 %conv.i.i287, 8
  %or.i.i289 = or i16 %shl.i.i288, 64
  %199 = tail call i16 @llvm.bswap.i16(i16 %or.i.i289) #8
  %add.ptr.i.i290 = getelementptr i8, ptr %198, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i290, i16 %199) #8, !srcloc !158
  %interlace_cntl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 34
  %200 = ptrtoint ptr %interlace_cntl to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %interlace_cntl, align 1
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 8
  %and10.i = and i8 %201, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i291 = getelementptr i8, ptr %203, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i291, i8 112) #8, !srcloc !153
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i292 = getelementptr i8, ptr %205, i32 981
  %206 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i292) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i293 = and i8 %206, 127
  %or.i294 = or i8 %and4.i293, %and10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i295 = zext i8 %or.i294 to i16
  %shl.i.i296 = shl nuw i16 %conv.i.i295, 8
  %or.i.i297 = or i16 %shl.i.i296, 112
  %207 = tail call i16 @llvm.bswap.i16(i16 %or.i.i297) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i291, i16 %207) #8, !srcloc !158
  %address_mapping = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 24
  %208 = ptrtoint ptr %address_mapping to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %address_mapping, align 1
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 8
  %and10.i298 = and i8 %209, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i299 = getelementptr i8, ptr %211, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i299, i8 10) #8, !srcloc !153
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i300 = getelementptr i8, ptr %213, i32 983
  %214 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i300) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i301 = and i8 %214, -32
  %or.i302 = or i8 %and4.i301, %and10.i298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i303 = zext i8 %or.i302 to i16
  %shl.i.i304 = shl nuw i16 %conv.i.i303, 8
  %or.i.i305 = or i16 %shl.i.i304, 10
  %215 = tail call i16 @llvm.bswap.i16(i16 %or.i.i305) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i299, i16 %215) #8, !srcloc !158
  %bitblt_cntl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 26
  %216 = ptrtoint ptr %bitblt_cntl to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %bitblt_cntl, align 1
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %1, align 8
  %and10.i306 = and i8 %217, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i307 = getelementptr i8, ptr %219, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i307, i8 32) #8, !srcloc !153
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i308 = getelementptr i8, ptr %221, i32 983
  %222 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i308) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i309 = and i8 %222, -49
  %or.i310 = or i8 %and4.i309, %and10.i306
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i311 = zext i8 %or.i310 to i16
  %shl.i.i312 = shl nuw i16 %conv.i.i311, 8
  %or.i.i313 = or i16 %shl.i.i312, 32
  %223 = tail call i16 @llvm.bswap.i16(i16 %or.i.i313) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i307, i16 %223) #8, !srcloc !158
  %display_cntl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 15
  %224 = ptrtoint ptr %display_cntl to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %display_cntl, align 2
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 8
  %and10.i314 = and i8 %225, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i315 = getelementptr i8, ptr %227, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i315, i8 64) #8, !srcloc !153
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i316 = getelementptr i8, ptr %229, i32 983
  %230 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i316) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i317 = and i8 %230, -4
  %or.i318 = or i8 %and4.i317, %and10.i314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i319 = zext i8 %or.i318 to i16
  %shl.i.i320 = shl nuw i16 %conv.i.i319, 8
  %or.i.i321 = or i16 %shl.i.i320, 64
  %231 = tail call i16 @llvm.bswap.i16(i16 %or.i.i321) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i315, i16 %231) #8, !srcloc !158
  %232 = ptrtoint ptr %pixelpipe_cfg0 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pixelpipe_cfg0, align 1
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %1, align 8
  %and10.i322 = and i8 %233, -101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i323 = getelementptr i8, ptr %235, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i323, i8 -128) #8, !srcloc !153
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i324 = getelementptr i8, ptr %237, i32 983
  %238 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i324) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i325 = and i8 %238, 100
  %or.i326 = or i8 %and4.i325, %and10.i322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i327 = zext i8 %or.i326 to i16
  %shl.i.i328 = shl nuw i16 %conv.i.i327, 8
  %or.i.i329 = or i16 %shl.i.i328, 128
  %239 = tail call i16 @llvm.bswap.i16(i16 %or.i.i329) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i323, i16 %239) #8, !srcloc !158
  %pixelpipe_cfg2 = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 18
  %240 = ptrtoint ptr %pixelpipe_cfg2 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %pixelpipe_cfg2, align 1
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %1, align 8
  %and10.i330 = and i8 %241, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i331 = getelementptr i8, ptr %243, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i331, i8 -126) #8, !srcloc !153
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i332 = getelementptr i8, ptr %245, i32 983
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i332) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i333 = and i8 %246, -13
  %or.i334 = or i8 %and4.i333, %and10.i330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i335 = zext i8 %or.i334 to i16
  %shl.i.i336 = shl nuw i16 %conv.i.i335, 8
  %or.i.i337 = or i16 %shl.i.i336, 130
  %247 = tail call i16 @llvm.bswap.i16(i16 %or.i.i337) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i331, i16 %247) #8, !srcloc !158
  %pll_cntl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 23
  %248 = ptrtoint ptr %pll_cntl to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %pll_cntl, align 2
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i338 = zext i8 %249 to i16
  %shl.i.i339 = shl nuw i16 %conv.i.i338, 8
  %or.i.i340 = or i16 %shl.i.i339, 206
  %252 = tail call i16 @llvm.bswap.i16(i16 %or.i.i340) #8
  %add.ptr.i.i341 = getelementptr i8, ptr %251, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i341, i16 %252) #8, !srcloc !158
  %pixelpipe_cfg1 = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 17
  %253 = ptrtoint ptr %pixelpipe_cfg1 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %pixelpipe_cfg1, align 8
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %1, align 8
  %and10.i342 = and i8 %254, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i343 = getelementptr i8, ptr %256, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i343, i8 -127) #8, !srcloc !153
  %257 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i344 = getelementptr i8, ptr %258, i32 983
  %259 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i344) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i345 = and i8 %259, -16
  %or.i346 = or i8 %and4.i345, %and10.i342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i347 = zext i8 %or.i346 to i16
  %shl.i.i348 = shl nuw i16 %conv.i.i347, 8
  %or.i.i349 = or i16 %shl.i.i348, 129
  %260 = tail call i16 @llvm.bswap.i16(i16 %or.i.i349) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i343, i16 %260) #8, !srcloc !158
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %262, i32 24576
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %264 = and i32 %263, -16256
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  %lmi_fifo_watermark = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 35
  %266 = ptrtoint ptr %lmi_fifo_watermark to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %lmi_fifo_watermark, align 4
  %or48 = or i32 %265, %267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %268 = tail call i32 @llvm.bswap.i32(i32 %or48)
  %269 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %1, align 8
  %add.ptr50 = getelementptr i8, ptr %270, i32 24576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %268) #8, !srcloc !162
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i350 = getelementptr i8, ptr %272, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i350, i16 21249) #8, !srcloc !158
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i351 = getelementptr i8, ptr %274, i32 978
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i351, i8 60) #8, !srcloc !153
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i352 = getelementptr i8, ptr %276, i32 979
  %277 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i352) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i353 = and i8 %277, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i354 = zext i8 %and4.i353 to i16
  %shl.i.i355 = shl nuw i16 %conv.i.i354, 8
  %or.i.i356 = or i16 %shl.i.i355, 60
  %278 = tail call i16 @llvm.bswap.i16(i16 %or.i.i356) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i351, i16 %278) #8, !srcloc !158
  %io_cntl = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 25
  %279 = ptrtoint ptr %io_cntl to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %io_cntl, align 8
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 8
  %and10.i357 = and i8 %280, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i358 = getelementptr i8, ptr %282, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i358, i8 9) #8, !srcloc !153
  %283 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i359 = getelementptr i8, ptr %284, i32 983
  %285 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i359) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i360 = and i8 %285, -4
  %or.i361 = or i8 %and4.i360, %and10.i357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i362 = zext i8 %or.i361 to i16
  %shl.i.i363 = shl nuw i16 %conv.i.i362, 8
  %or.i.i364 = or i16 %shl.i.i363, 9
  %286 = tail call i16 @llvm.bswap.i16(i16 %or.i.i364) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i358, i16 %286) #8, !srcloc !158
  %287 = ptrtoint ptr %pixelpipe_cfg1 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %pixelpipe_cfg1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %288)
  %cmp53.not = icmp eq i8 %288, 2
  br i1 %cmp53.not, label %for.end42.while.body.preheader_crit_edge, label %if.then55

for.end42.while.body.preheader_crit_edge:         ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

if.then55:                                        ; preds = %for.end42
  %289 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i365 = getelementptr i8, ptr %290, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i365, i8 -1) #8, !srcloc !153
  %291 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i366 = getelementptr i8, ptr %292, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i366, i8 0) #8, !srcloc !153
  br label %for.body59

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %if.then55
  %i.4382 = phi i32 [ 0, %if.then55 ], [ %inc68, %for.body59.for.body59_crit_edge ]
  %293 = ptrtoint ptr %pixelpipe_cfg0 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %pixelpipe_cfg0, align 1
  %295 = lshr i32 %i.4382, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool63.not377 = icmp slt i8 %294, 0
  %cond = select i1 %tobool63.not377, i32 %i.4382, i32 %295
  %conv64 = trunc i32 %cond to i8
  %296 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i367 = getelementptr i8, ptr %297, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i367, i8 %conv64) #8, !srcloc !153
  %298 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i368 = getelementptr i8, ptr %299, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i368, i8 %conv64) #8, !srcloc !153
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i369 = getelementptr i8, ptr %301, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i369, i8 %conv64) #8, !srcloc !153
  %inc68 = add nuw nsw i32 %i.4382, 1
  %exitcond386.not = icmp eq i32 %inc68, 256
  br i1 %exitcond386.not, label %for.body59.while.body.preheader_crit_edge, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59

for.body59.while.body.preheader_crit_edge:        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.body59.while.body.preheader_crit_edge, %for.end42.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.0383 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %while.body.preheader ]
  %dec = add nsw i32 %__ms.0383, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %302 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %302(i32 noundef 214748000) #8
  %tobool71.not = icmp eq i32 %dec, 0
  br i1 %tobool71.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %303 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i.i370 = getelementptr i8, ptr %304, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i370, i8 1) #8, !srcloc !153
  %305 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %1, align 8
  %add.ptr.i6.i.i.i371 = getelementptr i8, ptr %306, i32 965
  %307 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i.i371) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i.i = and i8 %307, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i.i372 = zext i8 %and4.i.i to i16
  %shl.i.i.i373 = shl nuw i16 %conv.i.i.i372, 8
  %or.i.i.i374 = or i16 %shl.i.i.i373, 1
  %308 = tail call i16 @llvm.bswap.i16(i16 %or.i.i.i374) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i370, i16 %308) #8, !srcloc !158
  %309 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i375 = getelementptr i8, ptr %310, i32 986
  %311 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i375) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %312 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i3.i376 = getelementptr i8, ptr %313, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i376, i8 32) #8, !srcloc !153
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %314 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %316 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %317, %315
  %div204 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %318 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %div204, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %317)
  %cmp76 = icmp eq i32 %317, 8
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %. = select i1 %cmp76, i32 3, i32 2
  %319 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %., ptr %visual, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_setcolreg.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_setcolreg, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_setcolreg.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %5, label %do.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb13
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %7 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %par, align 4
  %conv = trunc i32 %regno to i8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv) #8, !srcloc !153
  %11 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %par, align 4
  %shr = lshr i32 %red, 8
  %conv6 = trunc i32 %shr to i8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i67 = getelementptr i8, ptr %14, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i67, i8 %conv6) #8, !srcloc !153
  %15 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %par, align 4
  %shr8 = lshr i32 %green, 8
  %conv9 = trunc i32 %shr8 to i8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i68 = getelementptr i8, ptr %18, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i68, i8 %conv9) #8, !srcloc !153
  %19 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %par, align 4
  %shr11 = lshr i32 %blue, 8
  %conv12 = trunc i32 %shr11 to i8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i69 = getelementptr i8, ptr %22, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i69, i8 %conv12) #8, !srcloc !153
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp14 = icmp ugt i32 %regno, 15
  br i1 %cmp14, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %red19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  %sub = sub i32 16, %24
  %shr20 = lshr i32 %red, %sub
  %25 = ptrtoint ptr %red19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %red19, align 4
  %shl = shl i32 %shr20, %26
  %blue24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %27 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length25, align 4
  %sub26 = sub i32 16, %28
  %shr27 = lshr i32 %blue, %sub26
  %29 = ptrtoint ptr %blue24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blue24, align 4
  %shl31 = shl i32 %shr27, %30
  %green33 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length34 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %31 = ptrtoint ptr %length34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length34, align 4
  %sub35 = sub i32 16, %32
  %shr36 = lshr i32 %green, %sub35
  %33 = ptrtoint ptr %green33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %green33, align 4
  %shl40 = shl i32 %shr36, %34
  %or = or i32 %shl31, %shl
  %or41 = or i32 %or, %shl40
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %35 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %36, i32 %regno
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or41, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.bb13.cleanup_crit_edge, %if.end4, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %blank_mode)
  %0 = icmp ult i32 %blank_mode, 5
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par1, align 4
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.i740fb_blank, i32 0, i32 %blank_mode
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep21 = getelementptr inbounds [5 x i8], ptr @switch.table.i740fb_blank.64, i32 0, i32 %blank_mode
  %4 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load1_noabort(i32 %4)
  %switch.load22 = load i8, ptr %switch.gep21, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #8, !srcloc !153
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %add.ptr.i.i17 = getelementptr i8, ptr %8, i32 965
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %10 = and i8 %9, -33
  %or = or i8 %10, %switch.load
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i18 = getelementptr i8, ptr %12, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i18, i8 1) #8, !srcloc !153
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i19 = getelementptr i8, ptr %14, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i19, i8 %or) #8, !srcloc !153
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i8 %switch.load22 to i16
  %shl.i.i = shl nuw nsw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, 97
  %17 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #8
  %add.ptr.i.i20 = getelementptr i8, ptr %16, i32 982
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20, i16 %17) #8, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank_mode)
  %cmp = icmp eq i32 %blank_mode, 1
  %cond = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %5, %3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  %and = and i32 %7, -8
  %add = add i32 %and, %mul
  %shr = lshr i32 %add, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_pan_display.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_pan_display, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset, align 4
  %12 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yoffset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_pan_display.__UNIQUE_ID_ddebug313, ptr noundef %9, ptr noundef nonnull @.str.61, i32 noundef %11, i32 noundef %13, i32 noundef %shr) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %15, label %do.end.sw.epilog_crit_edge [
    i32 32, label %sw.bb12
    i32 15, label %do.end.sw.bb_crit_edge
    i32 16, label %do.end.sw.bb_crit_edge76
    i32 24, label %sw.bb9
  ]

do.end.sw.bb_crit_edge76:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge76
  %mul8 = shl nuw nsw i32 %shr, 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and10 = and i32 %shr, 1073741822
  %mul11 = mul nuw i32 %and10, 3
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul13 = and i32 %add, -4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb9, %sw.bb, %do.end.sw.epilog_crit_edge
  %base.0 = phi i32 [ %shr, %do.end.sw.epilog_crit_edge ], [ %mul11, %sw.bb9 ], [ %mul8, %sw.bb ], [ %mul13, %sw.bb12 ]
  %conv = trunc i32 %base.0 to i8
  %arrayidx = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 9, i32 13
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %arrayidx, align 1
  %and15 = lshr i32 %base.0, 8
  %conv17 = trunc i32 %and15 to i8
  %arrayidx19 = getelementptr %struct.i740fb_par, ptr %1, i32 0, i32 9, i32 12
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %arrayidx19, align 4
  %and20 = lshr i32 %base.0, 22
  %conv22 = trunc i32 %and20 to i8
  %ext_start_addr_hi = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 37
  %19 = ptrtoint ptr %ext_start_addr_hi to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %ext_start_addr_hi, align 1
  %and23 = lshr i32 %base.0, 16
  %20 = trunc i32 %and23 to i8
  %21 = and i8 %20, 63
  %conv25 = or i8 %21, -128
  %ext_start_addr = getelementptr inbounds %struct.i740fb_par, ptr %1, i32 0, i32 36
  %22 = ptrtoint ptr %ext_start_addr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25, ptr %ext_start_addr, align 8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %25 = trunc i32 %base.0 to i16
  %conv.i.i = shl i16 %25, 8
  %or.i.i = or i16 %conv.i.i, 13
  %26 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %26) #8, !srcloc !158
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %29 = trunc i32 %and15 to i16
  %conv.i.i63 = shl i16 %29, 8
  %or.i.i65 = or i16 %conv.i.i63, 12
  %30 = tail call i16 @llvm.bswap.i16(i16 %or.i.i65) #8
  %add.ptr.i.i66 = getelementptr i8, ptr %28, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i66, i16 %30) #8, !srcloc !158
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %33 = trunc i32 %and20 to i16
  %conv.i.i67 = shl i16 %33, 8
  %or.i.i69 = or i16 %conv.i.i67, 66
  %34 = tail call i16 @llvm.bswap.i16(i16 %or.i.i69) #8
  %add.ptr.i.i70 = getelementptr i8, ptr %32, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i70, i16 %34) #8, !srcloc !158
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i71 = zext i8 %conv25 to i16
  %shl.i.i72 = shl nuw i16 %conv.i.i71, 8
  %or.i.i73 = or i16 %shl.i.i72, 64
  %37 = tail call i16 @llvm.bswap.i16(i16 %or.i.i73) #8
  %add.ptr.i.i74 = getelementptr i8, ptr %36, i32 980
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i74, i16 %37) #8, !srcloc !158
  ret i32 0
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i740fb_decode_var(ptr noundef readonly %var, ptr noundef %par, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_decode_var.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_decode_var, %if.then)) #8
          to label %do.body6 [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %yres4 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %4 = ptrtoint ptr %yres4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres4, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_decode_var.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %7) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_decode_var.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_decode_var, %if.then18)) #8
          to label %do.body25 [label %if.then18], !srcloc !163

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %device19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %8 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device19, align 4
  %xoffset20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %10 = ptrtoint ptr %xoffset20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset20, align 4
  %yoffset21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %12 = ptrtoint ptr %yoffset21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yoffset21, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %16 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %grayscale, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_decode_var.__UNIQUE_ID_ddebug308, ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.body25

do.body25:                                        ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_decode_var.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_decode_var, %if.then37)) #8
          to label %do.body42 [label %if.then37], !srcloc !163

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %device38 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %18 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device38, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %20 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %activate, align 4
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %22 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nonstd, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %24 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vmode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_decode_var.__UNIQUE_ID_ddebug309, ptr noundef %19, ptr noundef nonnull @.str.42, i32 noundef %21, i32 noundef %23, i32 noundef %25) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_decode_var.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_decode_var, %if.then54)) #8
          to label %do.body59 [label %if.then54], !srcloc !163

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %device55 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %26 = ptrtoint ptr %device55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device55, align 4
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %28 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixclock, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %30 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hsync_len, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %32 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vsync_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_decode_var.__UNIQUE_ID_ddebug310, ptr noundef %27, ptr noundef nonnull @.str.43, i32 noundef %29, i32 noundef %31, i32 noundef %33) #8
  br label %do.body59

do.body59:                                        ; preds = %if.then54, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i740fb_decode_var.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i740fb_decode_var, %if.then71)) #8
          to label %do.end75 [label %if.then71], !srcloc !163

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %device72 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %34 = ptrtoint ptr %device72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device72, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %36 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %left_margin, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %38 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %right_margin, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %40 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %upper_margin, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %42 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lower_margin, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i740fb_decode_var.__UNIQUE_ID_ddebug311, ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #8
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body59
  %bits_per_pixel76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %44 = ptrtoint ptr %bits_per_pixel76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bits_per_pixel76, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %45, label %do.end75.cleanup_crit_edge [
    i32 1, label %do.end75.sw.bb_crit_edge
    i32 2, label %do.end75.sw.bb_crit_edge767
    i32 3, label %do.end75.sw.bb_crit_edge768
    i32 4, label %do.end75.sw.bb_crit_edge769
    i32 5, label %do.end75.sw.bb_crit_edge770
    i32 6, label %do.end75.sw.bb_crit_edge771
    i32 7, label %do.end75.sw.bb_crit_edge772
    i32 8, label %do.end75.sw.bb_crit_edge773
    i32 9, label %do.end75.sw.bb86_crit_edge
    i32 10, label %do.end75.sw.bb86_crit_edge774
    i32 11, label %do.end75.sw.bb86_crit_edge775
    i32 12, label %do.end75.sw.bb86_crit_edge776
    i32 13, label %do.end75.sw.bb86_crit_edge777
    i32 14, label %do.end75.sw.bb86_crit_edge778
    i32 15, label %do.end75.sw.bb86_crit_edge779
    i32 16, label %do.end75.sw.bb87_crit_edge
    i32 17, label %do.end75.sw.bb99_crit_edge
    i32 18, label %do.end75.sw.bb99_crit_edge780
    i32 19, label %do.end75.sw.bb99_crit_edge781
    i32 20, label %do.end75.sw.bb99_crit_edge782
    i32 21, label %do.end75.sw.bb99_crit_edge783
    i32 22, label %do.end75.sw.bb99_crit_edge784
    i32 23, label %do.end75.sw.bb99_crit_edge785
    i32 24, label %do.end75.sw.bb99_crit_edge786
    i32 25, label %do.end75.sw.bb112_crit_edge
    i32 26, label %do.end75.sw.bb112_crit_edge787
    i32 27, label %do.end75.sw.bb112_crit_edge788
    i32 28, label %do.end75.sw.bb112_crit_edge789
    i32 29, label %do.end75.sw.bb112_crit_edge790
    i32 30, label %do.end75.sw.bb112_crit_edge791
    i32 31, label %do.end75.sw.bb112_crit_edge792
    i32 32, label %do.end75.sw.bb112_crit_edge793
  ]

do.end75.sw.bb112_crit_edge793:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge792:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge791:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge790:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge789:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge788:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge787:                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb112_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb112

do.end75.sw.bb99_crit_edge786:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge785:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge784:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge783:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge782:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge781:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge780:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb99_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

do.end75.sw.bb87_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb87

do.end75.sw.bb86_crit_edge779:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb86_crit_edge778:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb86_crit_edge777:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb86_crit_edge776:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb86_crit_edge775:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb86_crit_edge774:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb86_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

do.end75.sw.bb_crit_edge773:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge772:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge771:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge770:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge769:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge768:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge767:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.sw.bb_crit_edge:                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end75.cleanup_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end75.sw.bb_crit_edge, %do.end75.sw.bb_crit_edge767, %do.end75.sw.bb_crit_edge768, %do.end75.sw.bb_crit_edge769, %do.end75.sw.bb_crit_edge770, %do.end75.sw.bb_crit_edge771, %do.end75.sw.bb_crit_edge772, %do.end75.sw.bb_crit_edge773
  %pixclock77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %47 = ptrtoint ptr %pixclock77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pixclock77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4902, i32 %48)
  %cmp = icmp ult i32 %48, 4902
  br i1 %cmp, label %do.end81, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end81:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 1000000, %48
  %device82 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %49 = ptrtoint ptr %device82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.45, i32 noundef %div, i32 noundef 203) #12
  br label %cleanup

sw.bb86:                                          ; preds = %do.end75.sw.bb86_crit_edge, %do.end75.sw.bb86_crit_edge774, %do.end75.sw.bb86_crit_edge775, %do.end75.sw.bb86_crit_edge776, %do.end75.sw.bb86_crit_edge777, %do.end75.sw.bb86_crit_edge778, %do.end75.sw.bb86_crit_edge779
  br label %sw.bb87

sw.bb87:                                          ; preds = %sw.bb86, %do.end75.sw.bb87_crit_edge
  %bpp.0 = phi i32 [ %45, %do.end75.sw.bb87_crit_edge ], [ 15, %sw.bb86 ]
  %pixclock88 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %51 = ptrtoint ptr %pixclock88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixclock88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6098, i32 %52)
  %cmp90 = icmp ult i32 %52, 6098
  br i1 %cmp90, label %do.end94, label %sw.bb87.sw.epilog_crit_edge

sw.bb87.sw.epilog_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end94:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  %div89 = udiv i32 1000000, %52
  %device95 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %53 = ptrtoint ptr %device95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.47, i32 noundef %div89, i32 noundef 163) #12
  br label %cleanup

sw.bb99:                                          ; preds = %do.end75.sw.bb99_crit_edge, %do.end75.sw.bb99_crit_edge780, %do.end75.sw.bb99_crit_edge781, %do.end75.sw.bb99_crit_edge782, %do.end75.sw.bb99_crit_edge783, %do.end75.sw.bb99_crit_edge784, %do.end75.sw.bb99_crit_edge785, %do.end75.sw.bb99_crit_edge786
  %has_sgram = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 1
  %55 = ptrtoint ptr %has_sgram to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_sgram, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool100.not = icmp eq i8 %56, 0
  %cond = select i1 %tobool100.not, i32 128, i32 136
  %pixclock101 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %57 = ptrtoint ptr %pixclock101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pixclock101, align 4
  %div102 = udiv i32 1000000, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %div102, i32 %cond)
  %cmp103 = icmp ugt i32 %div102, %cond
  br i1 %cmp103, label %do.end107, label %sw.bb99.sw.epilog_crit_edge

sw.bb99.sw.epilog_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end107:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #10
  %device108 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %59 = ptrtoint ptr %device108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device108, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.50, i32 noundef %div102, i32 noundef %cond) #12
  br label %cleanup

sw.bb112:                                         ; preds = %do.end75.sw.bb112_crit_edge, %do.end75.sw.bb112_crit_edge787, %do.end75.sw.bb112_crit_edge788, %do.end75.sw.bb112_crit_edge789, %do.end75.sw.bb112_crit_edge790, %do.end75.sw.bb112_crit_edge791, %do.end75.sw.bb112_crit_edge792, %do.end75.sw.bb112_crit_edge793
  %pixclock113 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %61 = ptrtoint ptr %pixclock113 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pixclock113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11495, i32 %62)
  %cmp115 = icmp ult i32 %62, 11495
  br i1 %cmp115, label %do.end119, label %sw.bb112.sw.epilog_crit_edge

sw.bb112.sw.epilog_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end119:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  %div114 = udiv i32 1000000, %62
  %device120 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %63 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device120, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.53, i32 noundef %div114, i32 noundef 86) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb112.sw.epilog_crit_edge, %sw.bb99.sw.epilog_crit_edge, %sw.bb87.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %bpp.1 = phi i32 [ 32, %sw.bb112.sw.epilog_crit_edge ], [ 24, %sw.bb99.sw.epilog_crit_edge ], [ %bpp.0, %sw.bb87.sw.epilog_crit_edge ], [ 8, %sw.bb.sw.epilog_crit_edge ]
  %65 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %var, align 4
  %add = add i32 %66, 7
  %and = and i32 %add, -8
  %xres_virtual125 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %67 = ptrtoint ptr %xres_virtual125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xres_virtual125, align 4
  %add126 = add i32 %68, 15
  %and127 = and i32 %add126, -16
  %69 = tail call i32 @llvm.umax.i32(i32 %and127, i32 %and)
  %xoffset131 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %70 = ptrtoint ptr %xoffset131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xoffset131, align 4
  %add132 = add i32 %71, 7
  %and133 = and i32 %add132, -8
  %add134 = add i32 %and133, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add134, i32 %69)
  %cmp135 = icmp ugt i32 %add134, %69
  %sub = sub i32 %69, %and
  %xoffset.0 = select i1 %cmp135, i32 %sub, i32 %add132
  %yres147 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %72 = ptrtoint ptr %yres147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %yres147, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %74 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %yres_virtual, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %73, i32 %75)
  %vsync_len158 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %77 = ptrtoint ptr %vsync_len158 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vsync_len158, align 4
  %add160 = add nuw nsw i32 %bpp.1, 1
  %div161744 = lshr i32 %add160, 3
  %mul = mul i32 %69, %div161744
  %mul162 = mul i32 %mul, %76
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %79 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul162, i32 %80)
  %cmp163 = icmp ugt i32 %mul162, %80
  br i1 %cmp163, label %do.end167, label %if.end171

do.end167:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %device168 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %81 = ptrtoint ptr %device168 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device168, align 4
  %shr = lshr i32 %mul162, 10
  %shr170 = lshr i32 %80, 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.56, i32 noundef %shr, i32 noundef %shr170) #12
  br label %cleanup

if.end171:                                        ; preds = %sw.epilog
  %upper_margin159 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %83 = ptrtoint ptr %upper_margin159 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %upper_margin159, align 4
  %lower_margin157 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %85 = ptrtoint ptr %lower_margin157 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lower_margin157, align 4
  %yoffset151 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %87 = ptrtoint ptr %yoffset151 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %yoffset151, align 4
  %add152 = add i32 %88, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %add152, i32 %76)
  %cmp153 = icmp ugt i32 %add152, %76
  %sub155 = sub i32 %76, %73
  %yoffset.0 = select i1 %cmp153, i32 %sub155, i32 %88
  %hsync_len144 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %89 = ptrtoint ptr %hsync_len144 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hsync_len144, align 4
  %add145 = add i32 %90, 7
  %and146 = and i32 %add145, -8
  %right_margin141 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %91 = ptrtoint ptr %right_margin141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %right_margin141, align 4
  %add142 = add i32 %92, 7
  %and143 = and i32 %add142, -8
  %left_margin138 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %93 = ptrtoint ptr %left_margin138 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %left_margin138, align 4
  %add139 = add i32 %94, 7
  %and140 = and i32 %add139, -8
  %add172 = add i32 %yoffset.0, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %add172, i32 %76)
  %cmp173 = icmp ugt i32 %add172, %76
  %spec.select745 = select i1 %cmp173, i32 %sub155, i32 %yoffset.0
  %add177 = add i32 %and143, %and
  %add178 = add i32 %add177, %and146
  %add179 = add i32 %add178, %and140
  %add180 = add i32 %86, %73
  %add181 = add i32 %84, %78
  %add182 = add i32 %add181, %add180
  %shr183 = lshr exact i32 %add179, 3
  %sub184 = add nsw i32 %shr183, -5
  %conv = trunc i32 %sub184 to i8
  %crtc = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 9
  %95 = ptrtoint ptr %crtc to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv, ptr %crtc, align 8
  %shr185 = lshr i32 %add, 3
  %96 = trunc i32 %shr185 to i8
  %conv187 = add i8 %96, -1
  %arrayidx189 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 1
  %97 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv187, ptr %arrayidx189, align 1
  %shr191 = lshr exact i32 %add177, 3
  %98 = trunc i32 %shr191 to i8
  %conv193 = add i8 %98, -1
  %arrayidx195 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 2
  %99 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv193, ptr %arrayidx195, align 2
  %arrayidx200 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 4
  %100 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %98, ptr %arrayidx200, align 4
  %shr203 = lshr exact i32 %add178, 3
  %and204 = and i32 %shr203, 31
  %and208 = lshr exact i32 %add178, 1
  %shl = and i32 %and208, 128
  %or = or i32 %and204, %shl
  %conv209 = trunc i32 %or to i8
  %arrayidx211 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 5
  %101 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv209, ptr %arrayidx211, align 1
  %102 = trunc i32 %and204 to i8
  %conv217 = or i8 %102, -128
  %arrayidx219 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 3
  %103 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv217, ptr %arrayidx219, align 1
  %sub220 = add i32 %add182, -2
  %conv221 = trunc i32 %sub220 to i8
  %arrayidx223 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 6
  %104 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv221, ptr %arrayidx223, align 2
  %and224 = and i32 %add182, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  %r7.0 = select i1 %tobool225.not, i8 16, i8 17
  %and231 = lshr i32 %add182, 4
  %105 = trunc i32 %and231 to i8
  %106 = and i8 %105, 32
  %arrayidx239 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 8
  %107 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx239, align 8
  %arrayidx241 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 9
  %108 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 64, ptr %arrayidx241, align 1
  %vmode242 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %109 = ptrtoint ptr %vmode242 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vmode242, align 4
  %and243 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  %spec.store.select747 = select i1 %tobool244.not, i8 64, i8 -64
  %111 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %spec.store.select747, ptr %arrayidx241, align 1
  %arrayidx253 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 10
  %112 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx253, align 2
  %arrayidx255 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 11
  %113 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx255, align 1
  %arrayidx257 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 14
  %114 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arrayidx257, align 2
  %arrayidx259 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 15
  %115 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx259, align 1
  %sub260 = add i32 %73, -1
  %conv261 = trunc i32 %sub260 to i8
  %arrayidx263 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 18
  %116 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv261, ptr %arrayidx263, align 2
  %and265 = lshr i32 %sub260, 7
  %117 = trunc i32 %and265 to i8
  %118 = and i8 %117, 2
  %and273 = lshr i32 %sub260, 3
  %119 = trunc i32 %and273 to i8
  %120 = and i8 %119, 64
  %121 = or i8 %120, %118
  %122 = or i8 %121, %r7.0
  %123 = or i8 %122, %106
  %sub281 = add i32 %add180, -1
  %conv282 = trunc i32 %sub281 to i8
  %arrayidx284 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 21
  %124 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv282, ptr %arrayidx284, align 1
  %arrayidx289 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 16
  %125 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv282, ptr %arrayidx289, align 8
  %and292 = and i32 %sub281, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  %126 = or i8 %123, 12
  %r7.4 = select i1 %tobool293.not, i8 %123, i8 %126
  %and301 = and i32 %sub281, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  br i1 %tobool302.not, label %if.end171.if.end312_crit_edge, label %if.then303

if.end171.if.end312_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312

if.then303:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %127 = or i8 %spec.store.select747, 32
  %128 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx241, align 1
  %129 = or i8 %r7.4, -128
  br label %if.end312

if.end312:                                        ; preds = %if.then303, %if.end171.if.end312_crit_edge
  %r7.5 = phi i8 [ %129, %if.then303 ], [ %r7.4, %if.end171.if.end312_crit_edge ]
  %add315 = add i32 %sub281, %78
  %130 = trunc i32 %add315 to i8
  %conv318 = and i8 %130, 15
  %arrayidx320 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 17
  %131 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv318, ptr %arrayidx320, align 1
  %arrayidx327 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 22
  %132 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %130, ptr %arrayidx327, align 2
  %arrayidx329 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 20
  %133 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %arrayidx329, align 4
  %arrayidx331 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 23
  %134 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -61, ptr %arrayidx331, align 1
  %arrayidx333 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 24
  %135 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %arrayidx333, align 8
  %arrayidx335 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 7
  %136 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %r7.5, ptr %arrayidx335, align 1
  %vss = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 14
  %137 = ptrtoint ptr %vss to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %vss, align 1
  %arrayidx339 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 0
  %138 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx339, align 1
  %arrayidx339.1 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 1
  %139 = ptrtoint ptr %arrayidx339.1 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %arrayidx339.1, align 1
  %arrayidx339.2 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 2
  %140 = ptrtoint ptr %arrayidx339.2 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %arrayidx339.2, align 1
  %arrayidx339.3 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 3
  %141 = ptrtoint ptr %arrayidx339.3 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 3, ptr %arrayidx339.3, align 1
  %arrayidx339.4 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 4
  %142 = ptrtoint ptr %arrayidx339.4 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 4, ptr %arrayidx339.4, align 1
  %arrayidx339.5 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 5
  %143 = ptrtoint ptr %arrayidx339.5 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 5, ptr %arrayidx339.5, align 1
  %arrayidx339.6 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 6
  %144 = ptrtoint ptr %arrayidx339.6 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 6, ptr %arrayidx339.6, align 1
  %arrayidx339.7 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 7
  %145 = ptrtoint ptr %arrayidx339.7 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 7, ptr %arrayidx339.7, align 1
  %arrayidx339.8 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 8
  %146 = ptrtoint ptr %arrayidx339.8 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 8, ptr %arrayidx339.8, align 1
  %arrayidx339.9 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 9
  %147 = ptrtoint ptr %arrayidx339.9 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 9, ptr %arrayidx339.9, align 1
  %arrayidx339.10 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 10
  %148 = ptrtoint ptr %arrayidx339.10 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 10, ptr %arrayidx339.10, align 1
  %arrayidx339.11 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 11
  %149 = ptrtoint ptr %arrayidx339.11 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 11, ptr %arrayidx339.11, align 1
  %arrayidx339.12 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 12
  %150 = ptrtoint ptr %arrayidx339.12 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 12, ptr %arrayidx339.12, align 1
  %arrayidx339.13 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 13
  %151 = ptrtoint ptr %arrayidx339.13 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 13, ptr %arrayidx339.13, align 1
  %arrayidx339.14 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 14
  %152 = ptrtoint ptr %arrayidx339.14 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 14, ptr %arrayidx339.14, align 1
  %arrayidx339.15 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 15
  %153 = ptrtoint ptr %arrayidx339.15 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 15, ptr %arrayidx339.15, align 1
  %arrayidx341 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 16
  %154 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -127, ptr %arrayidx341, align 1
  %arrayidx343 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 17
  %155 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %arrayidx343, align 1
  %arrayidx345 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 18
  %156 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 15, ptr %arrayidx345, align 1
  %arrayidx347 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 10, i32 20
  %157 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %arrayidx347, align 1
  %misc = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 13
  %158 = ptrtoint ptr %misc to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -61, ptr %misc, align 4
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %159 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %sync, align 4
  %and348 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %tobool349.not = icmp eq i32 %and348, 0
  %spec.store.select = select i1 %tobool349.not, i8 -61, i8 -125
  %161 = ptrtoint ptr %misc to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %spec.store.select, ptr %misc, align 4
  %162 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sync, align 4
  %and357 = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357)
  %tobool358.not = icmp eq i32 %and357, 0
  br i1 %tobool358.not, label %if.end312.if.end364_crit_edge, label %if.then359

if.end312.if.end364_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end364

if.then359:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  %164 = and i8 %spec.store.select, 67
  %165 = ptrtoint ptr %misc to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %misc, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.then359, %if.end312.if.end364_crit_edge
  %arrayidx365 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 12, i32 1
  %166 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %arrayidx365, align 1
  %arrayidx367 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 12, i32 2
  %167 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 15, ptr %arrayidx367, align 1
  %arrayidx369 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 12, i32 3
  %168 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %arrayidx369, align 1
  %arrayidx371 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 12, i32 4
  %169 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 6, ptr %arrayidx371, align 1
  %gdc = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 11
  %arrayidx382 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 11, i32 5
  %170 = call ptr @memset(ptr %gdc, i32 0, i32 5)
  %171 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 2, ptr %arrayidx382, align 1
  %arrayidx384 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 11, i32 6
  %172 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 5, ptr %arrayidx384, align 2
  %arrayidx386 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 11, i32 7
  %173 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 15, ptr %arrayidx386, align 1
  %arrayidx388 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 11, i32 8
  %174 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %arrayidx388, align 2
  %mul389 = mul i32 %spec.select745, %69
  %and390 = and i32 %xoffset.0, -8
  %add391 = add i32 %mul389, %and390
  %shr392 = lshr exact i32 %add391, 2
  %175 = zext i32 %bpp.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %bpp.1, label %if.end364.sw.epilog440_crit_edge [
    i32 8, label %sw.bb393
    i32 15, label %if.end364.sw.bb400_crit_edge
    i32 16, label %if.end364.sw.bb400_crit_edge794
    i32 24, label %sw.bb415
    i32 32, label %sw.bb429
  ]

if.end364.sw.bb400_crit_edge794:                  ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb400

if.end364.sw.bb400_crit_edge:                     ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb400

if.end364.sw.epilog440_crit_edge:                 ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog440

sw.bb393:                                         ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  %shr394 = lshr exact i32 %69, 3
  %conv395 = trunc i32 %shr394 to i8
  %arrayidx397 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 19
  %176 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv395, ptr %arrayidx397, align 1
  %shr398 = lshr i32 %69, 11
  %conv399 = trunc i32 %shr398 to i8
  %ext_offset = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 33
  %177 = ptrtoint ptr %ext_offset to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv399, ptr %ext_offset, align 8
  %pixelpipe_cfg1 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 17
  %178 = ptrtoint ptr %pixelpipe_cfg1 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 2, ptr %pixelpipe_cfg1, align 8
  %bitblt_cntl = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 26
  %179 = ptrtoint ptr %bitblt_cntl to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %bitblt_cntl, align 1
  br label %sw.epilog440

sw.bb400:                                         ; preds = %if.end364.sw.bb400_crit_edge, %if.end364.sw.bb400_crit_edge794
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %180 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %181)
  %cmp401 = icmp eq i32 %181, 6
  %conv404 = select i1 %cmp401, i8 5, i8 4
  %pixelpipe_cfg1405 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 17
  %182 = ptrtoint ptr %pixelpipe_cfg1405 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv404, ptr %pixelpipe_cfg1405, align 8
  %shr406 = lshr exact i32 %69, 2
  %conv407 = trunc i32 %shr406 to i8
  %arrayidx409 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 19
  %183 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv407, ptr %arrayidx409, align 1
  %shr410 = lshr i32 %69, 10
  %conv411 = trunc i32 %shr410 to i8
  %ext_offset412 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 33
  %184 = ptrtoint ptr %ext_offset412 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv411, ptr %ext_offset412, align 8
  %bitblt_cntl413 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 26
  %185 = ptrtoint ptr %bitblt_cntl413 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 16, ptr %bitblt_cntl413, align 1
  %mul414 = lshr exact i32 %add391, 1
  br label %sw.epilog440

sw.bb415:                                         ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  %mul416 = mul i32 %69, 3
  %shr417 = lshr exact i32 %mul416, 3
  %conv418 = trunc i32 %shr417 to i8
  %arrayidx420 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 19
  %186 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv418, ptr %arrayidx420, align 1
  %shr422 = lshr i32 %mul416, 11
  %conv423 = trunc i32 %shr422 to i8
  %ext_offset424 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 33
  %187 = ptrtoint ptr %ext_offset424 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv423, ptr %ext_offset424, align 8
  %pixelpipe_cfg1425 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 17
  %188 = ptrtoint ptr %pixelpipe_cfg1425 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 6, ptr %pixelpipe_cfg1425, align 8
  %bitblt_cntl426 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 26
  %189 = ptrtoint ptr %bitblt_cntl426 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 32, ptr %bitblt_cntl426, align 1
  %mul428 = mul nuw i32 %shr392, 3
  br label %sw.epilog440

sw.bb429:                                         ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  %shr430 = lshr exact i32 %69, 1
  %conv431 = trunc i32 %shr430 to i8
  %arrayidx433 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 19
  %190 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv431, ptr %arrayidx433, align 1
  %shr434 = lshr i32 %69, 9
  %conv435 = trunc i32 %shr434 to i8
  %ext_offset436 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 33
  %191 = ptrtoint ptr %ext_offset436 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv435, ptr %ext_offset436, align 8
  %pixelpipe_cfg1437 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 17
  %192 = ptrtoint ptr %pixelpipe_cfg1437 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 7, ptr %pixelpipe_cfg1437, align 8
  %bitblt_cntl438 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 26
  %193 = ptrtoint ptr %bitblt_cntl438 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 48, ptr %bitblt_cntl438, align 1
  br label %sw.epilog440

sw.epilog440:                                     ; preds = %sw.bb429, %sw.bb415, %sw.bb400, %sw.bb393, %if.end364.sw.epilog440_crit_edge
  %base.0 = phi i32 [ %shr392, %if.end364.sw.epilog440_crit_edge ], [ %add391, %sw.bb429 ], [ %mul428, %sw.bb415 ], [ %mul414, %sw.bb400 ], [ %shr392, %sw.bb393 ]
  %conv442 = trunc i32 %base.0 to i8
  %arrayidx444 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 13
  %194 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv442, ptr %arrayidx444, align 1
  %and445 = lshr i32 %base.0, 8
  %conv447 = trunc i32 %and445 to i8
  %arrayidx449 = getelementptr %struct.i740fb_par, ptr %par, i32 0, i32 9, i32 12
  %195 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv447, ptr %arrayidx449, align 4
  %and450 = lshr i32 %base.0, 16
  %196 = trunc i32 %and450 to i8
  %197 = and i8 %196, 63
  %conv453 = or i8 %197, -128
  %ext_start_addr = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 36
  %198 = ptrtoint ptr %ext_start_addr to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv453, ptr %ext_start_addr, align 8
  %and454 = lshr i32 %base.0, 22
  %conv456 = trunc i32 %and454 to i8
  %ext_start_addr_hi = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 37
  %199 = ptrtoint ptr %ext_start_addr_hi to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv456, ptr %ext_start_addr_hi, align 1
  %pixelpipe_cfg0 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 16
  %200 = ptrtoint ptr %pixelpipe_cfg0 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -128, ptr %pixelpipe_cfg0, align 1
  %pixelpipe_cfg2 = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 18
  %201 = ptrtoint ptr %pixelpipe_cfg2 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 12, ptr %pixelpipe_cfg2, align 1
  %io_cntl = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 25
  %202 = ptrtoint ptr %io_cntl to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 1, ptr %io_cntl, align 8
  %address_mapping = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 24
  %203 = ptrtoint ptr %address_mapping to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 3, ptr %address_mapping, align 1
  %display_cntl = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 15
  %204 = ptrtoint ptr %display_cntl to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %display_cntl, align 2
  %pll_cntl = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 23
  %205 = ptrtoint ptr %pll_cntl to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 3, ptr %pll_cntl, align 2
  %shr458 = lshr i32 %sub220, 8
  %conv459 = trunc i32 %shr458 to i8
  %ext_vert_total = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 27
  %206 = ptrtoint ptr %ext_vert_total to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv459, ptr %ext_vert_total, align 2
  %shr461 = lshr i32 %sub260, 8
  %conv462 = trunc i32 %shr461 to i8
  %ext_vert_disp_end = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 28
  %207 = ptrtoint ptr %ext_vert_disp_end to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv462, ptr %ext_vert_disp_end, align 1
  %shr464 = lshr i32 %add180, 8
  %conv465 = trunc i32 %shr464 to i8
  %ext_vert_sync_start = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 29
  %208 = ptrtoint ptr %ext_vert_sync_start to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv465, ptr %ext_vert_sync_start, align 4
  %ext_vert_blank_start = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 30
  %209 = ptrtoint ptr %ext_vert_blank_start to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv465, ptr %ext_vert_blank_start, align 1
  %shr471 = lshr i32 %sub184, 8
  %conv472 = trunc i32 %shr471 to i8
  %ext_horiz_total = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 31
  %210 = ptrtoint ptr %ext_horiz_total to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv472, ptr %ext_horiz_total, align 2
  %and475 = lshr i32 %add177, 9
  %211 = trunc i32 %and475 to i8
  %conv477 = and i8 %211, 1
  %ext_horiz_blank = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 32
  %212 = ptrtoint ptr %ext_horiz_blank to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv477, ptr %ext_horiz_blank, align 1
  %interlace_cntl = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 34
  %213 = ptrtoint ptr %interlace_cntl to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %interlace_cntl, align 1
  %214 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %arrayidx343, align 1
  %pixclock480 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %215 = ptrtoint ptr %pixclock480 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pixclock480, align 4
  %div481 = udiv i32 1000000000, %216
  %mul482 = mul i32 %div481, 1000
  %div.i = udiv i32 %mul482, 781250
  %div1.i = udiv i32 %mul482, 3906250
  %div2.i = udiv i32 %mul482, 3906
  call void @__sanitizer_cov_trace_const_cmp4(i32 449975105, i32 %mul482)
  %tobool.not.i.i.i = icmp ugt i32 %mul482, 449975105
  br i1 %tobool.not.i.i.i, label %sw.epilog440.cond.end12.thread.i_crit_edge, label %cond.end12.i

sw.epilog440.cond.end12.thread.i_crit_edge:       ; preds = %sw.epilog440
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12.thread.i

cond.end12.i:                                     ; preds = %sw.epilog440
  call void @__sanitizer_cov_trace_pc() #10
  %div3.i = udiv i32 115200, %div2.i
  %217 = tail call i32 @llvm.ctlz.i32(i32 %div3.i, i1 true) #8, !range !164
  %sub.i.op.i.i = xor i32 %217, 31
  %218 = tail call i32 @llvm.smin.i32(i32 %sub.i.op.i.i, i32 15) #8
  br label %cond.end12.thread.i

cond.end12.thread.i:                              ; preds = %cond.end12.i, %sw.epilog440.cond.end12.thread.i_crit_edge
  %219 = phi i32 [ -1, %sw.epilog440.cond.end12.thread.i_crit_edge ], [ %218, %cond.end12.i ]
  %shl.i = shl nuw nsw i32 1, %219
  %mul.i = shl i32 %mul482, %219
  %div20.i = udiv i32 %mul.i, 3906
  %div31.i = sdiv i32 %shl.i, 2
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %cond.end12.thread.i
  %m_best.0.i = phi i32 [ 0, %cond.end12.thread.i ], [ %m_best.1.i, %land.rhs.i.do.body.i_crit_edge ]
  %n_best.0.i = phi i32 [ 0, %cond.end12.thread.i ], [ %n_best.1.i, %land.rhs.i.do.body.i_crit_edge ]
  %n.0.i = phi i32 [ 2, %cond.end12.thread.i ], [ %inc.i, %land.rhs.i.do.body.i_crit_edge ]
  %err_best.0.i = phi i32 [ 131072, %cond.end12.thread.i ], [ %err_best.1.i, %land.rhs.i.do.body.i_crit_edge ]
  %inc.i = add i32 %n.0.i, 1
  %mul22.i = mul i32 %inc.i, %div20.i
  %div23.i = udiv i32 %mul22.i, 17067
  %add.i = add nuw nsw i32 %div23.i, 2
  %div24138.i = lshr i32 %add.i, 2
  %220 = tail call i32 @llvm.umax.i32(i32 %div24138.i, i32 3) #8
  %mul28.i = mul nuw i32 %220, 68268
  %div29.i = sdiv i32 %mul28.i, %inc.i
  %add32.i = add i32 %div29.i, %div31.i
  %div34.i = sdiv i32 %add32.i, %shl.i
  %sub35.i = sub i32 %div2.i, %div34.i
  %221 = tail call i32 @llvm.abs.i32(i32 %sub35.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %div1.i)
  %cmp57.not.i = icmp ult i32 %221, %div1.i
  br i1 %cmp57.not.i, label %do.body.i.i740_calc_vclk.exit_crit_edge, label %land.rhs.i

do.body.i.i740_calc_vclk.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_vclk.exit

land.rhs.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %div.i)
  %cmp44.i = icmp ult i32 %221, %div.i
  %err_best.1.i = select i1 %cmp44.i, i32 %sub35.i, i32 %err_best.0.i
  %n_best.1.i = select i1 %cmp44.i, i32 %inc.i, i32 %n_best.0.i
  %m_best.1.i = select i1 %cmp44.i, i32 %220, i32 %m_best.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc.i)
  %cmp59.i = icmp slt i32 %inc.i, 31
  %222 = tail call i32 @llvm.abs.i32(i32 %err_best.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %div.i)
  %cmp70.i = icmp ugt i32 %222, %div.i
  %or.cond.i = select i1 %cmp59.i, i1 true, i1 %cmp70.i
  br i1 %or.cond.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.i740_calc_vclk.exit_crit_edge

land.rhs.i.i740_calc_vclk.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_vclk.exit

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i740_calc_vclk.exit:                              ; preds = %land.rhs.i.i740_calc_vclk.exit_crit_edge, %do.body.i.i740_calc_vclk.exit_crit_edge
  %n_best.2.i = phi i32 [ %inc.i, %do.body.i.i740_calc_vclk.exit_crit_edge ], [ %n_best.1.i, %land.rhs.i.i740_calc_vclk.exit_crit_edge ]
  %m_best.2.i = phi i32 [ %220, %do.body.i.i740_calc_vclk.exit_crit_edge ], [ %m_best.1.i, %land.rhs.i.i740_calc_vclk.exit_crit_edge ]
  %sub85.i = add i32 %m_best.2.i, -2
  %conv86.i = trunc i32 %sub85.i to i8
  %video_clk2_m.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 19
  %223 = ptrtoint ptr %video_clk2_m.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv86.i, ptr %video_clk2_m.i, align 2
  %sub87.i = add i32 %n_best.2.i, -2
  %conv89.i = trunc i32 %sub87.i to i8
  %video_clk2_n.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 20
  %224 = ptrtoint ptr %video_clk2_n.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv89.i, ptr %video_clk2_n.i, align 1
  %225 = lshr i32 %sub87.i, 4
  %and91.i = and i32 %225, 48
  %226 = lshr i32 %sub85.i, 8
  %and94.i = and i32 %226, 3
  %or.i = or i32 %and94.i, %and91.i
  %conv95.i = trunc i32 %or.i to i8
  %video_clk2_mn_msbs.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 21
  %227 = ptrtoint ptr %video_clk2_mn_msbs.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv95.i, ptr %video_clk2_mn_msbs.i, align 4
  %cond19.tr.i = trunc i32 %219 to i8
  %228 = shl i8 %cond19.tr.i, 4
  %conv98.i = or i8 %228, 1
  %video_clk2_div_sel.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 22
  %229 = ptrtoint ptr %video_clk2_div_sel.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv98.i, ptr %video_clk2_div_sel.i, align 1
  %230 = ptrtoint ptr %misc to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %misc, align 4
  %232 = or i8 %231, 12
  store i8 %232, ptr %misc, align 4
  %233 = ptrtoint ptr %pixclock480 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %pixclock480, align 4
  %235 = zext i32 %bpp.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %bpp.1, label %i740_calc_vclk.exit.i740_calc_fifo.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 15, label %i740_calc_vclk.exit.sw.bb9.i_crit_edge
    i32 16, label %i740_calc_vclk.exit.sw.bb9.i_crit_edge795
    i32 24, label %sw.bb69.i
    i32 32, label %sw.bb127.i
  ]

i740_calc_vclk.exit.sw.bb9.i_crit_edge795:        ; preds = %i740_calc_vclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

i740_calc_vclk.exit.sw.bb9.i_crit_edge:           ; preds = %i740_calc_vclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

i740_calc_vclk.exit.i740_calc_fifo.exit_crit_edge: ; preds = %i740_calc_vclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

sw.bb.i:                                          ; preds = %i740_calc_vclk.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4976, i32 %234)
  %cmp.i760 = icmp ult i32 %234, 4976
  br i1 %cmp.i760, label %sw.bb.i.i740_calc_fifo.exit_crit_edge, label %if.else.i

sw.bb.i.i740_calc_fifo.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5682, i32 %234)
  %cmp1.i = icmp ult i32 %234, 5682
  br i1 %cmp1.i, label %if.else.i.i740_calc_fifo.exit_crit_edge, label %if.else3.i

if.else.i.i740_calc_fifo.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7353, i32 %234)
  %cmp4.i = icmp ult i32 %234, 7353
  %..i = select i1 %cmp4.i, i32 302907392, i32 269287424
  br label %i740_calc_fifo.exit

sw.bb9.i:                                         ; preds = %i740_calc_vclk.exit.sw.bb9.i_crit_edge, %i740_calc_vclk.exit.sw.bb9.i_crit_edge795
  %has_sgram.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 1
  %236 = ptrtoint ptr %has_sgram.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %has_sgram.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i = icmp eq i8 %237, 0
  br i1 %tobool.not.i, label %if.else35.i, label %if.then10.i

if.then10.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7093, i32 %234)
  %cmp11.i = icmp ult i32 %234, 7093
  br i1 %cmp11.i, label %if.then10.i.i740_calc_fifo.exit_crit_edge, label %if.else13.i

if.then10.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8265, i32 %234)
  %cmp14.i = icmp ult i32 %234, 8265
  br i1 %cmp14.i, label %if.else13.i.i740_calc_fifo.exit_crit_edge, label %if.else16.i

if.else13.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9901, i32 %234)
  %cmp17.i = icmp ult i32 %234, 9901
  br i1 %cmp17.i, label %if.else16.i.i740_calc_fifo.exit_crit_edge, label %if.else19.i

if.else16.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10990, i32 %234)
  %cmp20.i = icmp ult i32 %234, 10990
  br i1 %cmp20.i, label %if.else19.i.i740_calc_fifo.exit_crit_edge, label %if.else22.i

if.else19.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19608, i32 %234)
  %cmp23.i = icmp ult i32 %234, 19608
  br i1 %cmp23.i, label %if.else22.i.i740_calc_fifo.exit_crit_edge, label %if.else25.i

if.else22.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else25.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30304, i32 %234)
  %cmp26.i = icmp ult i32 %234, 30304
  %.204.i = select i1 %cmp26.i, i32 319815680, i32 302907392
  br label %i740_calc_fifo.exit

if.else35.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6212, i32 %234)
  %cmp36.i = icmp ult i32 %234, 6212
  br i1 %cmp36.i, label %if.else35.i.i740_calc_fifo.exit_crit_edge, label %if.else38.i

if.else35.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else38.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7093, i32 %234)
  %cmp39.i = icmp ult i32 %234, 7093
  br i1 %cmp39.i, label %if.else38.i.i740_calc_fifo.exit_crit_edge, label %if.else41.i

if.else38.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else41.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7634, i32 %234)
  %cmp42.i = icmp ult i32 %234, 7634
  br i1 %cmp42.i, label %if.else41.i.i740_calc_fifo.exit_crit_edge, label %if.else44.i

if.else41.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else44.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8265, i32 %234)
  %cmp45.i = icmp ult i32 %234, 8265
  br i1 %cmp45.i, label %if.else44.i.i740_calc_fifo.exit_crit_edge, label %if.else47.i

if.else44.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else47.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9901, i32 %234)
  %cmp48.i = icmp ult i32 %234, 9901
  br i1 %cmp48.i, label %if.else47.i.i740_calc_fifo.exit_crit_edge, label %if.else50.i

if.else47.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else50.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10990, i32 %234)
  %cmp51.i = icmp ult i32 %234, 10990
  br i1 %cmp51.i, label %if.else50.i.i740_calc_fifo.exit_crit_edge, label %if.else53.i

if.else50.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else53.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19608, i32 %234)
  %cmp54.i = icmp ult i32 %234, 19608
  br i1 %cmp54.i, label %if.else53.i.i740_calc_fifo.exit_crit_edge, label %if.else56.i

if.else53.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else56.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30304, i32 %234)
  %cmp57.i = icmp ult i32 %234, 30304
  %.205.i = select i1 %cmp57.i, i32 319815680, i32 302907392
  br label %i740_calc_fifo.exit

sw.bb69.i:                                        ; preds = %i740_calc_vclk.exit
  %has_sgram70.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 1
  %238 = ptrtoint ptr %has_sgram70.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %has_sgram70.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool71.not.i = icmp eq i8 %239, 0
  br i1 %tobool71.not.i, label %if.else101.i, label %if.then72.i

if.then72.i:                                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7634, i32 %234)
  %cmp73.i = icmp ult i32 %234, 7634
  br i1 %cmp73.i, label %if.then72.i.i740_calc_fifo.exit_crit_edge, label %if.else75.i

if.then72.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else75.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8265, i32 %234)
  %cmp76.i = icmp ult i32 %234, 8265
  br i1 %cmp76.i, label %if.else75.i.i740_calc_fifo.exit_crit_edge, label %if.else78.i

if.else75.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else78.i:                                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9901, i32 %234)
  %cmp79.i = icmp ult i32 %234, 9901
  br i1 %cmp79.i, label %if.else78.i.i740_calc_fifo.exit_crit_edge, label %if.else81.i

if.else78.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else81.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12346, i32 %234)
  %cmp82.i = icmp ult i32 %234, 12346
  br i1 %cmp82.i, label %if.else81.i.i740_calc_fifo.exit_crit_edge, label %if.else84.i

if.else81.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else84.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15385, i32 %234)
  %cmp85.i = icmp ult i32 %234, 15385
  br i1 %cmp85.i, label %if.else84.i.i740_calc_fifo.exit_crit_edge, label %if.else87.i

if.else84.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else87.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %234)
  %cmp88.i = icmp ult i32 %234, 20001
  br i1 %cmp88.i, label %if.else87.i.i740_calc_fifo.exit_crit_edge, label %if.else90.i

if.else87.i.i740_calc_fifo.exit_crit_edge:        ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else90.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30304, i32 %234)
  %cmp91.i = icmp ult i32 %234, 30304
  %.206.i = select i1 %cmp91.i, i32 370212864, i32 319815680
  br label %i740_calc_fifo.exit

if.else101.i:                                     ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8265, i32 %234)
  %cmp102.i = icmp ult i32 %234, 8265
  br i1 %cmp102.i, label %if.else101.i.i740_calc_fifo.exit_crit_edge, label %if.else104.i

if.else101.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else104.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9901, i32 %234)
  %cmp105.i = icmp ult i32 %234, 9901
  br i1 %cmp105.i, label %if.else104.i.i740_calc_fifo.exit_crit_edge, label %if.else107.i

if.else104.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else107.i:                                     ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12346, i32 %234)
  %cmp108.i = icmp ult i32 %234, 12346
  br i1 %cmp108.i, label %if.else107.i.i740_calc_fifo.exit_crit_edge, label %if.else110.i

if.else107.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else110.i:                                     ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15385, i32 %234)
  %cmp111.i = icmp ult i32 %234, 15385
  br i1 %cmp111.i, label %if.else110.i.i740_calc_fifo.exit_crit_edge, label %if.else113.i

if.else110.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else113.i:                                     ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %234)
  %cmp114.i = icmp ult i32 %234, 20001
  br i1 %cmp114.i, label %if.else113.i.i740_calc_fifo.exit_crit_edge, label %if.else116.i

if.else113.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else116.i:                                     ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30304, i32 %234)
  %cmp117.i = icmp ult i32 %234, 30304
  %.207.i = select i1 %cmp117.i, i32 370212864, i32 319815680
  br label %i740_calc_fifo.exit

sw.bb127.i:                                       ; preds = %i740_calc_vclk.exit
  %has_sgram128.i = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 1
  %240 = ptrtoint ptr %has_sgram128.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %has_sgram128.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool129.not.i = icmp eq i8 %241, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12346, i32 %234)
  %cmp148.i = icmp ult i32 %234, 12346
  br i1 %tobool129.not.i, label %if.else147.i, label %if.then130.i

if.then130.i:                                     ; preds = %sw.bb127.i
  br i1 %cmp148.i, label %if.then130.i.i740_calc_fifo.exit_crit_edge, label %if.else133.i

if.then130.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else133.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16394, i32 %234)
  %cmp134.i = icmp ult i32 %234, 16394
  br i1 %cmp134.i, label %if.else133.i.i740_calc_fifo.exit_crit_edge, label %if.else136.i

if.else133.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else136.i:                                     ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %234)
  %cmp137.i = icmp ult i32 %234, 20001
  br i1 %cmp137.i, label %if.else136.i.i740_calc_fifo.exit_crit_edge, label %if.else139.i

if.else136.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else139.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30304, i32 %234)
  %cmp140.i = icmp ult i32 %234, 30304
  %.208.i = select i1 %cmp140.i, i32 403832832, i32 370212864
  br label %i740_calc_fifo.exit

if.else147.i:                                     ; preds = %sw.bb127.i
  br i1 %cmp148.i, label %if.else147.i.i740_calc_fifo.exit_crit_edge, label %if.else150.i

if.else147.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else150.i:                                     ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16394, i32 %234)
  %cmp151.i = icmp ult i32 %234, 16394
  br i1 %cmp151.i, label %if.else150.i.i740_calc_fifo.exit_crit_edge, label %if.else153.i

if.else150.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else153.i:                                     ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %234)
  %cmp154.i = icmp ult i32 %234, 20001
  br i1 %cmp154.i, label %if.else153.i.i740_calc_fifo.exit_crit_edge, label %if.else156.i

if.else153.i.i740_calc_fifo.exit_crit_edge:       ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i740_calc_fifo.exit

if.else156.i:                                     ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30304, i32 %234)
  %cmp157.i = icmp ult i32 %234, 30304
  %.209.i = select i1 %cmp157.i, i32 403832832, i32 370212864
  br label %i740_calc_fifo.exit

i740_calc_fifo.exit:                              ; preds = %if.else156.i, %if.else153.i.i740_calc_fifo.exit_crit_edge, %if.else150.i.i740_calc_fifo.exit_crit_edge, %if.else147.i.i740_calc_fifo.exit_crit_edge, %if.else139.i, %if.else136.i.i740_calc_fifo.exit_crit_edge, %if.else133.i.i740_calc_fifo.exit_crit_edge, %if.then130.i.i740_calc_fifo.exit_crit_edge, %if.else116.i, %if.else113.i.i740_calc_fifo.exit_crit_edge, %if.else110.i.i740_calc_fifo.exit_crit_edge, %if.else107.i.i740_calc_fifo.exit_crit_edge, %if.else104.i.i740_calc_fifo.exit_crit_edge, %if.else101.i.i740_calc_fifo.exit_crit_edge, %if.else90.i, %if.else87.i.i740_calc_fifo.exit_crit_edge, %if.else84.i.i740_calc_fifo.exit_crit_edge, %if.else81.i.i740_calc_fifo.exit_crit_edge, %if.else78.i.i740_calc_fifo.exit_crit_edge, %if.else75.i.i740_calc_fifo.exit_crit_edge, %if.then72.i.i740_calc_fifo.exit_crit_edge, %if.else56.i, %if.else53.i.i740_calc_fifo.exit_crit_edge, %if.else50.i.i740_calc_fifo.exit_crit_edge, %if.else47.i.i740_calc_fifo.exit_crit_edge, %if.else44.i.i740_calc_fifo.exit_crit_edge, %if.else41.i.i740_calc_fifo.exit_crit_edge, %if.else38.i.i740_calc_fifo.exit_crit_edge, %if.else35.i.i740_calc_fifo.exit_crit_edge, %if.else25.i, %if.else22.i.i740_calc_fifo.exit_crit_edge, %if.else19.i.i740_calc_fifo.exit_crit_edge, %if.else16.i.i740_calc_fifo.exit_crit_edge, %if.else13.i.i740_calc_fifo.exit_crit_edge, %if.then10.i.i740_calc_fifo.exit_crit_edge, %if.else3.i, %if.else.i.i740_calc_fifo.exit_crit_edge, %sw.bb.i.i740_calc_fifo.exit_crit_edge, %i740_calc_vclk.exit.i740_calc_fifo.exit_crit_edge
  %wm.0.i = phi i32 [ -1, %i740_calc_vclk.exit.i740_calc_fifo.exit_crit_edge ], [ 403832832, %sw.bb.i.i740_calc_fifo.exit_crit_edge ], [ 370212864, %if.else.i.i740_calc_fifo.exit_crit_edge ], [ %..i, %if.else3.i ], [ 740098048, %if.then10.i.i740_calc_fifo.exit_crit_edge ], [ 739770368, %if.else13.i.i740_calc_fifo.exit_crit_edge ], [ 605421568, %if.else16.i.i740_calc_fifo.exit_crit_edge ], [ 403832832, %if.else19.i.i740_calc_fifo.exit_crit_edge ], [ 370212864, %if.else22.i.i740_calc_fifo.exit_crit_edge ], [ %.204.i, %if.else25.i ], [ 673185792, %if.else35.i.i740_calc_fifo.exit_crit_edge ], [ 706609152, %if.else38.i.i740_calc_fifo.exit_crit_edge ], [ 723124224, %if.else41.i.i740_calc_fifo.exit_crit_edge ], [ 739770368, %if.else44.i.i740_calc_fifo.exit_crit_edge ], [ 605552640, %if.else47.i.i740_calc_fifo.exit_crit_edge ], [ 403832832, %if.else50.i.i740_calc_fifo.exit_crit_edge ], [ 370212864, %if.else53.i.i740_calc_fifo.exit_crit_edge ], [ %.205.i, %if.else56.i ], [ 824180736, %if.then72.i.i740_calc_fifo.exit_crit_edge ], [ 773849088, %if.else75.i.i740_calc_fifo.exit_crit_edge ], [ 740098048, %if.else78.i.i740_calc_fifo.exit_crit_edge ], [ 622329856, %if.else81.i.i740_calc_fifo.exit_crit_edge ], [ 605421568, %if.else84.i.i740_calc_fifo.exit_crit_edge ], [ 403832832, %if.else87.i.i740_calc_fifo.exit_crit_edge ], [ %.206.i, %if.else90.i ], [ 824115200, %if.else101.i.i740_calc_fifo.exit_crit_edge ], [ 740098048, %if.else104.i.i740_calc_fifo.exit_crit_edge ], [ 622329856, %if.else107.i.i740_calc_fifo.exit_crit_edge ], [ 605421568, %if.else110.i.i740_calc_fifo.exit_crit_edge ], [ 403832832, %if.else113.i.i740_calc_fifo.exit_crit_edge ], [ %.207.i, %if.else116.i ], [ 706740224, %if.then130.i.i740_calc_fifo.exit_crit_edge ], [ 672792576, %if.else133.i.i740_calc_fifo.exit_crit_edge ], [ 622329856, %if.else136.i.i740_calc_fifo.exit_crit_edge ], [ %.208.i, %if.else139.i ], [ 689963008, %if.else147.i.i740_calc_fifo.exit_crit_edge ], [ 672792576, %if.else150.i.i740_calc_fifo.exit_crit_edge ], [ 622329856, %if.else153.i.i740_calc_fifo.exit_crit_edge ], [ %.209.i, %if.else156.i ]
  %lmi_fifo_watermark = getelementptr inbounds %struct.i740fb_par, ptr %par, i32 0, i32 35
  %242 = ptrtoint ptr %lmi_fifo_watermark to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %wm.0.i, ptr %lmi_fifo_watermark, align 4
  br label %cleanup

cleanup:                                          ; preds = %i740_calc_fifo.exit, %do.end167, %do.end119, %do.end107, %do.end94, %do.end81, %do.end75.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end119 ], [ -12, %do.end167 ], [ 0, %i740_calc_fifo.exit ], [ -22, %do.end107 ], [ -22, %do.end94 ], [ -22, %do.end81 ], [ -22, %do.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i740fb_ddc_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 98) #8, !srcloc !153
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %3, i32 983
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %or.i = or i8 %4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i8 %or.i to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, 98
  %5 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %5) #8, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %conv = select i1 %tobool.not, i8 0, i8 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i2 = getelementptr i8, ptr %7, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i2, i8 99) #8, !srcloc !153
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %add.ptr.i6.i.i3 = getelementptr i8, ptr %9, i32 983
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i3) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i4 = and i8 %10, -5
  %or.i5 = or i8 %and4.i4, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i6 = zext i8 %or.i5 to i16
  %shl.i.i7 = shl nuw i16 %conv.i.i6, 8
  %or.i.i8 = or i16 %shl.i.i7, 99
  %11 = tail call i16 @llvm.bswap.i16(i16 %or.i.i8) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i2, i16 %11) #8, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i740fb_ddc_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 98) #8, !srcloc !153
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %3, i32 983
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %or.i = or i8 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i8 %or.i to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, 98
  %5 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %5) #8, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %conv = select i1 %tobool.not, i8 0, i8 8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i2 = getelementptr i8, ptr %7, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i2, i8 99) #8, !srcloc !153
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %add.ptr.i6.i.i3 = getelementptr i8, ptr %9, i32 983
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i3) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i4 = and i8 %10, -9
  %or.i5 = or i8 %and4.i4, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i6 = zext i8 %or.i5 to i16
  %shl.i.i7 = shl nuw i16 %conv.i.i6, 8
  %or.i.i8 = or i16 %shl.i.i7, 99
  %11 = tail call i16 @llvm.bswap.i16(i16 %or.i.i8) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i2, i16 %11) #8, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_ddc_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 98) #8, !srcloc !153
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %3, i32 983
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i = and i8 %4, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i8 %and4.i to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, 98
  %5 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %5) #8, !srcloc !158
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 99) #8, !srcloc !153
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 983
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %11 = lshr i8 %10, 2
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_ddc_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 98) #8, !srcloc !153
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %3, i32 983
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and4.i = and i8 %4, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i8 %and4.i to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, 98
  %5 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %5) #8, !srcloc !158
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 982
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 99) #8, !srcloc !153
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 983
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %11 = lshr i8 %10, 3
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i740fb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %open_lock = getelementptr inbounds %struct.i740fb_par, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.i740fb_par, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
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
define internal i32 @i740fb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %open_lock = getelementptr inbounds %struct.i740fb_par, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.i740fb_par, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @i740fb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #8
  br label %fail

fail:                                             ; preds = %if.end, %entry.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  tail call void @console_unlock() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i740fb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.62) #8
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call4 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.63, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call3, i32 5
  %call7 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #8
  store i32 %call7, ptr @mtrr, align 4
  br label %while.cond.backedge

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else8, %if.then6, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.62) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !140, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_i740fb__314_1289_i740fb_init6, !1, !"__initcall__kmod_i740fb__314_1289_i740fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/i740fb.c", i32 1289, i32 1}
!2 = !{ptr @__exitcall_i740fb_exit, !3, !"__exitcall_i740fb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/i740fb.c", i32 1290, i32 1}
!4 = !{ptr @__UNIQUE_ID_author315, !5, !"__UNIQUE_ID_author315", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/i740fb.c", i32 1292, i32 1}
!6 = !{ptr @__UNIQUE_ID_file316, !7, !"__UNIQUE_ID_file316", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/i740fb.c", i32 1293, i32 1}
!8 = !{ptr @__UNIQUE_ID_license317, !7, !"__UNIQUE_ID_license317", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description318, !10, !"__UNIQUE_ID_description318", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/i740fb.c", i32 1294, i32 1}
!11 = !{ptr @__param_mode_option, !12, !"__param_mode_option", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/i740fb.c", i32 1296, i32 1}
!13 = !{ptr @__UNIQUE_ID_mode_optiontype319, !12, !"__UNIQUE_ID_mode_optiontype319", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_mode_option320, !15, !"__UNIQUE_ID_mode_option320", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/i740fb.c", i32 1297, i32 1}
!16 = !{ptr @__param_mtrr, !17, !"__param_mtrr", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/i740fb.c", i32 1299, i32 1}
!18 = !{ptr @__UNIQUE_ID_mtrrtype321, !17, !"__UNIQUE_ID_mtrrtype321", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_mtrr322, !20, !"__UNIQUE_ID_mtrr322", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/i740fb.c", i32 1300, i32 1}
!21 = !{ptr @mode_option, !22, !"mode_option", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/i740fb.c", i32 33, i32 14}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/i740fb.c", i32 1243, i32 11}
!25 = !{ptr @i740fb_driver, !26, !"i740fb_driver", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/i740fb.c", i32 1242, i32 26}
!27 = !{ptr @i740fb_id_table, !28, !"i740fb_id_table", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/i740fb.c", i32 1235, i32 35}
!29 = !{ptr @i740fb_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/i740fb.c", i32 1013, i32 2}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/i740fb.c", i32 1022, i32 3}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @i740fb_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @i740fb_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/i740fb.c", i32 1028, i32 3}
!42 = !{ptr @i740fb_probe._entry.7, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @i740fb_probe._entry_ptr.9, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/i740fb.c", i32 1034, i32 3}
!46 = !{ptr @i740fb_probe._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @i740fb_probe._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/i740fb.c", i32 1041, i32 3}
!50 = !{ptr @i740fb_probe._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @i740fb_probe._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/i740fb.c", i32 1058, i32 2}
!54 = !{ptr @i740fb_probe._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @i740fb_probe._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/i740fb.c", i32 1076, i32 5}
!60 = !{ptr @i740fb_probe._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @i740fb_probe._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/i740fb.c", i32 1098, i32 17}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/i740fb.c", i32 1106, i32 4}
!66 = !{ptr @i740fb_probe._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @i740fb_probe._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/i740fb.c", i32 1124, i32 3}
!70 = !{ptr @i740fb_probe._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @i740fb_probe._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/i740fb.c", i32 1130, i32 3}
!74 = !{ptr @i740fb_probe._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @i740fb_probe._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/i740fb.c", i32 1134, i32 2}
!78 = !{ptr @i740fb_probe._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @i740fb_probe._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @i740fb_ops, !81, !"i740fb_ops", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/i740fb.c", i32 984, i32 28}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/i740fb.c", i32 198, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @i740fb_release._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @i740fb_release._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/i740fb.c", i32 407, i32 2}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @i740fb_decode_var.__UNIQUE_ID_ddebug307, !88, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/i740fb.c", i32 409, i32 2}
!93 = !{ptr @i740fb_decode_var.__UNIQUE_ID_ddebug308, !92, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/i740fb.c", i32 412, i32 2}
!96 = !{ptr @i740fb_decode_var.__UNIQUE_ID_ddebug309, !95, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/i740fb.c", i32 414, i32 2}
!99 = !{ptr @i740fb_decode_var.__UNIQUE_ID_ddebug310, !98, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/i740fb.c", i32 416, i32 2}
!102 = !{ptr @i740fb_decode_var.__UNIQUE_ID_ddebug311, !101, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/i740fb.c", i32 426, i32 4}
!105 = !{ptr @i740fb_decode_var._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @i740fb_decode_var._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/i740fb.c", i32 436, i32 4}
!109 = !{ptr @i740fb_decode_var._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @i740fb_decode_var._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/i740fb.c", i32 445, i32 4}
!113 = !{ptr @i740fb_decode_var._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @i740fb_decode_var._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/i740fb.c", i32 453, i32 4}
!117 = !{ptr @i740fb_decode_var._entry.52, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @i740fb_decode_var._entry_ptr.54, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/i740fb.c", i32 490, i32 3}
!121 = !{ptr @i740fb_decode_var._entry.55, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @i740fb_decode_var._entry_ptr.57, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/i740fb.c", i32 866, i32 2}
!125 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @i740fb_setcolreg.__UNIQUE_ID_ddebug312, !124, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/i740fb.c", i32 903, i32 2}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @i740fb_pan_display.__UNIQUE_ID_ddebug313, !128, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!131 = !{ptr @i740fb_fix, !132, !"i740fb_fix", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/i740fb.c", i32 86, i32 39}
!133 = !{ptr @i740fb_pm_ops, !134, !"i740fb_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/i740fb.c", i32 1221, i32 32}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/i740fb.c", i32 1258, i32 33}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/i740fb.c", i32 1261, i32 26}
!139 = !{ptr @__param_str_mode_option, !12, !"__param_str_mode_option", i1 false, i1 false}
!140 = !{ptr @__param_str_mtrr, !17, !"__param_str_mtrr", i1 false, i1 false}
!141 = !{ptr @mtrr, !142, !"mtrr", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/i740fb.c", i32 34, i32 12}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2156250167}
!153 = !{i64 6244431}
!154 = !{i64 6244826}
!155 = !{i64 2156249787}
!156 = !{i8 0, i8 2}
!157 = !{i64 2156250647}
!158 = !{i64 6244008}
!159 = !{i64 6245046}
!160 = !{i64 2156322247}
!161 = !{i64 2156322501}
!162 = !{i64 6244628}
!163 = !{i64 2148985071, i64 2148985076, i64 2148985089, i64 2148985133, i64 2148985167, i64 2148985188}
!164 = !{i32 0, i32 33}
